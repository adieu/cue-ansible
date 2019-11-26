package ansible

module: bigip_selfip: {
	module:            "bigip_selfip"
	short_description: "Manage Self-IPs on a BIG-IP system"
	description: [
		"Manage Self-IPs on a BIG-IP system.",
	]
	version_added: 2.2
	options: {
		address: {
			description: [
				"The IP addresses for the new self IP. This value is ignored upon update as addresses themselves cannot be changed after they are created.",
				"This value is required when creating new self IPs.",
			]
			type: "str"
		}
		allow_service: {
			description: [
				"Configure port lockdown for the Self IP. By default, the Self IP has a \"default deny\" policy. This can be changed to allow TCP and UDP ports as well as specific protocols. This list should contain C(protocol):C(port) values.",
			]

			type: "list"
		}
		name: {
			description: [
				"The self IP to create.",
				"If this parameter is not specified, then it will default to the value supplied in the C(address) parameter.",
			]

			type:     "str"
			required: true
		}
		description: {
			description: [
				"Description of the traffic selector.",
			]
			type:          "str"
			version_added: 2.8
		}
		netmask: {
			description: [
				"The netmask for the self IP. When creating a new Self IP, this value is required.",
			]

			type: "str"
		}
		state: {
			description: [
				"When C(present), guarantees that the Self-IP exists with the provided attributes.",
				"When C(absent), removes the Self-IP from the system.",
			]
			type: "str"
			choices: [
				"absent",
				"present",
			]
			default: "present"
		}
		traffic_group: {
			description: [
				"The traffic group for the Self IP addresses in an active-active, redundant load balancer configuration. When creating a new Self IP, if this value is not specified, the default of C(/Common/traffic-group-local-only) will be used.",
			]

			type: "str"
		}
		vlan: {
			description: [
				"The VLAN that the new self IPs will be on. When creating a new Self IP, this value is required.",
			]

			type: "str"
		}
		route_domain: {
			description: [
				"The route domain id of the system. When creating a new Self IP, if this value is not specified, a default value of C(0) will be used.",
				"This value cannot be changed after it is set.",
			]
			type:          "int"
			version_added: 2.3
		}
		partition: {
			description: [
				"Device partition to manage resources on. You can set different partitions for Self IPs, but the address used may not match any other address used by a Self IP. In that sense, Self IPs are not isolated by partitions as other resources on a BIG-IP are.",
			]

			type:          "str"
			default:       "Common"
			version_added: 2.5
		}
	}
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
