package ansible

module: net_banner: {
	module:            "net_banner"
	version_added:     "2.4"
	author:            "Ricardo Carrillo Cruz (@rcarrillocruz)"
	short_description: "Manage multiline banners on network devices"
	description: [
		"This will configure both login and motd banners on network devices. It allows playbooks to add or remove banner text from the active running configuration.",
	]

	deprecated: {
		removed_in:  "2.13"
		alternative: "Use platform-specific \"[netos]_banner\" module"
		why:         "Updated modules released with more functionality"
	}
	extends_documentation_fragment: "network_agnostic"
	options: {
		banner: {
			description: [
				"Specifies which banner that should be configured on the remote device.",
			]

			required: true
			choices: ["login", "motd"]
		}
		text: description: [
			"The banner text that should be present in the remote device running configuration.  This argument accepts a multiline string, with no empty lines. Requires I(state=present).",
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
