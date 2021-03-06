package ansible

module: vultr_ssh_key_info: {
	module:            "vultr_ssh_key_info"
	short_description: "Get information about the Vultr SSH keys available."
	description: [
		"Get infos about SSH keys available.",
	]
	version_added: "2.9"
	author: [
		"Yanis Guenane (@Spredzy)",
		"René Moser (@resmo)",
	]
	extends_documentation_fragment: "vultr"
}
