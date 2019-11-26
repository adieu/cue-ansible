package ansible

module: aci_encap_pool: {
	module:            "aci_encap_pool"
	short_description: "Manage encap pools (fvns:VlanInstP, fvns:VxlanInstP, fvns:VsanInstP)"
	description: [
		"Manage vlan, vxlan, and vsan pools on Cisco ACI fabrics.",
	]
	version_added: "2.5"
	options: {
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
		pool_allocation_mode: {
			description: [
				"The method used for allocating encaps to resources.",
				"Only vlan and vsan support allocation modes.",
			]
			type: "str"
			choices: ["dynamic", "static"]
			aliases: ["allocation_mode", "mode"]
		}
		pool_type: {
			description: [
				"The encap type of C(pool).",
			]
			type:     "str"
			required: true
			aliases: ["type"]
			choices: ["vlan", "vsan", "vxlan"]
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
		module: "aci_encap_pool_range"
	}, {
		module: "aci_vlan_pool"
	}, {
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC classes B(fvns:VlanInstP), B(fvns:VxlanInstP) and B(fvns:VsanInstP)"

		link: "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Jacob McGill (@jmcgill298)"]
}
