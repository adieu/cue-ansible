package ansible

module: shell: {
	module:            "shell"
	short_description: "Execute shell commands on targets"
	description: [
		"The C(shell) module takes the command name followed by a list of space-delimited arguments.",
		"Either a free form command or C(cmd) parameter is required, see the examples.",
		"It is almost exactly like the M(command) module but runs the command through a shell (C(/bin/sh)) on the remote node.",
		"For Windows targets, use the M(win_shell) module instead.",
	]
	version_added: "0.2"
	options: {
		free_form: {
			description: [
				"The shell module takes a free form command to run, as a string.",
				"There is no actual parameter named 'free form'.",
				"See the examples on how to use this module.",
			]
			type: "str"
		}
		cmd: {
			type: "str"
			description: [
				"The command to run followed by optional arguments.",
			]
		}
		creates: {
			description: [
				"A filename, when it already exists, this step will B(not) be run.",
			]
			type: "path"
		}
		removes: {
			description: [
				"A filename, when it does not exist, this step will B(not) be run.",
			]
			type:          "path"
			version_added: "0.8"
		}
		chdir: {
			description: [
				"Change into this directory before running the command.",
			]
			type:          "path"
			version_added: "0.6"
		}
		executable: {
			description: [
				"Change the shell used to execute the command.",
				"This expects an absolute path to the executable.",
			]
			type:          "path"
			version_added: "0.9"
		}
		warn: {
			description: [
				"Whether to enable task warnings.",
			]
			type:          "bool"
			default:       true
			version_added: "1.8"
		}
		stdin: {
			description: [
				"Set the stdin of the command directly to the specified value.",
			]
			type:          "str"
			version_added: "2.4"
		}
		stdin_add_newline: {
			description: [
				"Whether to append a newline to stdin data.",
			]
			type:          "bool"
			default:       true
			version_added: "2.8"
		}
	}
	notes: [
		"If you want to execute a command securely and predictably, it may be better to use the M(command) module instead. Best practices when writing playbooks will follow the trend of using M(command) unless the C(shell) module is explicitly required. When running ad-hoc commands, use your best judgement.",
		"Check mode is supported when passing C(creates) or C(removes). If running in check mode and either of these are specified, the module will check for the existence of the file and report the correct changed status. If these are not supplied, the task will be skipped.",
		"To sanitize any variables passed to the shell module, you should use C({{ var | quote }}) instead of just C({{ var }}) to make sure they do not include evil things like semicolons.",
		"An alternative to using inline shell scripts with this module is to use the M(script) module possibly together with the M(template) module.",
		"For rebooting systems, use the M(reboot) or M(win_reboot) module.",
	]
	seealso: [{
		module: "command"
	}, {
		module: "raw"
	}, {
		module: "script"
	}, {
		module: "win_shell"
	}]
	author: [
		"Ansible Core Team",
		"Michael DeHaan",
	]
}
