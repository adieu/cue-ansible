package ansible

module: pear: {
	module:            "pear"
	short_description: "Manage pear/pecl packages"
	description: [
		"Manage PHP packages with the pear package manager.",
	]
	version_added: 2.0
	author: [
		"Jonathan Lestrelin (@jle64) <jonathan.lestrelin@gmail.com>",
	]
	options: {
		name: {
			description: [
				"Name of the package to install, upgrade, or remove.",
			]
			required: true
		}

		state: {
			description: [
				"Desired state of the package.",
			]
			default: "present"
			choices: ["present", "absent", "latest"]
		}
		executable: {
			description: [
				"Path to the pear executable",
			]
			version_added: "2.4"
		}
	}
}
