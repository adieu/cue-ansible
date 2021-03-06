package ansible

module: cs_securitygroup_rule: {
	module:            "cs_securitygroup_rule"
	short_description: "Manages security group rules on Apache CloudStack based clouds."
	description: [
		"Add and remove security group rules.",
	]
	version_added: "2.0"
	author:        "René Moser (@resmo)"
	options: {
		security_group: {
			description: ["Name of the security group the rule is related to. The security group must be existing."]
			type:     "str"
			required: true
		}
		state: {
			description: ["State of the security group rule."]
			type:    "str"
			default: "present"
			choices: ["present", "absent"]
		}
		protocol: {
			description: ["Protocol of the security group rule."]
			type:    "str"
			default: "tcp"
			choices: ["tcp", "udp", "icmp", "ah", "esp", "gre"]
		}
		type: {
			description: ["Ingress or egress security group rule."]
			type:    "str"
			default: "ingress"
			choices: ["ingress", "egress"]
		}
		cidr: {
			description: ["CIDR (full notation) to be used for security group rule."]
			type:    "str"
			default: "0.0.0.0/0"
		}
		user_security_group: {
			description: ["Security group this rule is based of."]
			type: "str"
		}
		start_port: {
			description: ["Start port for this rule. Required if I(protocol=tcp) or I(protocol=udp)."]
			type: "int"
			aliases: ["port"]
		}
		end_port: {
			description: ["End port for this rule. Required if I(protocol=tcp) or I(protocol=udp), but I(start_port) will be used if not set."]
			type: "int"
		}
		icmp_type: {
			description: ["Type of the icmp message being sent. Required if I(protocol=icmp)."]
			type: "int"
		}
		icmp_code: {
			description: ["Error code for this icmp message. Required if I(protocol=icmp)."]
			type: "int"
		}
		project: {
			description: ["Name of the project the security group to be created in."]
			type: "str"
		}
		poll_async: {
			description: ["Poll async jobs until job has finished."]
			default: true
			type:    "bool"
		}
	}
	extends_documentation_fragment: "cloudstack"
}
