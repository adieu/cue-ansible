package ansible

module: win_chocolatey_config: {
	module:            "win_chocolatey_config"
	version_added:     "2.7"
	short_description: "Manages Chocolatey config settings"
	description: [
		"Used to manage Chocolatey config settings as well as unset the values.",
	]
	options: {
		name: {
			description: [
				"The name of the config setting to manage.",
				"See U(https://chocolatey.org/docs/chocolatey-configuration) for a list of valid configuration settings that can be changed.",
				"Any config values that contain encrypted values like a password are not idempotent as the plaintext value cannot be read.",
			]

			type:     "str"
			required: true
		}
		state: {
			description: [
				"When C(absent), it will ensure the setting is unset or blank.",
				"When C(present), it will ensure the setting is set to the value of I(value).",
			]

			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
		value: {
			description: [
				"Used when C(state=present) that contains the value to set for the config setting.",
				"Cannot be null or an empty string, use C(state=absent) to unset a config value instead.",
			]

			type: "str"
		}
	}
	seealso: [{
		module: "win_chocolatey"
	}, {
		module: "win_chocolatey_facts"
	}, {
		module: "win_chocolatey_feature"
	}, {
		module: "win_chocolatey_source"
	}]
	author: ["Jordan Borean (@jborean93)"]
}
