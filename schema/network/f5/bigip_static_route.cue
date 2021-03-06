package ansible

module: bigip_static_route: {
	module:            "bigip_static_route"
	short_description: "Manipulate static routes on a BIG-IP"
	description: [
		"Manipulate static routes on a BIG-IP.",
	]
	version_added: 2.5
	options: {
		name: {
			description: [
				"Name of the static route.",
			]
			type:     "str"
			required: true
		}
		description: {
			description: [
				"Descriptive text that identifies the route.",
			]
			type: "str"
		}
		destination: {
			description: [
				"Specifies an IP address for the static entry in the routing table. When creating a new static route, this value is required.",
				"This value cannot be changed once it is set.",
			]
			type: "str"
		}
		netmask: {
			description: [
				"The netmask for the static route. When creating a new static route, this value is required.",
				"This value can be in either IP or CIDR format.",
				"This value cannot be changed once it is set.",
			]
			type: "str"
		}
		gateway_address: {
			description: [
				"Specifies the router for the system to use when forwarding packets to the destination host or network. Also known as the next-hop router address. This can be either an IPv4 or IPv6 address. When it is an IPv6 address that starts with C(FE80:), the address will be treated as a link-local address. This requires that the C(vlan) parameter also be supplied.",
			]

			type: "str"
		}
		vlan: {
			description: [
				"Specifies the VLAN or Tunnel through which the system forwards packets to the destination. When C(gateway_address) is a link-local IPv6 address, this value is required.",
			]

			type: "str"
		}
		pool: {
			description: [
				"Specifies the pool through which the system forwards packets to the destination.",
			]

			type: "str"
		}
		reject: {
			description: [
				"Specifies that the system drops packets sent to the destination.",
			]
			type: "bool"
		}
		mtu: {
			description: [
				"Specifies a specific maximum transmission unit (MTU).",
			]
			type: "str"
		}
		route_domain: {
			description: [
				"The route domain id of the system. When creating a new static route, if this value is not specified, a default value of C(0) will be used.",
				"This value cannot be changed once it is set.",
			]
			type: "int"
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:          "str"
			default:       "Common"
			version_added: 2.6
		}
		state: {
			description: [
				"When C(present), ensures that the static route exists.",
				"When C(absent), ensures that the static does not exist.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
	}
	extends_documentation_fragment: "f5"
	author: ["Tim Rupp (@caphrim007)"]
}
