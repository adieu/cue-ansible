package ansible

module: bower: {
	module:            "bower"
	short_description: "Manage bower packages with bower"
	description: [
		"Manage bower packages with bower",
	]
	version_added: 1.9
	author:        "Michael Warkentin (@mwarkentin)"
	options: {
		name: description: [
			"The name of a bower package to install",
		]
		offline: {
			description: [
				"Install packages from local cache, if the packages were installed before",
			]
			type:    "bool"
			default: "no"
		}
		production: {
			description: [
				"Install with --production flag",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.0"
		}
		path: {
			description: [
				"The base path where to install the bower packages",
			]
			required: true
		}
		relative_execpath: {
			description: [
				"Relative path to bower executable from install path",
			]
			version_added: "2.1"
		}
		state: {
			description: [
				"The state of the bower package",
			]
			default: "present"
			choices: ["present", "absent", "latest"]
		}
		version: description: ["The version to be installed"]
	}
}
