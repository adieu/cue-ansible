package ansible

module: cs_zone_facts: {
	module:            "cs_zone_facts"
	short_description: "Gathering facts of zones from Apache CloudStack based clouds."
	description: [
		"Gathering facts from the API of a zone.",
		"Sets Ansible facts accessible by the key C(cloudstack_zone) and since version 2.6 also returns results.",
	]
	deprecated: {
		removed_in:  "2.13"
		why:         "Transformed into an info module."
		alternative: "Use M(cs_zone_info) instead."
	}
	version_added: "2.1"
	author:        "René Moser (@resmo)"
	options: zone: {
		description: ["Name of the zone."]
		type:     "str"
		required: true
		aliases: ["name"]
	}
	extends_documentation_fragment: "cloudstack"
}
