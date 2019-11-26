package ansible

module: aci_bd_to_l3out: {
	module:            "aci_bd_to_l3out"
	short_description: "Bind Bridge Domain to L3 Out (fv:RsBDToOut)"
	description: [
		"Bind Bridge Domain to L3 Out on Cisco ACI fabrics.",
	]
	version_added: "2.4"
	options: {
		bd: {
			description: [
				"The name of the Bridge Domain.",
			]
			type: "str"
			aliases: ["bd_name", "bridge_domain"]
		}
		l3out: {
			description: [
				"The name of the l3out to associate with th Bridge Domain.",
			]
			type: "str"
		}
		tenant: {
			description: [
				"The name of the Tenant.",
			]
			type: "str"
			aliases: ["tenant_name"]
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
		"The C(bd) and C(l3out) parameters should exist before using this module. The M(aci_bd) and C(aci_l3out) can be used for these.",
	]

	seealso: [{
		module: "aci_bd"
	}, {
		module: "aci_l3out"
	}, {
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC class B(fv:RsBDToOut)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Jacob McGill (@jmcgill298)"]
}
