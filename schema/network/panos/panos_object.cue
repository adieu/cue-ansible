package ansible

module: panos_object: {
	module:            "panos_object"
	short_description: "create/read/update/delete object in PAN-OS or Panorama"
	description: [
		"Policy objects form the match criteria for policy rules and many other functions in PAN-OS. These may include address object, address groups, service objects, service groups, and tag.",
	]

	author:        "Bob Hagen (@rnh556)"
	version_added: "2.4"
	requirements: [
		"pan-python can be obtained from PyPI U(https://pypi.org/project/pan-python/)",
		"pandevice can be obtained from PyPI U(https://pypi.org/project/pandevice/)",
	]
	deprecated: {
		alternative: "Use U(https://galaxy.ansible.com/PaloAltoNetworks/paloaltonetworks) instead."
		removed_in:  "2.12"
		why:         "Consolidating code base."
	}
	notes: [
		"Checkmode is not supported.",
		"Panorama is supported.",
	]
	options: {
		ip_address: {
			description: [
				"IP address (or hostname) of PAN-OS device or Panorama management console being configured.",
			]
			required: true
		}
		username: {
			description: [
				"Username credentials to use for authentication.",
			]
			default: "admin"
		}
		password: {
			description: [
				"Password credentials to use for authentication.",
			]
			required: true
		}
		api_key: description: [
			"API key that can be used instead of I(username)/I(password) credentials.",
		]
		operation: {
			description: [
				"The operation to be performed.  Supported values are I(add)/I(delete)/I(find).",
			]
			required: true
			choices: [
				"add",
				"update",
				"delete",
				"find",
			]
		}
		addressobject: description: [
			"The name of the address object.",
		]
		address: description: [
			"The IP address of the host or network in CIDR notation.",
		]
		address_type: {
			description: [
				"The type of address object definition.  Valid types are I(ip-netmask) and I(ip-range).",
			]
			default: "ip-netmask"
			choices: [
				"ip-netmask",
				"ip-range",
				"fqdn",
			]
		}
		addressgroup: description: [
			"A static group of address objects or dynamic address group.",
		]
		static_value: description: [
			"A group of address objects to be used in an addressgroup definition.",
		]
		dynamic_value: description: [
			"The filter match criteria to be used in a dynamic addressgroup definition.",
		]
		serviceobject: description: [
			"The name of the service object.",
		]
		source_port: description: [
			"The source port to be used in a service object definition.",
		]
		destination_port: description: [
			"The destination port to be used in a service object definition.",
		]
		protocol: {
			description: [
				"The IP protocol to be used in a service object definition.  Valid values are I(tcp) or I(udp).",
			]
			choices: [
				"tcp",
				"udp",
			]
		}
		servicegroup: description: [
			"A group of service objects.",
		]
		services: description: [
			"The group of service objects used in a servicegroup definition.",
		]
		description: description: [
			"The description of the object.",
		]
		tag_name: description: [
			"The name of an object or rule tag.",
		]
		color: {
			description: """
		- The color of the tag object.  Valid values are I(red, green, blue, yellow, copper, orange, purple, gray, light green, cyan, light gray, blue gray, lime, black, gold, and brown).

		"""

			choices: [
				"red",
				"green",
				"blue",
				"yellow",
				"copper",
				"orange",
				"purple",
				"gray",
				"light green",
				"cyan",
				"light gray",
				"blue gray",
				"lime",
				"black",
				"gold",
				"brown",
			]
		}
		devicegroup: description: """
		- The name of the Panorama device group. The group must exist on Panorama. If device group is not defined it is assumed that we are contacting a firewall.

		"""
	}
}
