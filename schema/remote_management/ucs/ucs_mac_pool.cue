package ansible

module: ucs_mac_pool: {
	module:            "ucs_mac_pool"
	short_description: "Configures MAC address pools on Cisco UCS Manager"
	description: [
		"Configures MAC address pools and MAC address blocks on Cisco UCS Manager.",
		"Examples can be used with the UCS Platform Emulator U(https://communities.cisco.com/ucspe).",
	]
	extends_documentation_fragment: "ucs"
	options: {
		state: {
			description: [
				"If C(present), will verify MAC pool is present and will create if needed.",
				"If C(absent), will verify MAC pool is absent and will delete if needed.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		name: {
			description: [
				"The name of the MAC pool.",
				"This name can be between 1 and 32 alphanumeric characters.",
				"You cannot use spaces or any special characters other than - (hyphen), \"_\" (underscore), : (colon), and . (period).",
				"You cannot change this name after the MAC pool is created.",
			]
			required: true
		}
		description: {
			description: [
				"A description of the MAC pool.",
				"Enter up to 256 characters.",
				"You can use any characters or spaces except the following:",
				"` (accent mark),  (backslash), ^ (carat), \" (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).",
			]
			aliases: ["descr", "descrption"]
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
			"The first MAC address in the block of addresses.",
			"This is the From field in the UCS Manager MAC Blocks menu.",
		]
		last_addr: description: [
			"The last MAC address in the block of addresses.",
			"This is the To field in the UCS Manager Add MAC Blocks menu.",
		]
		org_dn: {
			description: [
				"The distinguished name (dn) of the organization where the resource is assigned.",
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
