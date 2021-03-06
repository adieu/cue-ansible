package ansible

module: nxos_vtp_password: {
	module:                         "nxos_vtp_password"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages VTP password configuration."
	description: [
		"Manages VTP password configuration.",
	]
	author: [
		"Gabriele Gerbino (@GGabriele)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"VTP feature must be active on the device to use this module.",
		"This module is used to manage only VTP passwords.",
		"Use this in combination with M(nxos_vtp_domain) and M(nxos_vtp_version) to fully manage VTP operations.",
		"You can set/remove password only if a VTP domain already exist.",
		"If C(state=absent) and no C(vtp_password) is provided, it remove the current VTP password.",
		"If C(state=absent) and C(vtp_password) is provided, the proposed C(vtp_password) has to match the existing one in order to remove it.",
	]

	options: {
		vtp_password: description: [
			"VTP password",
		]
		state: {
			description: [
				"Manage the state of the resource",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
}
