package ansible

module: aci_access_port_to_interface_policy_leaf_profile: {
	module:            "aci_access_port_to_interface_policy_leaf_profile"
	short_description: "Manage Fabric interface policy leaf profile interface selectors (infra:HPortS, infra:RsAccBaseGrp, infra:PortBlk)"
	description: [
		"Manage Fabric interface policy leaf profile interface selectors on Cisco ACI fabrics.",
	]
	version_added: "2.5"
	options: {
		leaf_interface_profile: {
			description: [
				"The name of the Fabric access policy leaf interface profile.",
			]
			type:     "str"
			required: true
			aliases: ["leaf_interface_profile_name"]
		}
		access_port_selector: {
			description: [
				"The name of the Fabric access policy leaf interface profile access port selector.",
			]
			type:     "str"
			required: true
			aliases: ["name", "access_port_selector_name"]
		}
		description: {
			description: [
				"The description to assign to the C(access_port_selector)",
			]
			type: "str"
		}
		leaf_port_blk: {
			description: [
				"B(Deprecated)",
				"Starting with Ansible 2.8 we recommend using the module L(aci_access_port_block_to_access_port, aci_access_port_block_to_access_port.html).",
				"The parameter will be removed in Ansible 2.12.",
				"HORIZONTALLINE",
				"The name of the Fabric access policy leaf interface profile access port block.",
			]
			type:     "str"
			required: true
			aliases: ["leaf_port_blk_name"]
		}
		leaf_port_blk_description: {
			description: [
				"B(Deprecated)",
				"Starting with Ansible 2.8 we recommend using the module L(aci_access_port_block_to_access_port, aci_access_port_block_to_access_port.html).",
				"The parameter will be removed in Ansible 2.12.",
				"HORIZONTALLINE",
				"The description to assign to the C(leaf_port_blk)",
			]
			type: "str"
		}
		from_port: {
			description: [
				"B(Deprecated)",
				"Starting with Ansible 2.8 we recommend using the module L(aci_access_port_block_to_access_port, aci_access_port_block_to_access_port.html).",
				"The parameter will be removed in Ansible 2.12.",
				"HORIZONTALLINE",
				"The beginning (from-range) of the port range block for the leaf access port block.",
			]
			type:     "str"
			required: true
			aliases: ["from", "fromPort", "from_port_range"]
		}
		to_port: {
			description: [
				"B(Deprecated)",
				"Starting with Ansible 2.8 we recommend using the module L(aci_access_port_block_to_access_port, aci_access_port_block_to_access_port.html).",
				"The parameter will be removed in Ansible 2.12.",
				"HORIZONTALLINE",
				"The end (to-range) of the port range block for the leaf access port block.",
			]
			type:     "str"
			required: true
			aliases: ["to", "toPort", "to_port_range"]
		}
		from_card: {
			description: [
				"B(Deprecated)",
				"Starting with Ansible 2.8 we recommend using the module L(aci_access_port_block_to_access_port, aci_access_port_block_to_access_port.html).",
				"The parameter will be removed in Ansible 2.12.",
				"HORIZONTALLINE",
				"The beginning (from-range) of the card range block for the leaf access port block.",
			]
			type: "str"
			aliases: ["from_card_range"]
			version_added: "2.6"
		}
		to_card: {
			description: [
				"B(Deprecated)",
				"Starting with Ansible 2.8 we recommend using the module L(aci_access_port_block_to_access_port, aci_access_port_block_to_access_port.html).",
				"The parameter will be removed in Ansible 2.12.",
				"HORIZONTALLINE",
				"The end (to-range) of the card range block for the leaf access port block.",
			]
			type: "str"
			aliases: ["to_card_range"]
			version_added: "2.6"
		}
		policy_group: {
			description: [
				"The name of the fabric access policy group to be associated with the leaf interface profile interface selector.",
			]
			type: "str"
			aliases: ["policy_group_name"]
		}
		interface_type: {
			description: [
				"The type of interface for the static EPG deployment.",
			]
			type: "str"
			choices: ["breakout", "fex", "port_channel", "switch_port", "vpc"]
			default:       "switch_port"
			version_added: "2.6"
		}
		state: {
			description: [
				"Use C(present) or C(absent) for adding or removing.",
				"Use C(query) for listing an object or multiple objects.",
			]
			type: "str"
			choices: ["absent", "present", "query"]
			default: "present"
		}
	}
	extends_documentation_fragment: "aci"
	seealso: [{
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC classes B(infra:HPortS), B(infra:RsAccBaseGrp) and B(infra:PortBlk)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Bruno Calogero (@brunocalogero)"]
}
