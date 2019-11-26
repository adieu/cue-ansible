package ansible

module: bigip_wait: {
	module:            "bigip_wait"
	short_description: "Wait for a BIG-IP condition before continuing"
	description: [
		"You can wait for BIG-IP to be \"ready\". By \"ready\", we mean that BIG-IP is ready to accept configuration.",
		"This module can take into account situations where the device is in the middle of rebooting due to a configuration change.",
	]

	version_added: 2.5
	options: {
		timeout: {
			description: [
				"Maximum number of seconds to wait for.",
				"When used without other conditions it is equivalent of just sleeping.",
				"The default timeout is deliberately set to 2 hours because no individual REST API.",
			]

			type:    "int"
			default: 7200
		}
		delay: {
			description: [
				"Number of seconds to wait before starting to poll.",
			]
			type:    "int"
			default: 0
		}
		sleep: {
			description: [
				"Number of seconds to sleep between checks, before 2.3 this was hardcoded to 1 second.",
			]
			type:    "int"
			default: 1
		}
		msg: {
			description: [
				"This overrides the normal error message from a failure to meet the required conditions.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "f5"
	author: ["Tim Rupp (@caphrim007)"]
}
