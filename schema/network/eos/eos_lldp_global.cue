package ansible

module: eos_lldp_global: {
	module:            "eos_lldp_global"
	version_added:     2.9
	short_description: "Manage Global Link Layer Discovery Protocol (LLDP) settings on Arista EOS devices."
	description: [
		"This module manages Global Link Layer Discovery Protocol (LLDP) settings on Arista EOS devices.",
	]
	author: "Nathaniel Case (@Qalthos)"
	notes: [
		"Tested against Arista EOS 4.20.10M",
		"This module works with connection C(network_cli). See the L(EOS Platform Options,../network/user_guide/platform_eos.html).",
	]

	options: {
		config: {
			description: "The provided global LLDP configuration."
			type:        "dict"
			suboptions: {
				holdtime: {
					description: [
						"Specifies the holdtime (in sec) to be sent in packets.",
					]
					type: "int"
				}
				reinit: {
					description: [
						"Specifies the delay (in sec) for LLDP initialization on any interface.",
					]
					type: "int"
				}
				timer: {
					description: [
						"Specifies the rate at which LLDP packets are sent (in sec).",
					]
					type: "int"
				}
				tlv_select: {
					description: [
						"Specifies the LLDP TLVs to enable or disable.",
					]
					type: "dict"
					suboptions: {
						link_aggregation: {
							description: [
								"Enable or disable link aggregation TLV.",
							]
							type: "bool"
						}
						management_address: {
							description: [
								"Enable or disable management address TLV.",
							]
							type: "bool"
						}
						max_frame_size: {
							description: [
								"Enable or disable maximum frame size TLV.",
							]
							type: "bool"
						}
						port_description: {
							description: [
								"Enable or disable port description TLV.",
							]
							type: "bool"
						}
						system_capabilities: {
							description: [
								"Enable or disable system capabilities TLV.",
							]
							type: "bool"
						}
						system_description: {
							description: [
								"Enable or disable system description TLV.",
							]
							type: "bool"
						}
						system_name: {
							description: [
								"Enable or disable system name TLV.",
							]
							type: "bool"
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
