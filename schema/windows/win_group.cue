package ansible

module: win_group: {
	module:            "win_group"
	version_added:     "1.7"
	short_description: "Add and remove local groups"
	description: [
		"Add and remove local groups.",
		"For non-Windows targets, please use the M(group) module instead.",
	]
	options: {
		name: {
			description: [
				"Name of the group.",
			]
			type:     "str"
			required: true
		}
		description: {
			description: [
				"Description of the group.",
			]
			type: "str"
		}
		state: {
			description: [
				"Create or remove the group.",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
	}
	seealso: [{
		module: "group"
	}, {
		module: "win_domain_group"
	}, {
		module: "win_group_membership"
	}]
	author: ["Chris Hoffman (@chrishoffman)"]
}
