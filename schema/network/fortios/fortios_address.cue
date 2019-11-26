package ansible

module: fortios_address: {
	module:            "fortios_address"
	version_added:     "2.4"
	author:            "Benjamin Jolivot (@bjolivot)"
	short_description: "Manage fortios firewall address objects"
	description: [
		"This module provide management of firewall addresses on FortiOS devices.",
	]
	extends_documentation_fragment: "fortios"
	options: {
		state: {
			description: [
				"Specifies if address need to be added or deleted.",
			]
			required: true
			choices: ["present", "absent"]
		}
		name: {
			description: [
				"Name of the address to add or delete.",
			]
			required: true
		}
		type: {
			description: [
				"Type of the address.",
			]
			choices: ["iprange", "fqdn", "ipmask", "geography"]
		}
		value: description: [
			"Address value, based on type. If type=fqdn, something like www.google.com. If type=ipmask, you can use simple ip (192.168.0.1), ip+mask (192.168.0.1 255.255.255.0) or CIDR (192.168.0.1/32).",
		]

		start_ip: description: [
			"First ip in range (used only with type=iprange).",
		]
		end_ip: description: [
			"Last ip in range (used only with type=iprange).",
		]
		country: description: [
			"2 letter country code (like FR).",
		]
		interface: {
			description: [
				"interface name the address apply to.",
			]
			default: "any"
		}
		comment: description: [
			"free text to describe address.",
		]
	}
	notes: ["This module requires netaddr python library."]
}
