package ansible

module: aci_l3out_route_tag_policy: {
	module:            "aci_l3out_route_tag_policy"
	short_description: "Manage route tag policies (l3ext:RouteTagPol)"
	description: [
		"Manage route tag policies on Cisco ACI fabrics.",
	]
	version_added: "2.4"
	options: {
		rtp: {
			description: [
				"The name of the route tag policy.",
			]
			type:     "str"
			required: true
			aliases: ["name", "rtp_name"]
		}
		description: {
			description: [
				"The description for the route tag policy.",
			]
			type: "str"
			aliases: ["descr"]
		}
		tenant: {
			description: [
				"The name of the tenant.",
			]
			type:     "str"
			required: true
			aliases: ["tenant_name"]
		}
		tag: {
			description: [
				"The value of the route tag.",
				"Accepted values range between C(0) and C(4294967295).",
				"The APIC defaults to C(4294967295) when unset during creation.",
			]
			type: "int"
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
		"The C(tenant) used must exist before using this module in your playbook. The M(aci_tenant) module can be used for this.",
	]

	seealso: [{
		module: "aci_tenant"
	}, {
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC class B(l3ext:RouteTagPol)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Dag Wieers (@dagwieers)"]
}
