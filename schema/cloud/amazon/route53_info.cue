package ansible

module: route53_info: {
	module:            "route53_info"
	short_description: "Retrieves route53 details using AWS methods"
	description: [
		"Gets various details related to Route53 zone, record set or health check details.",
		"This module was called C(route53_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.0"
	options: {
		query: {
			description: [
				"Specifies the query action to take.",
			]
			required: true
			choices: [
				"change",
				"checker_ip_range",
				"health_check",
				"hosted_zone",
				"record_sets",
				"reusable_delegation_set",
			]

			type: "str"
		}
		change_id: {
			description: [
				"The ID of the change batch request.",
				"The value that you specify here is the value that ChangeResourceRecordSets returned in the Id element when you submitted the request.",
				"Required if I(query=change).",
			]
			required: false
			type:     "str"
		}
		hosted_zone_id: {
			description: [
				"The Hosted Zone ID of the DNS zone.",
				"Required if I(query) is set to I(hosted_zone) and I(hosted_zone_method) is set to I(details).",
				"Required if I(query) is set to I(record_sets).",
			]
			required: false
			type:     "str"
		}
		max_items: {
			description: [
				"Maximum number of items to return for various get/list requests.",
			]
			required: false
			type:     "str"
		}
		next_marker: {
			description: [
				"Some requests such as list_command: hosted_zones will return a maximum number of entries - EG 100 or the number specified by I(max_items). If the number of entries exceeds this maximum another request can be sent using the NextMarker entry from the first response to get the next page of results.",
			]

			required: false
			type:     "str"
		}
		delegation_set_id: {
			description: [
				"The DNS Zone delegation set ID.",
			]
			required: false
			type:     "str"
		}
		start_record_name: {
			description: [
				"The first name in the lexicographic ordering of domain names that you want the list_command: record_sets to start listing from.",
			]

			required: false
			type:     "str"
		}
		type: {
			description: [
				"The type of DNS record.",
			]
			required: false
			choices: ["A", "CNAME", "MX", "AAAA", "TXT", "PTR", "SRV", "SPF", "CAA", "NS"]
			type: "str"
		}
		dns_name: {
			description: [
				"The first name in the lexicographic ordering of domain names that you want the list_command to start listing from.",
			]

			required: false
			type:     "str"
		}
		resource_id: {
			description: [
				"The ID/s of the specified resource/s.",
				"Required if I(query=health_check) and I(health_check_method=tags).",
				"Required if I(query=hosted_zone) and I(hosted_zone_method=tags).",
			]
			required: false
			aliases: ["resource_ids"]
			type:     "list"
			elements: "str"
		}
		health_check_id: {
			description: [
				"The ID of the health check.",
				"Required if C(query) is set to C(health_check) and C(health_check_method) is set to C(details) or C(status) or C(failure_reason).",
			]

			required: false
			type:     "str"
		}
		hosted_zone_method: {
			description: [
				"This is used in conjunction with query: hosted_zone. It allows for listing details, counts or tags of various hosted zone details.",
			]

			required: false
			choices: [
				"details",
				"list",
				"list_by_name",
				"count",
				"tags",
			]

			default: "list"
			type:    "str"
		}
		health_check_method: {
			description: [
				"This is used in conjunction with query: health_check. It allows for listing details, counts or tags of various health check details.",
			]

			required: false
			choices: [
				"list",
				"details",
				"status",
				"failure_reason",
				"count",
				"tags",
			]

			default: "list"
			type:    "str"
		}
	}
	author: "Karen Cheng (@Etherdaemon)"
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
