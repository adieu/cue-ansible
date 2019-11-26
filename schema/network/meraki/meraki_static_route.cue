package ansible

module: meraki_static_route: {
	module:            "meraki_static_route"
	short_description: "Manage static routes in the Meraki cloud"
	version_added:     "2.8"
	description: [
		"Allows for creation, management, and visibility into static routes within Meraki.",
	]

	options: {
		state: {
			description: [
				"Create or modify an organization.",
			]
			choices: ["absent", "query", "present"]
			default: "present"
			type:    "str"
		}
		net_name: {
			description: [
				"Name of a network.",
			]
			type: "str"
		}
		net_id: {
			description: [
				"ID number of a network.",
			]
			type: "str"
		}
		name: {
			description: [
				"Descriptive name of the static route.",
			]
			type: "str"
		}
		subnet: {
			description: [
				"CIDR notation based subnet for static route.",
			]
			type: "str"
		}
		gateway_ip: {
			description: [
				"IP address of the gateway for the subnet.",
			]
			type: "str"
		}
		route_id: {
			description: [
				"Unique ID of static route.",
			]
			type: "str"
		}
		fixed_ip_assignments: {
			description: [
				"List of fixed MAC to IP bindings for DHCP.",
			]
			type: "list"
			suboptions: {
				mac: {
					description: [
						"MAC address of endpoint.",
					]
					type: "str"
				}
				ip: {
					description: [
						"IP address of endpoint.",
					]
					type: "str"
				}
				name: {
					description: [
						"Hostname of endpoint.",
					]
					type: "str"
				}
			}
		}
		reserved_ip_ranges: {
			description: [
				"List of IP ranges reserved for static IP assignments.",
			]
			type: "list"
			suboptions: {
				start: {
					description: [
						"First IP address of reserved range.",
					]
					type: "str"
				}
				end: {
					description: [
						"Last IP address of reserved range.",
					]
					type: "str"
				}
				comment: {
					description: [
						"Human readable description of reservation range.",
					]
					type: "str"
				}
			}
		}
		enabled: {
			description: [
				"Indicates whether static route is enabled within a network.",
			]
			type: "bool"
		}
	}

	author: [
		"Kevin Breit (@kbreit)",
	]
	extends_documentation_fragment: "meraki"
}
