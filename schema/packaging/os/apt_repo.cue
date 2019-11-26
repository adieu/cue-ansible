package ansible

module: apt_repo: {
	module:            "apt_repo"
	short_description: "Manage APT repositories via apt-repo"
	description: [
		"Manages APT repositories using apt-repo tool.",
		"See U(https://www.altlinux.org/Apt-repo) for details about apt-repo",
	]
	notes: [
		"This module works on ALT based distros.",
		"Does NOT support checkmode, due to a limitation in apt-repo tool.",
	]
	version_added: "2.8"
	options: {
		repo: {
			description: [
				"Name of the repository to add or remove.",
			]
			required: true
		}
		state: {
			description: [
				"Indicates the desired repository state.",
			]
			choices: ["absent", "present"]
			default: "present"
		}
		remove_others: {
			description: [
				"Remove other then added repositories",
				"Used if I(state=present)",
			]
			type:    "bool"
			default: "no"
		}
		update: {
			description: [
				"Update the package database after changing repositories.",
			]
			type:    "bool"
			default: "no"
		}
	}
	author: ["Mikhail Gordeev (@obirvalger)"]
}
