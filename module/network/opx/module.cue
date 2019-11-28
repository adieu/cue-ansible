package opx

opx_cps :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	opx_cps: {

		// Attribute Yang type.

		attr_type?: string

		// Attempts to force the auto-commit event to the specified yang object.

		commit_event?: bool

		// Queries/Writes the specified yang path from/to the db.

		db?: bool

		// Yang path to be configured.

		module_name?: string

		// Operation to be performed on the object.

		operation?: string

		// A qualifier provides the type of object data to retrieve or act on.

		qualifier?: string

		// Attribute Yang path and their corresponding data.

		attr_data?: string
	}
}
