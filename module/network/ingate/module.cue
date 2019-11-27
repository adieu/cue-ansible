package ingate

ig_config :: {

	// Delete all rows in a table or a specific row.

	delete?: bool

	// Download the configuration database from the unit.

	download?: bool

	// Modify a row in a table.

	modify?: bool

	// Reset the preliminary configuration.

	revert?: bool

	// Add a row to a table.

	add?: bool

	// A row id.

	rowid?: int

	// If the downloaded configuration should be stored on disk. Refer to the C(download) option.

	store_download?: bool

	// Get rowid(s) from a table where the columns match.

	return_rowid?: bool

	// Expect no response when storing the preliminary configuration. Refer to the C(store) option.

	no_response?: bool

	// Reset the preliminary configuration to its factory defaults.

	factory?: bool

	// The name of the file to store the downloaded configuration in. Refer to the C(download) option.

	filename?: string

	// Return all rows in a table or a specific row.

	get?: bool

	// Where in the filesystem to store the downloaded configuration. Refer to the C(download) option.

	path?: string

	// Store the preliminary configuration.

	store?: bool

	// The name of the table.

	table?: string

	// A dict containing column names/values.

	columns?: string
}

ig_unit_information :: {
}
