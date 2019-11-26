package ansible

module: aci_l3out_extepg: {
	module:            "aci_l3out_extepg"
	short_description: "Manage External Network Instance Profile (ExtEpg) objects (l3extInstP:instP)"
	description: [
		"Manage External Network Instance Profile (ExtEpg) objects (l3extInstP:instP)",
	]
	version_added: "2.9"
	options: {
		tenant: {
			description: [
				"Name of an existing tenant.",
			]
			type:     "str"
			required: true
			aliases: ["tenant_name"]
		}
		l3out: {
			description: [
				"Name of an existing L3Out.",
			]
			type:     "str"
			required: true
			aliases: ["l3out_name"]
		}
		extepg: {
			description: [
				"Name of ExtEpg being created.",
			]
			type:     "str"
			required: true
			aliases: ["extepg_name", "name"]
		}
		description: {
			description: [
				"Description for the ExtEpg.",
			]
			type: "str"
			aliases: ["descr"]
		}
		preferred_group: {
			description: [
				"Whether ot not the EPG is part of the Preferred Group and can communicate without contracts.",
				"This is very convenient for migration scenarios, or when ACI is used for network automation but not for policy.",
				"The APIC defaults to C(no) when unset during creation.",
			]
			type: "bool"
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
		"The C(tenant) and C(domain) and C(vrf) used must exist before using this module in your playbook. The M(aci_tenant) and M(aci_domain) and M(aci_vrf) modules can be used for this.",
	]

	seealso: [{
		module: "aci_tenant"
	}, {
		module: "aci_domain"
	}, {
		module: "aci_vrf"
	}, {
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC class B(l3ext:Out)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Rostyslav Davydenko (@rost-d)"]
}
