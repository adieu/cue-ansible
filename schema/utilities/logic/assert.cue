package ansible

module: assert: {
	module:            "assert"
	short_description: "Asserts given expressions are true"
	description: [
		"This module asserts that given expressions are true with an optional custom message.",
		"This module is also supported for Windows targets.",
	]
	version_added: "1.5"
	options: {
		that: {
			description: [
				"A list of string expressions of the same form that can be passed to the 'when' statement.",
			]
			type:     "list"
			required: true
		}
		fail_msg: {
			description: [
				"The customized message used for a failing assertion.",
				"This argument was called 'msg' before Ansible 2.7, now it is renamed to 'fail_msg' with alias 'msg'.",
			]
			type: "str"
			aliases: ["msg"]
			version_added: "2.7"
		}
		success_msg: {
			description: [
				"The customized message used for a successful assertion.",
			]
			type:          "str"
			version_added: "2.7"
		}
		quiet: {
			description: [
				"Set this to C(yes) to avoid verbose output.",
			]
			type:          "bool"
			default:       false
			version_added: "2.8"
		}
	}
	notes: [
		"This module is also supported for Windows targets.",
	]
	seealso: [{
		module: "debug"
	}, {
		module: "fail"
	}, {
		module: "meta"
	}]
	author: [
		"Ansible Core Team",
		"Michael DeHaan",
	]
}
