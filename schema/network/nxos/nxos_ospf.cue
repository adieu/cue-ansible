package ansible

module: nxos_ospf: {
	module:                         "nxos_ospf"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages configuration of an ospf instance."
	description: [
		"Manages configuration of an ospf instance.",
	]
	author: "Gabriele Gerbino (@GGabriele)"
	options: {
		ospf: {
			description: [
				"Name of the ospf instance.",
			]
			required: true
		}
		state: {
			description: [
				"Determines whether the config should be present or not on the device.",
			]

			required: false
			default:  "present"
			choices: ["present", "absent"]
		}
	}
}
