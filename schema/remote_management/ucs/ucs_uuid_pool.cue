package ansible

module: ucs_uuid_pool: {
	module:            "ucs_uuid_pool"
	short_description: "Configures server UUID pools on Cisco UCS Manager"
	description: [
		"Configures server UUID pools and UUID blocks on Cisco UCS Manager.",
		"Examples can be used with the L(UCS Platform Emulator,https://communities.cisco.com/ucspe).",
	]
	extends_documentation_fragment: "ucs"
	options: {
		state: {
			description: [
				"If C(present), will verify UUID pool is present and will create if needed.",
				"If C(absent), will verify UUID pool is absent and will delete if needed.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		name: {
			description: [
				"The name of the UUID pool.",
				"This name can be between 1 and 32 alphanumeric characters.",
				"You cannot use spaces or any special characters other than - (hyphen), \"_\" (underscore), : (colon), and . (period).",
				"You cannot change this name after the UUID pool is created.",
			]
			required: true
		}
		description: {
			description: [
				"The user-defined description of the UUID pool.",
				"Enter up to 256 characters.",
				"You can use any characters or spaces except the following:",
				"` (accent mark),  (backslash), ^ (carat), \" (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).",
			]
			aliases: ["descr"]
		}
		prefix: description: [
			"UUID prefix used for the range of server UUIDs.",
			"If no value is provided, the system derived prefix will be used (equivalent to selecting 'derived' option in UI).",
			"If the user provides a value, the user provided prefix will be used (equivalent to selecting 'other' option in UI).",
			"A user provided value should be in the format XXXXXXXX-XXXX-XXXX.",
		]
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
		first_uuid: description: [
			"The first UUID in the block of UUIDs.",
			"This is the From field in the UCS Manager UUID Blocks menu.",
		]
		last_uuid: description: [
			"The last UUID in the block of UUIDs.",
			"This is the To field in the UCS Manager Add UUID Blocks menu.",
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
	version_added: "2.7"
}
