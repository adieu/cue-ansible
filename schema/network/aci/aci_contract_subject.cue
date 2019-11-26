package ansible

module: aci_contract_subject: {
	module:            "aci_contract_subject"
	short_description: "Manage initial Contract Subjects (vz:Subj)"
	description: [
		"Manage initial Contract Subjects on Cisco ACI fabrics.",
	]
	version_added: "2.4"
	options: {
		tenant: {
			description: [
				"The name of the tenant.",
			]
			type: "str"
			aliases: ["tenant_name"]
		}
		subject: {
			description: [
				"The contract subject name.",
			]
			type: "str"
			aliases: ["contract_subject", "name", "subject_name"]
		}
		contract: {
			description: [
				"The name of the Contract.",
			]
			type: "str"
			aliases: ["contract_name"]
		}
		reverse_filter: {
			description: [
				"Determines if the APIC should reverse the src and dst ports to allow the return traffic back, since ACI is stateless filter.",
				"The APIC defaults to C(yes) when unset during creation.",
			]
			type: "bool"
		}
		priority: {
			description: [
				"The QoS class.",
				"The APIC defaults to C(unspecified) when unset during creation.",
			]
			type: "str"
			choices: ["level1", "level2", "level3", "unspecified"]
		}
		dscp: {
			description: [
				"The target DSCP.",
				"The APIC defaults to C(unspecified) when unset during creation.",
			]
			type: "str"
			choices: [
				"AF11",
				"AF12",
				"AF13",
				"AF21",
				"AF22",
				"AF23",
				"AF31",
				"AF32",
				"AF33",
				"AF41",
				"AF42",
				"AF43",
				"CS0",
				"CS1",
				"CS2",
				"CS3",
				"CS4",
				"CS5",
				"CS6",
				"CS7",
				"EF",
				"VA",
				"unspecified",
			]
			aliases: ["target"]
		}
		description: {
			description: [
				"Description for the contract subject.",
			]
			type: "str"
			aliases: ["descr"]
		}
		consumer_match: {
			description: [
				"The match criteria across consumers.",
				"The APIC defaults to C(at_least_one) when unset during creation.",
			]
			type: "str"
			choices: ["all", "at_least_one", "at_most_one", "none"]
		}
		provider_match: {
			description: [
				"The match criteria across providers.",
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
	}
	extends_documentation_fragment: "aci"
	notes: [
		"The C(tenant) and C(contract) used must exist before using this module in your playbook. The M(aci_tenant) and M(aci_contract) modules can be used for this.",
	]

	seealso: [{
		module: "aci_contract"
	}, {
		module: "aci_tenant"
	}, {
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC class B(vz:Subj)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Swetha Chunduri (@schunduri)"]
}
