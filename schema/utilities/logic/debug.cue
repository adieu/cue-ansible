package ansible

module: debug: {
	module:            "debug"
	short_description: "Print statements during execution"
	description: [
		"This module prints statements during execution and can be useful for debugging variables or expressions without necessarily halting the playbook.",
		"Useful for debugging together with the 'when:' directive.",
		"This module is also supported for Windows targets.",
	]
	version_added: "0.8"
	options: {
		msg: {
			description: [
				"The customized message that is printed. If omitted, prints a generic message.",
			]
			type:    "str"
			default: "Hello world!"
		}
		var: {
			description: [
				"A variable name to debug.",
				"Mutually exclusive with the C(msg) option.",
				"Be aware that this option already runs in Jinja2 context and has an implicit C({{ }}) wrapping, so you should not be using Jinja2 delimiters unless you are looking for double interpolation.",
			]

			type: "str"
		}
		verbosity: {
			description: [
				"A number that controls when the debug is run, if you set to 3 it will only run debug when -vvv or above",
			]
			type:          "int"
			default:       0
			version_added: "2.1"
		}
	}
	notes: [
		"This module is also supported for Windows targets.",
	]
	seealso: [{
		module: "assert"
	}, {
		module: "fail"
	}]
	author: [
		"Dag Wieers (@dagwieers)",
		"Michael DeHaan",
	]
}
