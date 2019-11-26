package ansible

module: utm_dns_host: {
	module: "utm_dns_host"

	author: [
		"Johannes Brunswicker (@MatrixCrawler)",
	]

	short_description: "create, update or destroy dns entry in Sophos UTM"

	description: [
		"Create, update or destroy a dns entry in SOPHOS UTM.",
		"This module needs to have the REST Ability of the UTM to be activated.",
	]

	version_added: "2.8"

	options: {
		name: {
			description: [
				"The name of the object. Will be used to identify the entry",
			]
			required: true
		}
		address: {
			description: [
				"The IPV4 Address of the entry. Can be left empty for automatic resolving.",
			]
			default: "0.0.0.0"
		}
		address6: {
			description: [
				"The IPV6 Address of the entry. Can be left empty for automatic resolving.",
			]
			default: "::"
		}
		comment: description: [
			"An optional comment to add to the dns host object",
		]
		hostname: description: [
			"The hostname for the dns host object",
		]
		interface: description: [
			"The reference name of the interface to use. If not provided the default interface will be used",
		]
		resolved: {
			description: [
				"whether the hostname's ipv4 address is already resolved or not",
			]
			default: false
			type:    "bool"
		}
		resolved6: {
			description: [
				"whether the hostname's ipv6 address is already resolved or not",
			]
			default: false
			type:    "bool"
		}
		timeout: {
			description: [
				"the timeout for the utm to resolve the ip address for the hostname again",
			]
			default: 0
		}
	}

	extends_documentation_fragment: ["utm"]
}
