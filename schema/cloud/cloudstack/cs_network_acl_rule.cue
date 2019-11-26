package ansible

module: cs_network_acl_rule: {
	module:            "cs_network_acl_rule"
	short_description: "Manages network access control list (ACL) rules on Apache CloudStack based clouds."
	description: [
		"Add, update and remove network ACL rules.",
	]
	version_added: "2.4"
	author:        "René Moser (@resmo)"
	options: {
		network_acl: {
			description: ["Name of the network ACL."]
			type:     "str"
			required: true
			aliases: ["acl"]
		}
		cidrs: {
			description: ["CIDRs of the rule."]
			type: "list"
			default: ["0.0.0.0/0"]
			aliases: ["cidr"]
		}
		rule_position: {
			description: ["The position of the network ACL rule."]
			type:     "int"
			required: true
			aliases: ["number"]
		}
		protocol: {
			description: ["Protocol of the rule"]
			choices: ["tcp", "udp", "icmp", "all", "by_number"]
			type:    "str"
			default: "tcp"
		}
		protocol_number: {
			description: ["Protocol number from 1 to 256 required if I(protocol=by_number)."]
			type: "int"
		}
		start_port: {
			description: [
				"Start port for this rule.",
				"Considered if I(protocol=tcp) or I(protocol=udp).",
			]
			type: "int"
			aliases: ["port"]
		}
		end_port: {
			description: [
				"End port for this rule.",
				"Considered if I(protocol=tcp) or I(protocol=udp).",
				"If not specified, equal I(start_port).",
			]
			type: "int"
		}
		icmp_type: {
			description: [
				"Type of the icmp message being sent.",
				"Considered if I(protocol=icmp).",
			]
			type: "int"
		}
		icmp_code: {
			description: [
				"Error code for this icmp message.",
				"Considered if I(protocol=icmp).",
			]
			type: "int"
		}
		vpc: {
			description: ["VPC the network ACL is related to."]
			type:     "str"
			required: true
		}
		traffic_type: {
			description: ["Traffic type of the rule."]
			type: "str"
			choices: ["ingress", "egress"]
			default: "ingress"
			aliases: ["type"]
		}
		action_policy: {
			description: ["Action policy of the rule."]
			type: "str"
			choices: ["allow", "deny"]
			default: "allow"
			aliases: ["action"]
		}
		tags: {
			description: [
				"List of tags. Tags are a list of dictionaries having keys I(key) and I(value).",
				"If you want to delete all tags, set a empty list e.g. I(tags: []).",
			]
			type: "list"
			aliases: ["tag"]
		}
		domain: {
			description: ["Domain the VPC is related to."]
			type: "str"
		}
		account: {
			description: ["Account the VPC is related to."]
			type: "str"
		}
		project: {
			description: ["Name of the project the VPC is related to."]
			type: "str"
		}
		zone: {
			description: [
				"Name of the zone the VPC related to.",
				"If not set, default zone is used.",
			]
			type: "str"
		}
		state: {
			description: ["State of the network ACL rule."]
			type:    "str"
			default: "present"
			choices: ["present", "absent"]
		}
		poll_async: {
			description: ["Poll async jobs until job has finished."]
			type:    "bool"
			default: true
		}
	}
	extends_documentation_fragment: "cloudstack"
}
