package logic

import_tasks :: {
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	notify?:     string | [...string]
	when?:       string
	tags?: [...string]
	name?: string
	vars?: {...}
	import_tasks: {
		`free-form`?: string
	}
}

set_stats :: {
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	notify?:     string | [...string]
	when?:       string
	tags?: [...string]
	name?: string
	vars?: {...}
	set_stats: {
		data: {...}
		per_host?:  bool
		aggregate?: bool
	}
}

wait_for_connection :: {
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	notify?:     string | [...string]
	when?:       string
	tags?: [...string]
	name?: string
	vars?: {...}
	wait_for_connection: {
		connect_timeout?: int
		delay?:           int
		sleep?:           int
		timeout?:         int
	}
}

async_status :: {
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	notify?:     string | [...string]
	when?:       string
	tags?: [...string]
	name?: string
	vars?: {...}
	async_status: {
		jid:   string
		mode?: string
	}
}

fail :: {
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	notify?:     string | [...string]
	when?:       string
	tags?: [...string]
	name?: string
	vars?: {...}
	fail: {
		msg?: string
	}
}

include :: {
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	notify?:     string | [...string]
	when?:       string
	tags?: [...string]
	name?: string
	vars?: {...}
	include: {
		`free-form`?: string
	}
}

include_tasks :: {
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	notify?:     string | [...string]
	when?:       string
	tags?: [...string]
	name?: string
	vars?: {...}
	include_tasks: {
		apply?:       string
		file?:        string
		`free-form`?: string
	}
}

set_fact :: {
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	notify?:     string | [...string]
	when?:       string
	tags?: [...string]
	name?: string
	vars?: {...}
	set_fact: {
		cacheable?: bool
		key_value:  string
	}
}

assert :: {
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	notify?:     string | [...string]
	when?:       string
	tags?: [...string]
	name?: string
	vars?: {...}
	assert: {
		fail_msg?:    string
		quiet?:       bool
		success_msg?: string
		that: [...]
	}
}

debug :: {
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	notify?:     string | [...string]
	when?:       string
	tags?: [...string]
	name?: string
	vars?: {...}
	debug: {
		var?:       string
		verbosity?: int
		msg?:       string
	}
}

import_playbook :: {
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	notify?:     string | [...string]
	when?:       string
	tags?: [...string]
	name?: string
	vars?: {...}
	import_playbook: {
		`free-form`?: string
	}
}

import_role :: {
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	notify?:     string | [...string]
	when?:       string
	tags?: [...string]
	name?: string
	vars?: {...}
	import_role: {
		vars_from?:        string
		allow_duplicates?: bool
		defaults_from?:    string
		handlers_from?:    string
		name:              string
		tasks_from?:       string
	}
}

include_vars :: {
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	notify?:     string | [...string]
	when?:       string
	tags?: [...string]
	name?: string
	vars?: {...}
	include_vars: {
		dir?:         string
		file?:        string
		`free-form`?: string
		ignore_files?: [...]
		name?:  string
		depth?: int
		extensions?: [...]
		files_matching?:            string
		ignore_unknown_extensions?: bool
	}
}

include_role :: {
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	notify?:     string | [...string]
	when?:       string
	tags?: [...string]
	name?: string
	vars?: {...}
	include_role: {
		public?:           bool
		tasks_from?:       string
		vars_from?:        string
		allow_duplicates?: bool
		apply?:            string
		defaults_from?:    string
		handlers_from?:    string
		name:              string
	}
}

pause :: {
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	notify?:     string | [...string]
	when?:       string
	tags?: [...string]
	name?: string
	vars?: {...}
	pause: {
		echo?:    bool
		minutes?: string
		prompt?:  string
		seconds?: string
	}
}

wait_for :: {
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	notify?:     string | [...string]
	when?:       string
	tags?: [...string]
	name?: string
	vars?: {...}
	wait_for: {
		exclude_hosts?: [...]
		host?:            string
		msg?:             string
		sleep?:           int
		connect_timeout?: int
		delay?:           int
		port?:            int
		search_regex?:    string
		state?:           string
		timeout?:         int
		active_connection_states?: [...]
		path?: string
	}
}
