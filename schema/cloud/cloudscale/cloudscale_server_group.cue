package ansible

module: cloudscale_server_group: {
	module:            "cloudscale_server_group"
	short_description: "Manages server groups on the cloudscale.ch IaaS service"
	description: [
		"Create, update and remove server groups.",
	]
	author: ["René Moser (@resmo)"]
	version_added: "2.8"
	options: {
		name: {
			description: [
				"Name of the server group.",
				"Either I(name) or I(uuid) is required. These options are mutually exclusive.",
			]
			type: "str"
		}
		uuid: {
			description: [
				"UUID of the server group.",
				"Either I(name) or I(uuid) is required. These options are mutually exclusive.",
			]
			type: "str"
		}
		type: {
			description: ["Type of the server group."]
			default: "anti-affinity"
			type:    "str"
		}
		state: {
			description: ["State of the server group."]
			choices: ["present", "absent"]
			default: "present"
			type:    "str"
		}
		tags: {
			description: ["Tags assosiated with the server groups. Set this to C({}) to clear any tags."]
			type:          "dict"
			version_added: "2.9"
		}
	}
	extends_documentation_fragment: "cloudscale"
}
