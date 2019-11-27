package inventory

add_host :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	add_host: {

		// The groups to add the hostname to.

		groups?: [...]

		// The hostname/ip of the host to add to the inventory, can include a colon and a port number.

		name: string
	}
}

group_by :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	group_by: {

		// The variables whose values will be used as groups.

		key: string

		// The list of the parent groups.

		parents?: [...]
	}
}
