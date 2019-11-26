package ansible

module: memset_zone: {
	module:            "memset_zone"
	author:            "Simon Weald (@glitchcrab)"
	version_added:     "2.6"
	short_description: "Creates and deletes Memset DNS zones."
	notes: [
		"Zones can be thought of as a logical group of domains, all of which share the same DNS records (i.e. they point to the same IP). An API key generated via the Memset customer control panel is needed with the following minimum scope - I(dns.zone_create), I(dns.zone_delete), I(dns.zone_list).",
	]

	description: [
		"Manage DNS zones in a Memset account.",
	]
	options: {
		state: {
			required: true
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
		name: {
			required: true
			description: [
				"The zone nickname; usually the same as the main domain. Ensure this value has at most 250 characters.",
			]

			aliases: ["nickname"]
		}
		ttl: {
			description: [
				"The default TTL for all records created in the zone. This must be a valid int from U(https://www.memset.com/apidocs/methods_dns.html#dns.zone_create).",
			]

			choices: [0, 300, 600, 900, 1800, 3600, 7200, 10800, 21600, 43200, 86400]
		}
		force: {
			required: false
			default:  false
			type:     "bool"
			description: ["Forces deletion of a zone and all zone domains/zone records it contains."]
		}
	}
}
