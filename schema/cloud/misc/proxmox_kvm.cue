package ansible

module: proxmox_kvm: {
	module:            "proxmox_kvm"
	short_description: "Management of Qemu(KVM) Virtual Machines in Proxmox VE cluster."
	description: [
		"Allows you to create/delete/stop Qemu(KVM) Virtual Machines in Proxmox VE cluster.",
	]
	version_added: "2.3"
	author:        "Abdoul Bah (@helldorado) <bahabdoul at gmail.com>"
	options: {
		acpi: {
			description: [
				"Specify if ACPI should be enabled/disabled.",
			]
			type:    "bool"
			default: "yes"
		}
		agent: {
			description: [
				"Specify if the QEMU Guest Agent should be enabled/disabled.",
			]
			type: "bool"
		}
		args: {
			description: [
				"Pass arbitrary arguments to kvm.",
				"This option is for experts only!",
			]
			default: "-serial unix:/var/run/qemu-server/VMID.serial,server,nowait"
		}
		api_host: {
			description: [
				"Specify the target host of the Proxmox VE cluster.",
			]
			required: true
		}
		api_user: {
			description: [
				"Specify the user to authenticate with.",
			]
			required: true
		}
		api_password: description: [
			"Specify the password to authenticate with.",
			"You can use C(PROXMOX_PASSWORD) environment variable.",
		]
		autostart: {
			description: [
				"Specify if the VM should be automatically restarted after crash (currently ignored in PVE API).",
			]
			type:    "bool"
			default: "no"
		}
		balloon: {
			description: [
				"Specify the amount of RAM for the VM in MB.",
				"Using zero disables the balloon driver.",
			]
			default: 0
		}
		bios: {
			description: [
				"Specify the BIOS implementation.",
			]
			choices: ["seabios", "ovmf"]
		}
		boot: {
			description: [
				"Specify the boot order -> boot on floppy C(a), hard disk C(c), CD-ROM C(d), or network C(n).",
				"You can combine to set order.",
			]
			default: "cnd"
		}
		bootdisk: description: [
			"Enable booting from specified disk. C((ide|sata|scsi|virtio)\\d+)",
		]
		clone: description: [
			"Name of VM to be cloned. If C(vmid) is setted, C(clone) can take arbitrary value but required for initiating the clone.",
		]
		cores: {
			description: [
				"Specify number of cores per socket.",
			]
			default: 1
		}
		cpu: {
			description: [
				"Specify emulated CPU type.",
			]
			default: "kvm64"
		}
		cpulimit: description: [
			"Specify if CPU usage will be limited. Value 0 indicates no CPU limit.",
			"If the computer has 2 CPUs, it has total of '2' CPU time",
		]
		cpuunits: {
			description: [
				"Specify CPU weight for a VM.",
				"You can disable fair-scheduler configuration by setting this to 0",
			]
			default: 1000
		}
		delete: description: [
			"Specify a list of settings you want to delete.",
		]
		description: description: [
			"Specify the description for the VM. Only used on the configuration web interface.",
			"This is saved as comment inside the configuration file.",
		]
		digest: description: [
			"Specify if to prevent changes if current configuration file has different SHA1 digest.",
			"This can be used to prevent concurrent modifications.",
		]
		force: {
			description: [
				"Allow to force stop VM.",
				"Can be used only with states C(stopped), C(restarted).",
			]
			type: "bool"
		}
		format: {
			description: [
				"Target drive's backing file's data format.",
				"Used only with clone",
			]
			default: "qcow2"
			choices: ["cloop", "cow", "qcow", "qcow2", "qed", "raw", "vmdk"]
		}
		freeze: {
			description: [
				"Specify if PVE should freeze CPU at startup (use 'c' monitor command to start execution).",
			]
			type: "bool"
		}
		full: {
			description: [
				"Create a full copy of all disk. This is always done when you clone a normal VM.",
				"For VM templates, we try to create a linked clone by default.",
				"Used only with clone",
			]
			type:    "bool"
			default: "yes"
		}
		hostpci: description: [
			"Specify a hash/dictionary of map host pci devices into guest. C(hostpci='{\"key\":\"value\", \"key\":\"value\"}').",
			"Keys allowed are - C(hostpci[n]) where 0 ≤ n ≤ N.",
			"Values allowed are -  C(\"host=\"HOSTPCIID[;HOSTPCIID2...]\",pcie=\"1|0\",rombar=\"1|0\",x-vga=\"1|0\"\").",
			"The C(host) parameter is Host PCI device pass through. HOSTPCIID syntax is C(bus:dev.func) (hexadecimal numbers).",
			"C(pcie=boolean) I(default=0) Choose the PCI-express bus (needs the q35 machine model).",
			"C(rombar=boolean) I(default=1) Specify whether or not the device's ROM will be visible in the guest's memory map.",
			"C(x-vga=boolean) I(default=0) Enable vfio-vga device support.",
			"/!\\ This option allows direct access to host hardware. So it is no longer possible to migrate such machines - use with special care.",
		], hotplug: description: [
			"Selectively enable hotplug features.",
			"This is a comma separated list of hotplug features C('network', 'disk', 'cpu', 'memory' and 'usb').",
			"Value 0 disables hotplug completely and value 1 is an alias for the default C('network,disk,usb').",
		], hugepages: {

			description: ["Enable/disable hugepages memory."]
			choices: ["any", "2", "1024"]
		}, ide: description: [
			"A hash/dictionary of volume used as IDE hard disk or CD-ROM. C(ide='{\"key\":\"value\", \"key\":\"value\"}').",
			"Keys allowed are - C(ide[n]) where 0 ≤ n ≤ 3.",
			"Values allowed are - C(\"storage:size,format=value\").",
			"C(storage) is the storage identifier where to create the disk.",
			"C(size) is the size of the disk in GB.",
			"C(format) is the drive's backing file's data format. C(qcow2|raw|subvol).",
		], keyboard: description: [
			"Sets the keyboard layout for VNC server.",
		], kvm: {
			description: [
				"Enable/disable KVM hardware virtualization.",
			], type:
				"bool", default:
				"yes"
		}, localtime: {
			description: [
				"Sets the real time clock to local time.",
				"This is enabled by default if ostype indicates a Microsoft OS.",
			], type:
				"bool"
		}, lock: {
			description: [
				"Lock/unlock the VM.",
			], choices: ["migrate", "backup", "snapshot", "rollback"]
		}, machine: description: [
			"Specifies the Qemu machine type.",
			"type => C((pc|pc(-i440fx)?-\\d+\\.\\d+(\\.pxe)?|q35|pc-q35-\\d+\\.\\d+(\\.pxe)?))",
		], memory: {
			description: [
				"Memory size in MB for instance.",
			], default:
				512
		}, migrate_downtime: description: [
			"Sets maximum tolerated downtime (in seconds) for migrations.",
		], migrate_speed: description: [
			"Sets maximum speed (in MB/s) for migrations.",
			"A value of 0 is no limit.",
		], name: description: [
			"Specifies the VM name. Only used on the configuration web interface.",
			"Required only for C(state=present).",
		], net: description: [
			"A hash/dictionary of network interfaces for the VM. C(net='{\"key\":\"value\", \"key\":\"value\"}').",
			"Keys allowed are - C(net[n]) where 0 ≤ n ≤ N.",
			"Values allowed are - C(\"model=\"XX:XX:XX:XX:XX:XX\",bridge=\"value\",rate=\"value\",tag=\"value\",firewall=\"1|0\",trunks=\"vlanid\"\").",
			"Model is one of C(e1000 e1000-82540em e1000-82544gc e1000-82545em i82551 i82557b i82559er ne2k_isa ne2k_pci pcnet rtl8139 virtio vmxnet3).",
			"C(XX:XX:XX:XX:XX:XX) should be an unique MAC address. This is automatically generated if not specified.",
			"The C(bridge) parameter can be used to automatically add the interface to a bridge device. The Proxmox VE standard bridge is called 'vmbr0'.",
			"Option C(rate) is used to limit traffic bandwidth from and to this interface. It is specified as floating point number, unit is 'Megabytes per second'.",
			"If you specify no bridge, we create a kvm 'user' (NATed) network device, which provides DHCP and DNS services.",
		]
		newid: description: [
			"VMID for the clone. Used only with clone.",
			"If newid is not set, the next available VM ID will be fetched from ProxmoxAPI.",
		]
		node: description: [
			"Proxmox VE node, where the new VM will be created.",
			"Only required for C(state=present).",
			"For other states, it will be autodiscovered.",
		]
		numa: description: [
			"A hash/dictionaries of NUMA topology. C(numa='{\"key\":\"value\", \"key\":\"value\"}').",
			"Keys allowed are - C(numa[n]) where 0 ≤ n ≤ N.",
			"Values allowed are - C(\"cpu=\"<id[-id];...>\",hostnodes=\"<id[-id];...>\",memory=\"number\",policy=\"(bind|interleave|preferred)\"\").",
			"C(cpus) CPUs accessing this NUMA node.",
			"C(hostnodes) Host NUMA nodes to use.",
			"C(memory) Amount of memory this NUMA node provides.",
			"C(policy) NUMA allocation policy.",
		]
		onboot: {description: [
			"Specifies whether a VM will be started during system bootup.",
		]
			type:    "bool"
			default: "yes"
		}
		ostype: {description: [
			"Specifies guest operating system. This is used to enable special optimization/features for specific operating systems.",
			"The l26 is Linux 2.6/3.X Kernel.",
		]
			choices: [
					"other",
					"wxp",
					"w2k",
					"w2k3",
					"w2k8",
					"wvista",
					"win7",
					"win8",
					"win10",
					"l24",
					"l26",
					"solaris",
			], default: "l26"
		}
		parallel: description: [
			"A hash/dictionary of map host parallel devices. C(parallel='{\"key\":\"value\", \"key\":\"value\"}').",
			"Keys allowed are - (parallel[n]) where 0 ≤ n ≤ 2.",
			"Values allowed are - C(\"/dev/parport\\d+|/dev/usb/lp\\d+\").",
		]
		pool: description: [
			"Add the new VM to the specified pool.",
		]
		protection: {description: [
			"Enable/disable the protection flag of the VM. This will enable/disable the remove VM and remove disk operations.",
		]
			type: "bool"
		}, reboot: {
			description: [
				"Allow reboot. If set to C(yes), the VM exit on reboot.",
			]
			type: "bool"
		}, revert: description: [
			"Revert a pending change.",
		]
		sata: description: [
			"A hash/dictionary of volume used as sata hard disk or CD-ROM. C(sata='{\"key\":\"value\", \"key\":\"value\"}').",
			"Keys allowed are - C(sata[n]) where 0 ≤ n ≤ 5.",
			"Values allowed are -  C(\"storage:size,format=value\").",
			"C(storage) is the storage identifier where to create the disk.",
			"C(size) is the size of the disk in GB.",
			"C(format) is the drive's backing file's data format. C(qcow2|raw|subvol).",
		]
		scsi: description: [
			"A hash/dictionary of volume used as SCSI hard disk or CD-ROM. C(scsi='{\"key\":\"value\", \"key\":\"value\"}').",
			"Keys allowed are - C(sata[n]) where 0 ≤ n ≤ 13.",
			"Values allowed are -  C(\"storage:size,format=value\").",
			"C(storage) is the storage identifier where to create the disk.",
			"C(size) is the size of the disk in GB.",
			"C(format) is the drive's backing file's data format. C(qcow2|raw|subvol).",
		]
		scsihw: {description: [
			"Specifies the SCSI controller model.",
		]

			choices: [
				"lsi",
				"lsi53c810",
				"virtio-scsi-pci",
				"virtio-scsi-single",
				"megasas",
				"pvscsi",
			]
		}, serial: description: [
			"A hash/dictionary of serial device to create inside the VM. C('{\"key\":\"value\", \"key\":\"value\"}').",
			"Keys allowed are - serial[n](str; required) where 0 ≤ n ≤ 3.",
			"Values allowed are - C((/dev/.+|socket)).",
			"/!\\ If you pass through a host serial device, it is no longer possible to migrate such machines - use with special care.",
		]
		shares: description: [
			"Rets amount of memory shares for auto-ballooning. (0 - 50000).",
			"The larger the number is, the more memory this VM gets.",
			"The number is relative to weights of all other running VMs.",
			"Using 0 disables auto-ballooning, this means no limit.",
		]
		skiplock: description: [
			"Ignore locks",
			"Only root is allowed to use this option.",
		]

		smbios: description: [
			"Specifies SMBIOS type 1 fields.",
		]

		snapname: description: [
			"The name of the snapshot. Used only with clone.",
		]

		sockets: {description: [
			"Sets the number of CPU sockets. (1 - N).",
		]

			default: 1
		}, startdate: description: [
			"Sets the initial date of the real time clock.",
			"Valid format for date are C('now') or C('2016-09-25T16:01:21') or C('2016-09-25').",
		]
		startup: description: [
			"Startup and shutdown behavior. C([[order=]\\d+] [,up=\\d+] [,down=\\d+]).",
			"Order is a non-negative number defining the general startup order.",
			"Shutdown in done with reverse ordering.",
		]
		state: {description: [
			"Indicates desired state of the instance.",
			"If C(current), the current state of the VM will be fetched. You can access it with C(results.status)",
		]
			choices: [
					"present",
					"started",
					"absent",
					"stopped",
					"restarted",
					"current",
			], default: "present"
		}, storage: description: [
			"Target storage for full clone.",
		]

		tablet: {description: [
			"Enables/disables the USB tablet device.",
		]

			type: "bool", default: "no"
		}
		target: description: [
			"Target node. Only allowed if the original VM is on shared storage.",
			"Used only with clone",
		]
		tdf: {description: [
			"Enables/disables time drift fix.",
		]

			type: "bool"
		}, template: {
			description: [
				"Enables/disables the template.",
			]

			type: "bool", default: "no"
		}
		timeout: {
			description: [
				"Timeout for operations.",
			]

			default: 30
		}, update: {description: [
			"If C(yes), the VM will be update with new value.",
			"Cause of the operations of the API and security reasons, I have disabled the update of the following parameters",
			"C(net, virtio, ide, sata, scsi). Per example updating C(net) update the MAC address and C(virtio) create always new disk...",
		]
			type: "bool", default: "no"
		}
		validate_certs: {
			description: [
				"If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.",
			]

			type: "bool", default: "no"
		}
		vcpus: description: [
			"Sets number of hotplugged vcpus.",
		]

		vga: {description: [
			"Select VGA type. If you want to use high resolution modes (>= 1280x1024x16) then you should use option 'std' or 'vmware'.",
		]

			choices: [
					"std",
					"cirrus",
					"vmware",
					"qxl",
					"serial0",
					"serial1",
					"serial2",
					"serial3",
					"qxl2",
					"qxl3",
					"qxl4",
			], default: "std"
		}, virtio: description: [
			"A hash/dictionary of volume used as VIRTIO hard disk. C(virtio='{\"key\":\"value\", \"key\":\"value\"}').",
			"Keys allowed are - C(virto[n]) where 0 ≤ n ≤ 15.",
			"Values allowed are -  C(\"storage:size,format=value\").",
			"C(storage) is the storage identifier where to create the disk.",
			"C(size) is the size of the disk in GB.",
			"C(format) is the drive's backing file's data format. C(qcow2|raw|subvol).",
		]
		vmid: description: [
			"Specifies the VM ID. Instead use I(name) parameter.",
			"If vmid is not set, the next available VM ID will be fetched from ProxmoxAPI.",
		]
		watchdog: description: [
			"Creates a virtual hardware watchdog device.",
		]
	}

	requirements: [
		"proxmoxer",
		"requests",
	]
}
