package ansible

module: aci_vlan_pool: {
	module:            "aci_vlan_pool"
	short_description: "Manage VLAN pools (fvns:VlanInstP)"
	description: [
		"Manage VLAN pools on Cisco ACI fabrics.",
	]
	version_added: "2.5"
	options: {
		pool_allocation_mode: {
			description: [
				"The method used for allocating VLANs to resources.",
			]
			type: "str"
			choices: ["dynamic", "static"]
			aliases: ["allocation_mode", "mode"]
		}
		description: {
			description: [
				"Description for the C(pool).",
			]
			type: "str"
			aliases: ["descr"]
		}
		pool: {
			description: [
				"The name of the pool.",
			]
			type: "str"
			aliases: ["name", "pool_name"]
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
		module: "aci_encap_pool"
	}, {
		module: "aci_vlan_pool_encap_block"
	}, {
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC class B(fvns:VlanInstP)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: [
		"Jacob McGill (@jmcgill298)",
		"Dag Wieers (@dagwieers)",
	]
}
