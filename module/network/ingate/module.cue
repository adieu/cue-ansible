package ingate

ig_config :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	ig_config: {

		// Reset the preliminary configuration to its factory defaults.

		factory?: bool

		// Where in the filesystem to store the downloaded configuration. Refer to the C(download) option.

		path?: string

		// Get rowid(s) from a table where the columns match.

		return_rowid?: bool

		// The name of the table.

		table?: string

		// Download the configuration database from the unit.

		download?: bool

		// Delete all rows in a table or a specific row.

		delete?: bool

		// Reset the preliminary configuration.

		revert?: bool

		// A row id.

		rowid?: int

		// Add a row to a table.

		add?: bool

		// Modify a row in a table.

		modify?: bool

		// Expect no response when storing the preliminary configuration. Refer to the C(store) option.

		no_response?: bool

		// Store the preliminary configuration.

		store?: bool

		// If the downloaded configuration should be stored on disk. Refer to the C(download) option.

		store_download?: bool

		// The name of the file to store the downloaded configuration in. Refer to the C(download) option.

		filename?: string

		// Return all rows in a table or a specific row.

		get?: bool

		// A dict containing column names/values.

		columns?: string
	}
}

ig_unit_information :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	ig_unit_information: {
	}
}
