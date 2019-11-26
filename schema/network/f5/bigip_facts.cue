package ansible

module: bigip_facts: {
	module:            "bigip_facts"
	short_description: "Collect facts from F5 BIG-IP devices"
	description: [
		"Collect facts from F5 BIG-IP devices via iControl SOAP API",
	]
	version_added: 1.6
	author: [
		"Matt Hite (@mhite)",
		"Tim Rupp (@caphrim007)",
	]
	notes: [
		"Requires BIG-IP software version >= 11.4",
		"F5 developed module 'bigsuds' required (see http://devcentral.f5.com)",
		"Best run as a local_action in your playbook",
		"Tested with manager and above account privilege level",
		"C(provision) facts were added in 2.2",
		"This module is deprecated. Use the C(bigip_device_info) module instead.",
	]
	deprecated: {
		removed_in:  "2.11"
		alternative: "bigip_device_info"
		why: """
		The bigip_facts module relies on SOAP to communicate with the BIG-IP, and has a large amount of code that does not conform to existing F5 standards. The M(bigip_device_info) module is easier to maintain and use.

		"""
	}

	requirements: [
		"bigsuds",
	]
	options: {
		session: {
			description: [
				"BIG-IP session support; may be useful to avoid concurrency issues in certain circumstances.",
			]

			default: false
			type:    "bool"
		}
		include: {
			description: [
				"Fact category or list of categories to collect",
			]
			required: true
			choices: [
				"address_class",
				"certificate",
				"client_ssl_profile",
				"device",
				"device_group",
				"interface",
				"key",
				"node",
				"pool",
				"provision",
				"rule",
				"self_ip",
				"software",
				"system_info",
				"traffic_group",
				"trunk",
				"virtual_address",
				"virtual_server",
				"vlan",
			]
		}
		filter: description: [
			"Shell-style glob matching string used to filter fact keys. Not applicable for software, provision, and system_info fact categories.",
		]
	}

	extends_documentation_fragment: "f5"
}
