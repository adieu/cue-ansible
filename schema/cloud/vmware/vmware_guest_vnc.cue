package ansible

module: vmware_guest_vnc: {
	module:            "vmware_guest_vnc"
	short_description: "Manages VNC remote display on virtual machines in vCenter"
	description: [
		"This module can be used to enable and disable VNC remote display on virtual machine.",
	]
	version_added: 2.8
	author: [
		"Armin Ranjbar Daemi (@rmin)",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		datacenter: {
			description: [
				"Destination datacenter for the deploy operation.",
				"This parameter is case sensitive.",
			]
			default: "ha-datacenter"
			type:    "str"
		}
		state: {
			description: [
				"Set the state of VNC on virtual machine.",
			]
			choices: ["present", "absent"]
			default:  "present"
			required: false
			type:     "str"
		}
		name: {
			description: [
				"Name of the virtual machine to work with.",
				"Virtual machine names in vCenter are not necessarily unique, which may be problematic, see C(name_match).",
			]
			required: false
			type:     "str"
		}
		name_match: {
			description: [
				"If multiple virtual machines matching the name, use the first or last found.",
			]
			default: "first"
			choices: ["first", "last"]
			required: false
			type:     "str"
		}
		uuid: {
			description: [
				"UUID of the instance to manage if known, this is VMware's unique identifier.",
				"This is required, if C(name) or C(moid) is not supplied.",
			]
			required: false
			type:     "str"
		}
		moid: {
			description: [
				"Managed Object ID of the instance to manage if known, this is a unique identifier only within a single vCenter instance.",
				"This is required if C(name) or C(uuid) is not supplied.",
			]
			version_added: "2.9"
			type:          "str"
		}
		folder: {
			description: [
				"Destination folder, absolute or relative path to find an existing guest.",
				"The folder should include the datacenter. ESX's datacenter is ha-datacenter",
			]
			required: false
			type:     "str"
		}
		vnc_ip: {
			description: [
				"Sets an IP for VNC on virtual machine.",
				"This is required only when I(state) is set to present and will be ignored if I(state) is absent.",
			]
			default:  "0.0.0.0"
			required: false
			type:     "str"
		}
		vnc_port: {
			description: [
				"The port that VNC listens on. Usually a number between 5900 and 7000 depending on your config.",
				"This is required only when I(state) is set to present and will be ignored if I(state) is absent.",
			]
			default:  0
			required: false
			type:     "int"
		}
		vnc_password: {
			description: [
				"Sets a password for VNC on virtual machine.",
				"This is required only when I(state) is set to present and will be ignored if I(state) is absent.",
			]
			default:  ""
			required: false
			type:     "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
