package ansible

module: cs_vlan_ip_range: {
	module:            "cs_vlan_ip_range"
	short_description: "Manages VLAN IP ranges on Apache CloudStack based clouds."
	description: [
		"Create and delete VLAN IP range.",
	]
	version_added: "2.8"
	author:        "David Passante (@dpassante)"
	options: {
		network: {
			description: [
				"The network name or id.",
				"Required if I(for_virtual_network) and I(physical_network) are not set.",
			]
			type: "str"
		}
		physical_network: {
			description: [
				"The physical network name or id.",
			]
			type: "str"
		}
		start_ip: {
			description: [
				"The beginning IPv4 address in the VLAN IP range.",
				"Only considered on create.",
			]
			type:     "str"
			required: true
		}
		end_ip: {
			description: [
				"The ending IPv4 address in the VLAN IP range.",
				"If not specified, value of I(start_ip) is used.",
				"Only considered on create.",
			]
			type: "str"
		}
		gateway: {
			description: [
				"The gateway of the VLAN IP range.",
				"Required if I(state=present).",
			]
			type: "str"
		}
		netmask: {
			description: [
				"The netmask of the VLAN IP range.",
				"Required if I(state=present).",
			]
			type: "str"
		}
		start_ipv6: {
			description: [
				"The beginning IPv6 address in the IPv6 network range.",
				"Only considered on create.",
			]
			type: "str"
		}
		end_ipv6: {
			description: [
				"The ending IPv6 address in the IPv6 network range.",
				"If not specified, value of I(start_ipv6) is used.",
				"Only considered on create.",
			]
			type: "str"
		}
		gateway_ipv6: {
			description: [
				"The gateway of the IPv6 network.",
				"Only considered on create.",
			]
			type: "str"
		}
		cidr_ipv6: {
			description: [
				"The CIDR of IPv6 network, must be at least /64.",
			]
			type: "str"
		}
		vlan: {
			description: [
				"The ID or VID of the network.",
				"If not specified, will be defaulted to the vlan of the network.",
			]
			type: "str"
		}
		state: {
			description: [
				"State of the network ip range.",
			]
			type:    "str"
			default: "present"
			choices: ["present", "absent"]
		}
		zone: {
			description: [
				"The Zone ID of the VLAN IP range.",
				"If not set, default zone is used.",
			]
			type: "str"
		}
		domain: {
			description: [
				"Domain of the account owning the VLAN.",
			]
			type: "str"
		}
		account: {
			description: [
				"Account who owns the VLAN.",
				"Mutually exclusive with I(project).",
			]
			type: "str"
		}
		project: {
			description: [
				"Project who owns the VLAN.",
				"Mutually exclusive with I(account).",
			]
			type: "str"
		}
		for_virtual_network: {
			description: [
				"C(yes) if VLAN is of Virtual type, C(no) if Direct.",
				"If set to C(yes) but neither I(physical_network) or I(network) is set CloudStack will try to add the VLAN range to the Physical Network with a Public traffic type.",
			]

			type:    "bool"
			default: false
		}
	}
	extends_documentation_fragment: "cloudstack"
}
