package ansible

module: aci_access_sub_port_block_to_access_port: {
	module:            "aci_access_sub_port_block_to_access_port"
	short_description: "Manage sub port blocks of Fabric interface policy leaf profile interface selectors (infra:HPortS, infra:SubPortBlk)"
	description: [
		"Manage sub port blocks of Fabric interface policy leaf profile interface selectors on Cisco ACI fabrics.",
	]
	seealso: [{
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC classes B(infra:HPortS) and B(infra:SubPortBlk)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: [
		"Simon Metzger (@smnmtzgr)",
	]
	version_added: "2.8"
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
		leaf_port_blk: {
			description: [
				"The name of the Fabric access policy leaf interface profile access port block.",
			]
			type:     "str"
			required: true
			aliases: ["leaf_port_blk_name"]
		}
		leaf_port_blk_description: {
			description: [
				"The description to assign to the C(leaf_port_blk).",
			]
			type: "str"
		}
		from_port: {
			description: [
				"The beginning (from-range) of the port range block for the leaf access port block.",
			]
			type:     "str"
			required: true
			aliases: ["from", "fromPort", "from_port_range"]
		}
		to_port: {
			description: [
				"The end (to-range) of the port range block for the leaf access port block.",
			]
			type:     "str"
			required: true
			aliases: ["to", "toPort", "to_port_range"]
		}
		from_sub_port: {
			description: [
				"The beginning (from-range) of the sub port range block for the leaf access port block.",
			]
			type:     "str"
			required: true
			aliases: ["fromSubPort", "from_sub_port_range"]
		}
		to_sub_port: {
			description: [
				"The end (to-range) of the sub port range block for the leaf access port block.",
			]
			type:     "str"
			required: true
			aliases: ["toSubPort", "to_sub_port_range"]
		}
		from_card: {
			description: [
				"The beginning (from-range) of the card range block for the leaf access port block.",
			]
			type: "str"
			aliases: ["from_card_range"]
		}
		to_card: {
			description: [
				"The end (to-range) of the card range block for the leaf access port block.",
			]
			type: "str"
			aliases: ["to_card_range"]
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
}
