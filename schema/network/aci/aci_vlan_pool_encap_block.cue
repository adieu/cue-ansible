package ansible

module: aci_vlan_pool_encap_block: {
	module:            "aci_vlan_pool_encap_block"
	short_description: "Manage encap blocks assigned to VLAN pools (fvns:EncapBlk)"
	description: [
		"Manage VLAN encap blocks that are assigned to VLAN pools on Cisco ACI fabrics.",
	]
	version_added: "2.5"
	options: {
		allocation_mode: {
			description: [
				"The method used for allocating encaps to resources.",
			]
			type: "str"
			choices: ["dynamic", "inherit", "static"]
			aliases: ["mode"]
		}
		description: {
			description: [
				"Description for the pool encap block.",
			]
			type: "str"
			aliases: ["descr"]
		}
		pool: {
			description: [
				"The name of the pool that the encap block should be assigned to.",
			]
			type: "str"
			aliases: ["pool_name"]
		}
		pool_allocation_mode: {
			description: [
				"The method used for allocating encaps to resources.",
			]
			type: "str"
			choices: ["dynamic", "static"]
			aliases: ["pool_mode"]
		}
		block_end: {
			description: [
				"The end of encap block.",
			]
			type: "int"
			aliases: ["end"]
		}
		block_name: {
			description: [
				"The name to give to the encap block.",
			]
			type: "str"
			aliases: ["name"]
		}
		block_start: {
			description: [
				"The start of the encap block.",
			]
			type: "int"
			aliases: ["start"]
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
		"The C(pool) must exist in order to add or delete a encap block.",
	]
	seealso: [{
		module: "aci_encap_pool_range"
	}, {
		module: "aci_vlan_pool"
	}, {
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC class B(fvns:EncapBlk)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: [
		"Jacob McGill (@jmcgill298)",
		"Dag Wieers (@dagwieers)",
	]
}
