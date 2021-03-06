package ansible

module: xbps: {
	module:            "xbps"
	short_description: "Manage packages with XBPS"
	description: [
		"Manage packages with the XBPS package manager.",
	]
	author: [
		"Dino Occhialini (@dinoocch)",
		"Michael Aldridge (@the-maldridge)",
	]
	version_added: "2.3"
	options: {
		name: description: [
			"Name of the package to install, upgrade, or remove.",
		]
		state: {
			description: [
				"Desired state of the package.",
			]
			default: "present"
			choices: ["present", "absent", "latest"]
		}
		recurse: {
			description: [
				"When removing a package, also remove its dependencies, provided that they are not required by other packages and were not explicitly installed by a user.",
			]

			type:    "bool"
			default: "no"
		}
		update_cache: {
			description: [
				"Whether or not to refresh the master package lists. This can be run as part of a package installation or as a separate step.",
			]

			type:    "bool"
			default: "yes"
		}
		upgrade: {
			description: [
				"Whether or not to upgrade whole system",
			]
			type:    "bool"
			default: "no"
		}
	}
}
