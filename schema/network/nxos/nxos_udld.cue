package ansible

module: nxos_udld: {
	module:                         "nxos_udld"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages UDLD global configuration params."
	description: [
		"Manages UDLD global configuration params.",
	]
	author: [
		"Jason Edelman (@jedelman8)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"Module will fail if the udld feature has not been previously enabled.",
	]
	options: {
		aggressive: {
			description: [
				"Toggles aggressive mode.",
			]
			choices: ["enabled", "disabled"]
		}
		msg_time: description: [
			"Message time in seconds for UDLD packets or keyword 'default'.",
		]
		reset: {
			description: [
				"Ability to reset all ports shut down by UDLD. 'state' parameter cannot be 'absent' when this is present.",
			]

			type:    "bool"
			default: "no"
		}
		state: {
			description: [
				"Manage the state of the resource. When set to 'absent', aggressive and msg_time are set to their default values.",
			]

			default: "present"
			choices: ["present", "absent"]
		}
	}
}
