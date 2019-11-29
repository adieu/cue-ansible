package netconf

netconf_config :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:       string
	connection?: string
	become?:     bool
	vars?: {...}
	netconf_config: {
		confirm?:          string
		delete?:           bool
		error_option?:     string
		source_datastore?: string
		src?:              string
		target?:           string
		backup_options?: {...}
		commit?:            bool
		format?:            string
		get_filter?:        string
		validate?:          bool
		confirm_commit?:    bool
		content?:           string
		default_operation?: string
		lock?:              string
		backup?:            bool
		save?:              bool
	}
}

netconf_get :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:       string
	connection?: string
	become?:     bool
	vars?: {...}
	netconf_get: {
		filter?:  string
		lock?:    string
		source?:  string
		display?: string
	}
}

netconf_rpc :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?:       string
	connection?: string
	become?:     bool
	vars?: {...}
	netconf_rpc: {
		content?: string
		display?: string
		rpc?:     string
		xmlns?:   string
	}
}
