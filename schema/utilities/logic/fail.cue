package ansible

module: fail: {
	module:            "fail"
	short_description: "Fail with custom message"
	description: [
		"This module fails the progress with a custom message.",
		"It can be useful for bailing out when a certain condition is met using C(when).",
		"This module is also supported for Windows targets.",
	]
	version_added: "0.8"
	options: msg: {
		description: [
			"The customized message used for failing execution.",
			"If omitted, fail will simply bail out with a generic message.",
		]
		type:    "str"
		default: "Failed as requested from task"
	}
	notes: [
		"This module is also supported for Windows targets.",
	]
	seealso: [{
		module: "assert"
	}, {
		module: "debug"
	}, {
		module: "meta"
	}]
	author: ["Dag Wieers (@dagwieers)"]
}
