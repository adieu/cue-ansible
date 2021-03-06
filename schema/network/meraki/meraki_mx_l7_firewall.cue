package ansible

module: meraki_mx_l7_firewall: {
	module:            "meraki_mx_l7_firewall"
	short_description: "Manage MX appliance layer 7 firewalls in the Meraki cloud"
	version_added:     "2.9"
	description: [
		"Allows for creation, management, and visibility into layer 7 firewalls implemented on Meraki MX firewalls.",
	]
	notes: [
		"Module assumes a complete list of firewall rules are passed as a parameter.",
		"If there is interest in this module allowing manipulation of a single firewall rule, please submit an issue against this module.",
	]
	options: {
		state: {
			description: [
				"Query or modify a firewall rule.",
			]
			choices: ["present", "query"]
			default: "present"
			type:    "str"
		}
		net_name: {
			description: [
				"Name of network which MX firewall is in.",
			]
			type: "str"
		}
		net_id: {
			description: [
				"ID of network which MX firewall is in.",
			]
			type: "str"
		}
		rules: {
			description: [
				"List of layer 7 firewall rules.",
			]
			type: "list"
			suboptions: {
				policy: {
					description: [
						"Policy to apply if rule is hit.",
					]
					choices: ["deny"]
					default: "deny"
					type:    "str"
				}
				type: {
					description: [
						"Type of policy to apply.",
					]
					choices: [
						"application",
						"application_category",
						"blacklisted_countries",
						"host",
						"ip_range",
						"port",
						"whitelisted_countries",
					]
					type: "str"
				}
				application: {
					description: [
						"Application to filter.",
					]
					suboptions: {
						name: {
							description: [
								"Name of application to filter as defined by Meraki.",
							]
							type: "str"
						}
						id: {
							description: [
								"URI of application as defined by Meraki.",
							]
							type: "str"
						}
					}
				}
				application_category: {
					description: [
						"Category of applications to filter.",
					]
					suboptions: {
						name: {
							description: [
								"Name of application category to filter as defined by Meraki.",
							]
							type: "str"
						}
						id: {
							description: [
								"URI of application category as defined by Meraki.",
							]
							type: "str"
						}
					}
				}
				host: {
					description: [
						"FQDN of host to filter.",
					]
					type: "str"
				}
				ip_range: {
					description: [
						"CIDR notation range of IP addresses to apply rule to.",
						"Port can be appended to range with a C(\":\").",
					]
					type: "str"
				}
				port: {
					description: [
						"TCP or UDP based port to filter.",
					]
					type: "str"
				}
				countries: {
					description: [
						"List of countries to whitelist or blacklist.",
						"The countries follow the two-letter ISO 3166-1 alpha-2 format.",
					]
					type: "list"
				}
			}
		}
		categories: {
			description: [
				"When C(True), specifies that applications and application categories should be queried instead of firewall rules.",
			]
			type: "bool"
		}
	}
	author: [
		"Kevin Breit (@kbreit)",
	]
	extends_documentation_fragment: "meraki"
}
