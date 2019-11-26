package ansible

module: vmware_guest_move: {
	module:            "vmware_guest_move"
	short_description: "Moves virtual machines in vCenter"
	description: [
		"This module can be used to move virtual machines between folders.",
	]
	version_added: "2.7"
	author: [
		"Jose Angel Munoz (@imjoseangel)",
	]
	notes: [
		"Tested on vSphere 5.5 and vSphere 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		name: {
			description: [
				"Name of the existing virtual machine to move.",
				"This is required if C(uuid) or C(moid) is not supplied.",
			]
			type: "str"
		}
		uuid: {
			description: [
				"UUID of the virtual machine to manage if known, this is VMware's unique identifier.",
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
		name_match: {
			description: [
				"If multiple virtual machines matching the name, use the first or last found.",
			]
			default: "first"
			choices: ["first", "last"]
			type: "str"
		}
		dest_folder: {
			description: [
				"Absolute path to move an existing guest",
				"The dest_folder should include the datacenter. ESX's datacenter is ha-datacenter.",
				"This parameter is case sensitive.",
				"Examples:",
				"   dest_folder: /ha-datacenter/vm",
				"   dest_folder: ha-datacenter/vm",
				"   dest_folder: /datacenter1/vm",
				"   dest_folder: datacenter1/vm",
				"   dest_folder: /datacenter1/vm/folder1",
				"   dest_folder: datacenter1/vm/folder1",
				"   dest_folder: /folder1/datacenter1/vm",
				"   dest_folder: folder1/datacenter1/vm",
				"   dest_folder: /folder1/datacenter1/vm/folder2",
			]
			required: true
			type:     "str"
		}
		datacenter: {
			description: [
				"Destination datacenter for the move operation",
			]
			required: true
			type:     "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
