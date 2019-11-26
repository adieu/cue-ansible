package ansible

module: junos_banner: {
	module:            "junos_banner"
	version_added:     "2.4"
	author:            "Ganesh Nalawade (@ganeshrn)"
	short_description: "Manage multiline banners on Juniper JUNOS devices"
	description: [
		"This will configure both login and motd banners on network devices. It allows playbooks to add or remote banner text from the active running configuration.",
	]

	options: {
		banner: {
			description: [
				"Specifies which banner that should be configured on the remote device. Value C(login) indicates system login message prior to authenticating, C(motd) is login announcement after successful authentication.",
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
		active: {
			description: [
				"Specifies whether or not the configuration is active or deactivated",
			]
			type:    "bool"
			default: "yes"
		}
	}
	requirements: [
		"ncclient (>=v0.5.2)",
	]
	notes: [
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Tested against vSRX JUNOS version 15.1X49-D15.4, vqfx-10000 JUNOS Version 15.1X53-D60.4.",
		"Recommended connection is C(netconf). See L(the Junos OS Platform Options,../network/user_guide/platform_junos.html).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	extends_documentation_fragment: "junos"
}
