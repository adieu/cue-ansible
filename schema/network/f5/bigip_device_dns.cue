package ansible

module: bigip_device_dns: {
	module:            "bigip_device_dns"
	short_description: "Manage BIG-IP device DNS settings"
	description: [
		"Manage BIG-IP device DNS settings.",
	]
	version_added: 2.2
	options: {
		cache: {
			description: [
				"Specifies whether the system caches DNS lookups or performs the operation each time a lookup is needed. Please note that this applies only to Access Policy Manager features, such as ACLs, web application rewrites, and authentication.",
			]

			type: "str"
			choices: [
				"enabled",
				"disabled",
				"enable",
				"disable",
			]
		}
		name_servers: {
			description: [
				"A list of name servers that the system uses to validate DNS lookups",
			]
			type: "list"
		}
		search: {
			description: [
				"A list of domains that the system searches for local domain lookups, to resolve local host names.",
			]

			type: "list"
		}
		ip_version: {
			description: [
				"Specifies whether the DNS specifies IP addresses using IPv4 or IPv6.",
			]
			type: "int"
			choices: [
				4,
				6,
			]
		}
		state: {
			description: [
				"The state of the variable on the system. When C(present), guarantees that an existing variable is set to C(value).",
			]

			type: "str"
			choices: [
				"absent",
				"present",
			]
			default: "present"
		}
	}
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
