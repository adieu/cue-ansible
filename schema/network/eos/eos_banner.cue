package ansible

module: eos_banner: {
	module:            "eos_banner"
	version_added:     "2.3"
	author:            "Peter Sprygada (@privateip)"
	short_description: "Manage multiline banners on Arista EOS devices"
	description: [
		"This will configure both login and motd banners on remote devices running Arista EOS.  It allows playbooks to add or remote banner text from the active running configuration.",
	]

	extends_documentation_fragment: "eos"
	notes: [
		"Tested against EOS 4.15",
	]
	options: {
		banner: {
			description: [
				"Specifies which banner that should be configured on the remote device.",
			]

			required: true
			choices: ["login", "motd"]
		}
		text: description: [
			"The banner text that should be present in the remote device running configuration.  This argument accepts a multiline string. Requires I(state=present).",
		]

		state: {
			description: [
				"Specifies whether or not the configuration is present in the current devices active running configuration.",
			]

			default: "present"
			choices: ["present", "absent"]
		}
	}
}
