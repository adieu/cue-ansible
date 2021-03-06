package ansible

module: meraki_switchport: {
	module:            "meraki_switchport"
	short_description: "Manage switchports on a switch in the Meraki cloud"
	version_added:     "2.7"
	description: [
		"Allows for management of switchports settings for Meraki MS switches.",
	]
	options: {
		state: {
			description: [
				"Specifies whether a switchport should be queried or modified.",
			]
			choices: ["query", "present"]
			default: "query"
			type:    "str"
		}
		access_policy_number: description: [
			"Number of the access policy to apply.",
			"Only applicable to access port types.",
		]
		allowed_vlans: {
			description: [
				"List of VLAN numbers to be allowed on switchport.",
			]
			default: "all"
		}
		enabled: {
			description: [
				"Whether a switchport should be enabled or disabled.",
			]
			type:    "bool"
			default: true
		}
		isolation_enabled: {
			description: [
				"Isolation status of switchport.",
			]
			default: false
			type:    "bool"
		}
		link_negotiation: {
			description: [
				"Link speed for the switchport.",
			]
			default: "Auto negotiate"
			choices: ["Auto negotiate", "100Megabit (auto)", "100 Megabit full duplex (forced)"]
		}
		name: {
			description: [
				"Switchport description.",
			]
			aliases: ["description"]
		}
		number: description: [
			"Port number.",
		]
		poe_enabled: {
			description: [
				"Enable or disable Power Over Ethernet on a port.",
			]
			type:    "bool"
			default: true
		}
		rstp_enabled: {
			description: [
				"Enable or disable Rapid Spanning Tree Protocol on a port.",
			]
			type:    "bool"
			default: true
		}
		serial: description: [
			"Serial nubmer of the switch.",
		]
		stp_guard: {
			description: [
				"Set state of STP guard.",
			]
			choices: ["disabled", "root guard", "bpdu guard", "loop guard"]
			default: "disabled"
		}
		tags: description: [
			"Space delimited list of tags to assign to a port.",
		]
		type: {
			description: [
				"Set port type.",
			]
			choices: ["access", "trunk"]
			default: "access"
		}
		vlan: description: [
			"VLAN number assigned to port.",
			"If a port is of type trunk, the specified VLAN is the native VLAN.",
		]
		voice_vlan: description: [
			"VLAN number assigned to a port for voice traffic.",
			"Only applicable to access port type.",
		]
	}

	author: [
		"Kevin Breit (@kbreit)",
	]
	extends_documentation_fragment: "meraki"
}
