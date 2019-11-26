package ansible

module: aci_taboo_contract: {
	module:            "aci_taboo_contract"
	short_description: "Manage taboo contracts (vz:BrCP)"
	description: [
		"Manage taboo contracts on Cisco ACI fabrics.",
	]
	version_added: "2.4"
	options: {
		taboo_contract: {
			description: [
				"The name of the Taboo Contract.",
			]
			type:     "str"
			required: true
			aliases: ["name"]
		}
		description: {
			description: [
				"The description for the Taboo Contract.",
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
		description: "More information about the internal APIC class B(vz:BrCP)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Dag Wieers (@dagwieers)"]
}
