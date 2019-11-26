package ansible

module: dladm_linkprop: {
	module:            "dladm_linkprop"
	short_description: "Manage link properties on Solaris/illumos systems."
	description: [
		"Set / reset link properties on Solaris/illumos systems.",
	]
	version_added: "2.3"
	author:        "Adam Števko (@xen0l)"
	options: {
		link: {
			description: ["Link interface name."]
			required: true
			aliases: ["nic", "interface"]
		}
		property: {
			description: ["Specifies the name of the property we want to manage."]
			required: true
			aliases: ["name"]
		}
		value: {
			description: ["Specifies the value we want to set for the link property."]
			required: false
		}
		temporary: {
			description: [
				"Specifies that lin property configuration is temporary. Temporary link property configuration does not persist across reboots.",
			]

			required: false
			type:     "bool"
			default:  false
		}
		state: {
			description: ["Set or reset the property value."]
			required: false
			default:  "present"
			choices: ["present", "absent", "reset"]
		}
	}
}
