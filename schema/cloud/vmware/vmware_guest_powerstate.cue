package ansible

module: vmware_guest_powerstate: {
	module:            "vmware_guest_powerstate"
	short_description: "Manages power states of virtual machines in vCenter"
	description: [
		"Power on / Power off / Restart a virtual machine.",
	]
	version_added: "2.5"
	author: [
		"Abhijeet Kasurde (@Akasurde) <akasurde@redhat.com>",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		state: {
			description: [
				"Set the state of the virtual machine.",
			]
			choices: ["powered-off", "powered-on", "reboot-guest", "restarted", "shutdown-guest", "suspended", "present"]
			default: "present"
			type:    "str"
		}
		name: {
			description: [
				"Name of the virtual machine to work with.",
				"Virtual machine names in vCenter are not necessarily unique, which may be problematic, see C(name_match).",
			]
			type: "str"
		}
		name_match: {
			description: [
				"If multiple virtual machines matching the name, use the first or last found.",
			]
			default: "first"
			choices: ["first", "last"]
			type: "str"
		}
		uuid: {
			description: [
				"UUID of the instance to manage if known, this is VMware's unique identifier.",
				"This is required if C(name) or C(moid) is not supplied.",
			]
			type: "str"
		}
		moid: {
			description: [
				"Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.",
				"This is required if C(name) or C(uuid) is not supplied.",
			]
			version_added: "2.9"
			type:          "str"
		}
		use_instance_uuid: {
			description: [
				"Whether to use the VMware instance UUID rather than the BIOS UUID.",
			]
			default:       false
			type:          "bool"
			version_added: "2.8"
		}
		folder: {
			description: [
				"Destination folder, absolute or relative path to find an existing guest.",
				"The folder should include the datacenter. ESX's datacenter is ha-datacenter",
				"Examples:",
				"   folder: /ha-datacenter/vm",
				"   folder: ha-datacenter/vm",
				"   folder: /datacenter1/vm",
				"   folder: datacenter1/vm",
				"   folder: /datacenter1/vm/folder1",
				"   folder: datacenter1/vm/folder1",
				"   folder: /folder1/datacenter1/vm",
				"   folder: folder1/datacenter1/vm",
				"   folder: /folder1/datacenter1/vm/folder2",
			]
			type: "str"
		}
		scheduled_at: {
			description: [
				"Date and time in string format at which specified task needs to be performed.",
				"The required format for date and time - 'dd/mm/yyyy hh:mm'.",
				"Scheduling task requires vCenter server. A standalone ESXi server does not support this option.",
			]
			type: "str"
		}
		schedule_task_name: {
			description: [
				"Name of schedule task.",
				"Valid only if C(scheduled_at) is specified.",
			]
			type:          "str"
			required:      false
			version_added: "2.9"
		}
		schedule_task_description: {
			description: [
				"Description of schedule task.",
				"Valid only if C(scheduled_at) is specified.",
			]
			type:          "str"
			required:      false
			version_added: "2.9"
		}
		schedule_task_enabled: {
			description: [
				"Flag to indicate whether the scheduled task is enabled or disabled.",
			]
			type:          "bool"
			required:      false
			default:       true
			version_added: "2.9"
		}
		force: {
			description: [
				"Ignore warnings and complete the actions.",
				"This parameter is useful while forcing virtual machine state.",
			]
			default:       false
			type:          "bool"
			version_added: 2.5
		}
		state_change_timeout: {
			description: [
				"If the C(state) is set to C(shutdown-guest), by default the module will return immediately after sending the shutdown signal.",
				"If this argument is set to a positive integer, the module will instead wait for the VM to reach the poweredoff state.",
				"The value sets a timeout in seconds for the module to wait for the state change.",
			]
			default:       0
			version_added: "2.6"
			type:          "int"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
