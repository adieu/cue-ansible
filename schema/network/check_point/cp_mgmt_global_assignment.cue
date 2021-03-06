package ansible

module: cp_mgmt_global_assignment: {
	module:            "cp_mgmt_global_assignment"
	short_description: "Manages global-assignment objects on Check Point over Web Services API"
	description: [
		"Manages global-assignment objects on Check Point devices including creating, updating and removing objects.",
		"All operations are performed over Web Services API.",
	]
	version_added: "2.9"
	author:        "Or Soffer (@chkp-orso)"
	options: {
		dependent_domain: {
			description: [
				"N/A",
			]
			type: "str"
		}
		global_access_policy: {
			description: [
				"Global domain access policy that is assigned to a dependent domain.",
			]
			type: "str"
		}
		global_domain: {
			description: [
				"N/A",
			]
			type: "str"
		}
		global_threat_prevention_policy: {
			description: [
				"Global domain threat prevention policy that is assigned to a dependent domain.",
			]
			type: "str"
		}
		manage_protection_actions: {
			description: [
				"N/A",
			]
			type: "bool"
		}
		details_level: {
			description: [
				"The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.",
			]

			type: "str"
			choices: ["uid", "standard", "full"]
		}
		ignore_warnings: {
			description: [
				"Apply changes ignoring warnings.",
			]
			type: "bool"
		}
		ignore_errors: {
			description: [
				"Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.",
			]
			type: "bool"
		}
	}
	extends_documentation_fragment: "checkpoint_objects"
}
