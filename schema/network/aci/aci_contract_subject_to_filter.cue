package ansible

module: aci_contract_subject_to_filter: {
	module:            "aci_contract_subject_to_filter"
	short_description: "Bind Contract Subjects to Filters (vz:RsSubjFiltAtt)"
	description: [
		"Bind Contract Subjects to Filters on Cisco ACI fabrics.",
	]
	version_added: "2.4"
	options: {
		contract: {
			description: [
				"The name of the contract.",
			]
			type: "str"
			aliases: ["contract_name"]
		}
		filter: {
			description: [
				"The name of the Filter to bind to the Subject.",
			]
			type: "str"
			aliases: ["filter_name"]
		}
		log: {
			description: [
				"Determines if the binding should be set to log.",
				"The APIC defaults to C(none) when unset during creation.",
			]
			type: "str"
			choices: ["log", "none"]
			aliases: ["directive"]
		}
		subject: {
			description: [
				"The name of the Contract Subject.",
			]
			type: "str"
			aliases: ["contract_subject", "subject_name"]
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
				"The name of the tenant.",
			]
			type:     "str"
			required: true
			aliases: ["tenant_name"]
		}
	}
	extends_documentation_fragment: "aci"
	notes: [
		"The C(tenant), C(contract), C(subject), and C(filter_name) must exist before using this module in your playbook. The M(aci_tenant), M(aci_contract), M(aci_contract_subject), and M(aci_filter) modules can be used for these.",
	]

	seealso: [{
		module: "aci_contract_subject"
	}, {
		module: "aci_filter"
	}, {
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC class B(vz:RsSubjFiltAtt)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Jacob McGill (@jmcgill298)"]
}
