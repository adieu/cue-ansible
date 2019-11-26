package ansible

module: memset_zone_record: {
	module:            "memset_zone_record"
	author:            "Simon Weald (@glitchcrab)"
	version_added:     "2.6"
	short_description: "Create and delete records in Memset DNS zones."
	notes: [
		"Zones can be thought of as a logical group of domains, all of which share the same DNS records (i.e. they point to the same IP). An API key generated via the Memset customer control panel is needed with the following minimum scope - I(dns.zone_create), I(dns.zone_delete), I(dns.zone_list).",
		"Currently this module can only create one DNS record at a time. Multiple records should be created using C(with_items).",
	]

	description: [
		"Manage DNS records in a Memset account.",
	]
	options: {
		state: {
			default: "present"
			description: [
				"Indicates desired state of resource.",
			]
			choices: ["absent", "present"]
		}
		api_key: {
			required: true
			description: [
				"The API key obtained from the Memset control panel.",
			]
		}
		address: {
			required: true
			description: [
				"The address for this record (can be IP or text string depending on record type).",
			]
			aliases: ["ip", "data"]
		}
		priority: description: [
			"C(SRV) and C(TXT) record priority, in the range 0 > 999 (inclusive).",
		]
		record: {
			required: false
			description: [
				"The subdomain to create.",
			]
		}
		type: {
			required: true
			description: [
				"The type of DNS record to create.",
			]
			choices: ["A", "AAAA", "CNAME", "MX", "NS", "SRV", "TXT"]
		}
		relative: {
			type: "bool"
			description: [
				"If set then the current domain is added onto the address field for C(CNAME), C(MX), C(NS) and C(SRV)record types.",
			]
		}

		ttl: {
			description: [
				"The record's TTL in seconds (will inherit zone's TTL if not explicitly set). This must be a valid int from U(https://www.memset.com/apidocs/methods_dns.html#dns.zone_record_create).",
			]

			choices: [0, 300, 600, 900, 1800, 3600, 7200, 10800, 21600, 43200, 86400]
		}
		zone: {
			required: true
			description: ["The name of the zone to which to add the record to."]
		}
	}
}
