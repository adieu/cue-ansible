package ansible

module: ce_lldp_interface: {
	module:            "ce_lldp_interface"
	version_added:     "2.10"
	short_description: "Manages INTERFACE LLDP configuration on HUAWEI CloudEngine switches."
	description: [
		"Manages INTERFACE LLDP configuration on HUAWEI CloudEngine switches.",
	]
	author: "xuxiaowei0512 (@CloudEngine-Ansible)"
	notes: [
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Recommended connection is C(netconf).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		lldpenable: {
			description: [
				"Set global LLDP enable state.",
			]
			type: "str"
			choices: ["enabled", "disabled"]
		}
		function_lldp_interface_flag: {
			description: [
				"Used to distinguish between command line functions.",
			]
			type: "str"
			choices: ["disableINTERFACE", "tlvdisableINTERFACE", "tlvenableINTERFACE", "intervalINTERFACE"]
		}
		type_tlv_disable: {
			description: [
				"Used to distinguish between command line functions.",
			]
			type: "str"
			choices: ["basic_tlv", "dot3_tlv"]
		}
		type_tlv_enable: {
			description: [
				"Used to distinguish between command line functions.",
			]
			type: "str"
			choices: ["dot1_tlv", "dcbx"]
		}
		lldpadminstatus: {
			description: [
				"Set interface lldp enable state.",
			]
			type: "str"
			choices: ["txOnly", "rxOnly", "txAndRx", "disabled"]
		}
		ifname: {
			description: [
				"Interface name.",
			]
			type: "str"
		}
		txinterval: {
			description: [
				"LLDP send message interval.",
			]
			type: "int"
		}
		txprotocolvlanid: {
			description: [
				"Set tx protocol vlan id.",
			]
			type: "int"
		}
		txvlannameid: {
			description: [
				"Set tx vlan name id.",
			]
			type: "int"
		}
		vlannametxenable: {
			description: [
				"Set vlan name tx enable or not.",
			]
			type: "bool"
		}
		manaddrtxenable: {
			description: [
				"Make it able to send management address TLV.",
			]
			type: "bool"
		}
		portdesctxenable: {
			description: [
				"Enabling the ability to send a description of TLV.",
			]
			type: "bool"
		}
		syscaptxenable: {
			description: [
				"Enable the ability to send system capabilities TLV.",
			]
			type: "bool"
		}
		sysdesctxenable: {
			description: [
				"Enable the ability to send system description TLV.",
			]
			type: "bool"
		}
		sysnametxenable: {
			description: [
				"Enable the ability to send system name TLV.",
			]
			type: "bool"
		}
		portvlantxenable: {
			description: [
				"Enable port vlan tx.",
			]
			type: "bool"
		}
		protovlantxenable: {
			description: [
				"Enable protocol vlan tx.",
			]
			type: "bool"
		}
		protoidtxenable: {
			description: [
				"Enable the ability to send protocol identity TLV.",
			]
			type: "bool"
		}
		macphytxenable: {
			description: [
				"Enable MAC/PHY configuration and state TLV to be sent.",
			]
			type: "bool"
		}
		linkaggretxenable: {
			description: [
				"Enable the ability to send link aggregation TLV.",
			]
			type: "bool"
		}
		maxframetxenable: {
			description: [
				"Enable the ability to send maximum frame length TLV.",
			]
			type: "bool"
		}
		eee: {
			description: [
				"Enable the ability to send EEE TLV.",
			]
			type: "bool"
		}
		dcbx: {
			description: [
				"Enable the ability to send DCBX TLV.",
			]
			type: "bool"
		}
		state: {
			description: [
				"Manage the state of the resource.",
			]
			type:    "str"
			default: "present"
			choices: ["present", "absent"]
		}
	}
}
