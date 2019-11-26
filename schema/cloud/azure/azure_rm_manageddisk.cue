package ansible

module: azure_rm_manageddisk: {
	module: "azure_rm_manageddisk"

	version_added: "2.4"

	short_description: "Manage Azure Manage Disks"

	description: [
		"Create, update and delete an Azure Managed Disk.",
	]

	notes: [
		"This module was called M(azure_rm_managed_disk) before Ansible 2.8. The usage did not change.",
	]

	options: {
		resource_group: {
			description: [
				"Name of a resource group where the managed disk exists or will be created.",
			]
			required: true
		}
		name: {
			description: [
				"Name of the managed disk.",
			]
			required: true
		}
		state: {
			description: [
				"Assert the state of the managed disk. Use C(present) to create or update a managed disk and C(absent) to delete a managed disk.",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
		location: description: [
			"Valid Azure location. Defaults to location of the resource group.",
		]
		storage_account_type: {
			description: [
				"Type of storage for the managed disk.",
				"If not specified, the disk is created as C(Standard_LRS).",
				"C(Standard_LRS) is for Standard HDD.",
				"C(StandardSSD_LRS) (added in 2.8) is for Standard SSD.",
				"C(Premium_LRS) is for Premium SSD.",
				"C(UltraSSD_LRS) (added in 2.8) is for Ultra SSD, which is in preview mode, and only available on select instance types.",
				"See U(https://docs.microsoft.com/en-us/azure/virtual-machines/windows/disks-types) for more information about disk types.",
			]
			choices: [
				"Standard_LRS",
				"StandardSSD_LRS",
				"Premium_LRS",
				"UltraSSD_LRS",
			]
		}
		create_option: {
			description: [
				"C(import) from a VHD file in I(source_uri) and C(copy) from previous managed disk I(source_uri).",
			]
			choices: [
				"empty",
				"import",
				"copy",
			]
		}
		source_uri: {
			description: [
				"URI to a valid VHD file to be used or the resource ID of the managed disk to copy.",
			]
			aliases: [
				"source_resource_uri",
			]
		}
		os_type: {
			description: [
				"Type of Operating System.",
				"Used when I(create_option=copy) or I(create_option=import) and the source is an OS disk.",
				"If omitted during creation, no value is set.",
				"If omitted during an update, no change is made.",
				"Once set, this value cannot be cleared.",
			]
			choices: [
				"linux",
				"windows",
			]
		}
		disk_size_gb: description: [
			"Size in GB of the managed disk to be created.",
			"If I(create_option=copy) then the value must be greater than or equal to the source's size.",
		]
		managed_by: {
			description: [
				"Name of an existing virtual machine with which the disk is or will be associated, this VM should be in the same resource group.",
				"To detach a disk from a vm, explicitly set to ''.",
				"If this option is unset, the value will not be changed.",
			]
			version_added: "2.5"
		}
		attach_caching: {
			description: [
				"Disk caching policy controlled by VM. Will be used when attached to the VM defined by C(managed_by).",
				"If this option is different from the current caching policy, the managed disk will be deattached and attached with current caching option again.",
			]
			choices: [
				"",
				"read_only",
				"read_write",
			]
			version_added: "2.8"
		}
		tags: description: [
			"Tags to assign to the managed disk.",
			"Format tags as 'key' or 'key:value'.",
		]
		zone: {
			description: [
				"The Azure managed disk's zone.",
				"Allowed values are C(1), C(2), C(3) and C(' ').",
			]
			choices: [
				1,
				2,
				3,
				"",
			]
			version_added: "2.8"
		}
	}

	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]
	author: ["Bruno Medina (@brusMX)"]
}
