package ansible

module: dladm_vnic: {
	module:            "dladm_vnic"
	short_description: "Manage VNICs on Solaris/illumos systems."
	description: [
		"Create or delete VNICs on Solaris/illumos systems.",
	]
	version_added: "2.2"
	author:        "Adam Števko (@xen0l)"
	options: {
		name: {
			description: ["VNIC name."]
			required: true
		}
		link: {
			description: ["VNIC underlying link name."]
			required: true
		}
		temporary: {
			description: [
				"Specifies that the VNIC is temporary. Temporary VNICs do not persist across reboots.",
			]

			required: false
			default:  false
			type:     "bool"
		}
		mac: {
			description: ["Sets the VNIC's MAC address. Must be valid unicast MAC address."]
			required: false
			default:  false
			aliases: ["macaddr"]
		}
		vlan: {
			description: [
				"Enable VLAN tagging for this VNIC. The VLAN tag will have id I(vlan).",
			]

			required: false
			default:  false
			aliases: ["vlan_id"]
		}
		state: {
			description: ["Create or delete Solaris/illumos VNIC."]
			required: false
			default:  "present"
			choices: ["present", "absent"]
		}
	}
}
