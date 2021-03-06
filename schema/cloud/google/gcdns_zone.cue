package ansible

module: gcdns_zone: {
	module:            "gcdns_zone"
	short_description: "Creates or removes zones in Google Cloud DNS"
	description: [
		"Creates or removes managed zones in Google Cloud DNS.",
	]
	version_added: "2.2"
	author:        "William Albert (@walbert947)"
	requirements: [
		"apache-libcloud >= 0.19.0",
	]
	deprecated: {
		removed_in:  "2.12"
		why:         "Updated modules released with increased functionality"
		alternative: "Use M(gcp_dns_managed_zone) instead."
	}
	options: {
		state: {
			description: [
				"Whether the given zone should or should not be present.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		zone: {
			description: [
				"The DNS domain name of the zone.",
				"This is NOT the Google Cloud DNS zone ID (e.g., example-com). If you attempt to specify a zone ID, this module will attempt to create a TLD and will fail.",
			]

			required: true
			aliases: ["name"]
		}
		description: {
			description: [
				"An arbitrary text string to use for the zone description.",
			]
			default: ""
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
		"See also M(gcdns_record).",
		"Zones that are newly created must still be set up with a domain registrar before they can be used.",
	]
}
