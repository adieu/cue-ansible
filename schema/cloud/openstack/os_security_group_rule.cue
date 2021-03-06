package ansible

module: os_security_group_rule: {
	module:                         "os_security_group_rule"
	short_description:              "Add/Delete rule from an existing security group"
	author:                         "Benno Joy (@bennojoy)"
	extends_documentation_fragment: "openstack"
	version_added:                  "2.0"
	description: [
		"Add or Remove rule from an existing security group",
	]
	options: {
		security_group: {
			description: [
				"Name or ID of the security group",
			]
			required: true
		}
		protocol: {
			description: [
				"IP protocols TCP UDP ICMP 112 (VRRP) 132 (SCTP)",
			]
			choices: ["tcp", "udp", "icmp", "112", "132", "None"]
		}
		port_range_min: description: [
			"Starting port",
		]
		port_range_max: description: [
			"Ending port",
		]
		remote_ip_prefix: description: [
			"Source IP address(es) in CIDR notation (exclusive with remote_group)",
		]
		remote_group: description: [
			"Name or ID of the Security group to link (exclusive with remote_ip_prefix)",
		]

		ethertype: {
			description: [
				"Must be IPv4 or IPv6, and addresses represented in CIDR must match the ingress or egress rules. Not all providers support IPv6.",
			]

			choices: ["IPv4", "IPv6"]
			default: "IPv4"
		}
		direction: {
			description: [
				"The direction in which the security group rule is applied. Not all providers support egress.",
			]

			choices: ["egress", "ingress"]
			default: "ingress"
		}
		state: {
			description: [
				"Should the resource be present or absent.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		project: {
			description: [
				"Unique name or ID of the project.",
			]
			required:      false
			version_added: "2.7"
		}
		availability_zone: description: [
			"Ignored. Present for backwards compatibility",
		]
	}
	requirements: ["openstacksdk"]
}
