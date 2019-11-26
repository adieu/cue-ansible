package ansible

module: apk: {
	module:            "apk"
	short_description: "Manages apk packages"
	description: [
		"Manages I(apk) packages for Alpine Linux.",
	]
	author:        "Kevin Brebanov (@kbrebanov)"
	version_added: "2.0"
	options: {
		available: {
			description: [
				"During upgrade, reset versioned world dependencies and change logic to prefer replacing or downgrading packages (instead of holding them) if the currently installed package is no longer available from any repository.",
			]

			type:          "bool"
			default:       "no"
			version_added: "2.4"
		}
		name: {
			description: [
				"A package name, like C(foo), or multiple packages, like C(foo, bar).",
			]
			type:     "list"
			elements: "str"
		}
		repository: {
			description: [
				"A package repository or multiple repositories. Unlike with the underlying apk command, this list will override the system repositories rather than supplement them.",
			]

			version_added: "2.4"
		}
		state: {
			description: [
				"Indicates the desired package(s) state.",
				"C(present) ensures the package(s) is/are present.",
				"C(absent) ensures the package(s) is/are absent.",
				"C(latest) ensures the package(s) is/are present and the latest version(s).",
			]
			default: "present"
			choices: ["present", "absent", "latest"]
		}
		update_cache: {
			description: [
				"Update repository indexes. Can be run with other steps or on it's own.",
			]
			type:    "bool"
			default: "no"
		}
		upgrade: {
			description: [
				"Upgrade all installed packages to their latest version.",
			]
			type:    "bool"
			default: "no"
		}
	}
	notes: [
		"\"name\" and \"upgrade\" are mutually exclusive.",
		"When used with a `loop:` each package will be processed individually, it is much more efficient to pass the list directly to the `name` option.",
	]
}
