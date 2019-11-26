package ansible

module: mso_schema_template_filter_entry: {
	module:            "mso_schema_template_filter_entry"
	short_description: "Manage filter entries in schema templates"
	description: [
		"Manage filter entries in schema templates on Cisco ACI Multi-Site.",
	]
	author: [
		"Dag Wieers (@dagwieers)",
	]
	version_added: "2.8"
	options: {
		schema: {
			description: [
				"The name of the schema.",
			]
			type:     "str"
			required: true
		}
		template: {
			description: [
				"The name of the template.",
			]
			type:     "str"
			required: true
		}
		filter: {
			description: [
				"The name of the filter to manage.",
			]
			type:     "str"
			required: true
		}
		filter_display_name: {
			description: [
				"The name as displayed on the MSO web interface.",
			]
			type: "str"
		}
		entry: {
			description: [
				"The filter entry name to manage.",
			]
			type: "str"
			aliases: ["name"]
		}
		display_name: {
			description: [
				"The name as displayed on the MSO web interface.",
			]
			type: "str"
			aliases: ["entry_display_name"]
		}
		description: {
			description: [
				"The description of this filer entry.",
			]
			type: "str"
			aliases: ["entry_description"]
		}
		ethertype: {
			description: [
				"The ethernet type to use for this filter entry.",
			]
			type: "str"
			choices: ["arp", "fcoe", "ip", "ipv4", "ipv6", "mac-security", "mpls-unicast", "trill", "unspecified"]
		}
		ip_protocol: {
			description: [
				"The IP protocol to use for this filter entry.",
			]
			type: "str"
			choices: ["eigrp", "egp", "icmp", "icmpv6", "igmp", "igp", "l2tp", "ospfigp", "pim", "tcp", "udp", "unspecified"]
		}
		tcp_session_rules: {
			description: [
				"A list of TCP session rules.",
			]
			type: "list"
			choices: ["acknowledgement", "established", "finish", "synchronize", "reset", "unspecified"]
		}
		source_from: {
			description: [
				"The source port range from.",
			]
			type: "str"
		}
		source_to: {
			description: [
				"The source port range to.",
			]
			type: "str"
		}
		destination_from: {
			description: [
				"The destination port range from.",
			]
			type: "str"
		}
		destination_to: {
			description: [
				"The destination port range to.",
			]
			type: "str"
		}
		arp_flag: {
			description: [
				"The ARP flag to use for this filter entry.",
			]
			type: "str"
			choices: ["reply", "request", "unspecified"]
		}
		stateful: {
			description: [
				"Whether this filter entry is stateful.",
			]
			type:    "bool"
			default: false
		}
		fragments_only: {
			description: [
				"Whether this filter entry only matches fragments.",
			]
			type:    "bool"
			default: false
		}
		state: {
			description: [
				"Use C(present) or C(absent) for adding or removing.",
				"Use C(query) for listing an object or multiple objects.",
			]
			type: "str"
			choices: ["absent", "present", "query"]
			default: "present"
		}
	}
	seealso: [{
		module: "mso_schema_template_contract_filter"
	}]
	notes: [
		"Due to restrictions of the MSO REST API this module creates filters when needed, and removes them when the last entry has been removed.",
	]
	extends_documentation_fragment: "mso"
}
