package ansible

module: vultr_os_info: {
	module:            "vultr_os_info"
	short_description: "Get information about the Vultr OSes available."
	description: [
		"Get infos about OSes available to boot servers.",
	]
	version_added: "2.9"
	author: [
		"Yanis Guenane (@Spredzy)",
		"René Moser (@resmo)",
	]
	extends_documentation_fragment: "vultr"
}
