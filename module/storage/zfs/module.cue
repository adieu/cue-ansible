package zfs

zfs :: {

	// A dictionary of zfs properties to be set.
	// See the zfs(8) man page for more information.

	extra_zfs_properties?: string

	// File system, snapshot or volume name e.g. C(rpool/myfs).

	name: string

	// Snapshot from which to create a clone.

	origin?: string

	// Whether to create (C(present)), or remove (C(absent)) a file system, snapshot or volume. All parents/children will be created/destroyed as needed to reach the desired state.

	state: string
}

zfs_delegate_admin :: {

	// Apply permissions to everyone.

	everyone?: bool

	// List of groups to whom permission(s) should be granted.

	groups?: [..._]

	// The list of permission(s) to delegate (required if C(state) is C(present)).

	permissions?: [..._]

	// Unallow permissions recursively (ignored when C(state) is C(present)).

	recursive?: bool

	// List of users to whom permission(s) should be granted.

	users?: [..._]

	// Apply permissions to C(name)'s descendents (C(zfs allow -d)).

	descendents?: bool

	// Apply permissions to C(name) locally (C(zfs allow -l)).

	local?: bool

	// File system or volume name e.g. C(rpool/myfs).

	name: string

	// Whether to allow (C(present)), or unallow (C(absent)) a permission.
	// When set to C(present), at least one "entity" param of I(users), I(groups), or I(everyone) are required.
	// When set to C(absent), removes permissions from the specified entities, or removes all permissions if no entity params are specified.

	state: string
}

zfs_facts :: {

	// Specifies which datasets types to display. Multiple values have to be provided in comma-separated form.

	type?: string

	// Specifies recursion depth.

	depth?: string

	// ZFS dataset name.

	name: string

	// Specifies if property values should be displayed in machine friendly format.

	parsable?: bool

	// Specifies which dataset properties should be queried in comma-separated format. For more information about dataset properties, check zfs(1M) man page.

	properties?: string

	// Specifies if properties for any children should be recursively displayed.

	recurse?: bool
}

zpool_facts :: {

	// ZFS pool name.

	name?: string

	// Specifies if property values should be displayed in machine friendly format.

	parsable?: bool

	// Specifies which dataset properties should be queried in comma-separated format. For more information about dataset properties, check zpool(1M) man page.

	properties?: string
}
