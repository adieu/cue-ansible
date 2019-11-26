package ansible

module: aci_tenant_span_src_group: {
	module:            "aci_tenant_span_src_group"
	short_description: "Manage SPAN source groups (span:SrcGrp)"
	description: [
		"Manage SPAN source groups on Cisco ACI fabrics.",
	]
	version_added: "2.4"
	options: {
		admin_state: {
			description: [
				"Enable or disable the span sources.",
				"The APIC defaults to C(yes) when unset during creation.",
			]
			type: "bool"
		}
		description: {
			description: [
				"The description for Span source group.",
			]
			type: "str"
			aliases: ["descr"]
		}
		dst_group: {
			description: [
				"The Span destination group to associate with the source group.",
			]
			type: "str"
		}
		src_group: {
			description: [
				"The name of the Span source group.",
			]
			type: "str"
			aliases: ["name"]
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
		tenant: {
			description: [
				"The name of the Tenant.",
			]
			type: "str"
			aliases: ["tenant_name"]
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
		description: "More information about the internal APIC class B(span:SrcGrp)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Jacob McGill (@jmcgill298)"]
}
