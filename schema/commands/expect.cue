package ansible

module: expect: {
	module:            "expect"
	version_added:     "2.0"
	short_description: "Executes a command and responds to prompts."
	description: [
		"The C(expect) module executes a command and responds to prompts.",
		"The given command will be executed on all selected nodes. It will not be processed through the shell, so variables like C($HOME) and operations like C(\"<\"), C(\">\"), C(\"|\"), and C(\"&\") will not work.",
	]

	options: {
		command: {
			description: [
				"The command module takes command to run.",
			]
			required: true
		}
		creates: {
			type: "path"
			description: [
				"A filename, when it already exists, this step will B(not) be run.",
			]
		}
		removes: {
			type: "path"
			description: [
				"A filename, when it does not exist, this step will B(not) be run.",
			]
		}
		chdir: {
			type: "path"
			description: [
				"Change into this directory before running the command.",
			]
		}
		responses: {
			type: "dict"
			description: [
				"Mapping of expected string/regex and string to respond with. If the response is a list, successive matches return successive responses. List functionality is new in 2.1.",
			]

			required: true
		}
		timeout: {
			type: "int"
			description: [
				"Amount of time in seconds to wait for the expected strings. Use C(null) to disable timeout.",
			]

			default: 30
		}
		echo: {
			description: [
				"Whether or not to echo out your response strings.",
			]
			default: false
			type:    "bool"
		}
	}
	requirements: [
		"python >= 2.6",
		"pexpect >= 3.3",
	]
	notes: [
		"If you want to run a command through the shell (say you are using C(<), C(>), C(|), etc), you must specify a shell in the command such as C(/bin/bash -c \"/path/to/something | grep else\").",
		"The question, or key, under I(responses) is a python regex match. Case insensitive searches are indicated with a prefix of C(?i).",
		"By default, if a question is encountered multiple times, its string response will be repeated. If you need different responses for successive question matches, instead of a string response, use a list of strings as the response. The list functionality is new in 2.1.",
		"The M(expect) module is designed for simple scenarios. For more complex needs, consider the use of expect code with the M(shell) or M(script) modules. (An example is part of the M(shell) module documentation)",
	]

	seealso: [{
		module: "script"
	}, {
		module: "shell"
	}]
	author: "Matt Martz (@sivel)"
}
