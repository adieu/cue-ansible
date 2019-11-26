package ansible

module: alternatives: {
	module:            "alternatives"
	short_description: "Manages alternative programs for common commands"
	description: [
		"Manages symbolic links using the 'update-alternatives' tool.",
		"Useful when multiple programs are installed but provide similar functionality (e.g. different editors).",
	]
	version_added: "1.6"
	author: [
		"David Wittman (@DavidWittman)",
		"Gabe Mulley (@mulby)",
	]
	options: {
		name: {
			description: [
				"The generic name of the link.",
			]
			type:     "str"
			required: true
		}
		path: {
			description: [
				"The path to the real executable that the link should point to.",
			]
			type:     "path"
			required: true
		}
		link: {
			description: [
				"The path to the symbolic link that should point to the real executable.",
				"This option is always required on RHEL-based distributions. On Debian-based distributions this option is required when the alternative I(name) is unknown to the system.",
			]

			type: "path"
		}
		priority: {
			description: [
				"The priority of the alternative.",
			]
			type:          "int"
			default:       50
			version_added: "2.2"
		}
	}
	requirements: ["update-alternatives"]
}
