package ansible

module: bigip_snat_pool: {
	module:            "bigip_snat_pool"
	short_description: "Manage SNAT pools on a BIG-IP"
	description: [
		"Manage SNAT pools on a BIG-IP.",
	]
	version_added: 2.3
	options: {
		members: {
			description: [
				"List of members to put in the SNAT pool. When a C(state) of present is provided, this parameter is required. Otherwise, it is optional.",
				"The members can be either IP addresses, or names of the SNAT translation objects.",
			]
			type: "list"
			aliases: [
				"member",
			]
		}
		description: {
			description: [
				"A general description of the SNAT pool, provided by the user for their benefit. It is optional.",
			]

			type:          "str"
			version_added: 2.9
		}
		name: {
			description: [
				"The name of the SNAT pool.",
			]
			type:     "str"
			required: true
		}
		state: {
			description: [
				"Whether the SNAT pool should exist or not.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:          "str"
			default:       "Common"
			version_added: 2.5
		}
	}
	notes: [
		"When C(bigip_snat_pool) object is removed it also removes any associated C(bigip_snat_translation) objects.",
		"This is a BIG-IP behavior not module behavior and it only occurs when the C(bigip_snat_translation) objects are also not referenced by another C(bigip_snat_pool).",
	]

	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
