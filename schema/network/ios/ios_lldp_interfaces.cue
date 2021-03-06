package ansible

module: ios_lldp_interfaces: {
	module:            "ios_lldp_interfaces"
	version_added:     2.9
	short_description: "Manage link layer discovery protocol (LLDP) attributes of interfaces on Cisco IOS devices."
	description:       "This module manages link layer discovery protocol (LLDP) attributes of interfaces on Cisco IOS devices."
	author:            "Sumit Jaiswal (@justjais)"
	notes: [
		"Tested against Cisco IOSv Version 15.2 on VIRL",
		"This module works with connection C(network_cli), See L(IOS Platform Options,../network/user_guide/platform_ios.html).",
	]

	options: {
		config: {
			description: "A dictionary of LLDP options"
			type:        "list"
			elements:    "dict"
			suboptions: {
				name: {
					description: [
						"Full name of the interface excluding any logical unit number, i.e. GigabitEthernet0/1.",
					]
					type:     "str"
					required: true
				}
				receive: {
					description: [
						"Enable LLDP reception on interface.",
					]
					type: "bool"
				}
				transmit: {
					description: [
						"Enable LLDP transmission on interface.",
					]
					type: "bool"
				}
				med_tlv_select: {
					description: [
						"Selection of LLDP MED TLVs to send",
						"NOTE, if med-tlv-select is configured idempotency won't be maintained as Cisco device doesn't record configured med-tlv-select options. As such, Ansible cannot verify if the respective med-tlv-select options is already configured or not from the device side. If you try to apply med-tlv-select option in every play run, Ansible will show changed as True.",
					]

					type: "dict"
					suboptions: inventory_management: {
						description: [
							"LLDP MED Inventory Management TLV",
						]
						type: "bool"
					}
				}
				tlv_select: {
					description: [
						"Selection of LLDP type-length-value i.e. TLVs to send",
						"NOTE, if tlv-select is configured idempotency won't be maintained as Cisco device doesn't record configured tlv-select options. As such, Ansible cannot verify if the respective tlv-select options is already configured or not from the device side. If you try to apply tlv-select option in every play run, Ansible will show changed as True.",
					]

					type: "dict"
					suboptions: power_management: {
						description: [
							"IEEE 802.3 DTE Power via MDI TLV",
						]
						type: "bool"
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
				"overridden",
				"deleted",
			]
			default: "merged"
		}
	}
}
