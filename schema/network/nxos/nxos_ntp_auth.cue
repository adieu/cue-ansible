package ansible

module: nxos_ntp_auth: {
	module:                         "nxos_ntp_auth"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages NTP authentication."
	description: [
		"Manages NTP authentication.",
	]
	author: [
		"Jason Edelman (@jedelman8)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"If C(state=absent), the module will remove the given key configuration if it exists.",
		"If C(state=absent) and C(authentication=on), authentication will be turned off.",
	]
	options: {
		key_id: description: [
			"Authentication key identifier (numeric).",
		]
		md5string: description: [
			"MD5 String.",
		]
		auth_type: {
			description: [
				"Whether the given md5string is in cleartext or has been encrypted. If in cleartext, the device will encrypt it before storing it.",
			]

			default: "text"
			choices: ["text", "encrypt"]
		}
		trusted_key: {
			description: [
				"Whether the given key is required to be supplied by a time source for the device to synchronize to the time source.",
			]

			choices: ["false", "true"]
			default: "false"
		}
		authentication: {
			description: [
				"Turns NTP authentication on or off.",
			]
			choices: ["on", "off"]
		}
		state: {
			description: [
				"Manage the state of the resource.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
}
