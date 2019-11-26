package ansible

module: panos_match_rule: {
	module:            "panos_match_rule"
	short_description: "Test for match against a security rule on PAN-OS devices or Panorama management console."
	description: [
		"Security policies allow you to enforce rules and take action, and can be as general or specific as needed.",
	]
	author:        "Robert Hagen (@rnh556)"
	version_added: "2.5"
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
		"Panorama NOT is supported.",
	]
	options: {
		ip_address: {
			description: [
				"IP address (or hostname) of PAN-OS device being configured.",
			]
			required: true
		}
		username: {
			description: [
				"Username credentials to use for auth unless I(api_key) is set.",
			]
			default: "admin"
		}
		password: {
			description: [
				"Password credentials to use for auth unless I(api_key) is set.",
			]
			required: true
		}
		api_key: description: [
			"API key that can be used instead of I(username)/I(password) credentials.",
		]
		rule_type: {
			description: [
				"Type of rule. Valid types are I(security) or I(nat).",
			]
			required: true
			choices: [
				"security",
				"nat",
			]
		}
		source_zone: description: [
			"The source zone.",
		]
		source_ip: {
			description: [
				"The source IP address.",
			]
			required: true
		}
		source_port: description: [
			"The source port.",
		]
		source_user: description: [
			"The source user or group.",
		]
		to_interface: description: [
			"The inbound interface in a NAT rule.",
		]
		destination_zone: description: [
			"The destination zone.",
		]
		destination_ip: description: [
			"The destination IP address.",
		]
		destination_port: description: [
			"The destination port.",
		]
		application: description: [
			"The application.",
		]
		protocol: description: [
			"The IP protocol number from 1 to 255.",
		]
		category: description: [
			"URL category",
		]
		vsys_id: {
			description: [
				"ID of the VSYS object.",
			]
			default:  "vsys1"
			required: true
		}
	}
}
