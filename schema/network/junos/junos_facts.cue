package ansible

module: junos_facts: {
	module:            "junos_facts"
	version_added:     "2.1"
	author:            "Nathaniel Case (@Qalthos)"
	short_description: "Collect facts from remote devices running Juniper Junos"
	description: [
		"Collects fact information from a remote device running the Junos operating system.  By default, the module will collect basic fact information from the device to be included with the hostvars. Additional fact information can be collected based on the configured set of arguments.",
	]

	extends_documentation_fragment: "junos"
	options: {
		gather_subset: {
			description: [
				"When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, hardware, config, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected. To maintain backward compatibility old style facts can be retrieved by explicitly adding C(ofacts)  to value, this requires junos-eznc to be installed as a prerequisite. Valid value of gather_subset are default, hardware, config, interfaces, ofacts. If C(ofacts) is present in the list it fetches the old style facts (fact keys without 'ansible_' prefix) and it requires junos-eznc library to be installed on control node and the device login credentials must be given in C(provider) option.",
			]

			required: false
			default: ["!config"]
			version_added: "2.3"
		}
		config_format: {
			description: [
				"The I(config_format) argument specifies the format of the configuration when serializing output from the device. This argument is applicable only when C(config) value is present in I(gather_subset). The I(config_format) should be supported by the junos version running on device. This value is not applicable while fetching old style facts that is when C(ofacts) value is present in value if I(gather_subset) value. This option is valid only for C(gather_subset) values.",
			]

			required: false
			default:  "text"
			choices: ["xml", "text", "set", "json"]
			version_added: "2.3"
		}
		gather_network_resources: {
			description: [
				"When supplied, this argument will restrict the facts collected to a given subset. Possible values for this argument include all and the resources like interfaces, vlans etc. Can specify a list of values to include a larger subset. Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected. Valid subsets are 'all', 'interfaces', 'lacp', 'lacp_interfaces', 'lag_interfaces', 'l2_interfaces', 'l3_interfaces', 'lldp_global', 'lldp_interfaces', 'vlans'.",
			]

			required:      false
			version_added: "2.9"
		}
	}
	requirements: [
		"ncclient (>=v0.5.2)",
	]
	notes: [
		"Ensure I(config_format) used to retrieve configuration from device is supported by junos version running on device.",
		"With I(config_format = json), configuration in the results will be a dictionary(and not a JSON string)",
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Tested against vSRX JUNOS version 15.1X49-D15.4, vqfx-10000 JUNOS Version 15.1X53-D60.4.",
		"Recommended connection is C(netconf). See L(the Junos OS Platform Options,../network/user_guide/platform_junos.html).",
		"This module also works with C(local) connections for legacy playbooks.",
		"Fetching old style facts requires junos-eznc library to be installed on control node and the device login credentials must be given in provider option.",
	]
}
