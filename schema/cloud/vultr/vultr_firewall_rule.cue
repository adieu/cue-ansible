package ansible

module: vultr_firewall_rule: {
	module:            "vultr_firewall_rule"
	short_description: "Manages firewall rules on Vultr."
	description: [
		"Create and remove firewall rules.",
	]
	version_added: "2.5"
	author:        "René Moser (@resmo)"
	options: {
		group: {
			description: ["Name of the firewall group."]
			required: true
		}
		ip_version: {
			description: ["IP address version"]
			choices: ["v4", "v6"]
			default: "v4"
			aliases: ["ip_type"]
		}
		protocol: {
			description: ["Protocol of the firewall rule."]
			choices: ["icmp", "tcp", "udp", "gre"]
			default: "tcp"
		}
		cidr: description: [
			"Network in CIDR format",
			"The CIDR format must match with the C(ip_version) value.",
			"Required if C(state=present).",
			"Defaulted to 0.0.0.0/0 or ::/0 depending on C(ip_version).",
		]
		start_port: {
			description: [
				"Start port for the firewall rule.",
				"Required if C(protocol) is tcp or udp and I(state=present).",
			]
			aliases: ["port"]
		}
		end_port: description: [
			"End port for the firewall rule.",
			"Only considered if C(protocol) is tcp or udp and I(state=present).",
		]
		state: {
			description: ["State of the firewall rule."]
			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "vultr"
}
