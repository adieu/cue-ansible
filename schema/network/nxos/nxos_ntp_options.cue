package ansible

module: nxos_ntp_options: {
	module:                         "nxos_ntp_options"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages NTP options."
	description: [
		"Manages NTP options, e.g. authoritative server and logging.",
	]
	author: [
		"Jason Edelman (@jedelman8)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"When C(state=absent), master and logging will be set to False and stratum will be removed as well",
	]

	options: {
		master: {
			description: [
				"Sets whether the device is an authoritative NTP server.",
			]
			type: "bool"
		}
		stratum: description: [
			"If C(master=true), an optional stratum can be supplied (1-15). The device default is 8.",
		]

		logging: {
			description: [
				"Sets whether NTP logging is enabled on the device.",
			]
			type: "bool"
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
