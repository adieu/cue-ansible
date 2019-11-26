package ansible

module: exo_dns_domain: {
	module:            "exo_dns_domain"
	short_description: "Manages domain records on Exoscale DNS API."
	description: [
		"Create and remove domain records.",
	]
	version_added: "2.2"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: ["Name of the record."]
			required: true
			type:     "str"
		}
		state: {
			description: ["State of the resource."]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
	}
	extends_documentation_fragment: "exoscale"
}
