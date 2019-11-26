package ingate

ig_config :: {

	// Reset the preliminary configuration to its factory defaults.

	factory?: bool

	// Store the preliminary configuration.

	store?: bool

	// Delete all rows in a table or a specific row.

	delete?: bool

	// Return all rows in a table or a specific row.

	get?: bool

	// Expect no response when storing the preliminary configuration. Refer to the C(store) option.

	no_response?: bool

	// Where in the filesystem to store the downloaded configuration. Refer to the C(download) option.

	path?: string

	// The name of the table.

	table?: string

	// A row id.

	rowid?: int

	// Add a row to a table.

	add?: bool

	// A dict containing column names/values.

	columns?: string

	// Download the configuration database from the unit.

	download?: bool

	// The name of the file to store the downloaded configuration in. Refer to the C(download) option.

	filename?: string

	// Modify a row in a table.

	modify?: bool

	// Get rowid(s) from a table where the columns match.

	return_rowid?: bool

	// Reset the preliminary configuration.

	revert?: bool

	// If the downloaded configuration should be stored on disk. Refer to the C(download) option.

	store_download?: bool
}

ig_unit_information :: {
}
