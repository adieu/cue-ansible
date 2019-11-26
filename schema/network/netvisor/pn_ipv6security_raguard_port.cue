package ansible

module: pn_ipv6security_raguard_port: {
	module:            "pn_ipv6security_raguard_port"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.9"
	short_description: "CLI command to add/remove ipv6security-raguard-port"
	description: [
		"This module can be used to add ports to RA Guard Policy and remove ports to RA Guard Policy.",
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
				"ipv6security-raguard-port configuration command.",
			]
			required: false
			type:     "str"
			choices: ["present", "absent"]
			default: "present"
		}
		pn_name: {
			description: [
				"RA Guard Policy Name.",
			]
			required: true
			type:     "str"
		}
		pn_ports: {
			description: [
				"Ports attached to RA Guard Policy.",
			]
			required: true
			type:     "str"
		}
	}
}
