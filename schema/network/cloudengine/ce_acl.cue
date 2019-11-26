package ansible

module: ce_acl: {
	module:            "ce_acl"
	version_added:     "2.4"
	short_description: "Manages base ACL configuration on HUAWEI CloudEngine switches."
	description: [
		"Manages base ACL configurations on HUAWEI CloudEngine switches.",
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
			default: "present"
			choices: ["present", "absent", "delete_acl"]
		}
		acl_name: {
			description: [
				"ACL number or name. For a numbered rule group, the value ranging from 2000 to 2999 indicates a basic ACL. For a named rule group, the value is a string of 1 to 32 case-sensitive characters starting with a letter, spaces not supported.",
			]

			required: true
		}
		acl_num: description: [
			"ACL number. The value is an integer ranging from 2000 to 2999.",
		]

		acl_step: description: [
			"ACL step. The value is an integer ranging from 1 to 20. The default value is 5.",
		]

		acl_description: description: [
			"ACL description. The value is a string of 1 to 127 characters.",
		]

		rule_name: description: [
			"Name of a basic ACL rule. The value is a string of 1 to 32 characters. The value is case-insensitive, and cannot contain spaces or begin with an underscore (_).",
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
		source_ip: description: [
			"Source IP address. The value is a string of 0 to 255 characters.The default value is 0.0.0.0. The value is in dotted decimal notation.",
		]

		src_mask: description: [
			"Mask of a source IP address. The value is an integer ranging from 1 to 32.",
		]

		frag_type: {
			description: [
				"Type of packet fragmentation.",
			]
			choices: ["fragment", "clear_fragment"]
		}
		vrf_name: description: [
			"VPN instance name. The value is a string of 1 to 31 characters.The default value is _public_.",
		]

		time_range: description: [
			"Name of a time range in which an ACL rule takes effect. The value is a string of 1 to 32 characters. The value is case-insensitive, and cannot contain spaces. The name must start with an uppercase or lowercase letter. In addition, the word \"all\" cannot be specified as a time range name.",
		]

		rule_description: description: [
			"Description about an ACL rule. The value is a string of 1 to 127 characters.",
		]

		log_flag: {
			description: [
				"Flag of logging matched data packets.",
			]
			type:    "bool"
			default: "no"
		}
	}
}
