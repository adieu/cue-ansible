package ansible

module: aci_interface_policy_leaf_profile: {
	module:            "aci_interface_policy_leaf_profile"
	short_description: "Manage fabric interface policy leaf profiles (infra:AccPortP)"
	description: [
		"Manage fabric interface policy leaf profiles on Cisco ACI fabrics.",
	]
	version_added: "2.5"
	options: {
		leaf_interface_profile: {
			description: [
				"The name of the Fabric access policy leaf interface profile.",
			]
			type:     "str"
			required: true
			aliases: ["name", "leaf_interface_profile_name"]
		}
		description: {
			description: [
				"Description for the Fabric access policy leaf interface profile.",
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
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC class B(infra:AccPortP)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Bruno Calogero (@brunocalogero)"]
}
