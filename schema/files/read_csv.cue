package ansible

module: read_csv: {
	module:            "read_csv"
	version_added:     "2.8"
	short_description: "Read a CSV file"
	description: [
		"Read a CSV file and return a list or a dictionary, containing one dictionary per row.",
	]
	author: [
		"Dag Wieers (@dagwieers)",
	]
	options: {
		path: {
			description: [
				"The CSV filename to read data from.",
			]
			type:     "path"
			required: true
			aliases: ["filename"]
		}
		key: {
			description: [
				"The column name used as a key for the resulting dictionary.",
				"If C(key) is unset, the module returns a list of dictionaries, where each dictionary is a row in the CSV file.",
			]

			type: "str"
		}
		dialect: {
			description: [
				"The CSV dialect to use when parsing the CSV file.",
				"Possible values include C(excel), C(excel-tab) or C(unix).",
			]
			type:    "str"
			default: "excel"
		}
		fieldnames: {
			description: [
				"A list of field names for every column.",
				"This is needed if the CSV does not have a header.",
			]
			type: "list"
		}
		unique: {
			description: [
				"Whether the C(key) used is expected to be unique.",
			]
			type:    "bool"
			default: true
		}
		delimiter: {
			description: [
				"A one-character string used to separate fields.",
				"When using this parameter, you change the default value used by C(dialect).",
				"The default value depends on the dialect used.",
			]
			type: "str"
		}
		skipinitialspace: {
			description: [
				"Whether to ignore any whitespaces immediately following the delimiter.",
				"When using this parameter, you change the default value used by C(dialect).",
				"The default value depends on the dialect used.",
			]
			type: "bool"
		}
		strict: {
			description: [
				"Whether to raise an exception on bad CSV input.",
				"When using this parameter, you change the default value used by C(dialect).",
				"The default value depends on the dialect used.",
			]
			type: "bool"
		}
	}
	notes: ["Ansible also ships with the C(csvfile) lookup plugin, which can be used to do selective lookups in CSV files from Jinja."]
}
