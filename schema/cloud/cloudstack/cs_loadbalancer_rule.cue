package ansible

module: cs_loadbalancer_rule: {
	module:            "cs_loadbalancer_rule"
	short_description: "Manages load balancer rules on Apache CloudStack based clouds."
	description: [
		"Add, update and remove load balancer rules.",
	]
	version_added: "2.0"
	author: [
		"Darren Worrall (@dazworrall)",
		"René Moser (@resmo)",
	]
	options: {
		name: {
			description: ["The name of the load balancer rule."]
			type:     "str"
			required: true
		}
		description: {
			description: ["The description of the load balancer rule."]
			type: "str"
		}
		algorithm: {
			description: [
				"Load balancer algorithm",
				"Required when using I(state=present).",
			]
			type: "str"
			choices: ["source", "roundrobin", "leastconn"]
			default: "source"
		}
		private_port: {
			description: [
				"The private port of the private ip address/virtual machine where the network traffic will be load balanced to.",
				"Required when using I(state=present).",
				"Can not be changed once the rule exists due API limitation.",
			]
			type: "int"
		}
		public_port: {
			description: [
				"The public port from where the network traffic will be load balanced from.",
				"Required when using I(state=present).",
				"Can not be changed once the rule exists due API limitation.",
			]
			type:     "int"
			required: true
		}
		ip_address: {
			description: ["Public IP address from where the network traffic will be load balanced from."]
			type:     "str"
			required: true
			aliases: ["public_ip"]
		}
		open_firewall: {
			description: [
				"Whether the firewall rule for public port should be created, while creating the new rule.",
				"Use M(cs_firewall) for managing firewall rules.",
			]
			type:    "bool"
			default: false
		}
		cidr: {
			description: ["CIDR (full notation) to be used for firewall rule if required."]
			type: "str"
		}
		protocol: {
			description: ["The protocol to be used on the load balancer"]
			type: "str"
		}
		project: {
			description: ["Name of the project the load balancer IP address is related to."]
			type: "str"
		}
		state: {
			description: ["State of the rule."]
			type:    "str"
			default: "present"
			choices: ["present", "absent"]
		}
		domain: {
			description: ["Domain the rule is related to."]
			type: "str"
		}
		account: {
			description: ["Account the rule is related to."]
			type: "str"
		}
		zone: {
			description: [
				"Name of the zone in which the rule should be created.",
				"If not set, default zone is used.",
			]
			type: "str"
		}
		poll_async: {
			description: ["Poll async jobs until job has finished."]
			type:    "bool"
			default: true
		}
		tags: {
			description: [
				"List of tags. Tags are a list of dictionaries having keys I(key) and I(value).",
				"To delete all tags, set a empty list e.g. I(tags: []).",
			]
			type: "list"
			aliases: ["tag"]
		}
		network: {
			description: ["Name of the network."]
			type:          "str"
			version_added: "2.9"
		}
		vpc: {
			description: ["Name of the VPC."]
			type:          "str"
			version_added: "2.9"
		}
	}
	extends_documentation_fragment: "cloudstack"
}
