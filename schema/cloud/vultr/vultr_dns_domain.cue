package ansible

module: vultr_dns_domain: {
	module:            "vultr_dns_domain"
	short_description: "Manages DNS domains on Vultr."
	description: [
		"Create and remove DNS domains.",
	]
	version_added: "2.5"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: ["The domain name."]
			required: true
			aliases: ["domain"]
		}
		server_ip: description: [
			"The default server IP.",
			"Use M(vultr_dns_record) to change it once the domain is created.",
			"Required if C(state=present).",
		]
		state: {
			description: ["State of the DNS domain."]
			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "vultr"
}
