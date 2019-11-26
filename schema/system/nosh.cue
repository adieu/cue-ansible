package ansible

module: nosh: {
	module: "nosh"
	author: [
		"Thomas Caravia (@tacatac)",
	]
	version_added:     "2.5"
	short_description: "Manage services with nosh"
	description: [
		"Control running and enabled state for system-wide or user services.",
		"BSD and Linux systems are supported.",
	]
	options: {
		name: {
			required: true
			description: [
				"Name of the service to manage.",
			]
		}
		state: {
			required: false
			choices: ["started", "stopped", "reset", "restarted", "reloaded"]
			description: [
				"C(started)/C(stopped) are idempotent actions that will not run commands unless necessary. C(restarted) will always bounce the service. C(reloaded) will send a SIGHUP or start the service. C(reset) will start or stop the service according to whether it is enabled or not.",
			]
		}

		enabled: {
			required: false
			type:     "bool"
			description: [
				"Enable or disable the service, independently of C(*.preset) file preference or running state. Mutually exclusive with I(preset). Will take effect prior to I(state=reset).",
			]
		}

		preset: {
			required: false
			type:     "bool"
			description: [
				"Enable or disable the service according to local preferences in *.preset files. Mutually exclusive with I(enabled). Only has an effect if set to true. Will take effect prior to I(state=reset).",
			]
		}

		user: {
			required: false
			default:  "no"
			type:     "bool"
			description: [
				"Run system-control talking to the calling user's service manager, rather than the system-wide service manager.",
			]
		}
	}

	requirements: [
		"A system with an active nosh service manager, see Notes for further information.",
	]
	notes: ["Information on the nosh utilities suite may be found at U(https://jdebp.eu/Softwares/nosh/)."]
}
