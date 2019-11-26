package ansible

module: vultr_startup_script_info: {
	module:            "vultr_startup_script_info"
	short_description: "Gather information about the Vultr startup scripts available."
	description: [
		"Gather information about vultr_startup_scripts available.",
	]
	version_added:                  "2.9"
	author:                         "Yanis Guenane (@Spredzy)"
	extends_documentation_fragment: "vultr"
}
