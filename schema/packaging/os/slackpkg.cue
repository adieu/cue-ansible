package ansible

module: slackpkg: {
	module:            "slackpkg"
	short_description: "Package manager for Slackware >= 12.2"
	description: [
		"Manage binary packages for Slackware using 'slackpkg' which is available in versions after 12.2.",
	]

	version_added: "2.0"
	options: {
		name: {
			description: [
				"name of package to install/remove",
			]
			required: true
		}

		state: {
			description: [
				"state of the package, you can use \"installed\" as an alias for C(present) and removed as one for C(absent).",
			]
			choices: ["present", "absent", "latest"]
			required: false
			default:  "present"
		}

		update_cache: {
			description: [
				"update the package database first",
			]
			required: false
			default:  false
			type:     "bool"
		}
	}

	author: "Kim Nørgaard (@KimNorgaard)"
	requirements: ["Slackware >= 12.2"]
}
