package ansible

module: nxos_gir_profile_management: {
	module:                         "nxos_gir_profile_management"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Create a maintenance-mode or normal-mode profile for GIR."
	description: [
		"Manage a maintenance-mode or normal-mode profile with configuration commands that can be applied during graceful removal or graceful insertion.",
	]

	author: [
		"Gabriele Gerbino (@GGabriele)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"C(state=absent) removes the whole profile.",
	]
	options: {
		commands: description: [
			"List of commands to be included into the profile.",
		]
		mode: {
			description: [
				"Configure the profile as Maintenance or Normal mode.",
			]
			required: true
			choices: ["maintenance", "normal"]
		}
		state: {
			description: [
				"Specify desired state of the resource.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
}
