package ansible

module: ig_config: {
	module:            "ig_config"
	short_description: "Manage the configuration database on an Ingate SBC."
	description: [
		"Manage the configuration database on an Ingate SBC.",
	]
	version_added:                  2.8
	extends_documentation_fragment: "ingate"
	options: {
		add: {
			description: [
				"Add a row to a table.",
			]
			type: "bool"
		}
		delete: {
			description: [
				"Delete all rows in a table or a specific row.",
			]
			type: "bool"
		}
		get: {
			description: [
				"Return all rows in a table or a specific row.",
			]
			type: "bool"
		}
		modify: {
			description: [
				"Modify a row in a table.",
			]
			type: "bool"
		}
		revert: {
			description: [
				"Reset the preliminary configuration.",
			]
			type: "bool"
		}
		factory: {
			description: [
				"Reset the preliminary configuration to its factory defaults.",
			]
			type: "bool"
		}
		store: {
			description: [
				"Store the preliminary configuration.",
			]
			type: "bool"
		}
		no_response: {
			description: [
				"Expect no response when storing the preliminary configuration. Refer to the C(store) option.",
			]

			type: "bool"
		}
		return_rowid: {
			description: [
				"Get rowid(s) from a table where the columns match.",
			]
			type: "bool"
		}
		download: {
			description: [
				"Download the configuration database from the unit.",
			]
			type: "bool"
		}
		store_download: {
			description: [
				"If the downloaded configuration should be stored on disk. Refer to the C(download) option.",
			]

			type:    "bool"
			default: false
		}
		path: description: [
			"Where in the filesystem to store the downloaded configuration. Refer to the C(download) option.",
		]

		filename: description: [
			"The name of the file to store the downloaded configuration in. Refer to the C(download) option.",
		]

		table: description: [
			"The name of the table.",
		]
		rowid: {
			description: [
				"A row id.",
			]
			type: "int"
		}
		columns: description: [
			"A dict containing column names/values.",
		]
	}
	notes: [
		"If C(store_download) is set to True, and C(path) and C(filename) is omitted, the file will be stored in the current directory with an automatic filename.",
	]

	author: ["Ingate Systems AB (@ingatesystems)"]
}
