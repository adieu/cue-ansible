package ansible

module: fortios_ipv4_policy: {
	module:            "fortios_ipv4_policy"
	version_added:     "2.3"
	author:            "Benjamin Jolivot (@bjolivot)"
	short_description: "Manage IPv4 policy objects on Fortinet FortiOS firewall devices"
	description: [
		"This module provides management of firewall IPv4 policies on FortiOS devices.",
	]
	extends_documentation_fragment: "fortios"
	options: {
		id: {
			description: [
				"Policy ID. Warning: policy ID number is different than Policy sequence number. The policy ID is the number assigned at policy creation. The sequence number represents the order in which the Fortigate will evaluate the rule for policy enforcement, and also the order in which rules are listed in the GUI and CLI. These two numbers do not necessarily correlate: this module is based off policy ID. TIP: policy ID can be viewed in the GUI by adding 'ID' to the display columns",
			]

			required: true
		}
		state: {
			description: [
				"Specifies if policy I(id) need to be added or deleted.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		src_intf: {
			description: [
				"Specifies source interface name(s).",
			]
			default: "any"
		}
		dst_intf: {
			description: [
				"Specifies destination interface name(s).",
			]
			default: "any"
		}
		src_addr: description: [
			"Specifies source address (or group) object name(s). Required when I(state=present).",
		]
		src_addr_negate: {
			description: [
				"Negate source address param.",
			]
			default: false
			type:    "bool"
		}
		dst_addr: description: [
			"Specifies destination address (or group) object name(s). Required when I(state=present).",
		]
		dst_addr_negate: {
			description: [
				"Negate destination address param.",
			]
			default: false
			type:    "bool"
		}
		policy_action: {
			description: [
				"Specifies accept or deny action policy. Required when I(state=present).",
			]
			choices: ["accept", "deny"]
			aliases: ["action"]
		}
		service: {
			description: [
				"Specifies policy service(s), could be a list (ex: ['MAIL','DNS']). Required when I(state=present).",
			]
			aliases: [
				"services",
			]
		}
		service_negate: {
			description: [
				"Negate policy service(s) defined in service value.",
			]
			default: false
			type:    "bool"
		}
		schedule: {
			description: [
				"defines policy schedule.",
			]
			default: "always"
		}
		nat: {
			description: [
				"Enable or disable Nat.",
			]
			default: false
			type:    "bool"
		}
		fixedport: {
			description: [
				"Use fixed port for nat.",
			]
			default: false
			type:    "bool"
		}
		poolname: description: [
			"Specifies NAT pool name.",
		]
		av_profile: description: [
			"Specifies Antivirus profile name.",
		]
		webfilter_profile: description: [
			"Specifies Webfilter profile name.",
		]
		ips_sensor: description: [
			"Specifies IPS Sensor profile name.",
		]
		application_list: description: [
			"Specifies Application Control name.",
		]
		logtraffic: {
			version_added: "2.4"
			description: [
				"Logs sessions that matched policy.",
			]
			default: "utm"
			choices: ["disable", "utm", "all"]
		}
		logtraffic_start: {
			version_added: "2.4"
			description: [
				"Logs beginning of session as well.",
			]
			default: false
			type:    "bool"
		}
		comment: description: [
			"free text to describe policy.",
		]
	}
	requirements: ["pyFG"]
}
