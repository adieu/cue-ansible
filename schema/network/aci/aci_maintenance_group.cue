package ansible

module: aci_maintenance_group: {
	module:            "aci_maintenance_group"
	short_description: "This creates an ACI maintenance group"
	version_added:     "2.8"
	notes: [
		"a maintenance policy (aci_maintenance_policy must be created prior to creating an aci maintenance group",
	]
	description: [
		"This modules creates an ACI maintenance group",
	]
	options: {
		group: {
			description: [
				"This is the name of the group",
			]
			type:     "str"
			required: true
		}
		policy: {
			description: [
				"This is the name of the policy that was created using aci_maintenance_policy",
			]
			type:     "str"
			required: true
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
	extends_documentation_fragment: [
		"aci",
	]
	author: ["Steven Gerhart (@sgerhart)"]
}
