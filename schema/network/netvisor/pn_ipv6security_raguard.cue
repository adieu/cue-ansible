package ansible

module: pn_ipv6security_raguard: {
	module:            "pn_ipv6security_raguard"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.9"
	short_description: "CLI command to create/modify/delete ipv6security-raguard"
	description: [
		"This module can be used to add ipv6 RA Guard Policy, Update ipv6 RA guard Policy and Remove ipv6 RA Guard Policy.",
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
				"ipv6security-raguard configuration command.",
			]
			required: false
			choices: ["present", "update", "absent"]
			type:    "str"
			default: "present"
		}
		pn_device: {
			description: [
				"RA Guard Device. host or router.",
			]
			required: false
			choices: ["host", "router"]
			type: "str"
		}
		pn_access_list: {
			description: [
				"RA Guard Access List of Source IPs.",
			]
			required: false
			type:     "str"
		}
		pn_prefix_list: {
			description: [
				"RA Guard Prefix List.",
			]
			required: false
			type:     "str"
		}
		pn_router_priority: {
			description: [
				"RA Guard Router Priority.",
			]
			required: false
			type:     "str"
			choices: ["low", "medium", "high"]
		}
		pn_name: {
			description: [
				"RA Guard Policy Name.",
			]
			required: true
			type:     "str"
		}
	}
}
