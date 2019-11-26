package ansible

module: vyos_banner: {
	module:            "vyos_banner"
	version_added:     "2.4"
	author:            "Trishna Guha (@trishnaguha)"
	short_description: "Manage multiline banners on VyOS devices"
	description: [
		"This will configure both pre-login and post-login banners on remote devices running VyOS. It allows playbooks to add or remote banner text from the active running configuration.",
	]

	notes: [
		"Tested against VyOS 1.1.8 (helium).",
		"This module works with connection C(network_cli). See L(the VyOS OS Platform Options,../network/user_guide/platform_vyos.html).",
	]
	options: {
		banner: {
			description: [
				"Specifies which banner that should be configured on the remote device.",
			]

			required: true
			choices: ["pre-login", "post-login"]
		}
		text: description: [
			"The banner text that should be present in the remote device running configuration. This argument accepts a multiline string, with no empty lines. Requires I(state=present).",
		]

		state: {
			description: [
				"Specifies whether or not the configuration is present in the current devices active running configuration.",
			]

			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "vyos"
}
