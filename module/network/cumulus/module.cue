package cumulus

nclu :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nclu: {

		// Commit description that will be recorded to the commit log if I(commit) or I(atomic) are true.

		description?: string

		// A single, multi-line string with jinja2 formatting. This string will be broken by lines, and each line will be run through net. Mutually exclusive with I(commands).

		template?: string

		// Boolean. When true, perform a 'net abort' before the block. This cleans out any uncommitted changes in the buffer. Mutually exclusive with I(atomic).

		abort?: bool

		// When true, equivalent to both I(commit) and I(abort) being true. Mutually exclusive with I(commit) and I(atomic).

		atomic?: bool

		// A list of strings containing the net commands to run. Mutually exclusive with I(template).

		commands?: string

		// When true, performs a 'net commit' at the end of the block. Mutually exclusive with I(atomic).

		commit?: bool
	}
}
