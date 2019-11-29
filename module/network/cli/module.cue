package cli

cli_command :: {
	register?: string
	with_items?: [...string]
	become?:     bool
	notify?:     string | [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	cli_command: {
		sendonly?: bool
		answer?: [...]
		check_all?: bool
		command:    string
		newline?:   bool
		prompt?: [...]
	}
}

cli_config :: {
	register?: string
	with_items?: [...string]
	become?:     bool
	notify?:     string | [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	cli_config: {
		backup?: bool
		backup_options?: {...}
		commit?:              bool
		config?:              string
		multiline_delimiter?: string
		replace?:             string
		commit_comment?:      string
		defaults?:            bool
		diff_ignore_lines?:   string
		diff_match?:          string
		diff_replace?:        string
		rollback?:            string
	}
}
