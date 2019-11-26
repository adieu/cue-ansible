package ansible

module: aci_tenant: {
	module:            "aci_tenant"
	short_description: "Manage tenants (fv:Tenant)"
	description: [
		"Manage tenants on Cisco ACI fabrics.",
	]
	version_added: "2.4"
	options: {
		tenant: {
			description: [
				"The name of the tenant.",
			]
			type:     "str"
			required: true
			aliases: ["name", "tenant_name"]
		}
		description: {
			description: [
				"Description for the tenant.",
			]
			type: "str"
			aliases: ["descr"]
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
		module: "aci_ap"
	}, {
		module: "aci_bd"
	}, {
		module: "aci_contract"
	}, {
		module: "aci_filter"
	}, {
		module: "aci_vrf"
	}, {
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC class B(fv:Tenant)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Jacob McGill (@jmcgill298)"]
}
