package ansible

module: azure_rm_virtualmachine: {
	module: "azure_rm_virtualmachine"

	version_added: "2.1"

	short_description: "Manage Azure virtual machines"

	description: [
		"Manage and configure virtual machines (VMs) and associated resources on Azure.",
		"Requires a resource group containing at least one virtual network with at least one subnet.",
		"Supports images from the Azure Marketplace, which can be discovered with M(azure_rm_virtualmachineimage_facts).",
		"Supports custom images since Ansible 2.5.",
		"To use I(custom_data) on a Linux image, the image must have cloud-init enabled. If cloud-init is not enabled, I(custom_data) is ignored.",
	]

	options: {
		resource_group: {
			description: [
				"Name of the resource group containing the VM.",
			]
			required: true
		}
		name: {
			description: [
				"Name of the VM.",
			]
			required: true
		}
		custom_data: {
			description: [
				"Data made available to the VM and used by C(cloud-init).",
				"Only used on Linux images with C(cloud-init) enabled.",
				"Consult U(https://docs.microsoft.com/en-us/azure/virtual-machines/linux/using-cloud-init#cloud-init-overview) for cloud-init ready images.",
				"To enable cloud-init on a Linux image, follow U(https://docs.microsoft.com/en-us/azure/virtual-machines/linux/cloudinit-prepare-custom-image).",
			]
			version_added: "2.5"
		}
		state: {
			description: [
				"State of the VM.",
				"Set to C(present) to create a VM with the configuration specified by other options, or to update the configuration of an existing VM.",
				"Set to C(absent) to remove a VM.",
				"Does not affect power state. Use I(started)/I(allocated)/I(restarted) parameters to change the power state of a VM.",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
		started: {
			description: [
				"Whether the VM is started or stopped.",
				"Set to (true) with I(state=present) to start the VM.",
				"Set to C(false) to stop the VM.",
			]
			default: true
			type:    "bool"
		}
		allocated: {
			description: [
				"Whether the VM is allocated or deallocated, only useful with I(state=present).",
			]
			default: true
			type:    "bool"
		}
		generalized: {
			description: [
				"Whether the VM is generalized or not.",
				"Set to C(true) with I(state=present) to generalize the VM.",
				"Generalizing a VM is irreversible.",
			]
			type:          "bool"
			version_added: "2.8"
		}
		restarted: {
			description: [
				"Set to C(true) with I(state=present) to restart a running VM.",
			]
			type: "bool"
		}
		location: description: [
			"Valid Azure location for the VM. Defaults to location of the resource group.",
		]
		short_hostname: description: [
			"Name assigned internally to the host. On a Linux VM this is the name returned by the C(hostname) command.",
			"When creating a VM, short_hostname defaults to I(name).",
		]
		vm_size: description: [
			"A valid Azure VM size value. For example, C(Standard_D4).",
			"Choices vary depending on the subscription and location. Check your subscription for available choices.",
			"Required when creating a VM.",
		]
		admin_username: description: [
			"Admin username used to access the VM after it is created.",
			"Required when creating a VM.",
		]
		admin_password: description: [
			"Password for the admin username.",
			"Not required if the I(os_type=Linux) and SSH password authentication is disabled by setting I(ssh_password_enabled=false).",
		]
		ssh_password_enabled: {
			description: [
				"Whether to enable or disable SSH passwords.",
				"When I(os_type=Linux), set to C(false) to disable SSH password authentication and require use of SSH keys.",
			]
			default: true
			type:    "bool"
		}
		ssh_public_keys: description: [
			"For I(os_type=Linux) provide a list of SSH keys.",
			"Accepts a list of dicts where each dictionary contains two keys, I(path) and I(key_data).",
			"Set I(path) to the default location of the authorized_keys files. For example, I(path=/home/<admin username>/.ssh/authorized_keys).",
			"Set I(key_data) to the actual value of the public key.",
		]
		image: {
			description: [
				"The image used to build the VM.",
				"For custom images, the name of the image. To narrow the search to a specific resource group, a dict with the keys I(name) and I(resource_group).",
				"For Marketplace images, a dict with the keys I(publisher), I(offer), I(sku), and I(version).",
				"Set I(version=latest) to get the most recent version of a given image.",
			]
			required: true
		}
		availability_set: {
			description: [
				"Name or ID of an existing availability set to add the VM to. The I(availability_set) should be in the same resource group as VM.",
			]
			version_added: "2.5"
		}
		storage_account_name: {
			description: [
				"Name of a storage account that supports creation of VHD blobs.",
				"If not specified for a new VM, a new storage account named <vm name>01 will be created using storage type C(Standard_LRS).",
			]
			aliases: [
				"storage_account",
			]
		}
		storage_container_name: {
			description: [
				"Name of the container to use within the storage account to store VHD blobs.",
				"If not specified, a default container will be created.",
			]
			default: "vhds"
			aliases: [
				"storage_container",
			]
		}
		storage_blob_name: {
			description: [
				"Name of the storage blob used to hold the OS disk image of the VM.",
				"Must end with '.vhd'.",
				"If not specified, defaults to the VM name + '.vhd'.",
			]
			aliases: [
				"storage_blob",
			]
		}
		managed_disk_type: {
			description: [
				"Managed OS disk type.",
				"Create OS disk with managed disk if defined.",
				"If not defined, the OS disk will be created with virtual hard disk (VHD).",
			]
			choices: [
				"Standard_LRS",
				"StandardSSD_LRS",
				"Premium_LRS",
			]
			version_added: "2.4"
		}
		os_disk_name: {
			description: [
				"OS disk name.",
			]
			version_added: "2.8"
		}
		os_disk_caching: {
			description: [
				"Type of OS disk caching.",
			]
			choices: [
				"ReadOnly",
				"ReadWrite",
			]
			default: "ReadOnly"
			aliases: [
				"disk_caching",
			]
		}
		os_disk_size_gb: {
			description: [
				"Type of OS disk size in GB.",
			]
			version_added: "2.7"
		}
		os_type: {
			description: [
				"Base type of operating system.",
			]
			choices: [
				"Windows",
				"Linux",
			]
			default: "Linux"
		}
		data_disks: {
			description: [
				"Describes list of data disks.",
				"Use M(azure_rm_mangeddisk) to manage the specific disk.",
			]
			version_added: "2.4"
			suboptions: {
				lun: {
					description: [
						"The logical unit number for data disk.",
						"This value is used to identify data disks within the VM and therefore must be unique for each data disk attached to a VM.",
					]
					required:      true
					version_added: "2.4"
				}
				disk_size_gb: {
					description: [
						"The initial disk size in GB for blank data disks.",
						"This value cannot be larger than C(1023) GB.",
						"Size can be changed only when the virtual machine is deallocated.",
						"Not sure when I(managed_disk_id) defined.",
					]
					version_added: "2.4"
				}
				managed_disk_type: {
					description: [
						"Managed data disk type.",
						"Only used when OS disk created with managed disk.",
					]
					choices: [
						"Standard_LRS",
						"StandardSSD_LRS",
						"Premium_LRS",
					]
					version_added: "2.4"
				}
				storage_account_name: {
					description: [
						"Name of an existing storage account that supports creation of VHD blobs.",
						"If not specified for a new VM, a new storage account started with I(name) will be created using storage type C(Standard_LRS).",
						"Only used when OS disk created with virtual hard disk (VHD).",
						"Used when I(managed_disk_type) not defined.",
						"Cannot be updated unless I(lun) updated.",
					]
					version_added: "2.4"
				}
				storage_container_name: {
					description: [
						"Name of the container to use within the storage account to store VHD blobs.",
						"If no name is specified a default container named 'vhds' will created.",
						"Only used when OS disk created with virtual hard disk (VHD).",
						"Used when I(managed_disk_type) not defined.",
						"Cannot be updated unless I(lun) updated.",
					]
					default:       "vhds"
					version_added: "2.4"
				}
				storage_blob_name: {
					description: [
						"Name of the storage blob used to hold the OS disk image of the VM.",
						"Must end with '.vhd'.",
						"Default to the I(name) + timestamp + I(lun) + '.vhd'.",
						"Only used when OS disk created with virtual hard disk (VHD).",
						"Used when I(managed_disk_type) not defined.",
						"Cannot be updated unless I(lun) updated.",
					]
					version_added: "2.4"
				}
				caching: {
					description: [
						"Type of data disk caching.",
					]
					choices: [
						"ReadOnly",
						"ReadWrite",
					]
					default:       "ReadOnly"
					version_added: "2.4"
				}
			}
		}
		public_ip_allocation_method: {
			description: [
				"Allocation method for the public IP of the VM.",
				"Used only if a network interface is not specified.",
				"When set to C(Dynamic), the public IP address may change any time the VM is rebooted or power cycled.",
				"The C(Disabled) choice was added in Ansible 2.6.",
			]
			choices: [
				"Dynamic",
				"Static",
				"Disabled",
			]
			default: "Static"
			aliases: [
				"public_ip_allocation",
			]
		}
		open_ports: description: [
			"List of ports to open in the security group for the VM, when a security group and network interface are created with a VM.",
			"For Linux hosts, defaults to allowing inbound TCP connections to port 22.",
			"For Windows hosts, defaults to opening ports 3389 and 5986.",
		]
		network_interface_names: {
			description: [
				"Network interface names to add to the VM.",
				"Can be a string of name or resource ID of the network interface.",
				"Can be a dict containing I(resource_group) and I(name) of the network interface.",
				"If a network interface name is not provided when the VM is created, a default network interface will be created.",
				"To create a new network interface, at least one Virtual Network with one Subnet must exist.",
			]
			type: "list"
			aliases: [
				"network_interfaces",
			]
		}
		virtual_network_resource_group: {
			description: [
				"The resource group to use when creating a VM with another resource group's virtual network.",
			]
			version_added: "2.4"
		}
		virtual_network_name: {
			description: [
				"The virtual network to use when creating a VM.",
				"If not specified, a new network interface will be created and assigned to the first virtual network found in the resource group.",
				"Use with I(virtual_network_resource_group) to place the virtual network in another resource group.",
			]
			aliases: [
				"virtual_network",
			]
		}
		subnet_name: {
			description: [
				"Subnet for the VM.",
				"Defaults to the first subnet found in the virtual network or the subnet of the I(network_interface_name), if provided.",
				"If the subnet is in another resource group, specify the resource group with I(virtual_network_resource_group).",
			]
			aliases: [
				"subnet",
			]
		}
		remove_on_absent: {
			description: [
				"Associated resources to remove when removing a VM using I(state=absent).",
				"To remove all resources related to the VM being removed, including auto-created resources, set to C(all).",
				"To remove only resources that were automatically created while provisioning the VM being removed, set to C(all_autocreated).",
				"To remove only specific resources, set to C(network_interfaces), C(virtual_storage) or C(public_ips).",
				"Any other input will be ignored.",
			]
			type: "list"
			default: ["all"]
		}
		plan: {
			description: [
				"Third-party billing plan for the VM.",
			]
			version_added: "2.5"
			type:          "dict"
			suboptions: {
				name: {
					description: [
						"Billing plan name.",
					]
					required: true
				}
				product: {
					description: [
						"Product name.",
					]
					required: true
				}
				publisher: {
					description: [
						"Publisher offering the plan.",
					]
					required: true
				}
				promotion_code: description: [
					"Optional promotion code.",
				]
			}
		}
		accept_terms: {
			description: [
				"Accept terms for Marketplace images that require it.",
				"Only Azure service admin/account admin users can purchase images from the Marketplace.",
				"Only valid when a I(plan) is specified.",
			]
			type:          "bool"
			default:       false
			version_added: "2.7"
		}
		zones: {
			description: [
				"A list of Availability Zones for your VM.",
			]
			type:          "list"
			version_added: "2.8"
		}
		license_type: {
			description: [
				"On-premise license for the image or disk.",
				"Only used for images that contain the Windows Server operating system.",
				"To remove all license type settings, set to the string C(None).",
			]
			version_added: "2.8"
			choices: [
				"Windows_Server",
				"Windows_Client",
			]
		}
		vm_identity: {
			description: [
				"Identity for the VM.",
			]
			version_added: "2.8"
			choices: [
				"SystemAssigned",
			]
		}
		winrm: {
			description: [
				"List of Windows Remote Management configurations of the VM.",
			]
			version_added: "2.8"
			suboptions: {
				protocol: {
					description: [
						"The protocol of the winrm listener.",
					]
					required: true
					choices: [
						"http",
						"https",
					]
				}
				source_vault: description: [
					"The relative URL of the Key Vault containing the certificate.",
				]
				certificate_url: description: [
					"The URL of a certificate that has been uploaded to Key Vault as a secret.",
				]
				certificate_store: description: [
					"The certificate store on the VM to which the certificate should be added.",
					"The specified certificate store is implicitly in the LocalMachine account.",
				]
			}
		}
		boot_diagnostics: {
			description: [
				"Manage boot diagnostics settings for a VM.",
				"Boot diagnostics includes a serial console and remote console screenshots.",
			]
			version_added: "2.9"
			suboptions: {
				enabled: {
					description: [
						"Flag indicating if boot diagnostics are enabled.",
					]
					required: true
					type:     "bool"
				}
				storage_account: {
					description: [
						"The name of an existing storage account to use for boot diagnostics.",
						"If not specified, uses I(storage_account_name) defined one level up.",
						"If storage account is not specified anywhere, and C(enabled) is C(true), a default storage account is created for boot diagnostics data.",
					]
					required: false
				}
			}
		}
	}

	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: [
		"Chris Houseknecht (@chouseknecht)",
		"Matt Davis (@nitzmahone)",
		"Christopher Perrin (@cperrin88)",
		"James E. King III (@jeking3)",
	]
}
