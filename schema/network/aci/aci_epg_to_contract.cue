package ansible

module: aci_epg_to_contract: {
	module:            "aci_epg_to_contract"
	short_description: "Bind EPGs to Contracts (fv:RsCons, fv:RsProv)"
	description: [
		"Bind EPGs to Contracts on Cisco ACI fabrics.",
	]
	notes: [
		"The C(tenant), C(app_profile), C(EPG), and C(Contract) used must exist before using this module in your playbook. The M(aci_tenant), M(aci_ap), M(aci_epg), and M(aci_contract) modules can be used for this.",
	]

	version_added: "2.4"
	options: {
		ap: {
			description: [
				"Name of an existing application network profile, that will contain the EPGs.",
			]
			type: "str"
			aliases: ["app_profile", "app_profile_name"]
		}
		contract: {
			description: [
				"The name of the contract.",
			]
			type: "str"
			aliases: ["contract_name"]
		}
		contract_type: {
			description: [
				"Determines if the EPG should Provide or Consume the Contract.",
			]
			type:     "str"
			required: true
			choices: ["consumer", "provider"]
		}
		epg: {
			description: [
				"The name of the end point group.",
			]
			type: "str"
			aliases: ["epg_name"]
		}
		priority: {
			description: [
				"QoS class.",
				"The APIC defaults to C(unspecified) when unset during creation.",
			]
			type: "str"
			choices: ["level1", "level2", "level3", "unspecified"]
		}
		provider_match: {
			description: [
				"The matching algorithm for Provided Contracts.",
				"The APIC defaults to C(at_least_one) when unset during creation.",
			]
			type: "str"
			choices: ["all", "at_least_one", "at_most_one", "none"]
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
				"Name of an existing tenant.",
			]
			type: "str"
			aliases: ["tenant_name"]
		}
	}
	extends_documentation_fragment: "aci"
	seealso: [{
		module: "aci_ap"
	}, {
		module: "aci_epg"
	}, {
		module: "aci_contract"
	}, {
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC classes B(fv:RsCons) and B(fv:RsProv)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Jacob McGill (@jmcgill298)"]
}
