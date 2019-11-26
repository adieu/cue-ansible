package ansible

module: dladm_vlan: {
	module:            "dladm_vlan"
	short_description: "Manage VLAN interfaces on Solaris/illumos systems."
	description: [
		"Create or delete VLAN interfaces on Solaris/illumos systems.",
	]
	version_added: "2.3"
	author:        "Adam Števko (@xen0l)"
	options: {
		name: {
			description: ["VLAN interface name."]
			required: true
		}
		link: {
			description: ["VLAN underlying link name."]
			required: true
		}
		temporary: {
			description: [
				"Specifies that the VLAN interface is temporary. Temporary VLANs do not persist across reboots.",
			]

			required: false
			default:  false
			type:     "bool"
		}
		vlan_id: {
			description: ["VLAN ID value for VLAN interface."]
			required: false
			default:  false
			aliases: ["vid"]
		}
		state: {
			description: ["Create or delete Solaris/illumos VNIC."]
			required: false
			default:  "present"
			choices: ["present", "absent"]
		}
	}
}
