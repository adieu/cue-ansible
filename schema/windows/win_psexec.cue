package ansible

module: win_psexec: {
	module:            "win_psexec"
	version_added:     "2.3"
	short_description: "Runs commands (remotely) as another (privileged) user"
	description: [
		"Run commands (remotely) through the PsExec service.",
		"Run commands as another (domain) user (with elevated privileges).",
	]
	requirements: [
		"Microsoft PsExec",
	]
	options: {
		command: {
			description: [
				"The command line to run through PsExec (limited to 260 characters).",
			]
			type:     "str"
			required: true
		}
		executable: {
			description: [
				"The location of the PsExec utility (in case it is not located in your PATH).",
			]
			type:    "path"
			default: "psexec.exe"
		}
		extra_opts: {
			description: [
				"Specify additional options to add onto the PsExec invocation.",
				"This module was undocumented in older releases and will be removed in Ansible 2.10.",
			]

			type: "list"
		}
		hostnames: {
			description: [
				"The hostnames to run the command.",
				"If not provided, the command is run locally.",
			]
			type: "list"
		}
		username: {
			description: [
				"The (remote) user to run the command as.",
				"If not provided, the current user is used.",
			]
			type: "str"
		}
		password: {
			description: [
				"The password for the (remote) user to run the command as.",
				"This is mandatory in order authenticate yourself.",
			]
			type: "str"
		}
		chdir: {
			description: [
				"Run the command from this (remote) directory.",
			]
			type: "path"
		}
		nobanner: {
			description: [
				"Do not display the startup banner and copyright message.",
				"This only works for specific versions of the PsExec binary.",
			]
			type:          "bool"
			default:       false
			version_added: "2.4"
		}
		noprofile: {
			description: [
				"Run the command without loading the account's profile.",
			]
			type:    "bool"
			default: false
		}
		elevated: {
			description: [
				"Run the command with elevated privileges.",
			]
			type:    "bool"
			default: false
		}
		interactive: {
			description: [
				"Run the program so that it interacts with the desktop on the remote system.",
			]
			type:    "bool"
			default: false
		}
		session: {
			description: [
				"Specifies the session ID to use.",
				"This parameter works in conjunction with I(interactive).",
				"It has no effect when I(interactive) is set to C(no).",
			]
			type:          "int"
			version_added: "2.7"
		}
		limited: {
			description: [
				"Run the command as limited user (strips the Administrators group and allows only privileges assigned to the Users group).",
			]
			type:    "bool"
			default: false
		}
		system: {
			description: [
				"Run the remote command in the System account.",
			]
			type:    "bool"
			default: false
		}
		priority: {
			description: [
				"Used to run the command at a different priority.",
			]
			choices: ["abovenormal", "background", "belownormal", "high", "low", "realtime"]
		}
		timeout: {
			description: [
				"The connection timeout in seconds",
			]
			type: "int"
		}
		wait: {
			description: [
				"Wait for the application to terminate.",
				"Only use for non-interactive applications.",
			]
			type:    "bool"
			default: true
		}
	}
	notes: [
		"More information related to Microsoft PsExec is available from U(https://technet.microsoft.com/en-us/sysinternals/bb897553.aspx)",
	]

	seealso: [{
		module: "psexec"
	}, {
		module: "raw"
	}, {
		module: "win_command"
	}, {
		module: "win_shell"
	}]
	author: ["Dag Wieers (@dagwieers)"]
}
