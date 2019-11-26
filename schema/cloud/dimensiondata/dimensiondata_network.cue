package ansible

module: dimensiondata_network: {
	module:            "dimensiondata_network"
	short_description: "Create, update, and delete MCP 1.0 & 2.0 networks"
	extends_documentation_fragment: [
		"dimensiondata",
		"dimensiondata_wait",
	]
	description: [
		"Create, update, and delete MCP 1.0 & 2.0 networks",
	]
	version_added: "2.3"
	author:        "Aimon Bustardo (@aimonb)"
	options: {
		name: {
			description: [
				"The name of the network domain to create.",
			]
			required: true
		}
		description: {
			description: [
				"Additional description of the network domain.",
			]
			required: false
		}
		service_plan: {
			description: [
				"The service plan, either \"ESSENTIALS\" or \"ADVANCED\".",
				"MCP 2.0 Only.",
			]
			choices: ["ESSENTIALS", "ADVANCED"]
			default: "ESSENTIALS"
		}
		state: {
			description: [
				"Should the resource be present or absent.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
	}
}
