package ansible

module: vmware_guest_tools_info: {
	module:            "vmware_guest_tools_info"
	short_description: "Gather info about VMware tools installed in VM"
	description: [
		"Gather information about the VMware tools installed in virtual machine.",
	]
	version_added: "2.10"
	author: [
		"Diane Wang (@Tomorrow9) <dianew@vmware.com>",
	]
	notes: [
		"Tested on vSphere 6.0, 6.5, 6.7",
	]
	requirements: [
		"python >= 2.7",
		"PyVmomi",
	]
	options: {
		name: {
			description: [
				"Name of the VM to get VMware tools info.",
				"This is required if C(uuid) or C(moid) is not supplied.",
			]
			type: "str"
		}
		name_match: {
			description: [
				"If multiple VMs matching the name, use the first or last found.",
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
		use_instance_uuid: {
			description: [
				"Whether to use the VMware instance UUID rather than the BIOS UUID.",
			]
			default: false
			type:    "bool"
		}
		moid: {
			description: [
				"Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.",
				"This is required if C(name) or C(uuid) is not supplied.",
			]
			type: "str"
		}
		folder: {
			description: [
				"Destination folder, absolute or relative path to find an existing guest.",
				"This is required if name is supplied.",
				"The folder should include the datacenter. ESXi server's datacenter is ha-datacenter.",
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
		datacenter: {
			description: [
				"The datacenter name to which virtual machine belongs to.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
