package ansible

module: vyos_lldp_global: {
	module:            "vyos_lldp_global"
	version_added:     2.9
	short_description: "Manage link layer discovery protocol (LLDP) attributes on VyOS devices.."
	description:       "This module manages link layer discovery protocol (LLDP) attributes on VyOS devices."
	notes: [
		"Tested against VyOS 1.1.8 (helium).",
		"This module works with connection C(network_cli). See L(the VyOS OS Platform Options,../network/user_guide/platform_vyos.html).",
	]
	author: [
		"Rohit Thakur (@rohitthakur2590)",
	]
	options: {
		config: {
			description: "The provided link layer discovery protocol (LLDP) configuration."
			type:        "dict"
			suboptions: {
				enable: {
					description: [
						"This argument is a boolean value to enable or disable LLDP.",
					]
					type: "bool"
				}
				address: {
					description: [
						"This argument defines management-address.",
					]
					type: "str"
				}
				snmp: {
					description: [
						"This argument enable the SNMP queries to LLDP database.",
					]
					type: "str"
				}
				legacy_protocols: {
					description: [
						"List of the supported legacy protocols.",
					]
					type: "list"
					choices: [
						"cdp",
						"edp",
						"fdp",
						"sonmp",
					]
				}
			}
		}
		state: {
			description: [
				"The state of the configuration after module completion.",
			]
			type: "str"
			choices: [
				"merged",
				"replaced",
				"deleted",
			]
			default: "merged"
		}
	}
}
