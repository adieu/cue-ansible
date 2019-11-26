package ansible

module: icinga2_feature: {
	module: "icinga2_feature"

	short_description: "Manage Icinga2 feature"
	description: [
		"This module can be used to enable or disable an Icinga2 feature.",
	]
	version_added: "2.3"
	author:        "Loic Blot (@nerzhul)"
	options: {
		name: {
			description: [
				"This is the feature name to enable or disable.",
			]
			required: true
		}
		state: {
			description: [
				"If set to C(present) and feature is disabled, then feature is enabled.",
				"If set to C(present) and feature is already enabled, then nothing is changed.",
				"If set to C(absent) and feature is enabled, then feature is disabled.",
				"If set to C(absent) and feature is already disabled, then nothing is changed.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
	}
}
