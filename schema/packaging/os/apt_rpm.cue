package ansible

module: apt_rpm: {
	module:            "apt_rpm"
	short_description: "apt_rpm package manager"
	description: [
		"Manages packages with I(apt-rpm). Both low-level (I(rpm)) and high-level (I(apt-get)) package manager binaries required.",
	]
	version_added: "1.5"
	options: {
		pkg: {
			description: [
				"name of package to install, upgrade or remove.",
			]
			required: true
		}
		state: {
			description: [
				"Indicates the desired package state.",
			]
			choices: ["absent", "present"]
			default: "present"
		}
		update_cache: {
			description: [
				"update the package database first C(apt-get update).",
			]
			type:    "bool"
			default: "no"
		}
	}
	author: ["Evgenii Terechkov (@evgkrsk)"]
}
