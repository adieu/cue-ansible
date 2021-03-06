package ansible

module: vmware_guest_boot_info: {
	module:            "vmware_guest_boot_info"
	short_description: "Gather info about boot options for the given virtual machine"
	description: [
		"Gather information about boot options for the given virtual machine.",
	]
	version_added: "2.9"
	author: [
		"Abhijeet Kasurde (@Akasurde)",
	]
	notes: [
		"Tested on vSphere 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		name: {
			description: [
				"Name of the VM to work with.",
				"This is required if C(uuid) or C(moid) parameter is not supplied.",
			]
			type: "str"
		}
		uuid: {
			description: [
				"UUID of the instance to manage if known, this is VMware's BIOS UUID by default.",
				"This is required if C(name) or C(moid) parameter is not supplied.",
			]
			type: "str"
		}
		moid: {
			description: [
				"Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.",
				"This is required if C(name) or C(uuid) is not supplied.",
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
		name_match: {
			description: [
				"If multiple virtual machines matching the name, use the first or last found.",
			]
			default: "first"
			choices: ["first", "last"]
			type: "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
