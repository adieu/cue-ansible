package ansible

module: ipadm_prop: {
	module:            "ipadm_prop"
	short_description: "Manage protocol properties on Solaris/illumos systems."
	description: [
		"Modify protocol properties on Solaris/illumos systems.",
	]
	version_added: "2.2"
	author:        "Adam Števko (@xen0l)"
	options: {
		protocol: {
			description: ["Specifies the protocol for which we want to manage properties."]
			required: true
		}
		property: {
			description: ["Specifies the name of property we want to manage."]
			required: true
		}
		value: {
			description: ["Specifies the value we want to set for the property."]
			required: false
		}
		temporary: {
			description: [
				"Specifies that the property value is temporary. Temporary property values do not persist across reboots.",
			]

			required: false
			default:  false
			type:     "bool"
		}
		state: {
			description: ["Set or reset the property value."]
			required: false
			default:  "present"
			choices: ["present", "absent", "reset"]
		}
	}
}
