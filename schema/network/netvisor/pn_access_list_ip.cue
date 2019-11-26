package ansible

module: pn_access_list_ip: {
	module:            "pn_access_list_ip"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.8"
	short_description: "CLI command to add/remove access-list-ip"
	description: [
		"This modules can be used to add and remove IPs associated with access list.",
	]
	options: {
		pn_cliswitch: {
			description: [
				"Target switch to run the CLI on.",
			]
			required: false
			type:     "str"
		}
		state: {
			description: [
				"State the action to perform. Use 'present' to add access-list-ip and 'absent' to remove access-list-ip.",
			]

			required: true
			choices: ["present", "absent"]
		}
		pn_ip: {
			description: [
				"IP associated with the access list.",
			]
			required: false
			default:  "::"
			type:     "str"
		}
		pn_name: {
			description: [
				"Access List Name.",
			]
			required: false
			type:     "str"
		}
	}
}
