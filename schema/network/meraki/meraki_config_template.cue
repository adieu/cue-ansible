package ansible

module: meraki_config_template: {
	module:            "meraki_config_template"
	short_description: "Manage configuration templates in the Meraki cloud"
	version_added:     "2.7"
	description: [
		"Allows for querying, deleting, binding, and unbinding of configuration templates.",
	]
	notes: [
		"Module is not idempotent as the Meraki API is limited in what information it provides about configuration templates.",
		"Meraki's API does not support creating new configuration templates.",
		"To use the configuration template, simply pass its ID via C(net_id) parameters in Meraki modules.",
	]
	options: {
		state: {
			description: [
				"Specifies whether configuration template information should be queried, modified, or deleted.",
			]
			choices: ["absent", "query", "present"]
			default: "query"
		}
		org_name: {
			description: [
				"Name of organization containing the configuration template.",
			]
			type: "str"
		}
		org_id: {
			description: [
				"ID of organization associated to a configuration template.",
			]
			type: "str"
		}
		config_template: {
			description: [
				"Name of the configuration template within an organization to manipulate.",
			]
			aliases: ["name"]
		}
		net_name: {
			description: [
				"Name of the network to bind or unbind configuration template to.",
			]
			type: "str"
		}
		net_id: {
			description: [
				"ID of the network to bind or unbind configuration template to.",
			]
			type: "str"
		}
		auto_bind: {
			description: [
				"Optional boolean indicating whether the network's switches should automatically bind to profiles of the same model.",
				"This option only affects switch networks and switch templates.",
				"Auto-bind is not valid unless the switch template has at least one profile and has at most one profile per switch model.",
			]
			type: "bool"
		}
	}

	author: [
		"Kevin Breit (@kbreit)",
	]
	extends_documentation_fragment: "meraki"
}
