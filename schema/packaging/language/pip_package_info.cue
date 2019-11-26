package ansible

module: pip_package_info: {
	module:            "pip_package_info"
	short_description: "pip package information"
	description: [
		"Return information about installed pip packages",
	]
	version_added: "2.8"
	options: clients: {
		description: [
			"A list of the pip executables that will be used to get the packages. They can be supplied with the full path or just the executable name, i.e `pip3.7`.",
		]

		default: ["pip"]
		required: false
		type:     "list"
	}
	requirements: [
		"The requested pip executables must be installed on the target.",
	]
	author: [
		"Matthew Jones (@matburt)",
		"Brian Coca (@bcoca)",
		"Adam Miller (@maxamillion)",
	]
}
