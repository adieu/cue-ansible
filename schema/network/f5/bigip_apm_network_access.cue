package ansible

module: bigip_apm_network_access: {
	module:            "bigip_apm_network_access"
	short_description: "Manage APM Network Access resource"
	description: [
		"Manage APM Network Access resource.",
	]
	version_added: 2.9
	options: {
		name: {
			description: [
				"Specifies the name of the APM network access to manage/create.",
			]
			type:     "str"
			required: true
		}
		description: {
			description: [
				"User created network access description.",
			]
			type: "str"
		}
		ip_version: {
			description: [
				"Supported IP version on the network access resource.",
			]
			type: "str"
			choices: [
				"ipv4",
				"ipv4-ipv6",
			]
		}
		allow_local_subnet: {
			description: [
				"Enables local subnet access and local access to any host or subnet in routes specified in the client routing table.",
				"When C(yes) the system does not support integrated IP filtering.",
			]
			type: "bool"
		}
		allow_local_dns: {
			description: [
				"Enables local access to DNS servers configured on client prior to establishing network access connection.",
			]
			type: "bool"
		}
		split_tunnel: {
			description: [
				"Specifies that only the traffic targeted to a specified address space is sent over the network access tunnel.",
			]
			type: "bool"
		}
		snat_pool: {
			description: [
				"Specifies the name of a SNAT pool used for implementing selective and intelligent SNATs.",
				"When C(none) the system uses no SNAT pool for this network resource.",
				"When C(automap) the system uses all of the self IP addresses as the translation addresses for the pool.",
			]
			type: "str"
		}
		dtls: {
			description: [
				"When C(yes) the network access connection uses Datagram Transport Level Security instead of TCP, to provide better throughput for high demand applications like VoIP or streaming video.",
			]

			type: "bool"
		}
		dtls_port: {
			description: [
				"Specifies the port number that the network access resource uses for secure UDP traffic with DTLS.",
			]
			type: "int"
		}
		ipv4_lease_pool: {
			description: [
				"Specifies IPV4 lease pool resource to use with network access.",
				"Referencing lease pool can be done in the full path format for example, C(/Common/pool_name).",
				"When lease pool is referenced in full path format, the C(partition) parameter is ignored.",
			]
			type: "str"
		}
		ipv6_lease_pool: {
			description: [
				"Specifies IPV6 lease pool resource to use with network access.",
				"Referencing lease pool can be done in the full path format for example, C(/Common/pool_name).",
				"When lease pool is referenced in full path format, the C(partition) parameter is ignored.",
			]
			type: "str"
		}
		excluded_ipv6_adresses: {
			description: [
				"Specifies IPV6 address spaces for which traffic is not forced through the tunnel.",
			]
			type: "list"
			suboptions: subnet: {
				description: [
					"The address of subnet in CIDR format, e.g. C(2001:db8:abcd:8000::/52)",
					"Host addresses can be specified without the CIDR mask notation.",
				]
				type: "str"
			}
		}
		excluded_ipv4_adresses: {
			description: [
				"Specifies IPV4 address spaces for which traffic is not forced through the tunnel.",
			]
			type: "list"
			suboptions: subnet: {
				description: [
					"The address of subnet in CIDR format, e.g. C(192.168.1.0/24)",
					"Host addresses can be specified without the CIDR mask notation.",
				]
				type: "str"
			}
		}
		excluded_dns_addresses: {
			description: [
				"Specifies the DNS address spaces for which traffic is not forced through the tunnel.",
			]
			type: "list"
		}
		dns_address_space: {
			description: [
				"Specifies a list of domain names describing the target LAN DNS addresses.",
			]
			type: "list"
		}
		ipv4_address_space: {
			description: [
				"Specifies a list of IPv4 hosts or networks describing the target LAN.",
				"This option is mandatory when creating a new resource and C(split_tunnel) is set to C(yes).",
			]
			type: "list"
			suboptions: subnet: {
				description: [
					"The address of subnet in CIDR format, e.g. C(192.168.1.0/24)",
					"Host addresses can be specified without the CIDR mask notation.",
				]
				type: "str"
			}
		}
		ipv6_address_space: {
			description: [
				"Specifies a list of IPv6 hosts or networks describing the target LAN.",
				"This option is mandatory when creating a new resource and C(split_tunnel) is set to C(yes).",
			]
			type: "list"
			suboptions: subnet: {
				description: [
					"The address of subnet in CIDR format, e.g. C(2001:db8:abcd:8000::/52)",
					"Host addresses can be specified without the CIDR mask notation.",
				]
				type: "str"
			}
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:    "str"
			default: "Common"
		}
		state: {
			description: [
				"When C(state) is C(present), ensures that the ACL exists.",
				"When C(state) is C(absent), ensures that the ACL is removed.",
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
	author: ["Wojciech Wypior (@wojtek0806)"]
}
