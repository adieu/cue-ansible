package ansible

module: meraki_firewalled_services: {
	module:            "meraki_firewalled_services"
	short_description: "Edit firewall policies for administrative network services"
	version_added:     "2.9"
	description: [
		"Allows for setting policy firewalled services for Meraki network devices.",
	]

	options: {
		auth_key: {
			description: [
				"Authentication key provided by the dashboard. Required if environmental variable MERAKI_KEY is not set.",
			]
			type: "str"
		}
		net_name: {
			description: [
				"Name of a network.",
			]
			aliases: ["network"]
			type: "str"
		}
		net_id: {
			description: [
				"ID number of a network.",
			]
			type: "str"
		}
		org_name: {
			description: [
				"Name of organization associated to a network.",
			]
			type: "str"
		}
		org_id: {
			description: [
				"ID of organization associated to a network.",
			]
			type: "str"
		}
		state: {
			description: [
				"States that a policy should be created or modified.",
			]
			choices: ["present", "query"]
			default: "present"
			type:    "str"
		}
		service: {
			description: [
				"Network service to query or modify.",
			]
			choices: ["ICMP", "SNMP", "web"]
			type: "str"
		}
		access: {
			description: [
				"Network service to query or modify.",
			]
			choices: ["blocked", "restricted", "unrestricted"]
			type: "str"
		}
		allowed_ips: {
			description: [
				"List of IP addresses allowed to access a service.",
				"Only used when C(access) is set to restricted.",
			]
			type: "list"
		}
	}

	author: [
		"Kevin Breit (@kbreit)",
	]
	extends_documentation_fragment: "meraki"
}
