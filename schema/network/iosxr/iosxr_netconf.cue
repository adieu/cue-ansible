package ansible

module: iosxr_netconf: {
	module:            "iosxr_netconf"
	version_added:     "2.5"
	author:            "Kedar Kekan (@kedarX)"
	short_description: "Configures NetConf sub-system service on Cisco IOS-XR devices"
	description: [
		"This module provides an abstraction that enables and configures the netconf system service running on Cisco IOS-XR Software. This module can be used to easily enable the Netconf API. Netconf provides a programmatic interface for working with configuration and state resources as defined in RFC 6242.",
	]

	extends_documentation_fragment: "iosxr"
	options: {
		netconf_port: {
			description: [
				"This argument specifies the port the netconf service should listen on for SSH connections.  The default port as defined in RFC 6242 is 830.",
			]

			required: false
			default:  830
			aliases: ["listens_on"]
		}
		netconf_vrf: {
			description: [
				"netconf vrf name",
			]
			required: false
			default:  "default"
			aliases: ["vrf"]
		}
		state: {
			description: [
				"Specifies the state of the C(iosxr_netconf) resource on the remote device.  If the I(state) argument is set to I(present) the netconf service will be configured.  If the I(state) argument is set to I(absent) the netconf service will be removed from the configuration.",
			]

			required: false
			default:  "present"
			choices: ["present", "absent"]
		}
	}
	notes: [
		"This module works with connection C(network_cli). See L(the IOS-XR Platform Options,../network/user_guide/platform_iosxr.html).",
		"Tested against Cisco IOS XR Software, Version 6.1.3",
	]
}
