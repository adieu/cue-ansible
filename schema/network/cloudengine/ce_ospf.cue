package ansible

module: ce_ospf: {
	module:            "ce_ospf"
	version_added:     "2.4"
	short_description: "Manages configuration of an OSPF instance on HUAWEI CloudEngine switches."
	description: [
		"Manages configuration of an OSPF instance on HUAWEI CloudEngine switches.",
	]
	author: "QijunPan (@QijunPan)"
	notes: [
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Recommended connection is C(netconf).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		process_id: {
			description: [
				"Specifies a process ID. The value is an integer ranging from 1 to 4294967295.",
			]

			required: true
		}
		area: description: [
			"Specifies the area ID. The area with the area-id being 0 is a backbone area. Valid values are a string, formatted as an IP address (i.e. \"0.0.0.0\") or as an integer between 1 and 4294967295.",
		]

		addr: description: [
			"Specifies the address of the network segment where the interface resides. The value is in dotted decimal notation.",
		]

		mask: description: [
			"IP network wildcard bits in decimal format between 0 and 32.",
		]
		auth_mode: {
			description: [
				"Specifies the authentication type.",
			]
			choices: ["none", "hmac-sha256", "md5", "hmac-md5", "simple"]
		}
		auth_text_simple: description: [
			"Specifies a password for simple authentication. The value is a string of 1 to 8 characters.",
		]

		auth_key_id: description: [
			"Authentication key id when C(auth_mode) is 'hmac-sha256', 'md5' or 'hmac-md5. Valid value is an integer is in the range from 1 to 255.",
		]

		auth_text_md5: description: [
			"Specifies a password for MD5, HMAC-MD5, or HMAC-SHA256 authentication. The value is a string of 1 to 255 case-sensitive characters, spaces not supported.",
		]

		nexthop_addr: description: [
			"IPv4 address for configure next-hop address's weight. Valid values are a string, formatted as an IP address.",
		]

		nexthop_weight: description: [
			"Indicates the weight of the next hop. The smaller the value is, the higher the preference of the route is. It is an integer that ranges from 1 to 254.",
		]

		max_load_balance: description: [
			"The maximum number of paths for forward packets over multiple paths. Valid value is an integer in the range from 1 to 64.",
		]

		state: {
			description: [
				"Determines whether the config should be present or not on the device.",
			]

			default: "present"
			choices: ["present", "absent"]
		}
	}
}
