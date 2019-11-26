package ansible

module: ce_ntp_auth: {
	module:            "ce_ntp_auth"
	version_added:     "2.4"
	short_description: "Manages NTP authentication configuration on HUAWEI CloudEngine switches."
	description: [
		"Manages NTP authentication configuration on HUAWEI CloudEngine switches.",
	]
	author: [
		"Zhijin Zhou (@QijunPan)",
	]
	notes: [
		"If C(state=absent), the module will attempt to remove the given key configuration. If a matching key configuration isn't found on the device, the module will fail.",
		"If C(state=absent) and C(authentication=on), authentication will be turned on.",
		"If C(state=absent) and C(authentication=off), authentication will be turned off.",
		"Recommended connection is C(network_cli).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		key_id: {
			description: [
				"Authentication key identifier (numeric).",
			]
			required: true
		}
		auth_pwd: description: [
			"Plain text with length of 1 to 255, encrypted text with length of 20 to 392.",
		]
		auth_mode: {
			description: [
				"Specify authentication algorithm.",
			]
			choices: ["hmac-sha256", "md5"]
		}
		auth_type: {
			description: [
				"Whether the given password is in cleartext or has been encrypted. If in cleartext, the device will encrypt it before storing it.",
			]

			default: "encrypt"
			choices: ["text", "encrypt"]
		}
		trusted_key: {
			description: [
				"Whether the given key is required to be supplied by a time source for the device to synchronize to the time source.",
			]

			default: "disable"
			choices: ["enable", "disable"]
		}
		authentication: {
			description: [
				"Configure ntp authentication enable or unconfigure ntp authentication enable.",
			]
			choices: ["enable", "disable"]
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
