package ansible

module: vultr_dns_record: {
	module:            "vultr_dns_record"
	short_description: "Manages DNS records on Vultr."
	description: [
		"Create, update and remove DNS records.",
	]
	version_added: "2.5"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: ["The record name (subrecord)."]
			default: ""
			aliases: ["subrecord"]
		}
		domain: {
			description: ["The domain the record is related to."]
			required: true
		}
		record_type: {
			description: ["Type of the record."]
			default: "A"
			choices: [
				"A",
				"AAAA",
				"CNAME",
				"MX",
				"SRV",
				"CAA",
				"TXT",
				"NS",
				"SSHFP",
			]
			aliases: ["type"]
		}
		data: description: [
			"Data of the record.",
			"Required if C(state=present) or C(multiple=yes).",
		]
		ttl: {
			description: ["TTL of the record."]
			default: 300
		}
		multiple: {
			description: [
				"Whether to use more than one record with similar C(name) including no name and C(record_type).",
				"Only allowed for a few record types, e.g. C(record_type=A), C(record_type=NS) or C(record_type=MX).",
				"C(data) will not be updated, instead it is used as a key to find existing records.",
			]
			default: false
			type:    "bool"
		}
		priority: {
			description: ["Priority of the record."]
			default: 0
		}
		state: {
			description: ["State of the DNS record."]
			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "vultr"
}
