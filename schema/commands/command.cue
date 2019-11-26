package ansible

module: command: {
	module:            "command"
	short_description: "Execute commands on targets"
	version_added:     "historical"
	description: [
		"The C(command) module takes the command name followed by a list of space-delimited arguments.",
		"The given command will be executed on all selected nodes.",
		"The command(s) will not be processed through the shell, so variables like C($HOME) and operations like C(\"<\"), C(\">\"), C(\"|\"), C(\";\") and C(\"&\") will not work. Use the M(shell) module if you need these features.",
		"To create C(command) tasks that are easier to read than the ones using space-delimited arguments, pass parameters using the C(args) L(task keyword,../reference_appendices/playbooks_keywords.html#task) or use C(cmd) parameter.",
		"Either a free form command or C(cmd) parameter is required, see the examples.",
		"For Windows targets, use the M(win_command) module instead.",
	]
	options: {
		free_form: description: [
			"The command module takes a free form string as a command to run.",
			"There is no actual parameter named 'free form'.",
		]
		cmd: {
			type: "str"
			description: [
				"The command to run.",
			]
		}
		argv: {
			type: "list"
			description: [
				"Passes the command as a list rather than a string.",
				"Use C(argv) to avoid quoting values that would otherwise be interpreted incorrectly (for example \"user name\").",
				"Only the string (free form) or the list (argv) form can be provided, not both.  One or the other must be provided.",
			]
			version_added: "2.6"
		}
		creates: {
			type: "path"
			description: [
				"A filename or (since 2.0) glob pattern. If it already exists, this step B(won't) be run.",
			]
		}
		removes: {
			type: "path"
			description: [
				"A filename or (since 2.0) glob pattern. If it already exists, this step B(will) be run.",
			]
			version_added: "0.8"
		}
		chdir: {
			type: "path"
			description: [
				"Change into this directory before running the command.",
			]
			version_added: "0.6"
		}
		warn: {
			description: [
				"Enable or disable task warnings.",
			]
			type:          "bool"
			default:       true
			version_added: "1.8"
		}
		stdin: {
			description: [
				"Set the stdin of the command directly to the specified value.",
			]
			version_added: "2.4"
		}
		stdin_add_newline: {
			type:    "bool"
			default: true
			description: [
				"If set to C(yes), append a newline to stdin data.",
			]
			version_added: "2.8"
		}
		strip_empty_ends: {
			description: [
				"Strip empty lines from the end of stdout/stderr in result.",
			]
			version_added: "2.8"
			type:          "bool"
			default:       true
		}
	}
	notes: [
		"If you want to run a command through the shell (say you are using C(<), C(>), C(|), etc), you actually want the M(shell) module instead. Parsing shell metacharacters can lead to unexpected commands being executed if quoting is not done correctly so it is more secure to use the C(command) module when possible.",
		" C(creates), C(removes), and C(chdir) can be specified after the command. For instance, if you only want to run a command if a certain file does not exist, use this.",
		"Check mode is supported when passing C(creates) or C(removes). If running in check mode and either of these are specified, the module will check for the existence of the file and report the correct changed status. If these are not supplied, the task will be skipped.",
		"The C(executable) parameter is removed since version 2.4. If you have a need for this parameter, use the M(shell) module instead.",
		"For Windows targets, use the M(win_command) module instead.",
		"For rebooting systems, use the M(reboot) or M(win_reboot) module.",
	]
	seealso: [{
		module: "raw"
	}, {
		module: "script"
	}, {
		module: "shell"
	}, {
		module: "win_command"
	}]
	author: [
		"Ansible Core Team",
		"Michael DeHaan",
	]
}
