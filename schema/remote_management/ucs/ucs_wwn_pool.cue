package ansible

module: ucs_wwn_pool: {
	module:            "ucs_wwn_pool"
	short_description: "Configures WWNN or WWPN pools on Cisco UCS Manager"
	description: [
		"Configures WWNNs or WWPN pools on Cisco UCS Manager.",
		"Examples can be used with the UCS Platform Emulator U(https://communities.cisco.com/ucspe).",
	]
	extends_documentation_fragment: "ucs"
	options: {
		state: {
			description: [
				"If C(present), will verify WWNNs/WWPNs are present and will create if needed.",
				"If C(absent), will verify WWNNs/WWPNs are absent and will delete if needed.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		name: {
			description: [
				"The name of the World Wide Node Name (WWNN) or World Wide Port Name (WWPN) pool.",
				"This name can be between 1 and 32 alphanumeric characters.",
				"You cannot use spaces or any special characters other than - (hyphen), \"_\" (underscore), : (colon), and . (period).",
				"You cannot change this name after the WWNN or WWPN pool is created.",
			]
			required: true
		}
		purpose: {
			description: [
				"Specify whether this is a node (WWNN) or port (WWPN) pool.",
				"Optional if state is absent.",
			]
			choices: ["node", "port"]
			required: true
		}
		description: {
			description: [
				"A description of the WWNN or WWPN pool.",
				"Enter up to 256 characters.",
				"You can use any characters or spaces except the following:",
				"` (accent mark),  (backslash), ^ (carat), \" (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).",
			]
			aliases: ["descr"]
		}
		order: {
			description: [
				"The Assignment Order field.",
				"This can be one of the following:",
				"default - Cisco UCS Manager selects a random identity from the pool.",
				"sequential - Cisco UCS Manager selects the lowest available identity from the pool.",
			]
			choices: ["default", "sequential"]
			default: "default"
		}
		first_addr: description: [
			"The first initiator in the World Wide Name (WWN) block.",
			"This is the From field in the UCS Manager Add WWN Blocks menu.",
		]
		last_addr: description: [
			"The last initiator in the World Wide Name (WWN) block.",
			"This is the To field in the UCS Manager Add WWN Blocks menu.",
			"For WWxN pools, the pool size must be a multiple of ports-per-node + 1.",
			"For example, if there are 7 ports per node, the pool size must be a multiple of 8.",
			"If there are 63 ports per node, the pool size must be a multiple of 64.",
		]
		org_dn: {
			description: [
				"Org dn (distinguished name)",
			]
			default: "org-root"
		}
	}
	requirements: [
		"ucsmsdk",
	]
	author: [
		"David Soper (@dsoper2)",
		"CiscoUcs (@CiscoUcs)",
	]
	version_added: "2.5"
}
