package ansible

module: exo_dns_record: {
	module:            "exo_dns_record"
	short_description: "Manages DNS records on Exoscale DNS."
	description: [
		"Create, update and delete records.",
	]
	version_added: "2.2"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: ["Name of the record."]
			default: ""
			type:    "str"
		}
		domain: {
			description: ["Domain the record is related to."]
			required: true
			type:     "str"
		}
		record_type: {
			description: ["Type of the record."]
			default: "A"
			choices: ["A", "ALIAS", "CNAME", "MX", "SPF", "URL", "TXT", "NS", "SRV", "NAPTR", "PTR", "AAAA", "SSHFP", "HINFO", "POOL"]
			aliases: ["rtype", "type"]
			type: "str"
		}
		content: {
			description: [
				"Content of the record.",
				"Required if C(state=present) or C(multiple=yes).",
			]
			aliases: ["value", "address"]
			type: "str"
		}
		ttl: {
			description: ["TTL of the record in seconds."]
			default: 3600
			type:    "int"
		}
		prio: {
			description: ["Priority of the record."]
			aliases: ["priority"]
			type: "int"
		}
		multiple: {
			description: [
				"Whether there are more than one records with similar I(name) and I(record_type).",
				"Only allowed for a few record types, e.g. C(record_type=A), C(record_type=NS) or C(record_type=MX).",
				"I(content) will not be updated, instead it is used as a key to find existing records.",
			]
			type:    "bool"
			default: false
		}
		state: {
			description: ["State of the record."]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
	}
	extends_documentation_fragment: "exoscale"
}
