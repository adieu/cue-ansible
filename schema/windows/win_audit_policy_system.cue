package ansible

module: win_audit_policy_system: {
	module:            "win_audit_policy_system"
	short_description: "Used to make changes to the system wide Audit Policy"
	description: [
		"Used to make changes to the system wide Audit Policy.",
	]
	version_added: "2.5"
	options: {
		category: {
			description: [
				"Single string value for the category you would like to adjust the policy on.",
				"Cannot be used with I(subcategory). You must define one or the other.",
				"Changing this setting causes all subcategories to be adjusted to the defined I(audit_type).",
			]
			type: "str"
		}
		subcategory: {
			description: [
				"Single string value for the subcategory you would like to adjust the policy on.",
				"Cannot be used with I(category). You must define one or the other.",
			]
			type: "str"
		}
		audit_type: {
			description: [
				"The type of event you would like to audit for.",
				"Accepts a list. See examples.",
			]
			type:     "list"
			required: true
			choices: ["failure", "none", "success"]
		}
	}
	notes: [
		"It is recommended to take a backup of the policies before adjusting them for the first time.",
		"See this page for in depth information U(https://technet.microsoft.com/en-us/library/cc766468.aspx).",
	]
	seealso: [{
		module: "win_audit_rule"
	}]
	author: ["Noah Sparks (@nwsparks)"]
}
