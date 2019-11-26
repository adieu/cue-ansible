package ansible

module: bigip_profile_dns: {
	module:            "bigip_profile_dns"
	short_description: "Manage DNS profiles on a BIG-IP"
	description: [
		"Manage DNS profiles on a BIG-IP. Many DNS profiles; each with their own adjustments to the standard C(dns) profile. Users of this module should be aware that many of the adjustable knobs have no module default. Instead, the default is assigned by the BIG-IP system itself which, in most cases, is acceptable.",
	]

	version_added: 2.6
	options: {
		name: {
			description: [
				"Specifies the name of the DNS profile.",
			]
			type:     "str"
			required: true
		}
		parent: {
			description: [
				"Specifies the profile from which this profile inherits settings.",
				"When creating a new profile, if this parameter is not specified, the default is the system-supplied C(dns) profile.",
			]

			type: "str"
		}
		enable_dns_express: {
			description: [
				"Specifies whether the DNS Express engine is enabled.",
				"When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.",
				"The DNS Express engine receives zone transfers from the authoritative DNS server for the zone. If the C(enable_zone_transfer) setting is also C(yes) on this profile, the DNS Express engine also responds to zone transfer requests made by the nameservers configured as zone transfer clients for the DNS Express zone.",
			]

			type: "bool"
		}
		enable_zone_transfer: {
			description: [
				"Specifies whether the system answers zone transfer requests for a DNS zone created on the system.",
				"When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.",
				"The C(enable_dns_express) and C(enable_zone_transfer) settings on a DNS profile affect how the system responds to zone transfer requests.",
				"When the C(enable_dns_express) and C(enable_zone_transfer) settings are both C(yes), if a zone transfer request matches a DNS Express zone, then DNS Express answers the request.",
				"When the C(enable_dns_express) setting is C(no) and the C(enable_zone_transfer) setting is C(yes), the BIG-IP system processes zone transfer requests based on the last action and answers the request from local BIND or a pool member.",
			]

			type: "bool"
		}
		enable_dnssec: {
			description: [
				"Specifies whether the system signs responses with DNSSEC keys and replies to DNSSEC specific queries (e.g., DNSKEY query type).",
				"When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.",
			]

			type: "bool"
		}
		enable_gtm: {
			description: [
				"Specifies whether the system uses Global Traffic Manager to manage the response.",
				"When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.",
			]

			type: "bool"
		}
		process_recursion_desired: {
			description: [
				"Specifies whether to process client-side DNS packets with Recursion Desired set in the header.",
				"When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.",
				"If set to C(no), processing of the packet is subject to the unhandled-query-action option.",
			]

			type: "bool"
		}
		use_local_bind: {
			description: [
				"Specifies whether the system forwards non-wide IP queries to the local BIND server on the BIG-IP system.",
				"For best performance, disable this setting when using a DNS cache.",
				"When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.",
			]

			type: "bool"
		}
		enable_dns_firewall: {
			description: [
				"Specifies whether DNS firewall capability is enabled.",
				"When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.",
			]

			type: "bool"
		}
		enable_cache: {
			description: [
				"Specifies whether the system caches DNS responses.",
				"When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.",
				"When C(yes), the BIG-IP system caches DNS responses handled by the virtual servers associated with this profile. When you enable this setting, you must also specify a value for C(cache_name).",
				"When C(no), the BIG-IP system does not cache DNS responses handled by the virtual servers associated with this profile. However, the profile retains the association with the DNS cache in the C(cache_name) parameter. Disable this setting when you want to debug the system.",
			]

			type:          "bool"
			version_added: 2.7
		}
		cache_name: {
			description: [
				"Specifies the user-created cache that the system uses to cache DNS responses.",
				"When you select a cache for the system to use, you must also set C(enable_dns_cache) to C(yes)",
			]

			type:          "str"
			version_added: 2.7
		}
		unhandled_query_action: {
			description: [
				"Specifies the action to take when a query does not match a Wide IP or a DNS Express Zone.",
				"When C(allow), the BIG-IP system forwards queries to a DNS server or pool member. If a pool is not associated with a listener and the Use BIND Server on BIG-IP setting is set to Enabled, requests are forwarded to the local BIND server.",
				"When C(drop), the BIG-IP system does not respond to the query.",
				"When C(reject), the BIG-IP system returns the query with the REFUSED return code.",
				"When C(hint), the BIG-IP system returns the query with a list of root name servers.",
				"When C(no-error), the BIG-IP system returns the query with the NOERROR return code.",
				"When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.",
			]

			type: "str"
			choices: [
				"allow",
				"drop",
				"reject",
				"hint",
				"no-error",
			]
			version_added: 2.7
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
				"When C(present), ensures that the profile exists.",
				"When C(absent), ensures the profile is removed.",
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
