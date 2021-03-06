package ansible

module: cp_mgmt_multicast_address_range: {
	module:            "cp_mgmt_multicast_address_range"
	short_description: "Manages multicast-address-range objects on Check Point over Web Services API"
	description: [
		"Manages multicast-address-range objects on Check Point devices including creating, updating and removing objects.",
		"All operations are performed over Web Services API.",
	]
	version_added: "2.9"
	author:        "Or Soffer (@chkp-orso)"
	options: {
		name: {
			description: [
				"Object name.",
			]
			type:     "str"
			required: true
		}
		ip_address: {
			description: [
				"IPv4 or IPv6 address. If both addresses are required use ipv4-address and ipv6-address fields explicitly.",
			]
			type: "str"
		}
		ipv4_address: {
			description: [
				"IPv4 address.",
			]
			type: "str"
		}
		ipv6_address: {
			description: [
				"IPv6 address.",
			]
			type: "str"
		}
		ip_address_first: {
			description: [
				"First IP address in the range. If both IPv4 and IPv6 address ranges are required, use the ipv4-address-first and the ipv6-address-first fields instead.",
			]
			type: "str"
		}
		ipv4_address_first: {
			description: [
				"First IPv4 address in the range.",
			]
			type: "str"
		}
		ipv6_address_first: {
			description: [
				"First IPv6 address in the range.",
			]
			type: "str"
		}
		ip_address_last: {
			description: [
				"Last IP address in the range. If both IPv4 and IPv6 address ranges are required, use the ipv4-address-first and the ipv6-address-first fields instead.",
			]
			type: "str"
		}
		ipv4_address_last: {
			description: [
				"Last IPv4 address in the range.",
			]
			type: "str"
		}
		ipv6_address_last: {
			description: [
				"Last IPv6 address in the range.",
			]
			type: "str"
		}
		tags: {
			description: [
				"Collection of tag identifiers.",
			]
			type: "list"
		}
		color: {
			description: [
				"Color of the object. Should be one of existing colors.",
			]
			type: "str"
			choices: [
				"aquamarine",
				"black",
				"blue",
				"crete blue",
				"burlywood",
				"cyan",
				"dark green",
				"khaki",
				"orchid",
				"dark orange",
				"dark sea green",
				"pink",
				"turquoise",
				"dark blue",
				"firebrick",
				"brown",
				"forest green",
				"gold",
				"dark gold",
				"gray",
				"dark gray",
				"light green",
				"lemon chiffon",
				"coral",
				"sea green",
				"sky blue",
				"magenta",
				"purple",
				"slate blue",
				"violet red",
				"navy blue",
				"olive",
				"orange",
				"red",
				"sienna",
				"yellow",
			]
		}
		comments: {
			description: [
				"Comments string.",
			]
			type: "str"
		}
		details_level: {
			description: [
				"The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.",
			]

			type: "str"
			choices: ["uid", "standard", "full"]
		}
		groups: {
			description: [
				"Collection of group identifiers.",
			]
			type: "list"
		}
		ignore_warnings: {
			description: [
				"Apply changes ignoring warnings.",
			]
			type: "bool"
		}
		ignore_errors: {
			description: [
				"Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.",
			]
			type: "bool"
		}
	}
	extends_documentation_fragment: "checkpoint_objects"
}
