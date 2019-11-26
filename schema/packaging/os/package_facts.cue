package ansible

module: package_facts: {
	module:            "package_facts"
	short_description: "package information as facts"
	description: [
		"Return information about installed packages as facts",
	]
	options: {
		manager: {
			description: [
				"The package manager used by the system so we can query the package information.",
				"Since 2.8 this is a list and can support multiple package managers per system.",
				"The 'portage' and 'pkg' options were added in version 2.8.",
			]
			default: ["auto"]
			choices: ["auto", "rpm", "apt", "portage", "pkg"]
			required: false
			type:     "list"
		}
		strategy: {
			description: [
				"This option controls how the module queries the package managers on the system. C(first) means it will return only information for the first supported package manager available. C(all) will return information for all supported and available package managers on the system.",
			]

			choices: ["first", "all"]
			default:       "first"
			version_added: "2.8"
		}
	}
	version_added: "2.5"
	requirements: [
		"For 'portage' support it requires the C(qlist) utility, which is part of 'app-portage/portage-utils'.",
		"For Debian-based systems C(python-apt) package must be installed on targeted hosts.",
	]
	author: [
		"Matthew Jones (@matburt)",
		"Brian Coca (@bcoca)",
		"Adam Miller (@maxamillion)",
	]
}
