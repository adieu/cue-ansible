package ansible

module: gcdns_record: {
	module:            "gcdns_record"
	short_description: "Creates or removes resource records in Google Cloud DNS"
	description: [
		"Creates or removes resource records in Google Cloud DNS.",
	]
	version_added: "2.2"
	author:        "William Albert (@walbert947)"
	requirements: [
		"python >= 2.6",
		"apache-libcloud >= 0.19.0",
	]
	deprecated: {
		removed_in:  "2.12"
		why:         "Updated modules released with increased functionality"
		alternative: "Use M(gcp_dns_resource_record_set) instead."
	}
	options: {
		state: {
			description: [
				"Whether the given resource record should or should not be present.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		record: {
			description: [
				"The fully-qualified domain name of the resource record.",
			]
			required: true
			aliases: ["name"]
		}
		zone: description: [
			"The DNS domain name of the zone (e.g., example.com).",
			"One of either I(zone) or I(zone_id) must be specified as an option, or the module will fail.",
			"If both I(zone) and I(zone_id) are specified, I(zone_id) will be used.",
		]

		zone_id: description: [
			"The Google Cloud ID of the zone (e.g., example-com).",
			"One of either I(zone) or I(zone_id) must be specified as an option, or the module will fail.",
			"These usually take the form of domain names with the dots replaced with dashes. A zone ID will never have any dots in it.",
			"I(zone_id) can be faster than I(zone) in projects with a large number of zones.",
			"If both I(zone) and I(zone_id) are specified, I(zone_id) will be used.",
		]

		type: {
			description: [
				"The type of resource record to add.",
			]
			required: true
			choices: ["A", "AAAA", "CNAME", "SRV", "TXT", "SOA", "NS", "MX", "SPF", "PTR"]
		}
		record_data: {
			description: [
				"The record_data to use for the resource record.",
				"I(record_data) must be specified if I(state) is C(present) or I(overwrite) is C(True), or the module will fail.",
				"Valid record_data vary based on the record's I(type). In addition, resource records that contain a DNS domain name in the value field (e.g., CNAME, PTR, SRV, .etc) MUST include a trailing dot in the value.",
				"Individual string record_data for TXT records must be enclosed in double quotes.",
				"For resource records that have the same name but different record_data (e.g., multiple A records), they must be defined as multiple list entries in a single record.",
			]

			required: false
			aliases: ["value"]
		}
		ttl: {
			description: [
				"The amount of time in seconds that a resource record will remain cached by a caching resolver.",
			]

			default: 300
		}
		overwrite: {
			description: [
				"Whether an attempt to overwrite an existing record should succeed or fail. The behavior of this option depends on I(state).",
				"If I(state) is C(present) and I(overwrite) is C(True), this module will replace an existing resource record of the same name with the provided I(record_data). If I(state) is C(present) and I(overwrite) is C(False), this module will fail if there is an existing resource record with the same name and type, but different resource data.",
				"If I(state) is C(absent) and I(overwrite) is C(True), this module will remove the given resource record unconditionally. If I(state) is C(absent) and I(overwrite) is C(False), this module will fail if the provided record_data do not match exactly with the existing resource record's record_data.",
			]

			type:    "bool"
			default: "no"
		}
		service_account_email: description: [
			"The e-mail address for a service account with access to Google Cloud DNS.",
		]

		pem_file: description: [
			"The path to the PEM file associated with the service account email.",
			"This option is deprecated and may be removed in a future release. Use I(credentials_file) instead.",
		]

		credentials_file: description: [
			"The path to the JSON file associated with the service account email.",
		]

		project_id: description: [
			"The Google Cloud Platform project ID to use.",
		]
	}
	notes: [
		"See also M(gcdns_zone).",
		"This modules's underlying library does not support in-place updates for DNS resource records. Instead, resource records are quickly deleted and recreated.",
		"SOA records are technically supported, but their functionality is limited to verifying that a zone's existing SOA record matches a pre-determined value. The SOA record cannot be updated.",
		"Root NS records cannot be updated.",
		"NAPTR records are not supported.",
	]
}
