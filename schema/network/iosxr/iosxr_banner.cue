package ansible

module: iosxr_banner: {
	module:        "iosxr_banner"
	version_added: "2.4"
	author: [
		"Trishna Guha (@trishnaguha)",
		"Kedar Kekan (@kedarX)",
	]
	short_description: "Manage multiline banners on Cisco IOS XR devices"
	description: [
		"This module will configure both exec and motd banners on remote device running Cisco IOS XR. It allows playbooks to add or remove banner text from the running configuration.",
	]

	requirements: [
		"ncclient >= 0.5.3 when using netconf",
		"lxml >= 4.1.1 when using netconf",
	]
	extends_documentation_fragment: "iosxr"
	notes: [
		"Tested against IOS XRv 6.1.3.",
		"This module works with connection C(network_cli) and C(netconf). See L(the IOS-XR Platform Options,../network/user_guide/platform_iosxr.html).",
	]
	options: {
		banner: {
			description: [
				"Specifies the type of banner to configure on remote device.",
			]
			required: true
			choices: ["login", "motd"]
		}
		text: description: [
			"Banner text to be configured. Accepts multiline string, without empty lines. Requires I(state=present).",
		]

		state: {
			description: [
				"Existential state of the configuration on the device.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
}
