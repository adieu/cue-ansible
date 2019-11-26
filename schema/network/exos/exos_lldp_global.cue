package ansible

module: exos_lldp_global: {
	module:            "exos_lldp_global"
	version_added:     2.9
	short_description: "Configure and manage Link Layer Discovery Protocol(LLDP) attributes on EXOS platforms."
	description:       "This module configures and manages the Link Layer Discovery Protocol(LLDP) attributes on Extreme Networks EXOS platforms."
	author:            "Ujwal Komarla (@ujwalkomarla)"
	notes: [
		"Tested against Extreme Networks EXOS version 30.2.1.8 on x460g2.",
		"This module works with connection C(httpapi). See L(EXOS Platform Options,../network/user_guide/platform_exos.html)",
	]

	options: {
		config: {
			description: "A dictionary of LLDP options"
			type:        "dict"
			suboptions: {
				interval: {
					description: [
						"Frequency at which LLDP advertisements are sent (in seconds). By default - 30 seconds.",
					]
					type:    "int"
					default: 30
				}
				tlv_select: {
					description: [
						"This attribute can be used to specify the TLVs that need to be sent in the LLDP packets. By default, only system name and system description is sent",
					]
					type: "dict"
					suboptions: {
						management_address: {
							description: [
								"Used to specify the management address in TLV messages",
							]
							type: "bool"
						}
						port_description: {
							description: [
								"Used to specify the port description TLV",
							]
							type: "bool"
						}
						system_capabilities: {
							description: [
								"Used to specify the system capabilities TLV",
							]
							type: "bool"
						}
						system_description: {
							description: [
								"Used to specify the system description TLV",
							]
							type:    "bool"
							default: true
						}
						system_name: {
							description: [
								"Used to specify the system name TLV",
							]
							type:    "bool"
							default: true
						}
					}
				}
			}
		}

		state: {
			description: [
				"The state of the configuration after module completion.",
			]
			type: "str"
			choices: [
				"merged",
				"replaced",
				"deleted",
			]
			default: "merged"
		}
	}
}
