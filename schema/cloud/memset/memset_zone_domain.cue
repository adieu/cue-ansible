package ansible

module: memset_zone_domain: {
	module:            "memset_zone_domain"
	author:            "Simon Weald (@glitchcrab)"
	version_added:     "2.6"
	short_description: "Create and delete domains in Memset DNS zones."
	notes: [
		"Zone domains can be thought of as a collection of domains, all of which share the same DNS records (i.e. they point to the same IP). An API key generated via the Memset customer control panel is needed with the following minimum scope - I(dns.zone_domain_create), I(dns.zone_domain_delete), I(dns.zone_domain_list).",
		"Currently this module can only create one domain at a time. Multiple domains should be created using C(with_items).",
	]

	description: [
		"Manage DNS zone domains in a Memset account.",
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
		domain: {
			required: true
			description: [
				"The zone domain name. Ensure this value has at most 250 characters.",
			]
			aliases: ["name"]
		}
		zone: {
			required: true
			description: ["The zone to add the domain to (this must already exist)."]
		}
	}
}
