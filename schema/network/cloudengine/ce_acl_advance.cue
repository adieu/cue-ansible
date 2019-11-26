package ansible

module: ce_acl_advance: {
	module:            "ce_acl_advance"
	version_added:     "2.4"
	short_description: "Manages advanced ACL configuration on HUAWEI CloudEngine switches."
	description: [
		"Manages advanced ACL configurations on HUAWEI CloudEngine switches.",
	]
	author: [
		"wangdezhuang (@QijunPan)",
	]
	notes: [
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Recommended connection is C(netconf).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		state: {
			description: [
				"Specify desired state of the resource.",
			]
			required: false
			default:  "present"
			choices: ["present", "absent", "delete_acl"]
		}
		acl_name: {
			description: [
				"ACL number or name. For a numbered rule group, the value ranging from 3000 to 3999 indicates a advance ACL. For a named rule group, the value is a string of 1 to 32 case-sensitive characters starting with a letter, spaces not supported.",
			]

			required: true
		}
		acl_num: description: [
			"ACL number. The value is an integer ranging from 3000 to 3999.",
		]

		acl_step: description: [
			"ACL step. The value is an integer ranging from 1 to 20. The default value is 5.",
		]

		acl_description: description: [
			"ACL description. The value is a string of 1 to 127 characters.",
		]

		rule_name: description: [
			"Name of a basic ACL rule. The value is a string of 1 to 32 characters.",
		]

		rule_id: description: [
			"ID of a basic ACL rule in configuration mode. The value is an integer ranging from 0 to 4294967294.",
		]

		rule_action: {
			description: [
				"Matching mode of basic ACL rules.",
			]
			choices: ["permit", "deny"]
		}
		protocol: {
			description: [
				"Protocol type.",
			]
			choices: ["ip", "icmp", "igmp", "ipinip", "tcp", "udp", "gre", "ospf"]
		}
		source_ip: description: [
			"Source IP address. The value is a string of 0 to 255 characters.The default value is 0.0.0.0. The value is in dotted decimal notation.",
		]

		src_mask: description: [
			"Source IP address mask. The value is an integer ranging from 1 to 32.",
		]

		src_pool_name: description: [
			"Name of a source pool. The value is a string of 1 to 32 characters.",
		]

		dest_ip: description: [
			"Destination IP address. The value is a string of 0 to 255 characters.The default value is 0.0.0.0. The value is in dotted decimal notation.",
		]

		dest_mask: description: [
			"Destination IP address mask. The value is an integer ranging from 1 to 32.",
		]

		dest_pool_name: description: [
			"Name of a destination pool. The value is a string of 1 to 32 characters.",
		]

		src_port_op: {
			description: [
				"Range type of the source port.",
			]
			choices: ["lt", "eq", "gt", "range"]
		}
		src_port_begin: description: [
			"Start port number of the source port. The value is an integer ranging from 0 to 65535.",
		]

		src_port_end: description: [
			"End port number of the source port. The value is an integer ranging from 0 to 65535.",
		]

		src_port_pool_name: description: [
			"Name of a source port pool. The value is a string of 1 to 32 characters.",
		]

		dest_port_op: {
			description: [
				"Range type of the destination port.",
			]
			choices: ["lt", "eq", "gt", "range"]
		}
		dest_port_begin: description: [
			"Start port number of the destination port. The value is an integer ranging from 0 to 65535.",
		]

		dest_port_end: description: [
			"End port number of the destination port. The value is an integer ranging from 0 to 65535.",
		]

		dest_port_pool_name: description: [
			"Name of a destination port pool. The value is a string of 1 to 32 characters.",
		]

		frag_type: {
			description: [
				"Type of packet fragmentation.",
			]
			choices: ["fragment", "clear_fragment"]
		}
		precedence: description: [
			"Data packets can be filtered based on the priority field. The value is an integer ranging from 0 to 7.",
		]

		tos: description: [
			"ToS value on which data packet filtering is based. The value is an integer ranging from 0 to 15.",
		]

		dscp: description: [
			"Differentiated Services Code Point. The value is an integer ranging from 0 to 63.",
		]

		icmp_name: {
			description: [
				"ICMP name.",
			]
			choices: [
				"unconfiged",
				"echo",
				"echo-reply",
				"fragmentneed-DFset",
				"host-redirect",
				"host-tos-redirect",
				"host-unreachable",
				"information-reply",
				"information-request",
				"net-redirect",
				"net-tos-redirect",
				"net-unreachable",
				"parameter-problem",
				"port-unreachable",
				"protocol-unreachable",
				"reassembly-timeout",
				"source-quench",
				"source-route-failed",
				"timestamp-reply",
				"timestamp-request",
				"ttl-exceeded",
				"address-mask-reply",
				"address-mask-request",
				"custom",
			]
		}
		icmp_type: description: [
			"ICMP type. This parameter is available only when the packet protocol is ICMP. The value is an integer ranging from 0 to 255.",
		]

		icmp_code: description: [
			"ICMP message code. Data packets can be filtered based on the ICMP message code. The value is an integer ranging from 0 to 255.",
		]

		ttl_expired: {
			description: [
				"Whether TTL Expired is matched, with the TTL value of 1.",
			]
			type:    "bool"
			default: "no"
		}
		vrf_name: description: [
			"VPN instance name. The value is a string of 1 to 31 characters.The default value is _public_.",
		]

		syn_flag: description: [
			"TCP flag value. The value is an integer ranging from 0 to 63.",
		]

		tcp_flag_mask: description: [
			"TCP flag mask value. The value is an integer ranging from 0 to 63.",
		]

		established: {
			description: [
				"Match established connections.",
			]
			type:    "bool"
			default: "no"
		}
		time_range: description: [
			"Name of a time range in which an ACL rule takes effect.",
		]
		rule_description: description: [
			"Description about an ACL rule.",
		]
		igmp_type: {
			description: [
				"Internet Group Management Protocol.",
			]
			choices: [
				"host-query",
				"mrouter-adver",
				"mrouter-solic",
				"mrouter-termi",
				"mtrace-resp",
				"mtrace-route",
				"v1host-report",
				"v2host-report",
				"v2leave-group",
				"v3host-report",
			]
		}
		log_flag: {
			description: [
				"Flag of logging matched data packets.",
			]
			type:    "bool"
			default: "no"
		}
	}
}
