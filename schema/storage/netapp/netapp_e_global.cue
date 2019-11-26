package ansible

module: netapp_e_global: {
	module:            "netapp_e_global"
	short_description: "NetApp E-Series manage global settings configuration"
	description: [
		"Allow the user to configure several of the global settings associated with an E-Series storage-system",
	]
	version_added: "2.7"
	author:        "Michael Price (@lmprice)"
	extends_documentation_fragment: [
		"netapp.eseries",
	]
	options: {
		name: {
			description: [
				"Set the name of the E-Series storage-system",
				"This label/name doesn't have to be unique.",
				"May be up to 30 characters in length.",
			]
			aliases: [
				"label",
			]
		}
		log_path: {
			description: [
				"A local path to a file to be used for debug logging",
			]
			required: false
		}
	}
	notes: [
		"Check mode is supported.",
		"This module requires Web Services API v1.3 or newer.",
	]
}
