package ansible

module: win_owner: {
	module:            "win_owner"
	version_added:     "2.1"
	short_description: "Set owner"
	description: [
		"Set owner of files or directories.",
	]
	options: {
		path: {
			description: [
				"Path to be used for changing owner.",
			]
			type:     "path"
			required: true
		}
		user: {
			description: [
				"Name to be used for changing owner.",
			]
			type:     "str"
			required: true
		}
		recurse: {
			description: [
				"Indicates if the owner should be changed recursively.",
			]
			type:    "bool"
			default: false
		}
	}
	seealso: [{
		module: "win_acl"
	}, {
		module: "win_file"
	}, {
		module: "win_stat"
	}]
	author: ["Hans-Joachim Kliemeck (@h0nIg)"]
}
