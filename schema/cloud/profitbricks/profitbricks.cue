package ansible

module: profitbricks: {
	module:            "profitbricks"
	short_description: "Create, destroy, start, stop, and reboot a ProfitBricks virtual machine."
	description: [
		"Create, destroy, update, start, stop, and reboot a ProfitBricks virtual machine. When the virtual machine is created it can optionally wait for it to be 'running' before returning. This module has a dependency on profitbricks >= 1.0.0",
	]

	version_added: "2.0"
	options: {
		auto_increment: {
			description: [
				"Whether or not to increment a single number in the name for created virtual machines.",
			]
			type:    "bool"
			default: "yes"
		}
		name: {
			description: [
				"The name of the virtual machine.",
			]
			required: true
		}
		image: {
			description: [
				"The system image ID for creating the virtual machine, e.g. a3eae284-a2fe-11e4-b187-5f1f641608c8.",
			]
			required: true
		}
		image_password: {
			description: [
				"Password set for the administrative user.",
			]
			version_added: "2.2"
		}
		ssh_keys: {
			description: [
				"Public SSH keys allowing access to the virtual machine.",
			]
			version_added: "2.2"
		}
		datacenter: description: [
			"The datacenter to provision this virtual machine.",
		]
		cores: {
			description: [
				"The number of CPU cores to allocate to the virtual machine.",
			]
			default: 2
		}
		ram: {
			description: [
				"The amount of memory to allocate to the virtual machine.",
			]
			default: 2048
		}
		cpu_family: {
			description: [
				"The CPU family type to allocate to the virtual machine.",
			]
			default: "AMD_OPTERON"
			choices: ["AMD_OPTERON", "INTEL_XEON"]
			version_added: "2.2"
		}
		volume_size: {
			description: [
				"The size in GB of the boot volume.",
			]
			default: 10
		}
		bus: {
			description: [
				"The bus type for the volume.",
			]
			default: "VIRTIO"
			choices: ["IDE", "VIRTIO"]
		}
		instance_ids: description: [
			"list of instance ids, currently only used when state='absent' to remove instances.",
		]
		count: {
			description: [
				"The number of virtual machines to create.",
			]
			default: 1
		}
		location: {
			description: [
				"The datacenter location. Use only if you want to create the Datacenter or else this value is ignored.",
			]
			default: "us/las"
			choices: ["us/las", "de/fra", "de/fkb"]
		}
		assign_public_ip: {
			description: [
				"This will assign the machine to the public LAN. If no LAN exists with public Internet access it is created.",
			]
			type:    "bool"
			default: "no"
		}
		lan: {
			description: [
				"The ID of the LAN you wish to add the servers to.",
			]
			default: 1
		}
		subscription_user: description: [
			"The ProfitBricks username. Overrides the PB_SUBSCRIPTION_ID environment variable.",
		]
		subscription_password: description: [
			"THe ProfitBricks password. Overrides the PB_PASSWORD environment variable.",
		]
		wait: {
			description: [
				"wait for the instance to be in state 'running' before returning",
			]
			type:    "bool"
			default: "yes"
		}
		wait_timeout: {
			description: [
				"how long before wait gives up, in seconds",
			]
			default: 600
		}
		remove_boot_volume: {
			description: [
				"remove the bootVolume of the virtual machine you're destroying.",
			]
			type:    "bool"
			default: "yes"
		}
		state: {
			description: [
				"create or terminate instances",
			]
			default: "present"
			choices: ["running", "stopped", "absent", "present"]
		}
	}

	requirements: [
		"profitbricks",
		"python >= 2.6",
	]
	author: "Matt Baldwin (@baldwinSPC) <baldwin@stackpointcloud.com>"
}
