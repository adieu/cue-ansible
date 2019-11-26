package ansible

module: aci_tenant_action_rule_profile: {
	module:            "aci_tenant_action_rule_profile"
	short_description: "Manage action rule profiles (rtctrl:AttrP)"
	description: [
		"Manage action rule profiles on Cisco ACI fabrics.",
	]
	version_added: "2.4"
	options: {
		action_rule: {
			description: [
				"The name of the action rule profile.",
			]
			type: "str"
			aliases: ["action_rule_name", "name"]
		}
		description: {
			description: [
				"The description for the action rule profile.",
			]
			type: "str"
			aliases: ["descr"]
		}
		tenant: {
			description: [
				"The name of the tenant.",
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
		"The C(tenant) used must exist before using this module in your playbook. The M(aci_tenant) module can be used for this.",
	]

	seealso: [{
		module: "aci_tenant"
	}, {
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC class B(rtctrl:AttrP)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Dag Wieers (@dagwieers)"]
}
