package ansible

module: sros_rollback: {
	module:            "sros_rollback"
	version_added:     "2.2"
	author:            "Peter Sprygada (@privateip)"
	short_description: "Configure Nokia SR OS rollback"
	description: [
		"Configure the rollback feature on remote Nokia devices running the SR OS operating system.  this module provides a stateful implementation for managing the configuration of the rollback feature",
	]

	extends_documentation_fragment: "sros"
	options: {
		rollback_location: description: [
			"The I(rollback_location) specifies the location and filename of the rollback checkpoint files.   This argument supports any valid local or remote URL as specified in SR OS",
		]

		remote_max_checkpoints: description: [
			"The I(remote_max_checkpoints) argument configures the maximum number of rollback files that can be transferred and saved to a remote location.  Valid values for this argument are in the range of 1 to 50",
		]

		local_max_checkpoints: description: [
			"The I(local_max_checkpoints) argument configures the maximum number of rollback files that can be saved on the devices local compact flash.  Valid values for this argument are in the range of 1 to 50",
		]

		rescue_location: description: [
			"The I(rescue_location) specifies the location of the rescue file.  This argument supports any valid local or remote URL as specified in SR OS",
		]

		state: {
			description: [
				"The I(state) argument specifies the state of the configuration entries in the devices active configuration.  When the state value is set to C(true) the configuration is present in the devices active configuration.  When the state value is set to C(false) the configuration values are removed from the devices active configuration.",
			]

			default: "present"
			choices: ["present", "absent"]
		}
	}
}
