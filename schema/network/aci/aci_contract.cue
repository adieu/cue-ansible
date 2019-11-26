package ansible

module: aci_contract: {
	module:            "aci_contract"
	short_description: "Manage contract resources (vz:BrCP)"
	description: [
		"Manage Contract resources on Cisco ACI fabrics.",
	]
	version_added: "2.4"
	options: {
		contract: {
			description: [
				"The name of the contract.",
			]
			type:     "str"
			required: true
			aliases: ["contract_name", "name"]
		}
		description: {
			description: [
				"Description for the contract.",
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
		scope: {
			description: [
				"The scope of a service contract.",
				"The APIC defaults to C(context) when unset during creation.",
			]
			type: "str"
			choices: ["application-profile", "context", "global", "tenant"]
		}
		priority: {
			description: [
				"The desired QoS class to be used.",
				"The APIC defaults to C(unspecified) when unset during creation.",
			]
			type: "str"
			choices: ["level1", "level2", "level3", "unspecified"]
		}
		dscp: {
			description: [
				"The target Differentiated Service (DSCP) value.",
				"The APIC defaults to C(unspecified) when unset during creation.",
			]
			type: "str"
			choices: ["AF11", "AF12", "AF13", "AF21", "AF22", "AF23", "AF31", "AF32", "AF33", "AF41", "AF42", "AF43", "CS0", "CS1", "CS2", "CS3", "CS4", "CS5", "CS6", "CS7", "EF", "VA", "unspecified"]
			aliases: ["target"]
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
		"This module does not manage Contract Subjects, see M(aci_contract_subject) to do this. Contract Subjects can still be removed using this module.",
		"The C(tenant) used must exist before using this module in your playbook. The M(aci_tenant) module can be used for this.",
	]

	seealso: [{
		module: "aci_contract_subject"
	}, {
		module: "aci_tenant"
	}, {
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC class B(vz:BrCP)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Dag Wieers (@dagwieers)"]
}
