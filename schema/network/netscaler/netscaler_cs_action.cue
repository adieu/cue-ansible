package ansible

module: netscaler_cs_action: {
	module:            "netscaler_cs_action"
	short_description: "Manage content switching actions"
	description: [
		"Manage content switching actions",
		"This module is intended to run either on the ansible  control node or a bastion (jumpserver) with access to the actual netscaler instance",
	]

	version_added: "2.4.0"

	author: "George Nikolopoulos (@giorgos-nikolopoulos)"

	options: {

		name: description: [
			"Name for the content switching action. Must begin with an ASCII alphanumeric or underscore C(_) character, and must contain only ASCII alphanumeric, underscore C(_), hash C(#), period C(.), space C( ), colon C(:), at sign C(@), equal sign C(=), and hyphen C(-) characters. Can be changed after the content switching action is created.",
		]

		targetlbvserver: description: [
			"Name of the load balancing virtual server to which the content is switched.",
		]

		targetvserver: description: [
			"Name of the VPN virtual server to which the content is switched.",
		]

		targetvserverexpr: description: [
			"Information about this content switching action.",
		]

		comment: description: [
			"Comments associated with this cs action.",
		]
	}

	extends_documentation_fragment: "netscaler"
	requirements: ["nitro python sdk"]
}
