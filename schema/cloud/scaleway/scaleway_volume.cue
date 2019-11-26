package ansible

module: scaleway_volume: {
	module:            "scaleway_volume"
	short_description: "Scaleway volumes management module"
	version_added:     "2.7"
	author:            "Henryk Konsek (@hekonsek)"
	description: [
		"This module manages volumes on Scaleway account U(https://developer.scaleway.com)",
	]

	extends_documentation_fragment: "scaleway"

	options: {
		state: {
			description: [
				"Indicate desired state of the volume.",
			]
			default: "present"
			choices: [
				"present",
				"absent",
			]
		}
		region: {
			description: [
				"Scaleway region to use (for example par1).",
			]
			required: true
			choices: [
				"ams1",
				"EMEA-NL-EVS",
				"par1",
				"EMEA-FR-PAR1",
			]
		}
		name: {
			description: [
				"Name used to identify the volume.",
			]
			required: true
		}
		organization: description: [
			"ScaleWay organization ID to which volume belongs.",
		]
		size: description: [
			"Size of the volume in bytes.",
		]
		volume_type: description: ["Type of the volume (for example 'l_ssd')."]
	}
}
