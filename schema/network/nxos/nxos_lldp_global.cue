package ansible

module: nxos_lldp_global: {
	module:            "nxos_lldp_global"
	version_added:     2.9
	short_description: "Configure and manage Link Layer Discovery Protocol(LLDP) attributes on NX-OS platforms."
	description:       "This module configures and manages the Link Layer Discovery Protocol(LLDP) attributes on NX-OS platforms."
	author:            "Adharsh Srivats Rangarajan (@adharshsrivatsr)"
	notes: [
		"Tested against NxOS 7.3.(0)D1(1) on VIRL",
		"The LLDP feature needs to be enabled before using this module",
	]
	options: {
		config: {
			description: [
				"A list of link layer discovery configurations",
			]
			type: "dict"
			suboptions: {
				holdtime: {
					description: [
						"Amount of time the receiving device should hold the information (in seconds)",
					]
					type: "int"
				}
				port_id: {
					description: [
						"This attribute defines if the interface names should be advertised in the long(0) or short(1) form.",
					]
					type: "int"
					choices: [0, 1]
				}
				reinit: {
					description: [
						"Amount of time to delay the initialization of LLDP on any interface (in seconds)",
					]
					type: "int"
				}
				timer: {
					description: [
						"Frequency at which LLDP updates need to be transmitted (in seconds)",
					]
					type: "int"
				}
				tlv_select: {
					description: [
						"This attribute can be used to specify the TLVs that need to be sent and received in the LLDP packets. By default, all TLVs are advertised",
					]
					type: "dict"
					suboptions: {
						dcbxp: {
							description: [
								"Used to specify the Data Center Bridging Exchange Protocol TLV",
							]
							type: "bool"
						}
						management_address: {
							description: [
								"Used to specify the management address in TLV messages",
							]
							type: "dict"
							suboptions: {
								v4: {
									description: "Management address with TLV v4"
									type:        "bool"
								}
								v6: {
									description: "Management address with TLV v6"
									type:        "bool"
								}
							}
						}
						port: {
							description: [
								"Used to manage port based attributes in TLV messages",
							]
							type: "dict"
							suboptions: {
								description: {
									description: [
										"Used to specify the port description TLV",
									]
									type: "bool"
								}
								vlan: {
									description: [
										"Used to specify the port VLAN ID TLV",
									]
									type: "bool"
								}
							}
						}
						power_management: {
							description: [
								"Used to specify IEEE 802.3 DTE Power via MDI TLV",
							]
							type: "bool"
						}
						system: {
							description: [
								"Used to manage system based attributes in TLV messages",
							]
							type: "dict"
							suboptions: {
								capabilities: {
									description: [
										"Used to specify the system capabilities TLV",
									]
									type: "bool"
								}
								description: {
									description: [
										"Used to specify the system description TLV",
									]
									type: "bool"
								}
								name: {
									description: [
										"Used to specify the system name TLV",
									]
									type: "bool"
								}
							}
						}
					}
				}
			}
		}
		state: {
			description: [
				"The state of the configuration after module completion",
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
