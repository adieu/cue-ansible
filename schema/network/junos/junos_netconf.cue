package ansible

module: junos_netconf: {
	module:            "junos_netconf"
	version_added:     "2.1"
	author:            "Peter Sprygada (@privateip)"
	short_description: "Configures the Junos Netconf system service"
	description: [
		"This module provides an abstraction that enables and configures the netconf system service running on Junos devices.  This module can be used to easily enable the Netconf API. Netconf provides a programmatic interface for working with configuration and state resources as defined in RFC 6242. If the C(netconf_port) is not mentioned in the task by default netconf will be enabled on port 830 only.",
	]

	extends_documentation_fragment: "junos"
	options: {
		netconf_port: {
			description: [
				"This argument specifies the port the netconf service should listen on for SSH connections.  The default port as defined in RFC 6242 is 830.",
			]

			required: false
			default:  830
			aliases: ["listens_on"]
			version_added: "2.2"
		}
		state: {
			description: [
				"Specifies the state of the C(junos_netconf) resource on the remote device.  If the I(state) argument is set to I(present) the netconf service will be configured.  If the I(state) argument is set to I(absent) the netconf service will be removed from the configuration.",
			]

			required: false
			default:  "present"
			choices: ["present", "absent"]
		}
	}
	notes: [
		"Tested against vSRX JUNOS version 15.1X49-D15.4, vqfx-10000 JUNOS Version 15.1X53-D60.4.",
		"Recommended connection is C(network_cli). See L(the Junos OS Platform Options,../network/user_guide/platform_junos.html).",
		"This module also works with C(local) connections for legacy playbooks.",
		"If C(netconf_port) value is not mentioned in task by default it will be enabled on port 830 only. Although C(netconf_port) value can be from 1 through 65535, avoid configuring access on a port that is normally assigned for another service. This practice avoids potential resource conflicts.",
	]
}
