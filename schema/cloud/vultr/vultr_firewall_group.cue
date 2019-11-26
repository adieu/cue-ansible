package ansible

module: vultr_firewall_group: {
	module:            "vultr_firewall_group"
	short_description: "Manages firewall groups on Vultr."
	description: [
		"Create and remove firewall groups.",
	]
	version_added: "2.5"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: ["Name of the firewall group."]
			required: true
			aliases: ["description"]
		}
		state: {
			description: ["State of the firewall group."]
			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "vultr"
}
