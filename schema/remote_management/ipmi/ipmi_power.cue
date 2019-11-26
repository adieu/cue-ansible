package ansible

module: ipmi_power: {
	module:            "ipmi_power"
	short_description: "Power management for machine"
	description: [
		"Use this module for power management",
	]
	version_added: "2.2"
	options: {
		name: {
			description: [
				"Hostname or ip address of the BMC.",
			]
			required: true
		}
		port: {
			description: [
				"Remote RMCP port.",
			]
			default: 623
		}
		user: {
			description: [
				"Username to use to connect to the BMC.",
			]
			required: true
		}
		password: {
			description: [
				"Password to connect to the BMC.",
			]
			required: true
		}
		state: {
			description: [
				"Whether to ensure that the machine in desired state.",
			]
			required: true
			choices: [
				"on -- Request system turn on",
				"off -- Request system turn off without waiting for OS to shutdown",
				"shutdown -- Have system request OS proper shutdown",
				"reset -- Request system reset without waiting for OS",
				"boot -- If system is off, then 'on', else 'reset'",
			]
		}
		timeout: {
			description: [
				"Maximum number of seconds before interrupt request.",
			]
			default: 300
		}
	}
	requirements: [
		"python >= 2.6",
		"pyghmi",
	]
	author: "Bulat Gaifullin (@bgaifullin) <gaifullinbf@gmail.com>"
}
