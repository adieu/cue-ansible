package inventory

add_host :: {

	// The groups to add the hostname to.

	groups?: [..._]

	// The hostname/ip of the host to add to the inventory, can include a colon and a port number.

	name: string
}

group_by :: {

	// The variables whose values will be used as groups.

	key: string

	// The list of the parent groups.

	parents?: [..._]
}
