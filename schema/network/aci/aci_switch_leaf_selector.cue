package ansible

module: aci_switch_leaf_selector: {
	module:            "aci_switch_leaf_selector"
	short_description: "Bind leaf selectors to switch policy leaf profiles (infra:LeafS, infra:NodeBlk, infra:RsAccNodePGrep)"
	description: [
		"Bind leaf selectors (with node block range and policy group) to switch policy leaf profiles on Cisco ACI fabrics.",
	]
	version_added: "2.5"
	options: {
		description: {
			description: [
				"The description to assign to the C(leaf).",
			]
			type: "str"
		}
		leaf_profile: {
			description: [
				"Name of the Leaf Profile to which we add a Selector.",
			]
			type: "str"
			aliases: ["leaf_profile_name"]
		}
		leaf: {
			description: [
				"Name of Leaf Selector.",
			]
			type: "str"
			aliases: ["name", "leaf_name", "leaf_profile_leaf_name", "leaf_selector_name"]
		}
		leaf_node_blk: {
			description: [
				"Name of Node Block range to be added to Leaf Selector of given Leaf Profile.",
			]
			type: "str"
			aliases: ["leaf_node_blk_name", "node_blk_name"]
		}
		leaf_node_blk_description: {
			description: [
				"The description to assign to the C(leaf_node_blk)",
			]
			type: "str"
		}
		from: {
			description: [
				"Start of Node Block range.",
			]
			type: "int"
			aliases: ["node_blk_range_from", "from_range", "range_from"]
		}
		to: {
			description: [
				"Start of Node Block range.",
			]
			type: "int"
			aliases: ["node_blk_range_to", "to_range", "range_to"]
		}
		policy_group: {
			description: [
				"Name of the Policy Group to be added to Leaf Selector of given Leaf Profile.",
			]
			type: "str"
			aliases: ["name", "policy_group_name"]
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
	notes: [
		"This module is to be used with M(aci_switch_policy_leaf_profile). One first creates a leaf profile (infra:NodeP) and then creates an associated selector (infra:LeafS),",
	]

	seealso: [{
		module: "aci_switch_policy_leaf_profile"
	}, {
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC classes B(infra:LeafS), B(infra:NodeBlk) and B(infra:RsAccNodePGrp)."

		link: "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Bruno Calogero (@brunocalogero)"]
}
