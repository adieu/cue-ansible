package ansible

module: portinstall: {
	module:            "portinstall"
	short_description: "Installing packages from FreeBSD's ports system"
	description: [
		"Manage packages for FreeBSD using 'portinstall'.",
	]
	version_added: "1.3"
	options: {
		name: {
			description: [
				"name of package to install/remove",
			]
			required: true
		}
		state: {
			description: [
				"state of the package",
			]
			choices: ["present", "absent"]
			required: false
			default:  "present"
		}
		use_packages: {
			description: [
				"use packages instead of ports whenever available",
			]
			type:     "bool"
			required: false
			default:  true
		}
	}
	author: "berenddeboer (@berenddeboer)"
}
