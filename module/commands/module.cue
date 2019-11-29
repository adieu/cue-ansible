package commands

shell :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	name?:   string
	when?:   string
	with_items?: [...string]
	connection?: string
	shell: {
		chdir?:             string
		creates?:           string
		free_form?:         string
		removes?:           string
		stdin?:             string
		warn?:              bool
		cmd?:               string
		executable?:        string
		stdin_add_newline?: bool
	}
}

telnet :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	name?:   string
	when?:   string
	with_items?: [...string]
	connection?: string
	telnet: {
		login_prompt?:    string
		prompts?:         string
		send_newline?:    bool
		timeout?:         string
		user?:            string
		command:          string
		host?:            string
		password?:        string
		password_prompt?: string
		pause?:           string
		port?:            string
	}
}

command :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	name?:   string
	when?:   string
	with_items?: [...string]
	connection?: string
	command: {
		argv?: [...]
		cmd?:               string
		creates?:           string
		removes?:           string
		strip_empty_ends?:  bool
		warn?:              bool
		chdir?:             string
		free_form?:         string
		stdin?:             string
		stdin_add_newline?: bool
	}
}

expect :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	name?:   string
	when?:   string
	with_items?: [...string]
	connection?: string
	expect: {
		creates?: string
		echo?:    bool
		removes?: string
		responses: {...}
		timeout?: int
		chdir?:   string
		command:  string
	}
}

psexec :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	name?:   string
	when?:   string
	with_items?: [...string]
	connection?: string
	psexec: {
		connection_password?:     string
		executable:               string
		integrity_level?:         string
		interactive_session?:     int
		load_profile?:            bool
		process_timeout?:         int
		process_username?:        string
		connection_username?:     string
		interactive?:             bool
		port?:                    int
		connection_timeout?:      int
		hostname:                 string
		priority?:                string
		process_password?:        string
		arguments?:               string
		asynchronous?:            bool
		encrypt?:                 bool
		show_ui_on_logon_screen?: bool
		stdin?:                   string
		working_directory?:       string
	}
}

raw :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	name?:   string
	when?:   string
	with_items?: [...string]
	connection?: string
	raw: {
		executable?: string
		free_form:   string
	}
}

script :: {
	register?: string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	name?:   string
	when?:   string
	with_items?: [...string]
	connection?: string
	script: {
		cmd?:        string
		creates?:    string
		executable?: string
		free_form?:  string
		removes?:    string
		chdir?:      string
	}
}
