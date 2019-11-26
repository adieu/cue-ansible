package ansible

module: bigip_apm_acl: {
	module:            "bigip_apm_acl"
	short_description: "Manage user-defined APM ACLs"
	description: [
		"Manage user-defined APM ACLs.",
	]
	version_added: 2.9
	options: {
		name: {
			description: [
				"Specifies the name of the ACL to manage.",
			]
			type:     "str"
			required: true
		}
		description: {
			description: [
				"User created ACL description.",
			]
			type: "str"
		}
		type: {
			description: [
				"Specifies the type of ACL to create.",
				"Once the type is set it cannot be changed.",
			]
			type: "str"
			choices: [
				"static",
				"dynamic",
			]
		}
		acl_order: {
			description: [
				"Specifies a number that indicates the order of this ACL relative to other ACLs.",
				"When not set, the device will always place the ACL after the last one created.",
				"The lower number the higher the ACL will be in the general order, with lowest number C(0) being the topmost one.",
				"Valid range of values is between C(0) and C(65535) inclusive.",
			]
			type: "int"
		}
		path_match_case: {
			description: [
				"Specifies whether alphabetic case is considered when matching paths in an access control entry.",
			]
			type: "bool"
		}
		entries: {
			description: [
				"Access control entries that define the ACL matching and its respective behavior.",
				"The order in which the rules are placed as arguments to this parameter, determines their order in the ACL, in other words changing the order of the same elements will cause a change on the unit.",
			]

			type: "list"
			suboptions: {
				action: {
					description: [
						"Specifies the action that the access control entry takes when a match for this access control entry is encountered.",
					]

					type:     "str"
					required: true
					choices: [
						"allow",
						"reject",
						"discard",
						"continue",
					]
				}
				dst_port: {
					description: [
						"Specifies the destination port for the access control entry.",
						"Can be set to C(*) to indicate all ports.",
						"Parameter is mutually exclusive with C(dst_port_range).",
					]
					type: "str"
				}
				dst_port_range: {
					description: [
						"Specifies the destination port range for the access control entry.",
						"Parameter is mutually exclusive with C(dst_port_range).",
						"To indicate all ports the C(dst_port) parameter must be used and set to C(*).",
					]
					type: "str"
				}
				src_port: {
					description: [
						"Specifies the source port for the access control entry.",
						"Can be set to C(*) to indicate all ports.",
						"Parameter is mutually exclusive with C(src_port_range).",
					]
					type: "str"
				}
				src_port_range: {
					description: [
						"Specifies the source port range for the access control entry.",
						"Parameter is mutually exclusive with C(src_port_range).",
						"To indicate all ports the C(src_port) parameter must be used and set to C(*).",
					]
					type: "str"
				}
				dst_addr: {
					description: [
						"Specifies the destination IP address for the access control entry.",
						"When set to C(any) the ACL will match any destination address, C(dst_mask) is ignored in this case.",
					]
					type: "str"
				}
				dst_mask: {
					description: [
						"Optional parameter that specifies the destination network mask for the access control entry.",
						"If not specified and C(dst_addr) is not C(any) the C(dst_addr) is deemed to be host address.",
					]
					type: "str"
				}
				src_addr: {
					description: [
						"Specifies the source IP address for the access control entry.",
						"When set to C(any) the ACL will match any source address, C(src_mask) is ignored in this case.",
					]
					type: "str"
				}
				src_mask: {
					description: [
						"Optional parameter that specifies the source network mask for the access control entry.",
						"If not specified and C(src_addr) is not C(any) the C(src_addr) is deemed to be host address.",
					]
					type: "str"
				}
				scheme: {
					description: [
						"This parameter applies to Layer 7 access control entries only.",
						"Specifies the URI scheme: C(http), C(https) or C(any) on which the access control entry operates.",
					]
					type: "str"
					choices: [
						"http",
						"https",
						"any",
					]
				}
				protocol: {
					description: [
						"This parameter applies to Layer 4 access control entries only.",
						"Specifies the protocol: C(tcp), C(udp), C(icmp) or C(all) protocols, to which the access control entry applies.",
					]

					type: "str"
					choices: [
						"tcp",
						"icmp",
						"udp",
						"all",
					]
				}
				host_name: {
					description: [
						"This parameter applies to Layer 7 access control entries only.",
						"Specifies a host to which the access control entry applies.",
					]
					type: "str"
				}
				paths: {
					description: [
						"This parameter applies to Layer 7 access control entries only.",
						"Specifies the path or paths to which the access control entry applies.",
					]
					type: "str"
				}
				log: {
					description: [
						"Specifies the log level that is logged when actions of this type occur.",
						"When C(none) it will log nothing, which is a default action.",
						"When C(packet) it will log the matched packet.",
					]
					type: "str"
					choices: [
						"none",
						"packet",
					]
				}
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
