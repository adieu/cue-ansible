package ansible

module: iosxr_lldp_global: {
	module:            "iosxr_lldp_global"
	version_added:     2.9
	short_description: "Manage Global Link Layer Discovery Protocol (LLDP) settings on IOS-XR devices."
	description: [
		"This module manages Global Link Layer Discovery Protocol (LLDP) settings on IOS-XR devices.",
	]
	notes: [
		"Tested against IOS-XR 6.1.3.",
		"This module works with connection C(network_cli). See L(the IOS-XR Platform Options,../network/user_guide/platform_iosxr.html).",
	]
	author: "Nilashish Chakraborty (@NilashishC)"
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
				subinterfaces: {
					description: [
						"Enable or disable LLDP over sub-interfaces.",
					]
					type: "bool"
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
						management_address: {
							description: [
								"Enable or disable management address TLV.",
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
