package zfs

zfs :: {
	when?: string
	tags?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	register?:   string
	notify?:     string | [...string]
	zfs: {
		extra_zfs_properties?: string
		name:                  string
		origin?:               string
		state:                 string
	}
}

zfs_delegate_admin :: {
	when?: string
	tags?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	register?:   string
	notify?:     string | [...string]
	zfs_delegate_admin: {
		groups?: [...]
		name: string
		permissions?: [...]
		recursive?:   bool
		state:        string
		descendents?: bool
		everyone?:    bool
		local?:       bool
		users?: [...]
	}
}

zfs_facts :: {
	when?: string
	tags?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	register?:   string
	notify?:     string | [...string]
	zfs_facts: {
		recurse?:    bool
		type?:       string
		depth?:      string
		name:        string
		parsable?:   bool
		properties?: string
	}
}

zpool_facts :: {
	when?: string
	tags?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	register?:   string
	notify?:     string | [...string]
	zpool_facts: {
		name?:       string
		parsable?:   bool
		properties?: string
	}
}
