package ansible

module: syspatch: {
	module: "syspatch"

	short_description: "Manage OpenBSD system patches"

	version_added: "2.9"

	description: [
		"Manage OpenBSD system patches using syspatch",
	]

	options: {
		apply: {
			description: [
				"Apply all available system patches",
			]
			default:  false
			required: false
		}
		revert: {
			description: [
				"Revert system patches",
			]
			required: false
			type:     "str"
			choices: ["all", "one"]
		}
	}

	author: ["Andrew Klaus (@precurse)"]
}
