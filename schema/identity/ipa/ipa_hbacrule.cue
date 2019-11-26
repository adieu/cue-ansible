package ansible

module: ipa_hbacrule: {
	module:            "ipa_hbacrule"
	author:            "Thomas Krahn (@Nosmoht)"
	short_description: "Manage FreeIPA HBAC rule"
	description: [
		"Add, modify or delete an IPA HBAC rule using IPA API.",
	]
	options: {
		cn: {
			description: [
				"Canonical name.",
				"Can not be changed as it is the unique identifier.",
			]
			required: true
			aliases: ["name"]
		}
		description: description: "Description"
		host: {
			description: [
				"List of host names to assign.",
				"If an empty list is passed all hosts will be removed from the rule.",
				"If option is omitted hosts will not be checked or changed.",
			]
			required: false
		}
		hostcategory: {
			description: "Host category"
			choices: ["all"]
		}
		hostgroup: description: [
			"List of hostgroup names to assign.",
			"If an empty list is passed all hostgroups will be removed. from the rule",
			"If option is omitted hostgroups will not be checked or changed.",
		]
		service: description: [
			"List of service names to assign.",
			"If an empty list is passed all services will be removed from the rule.",
			"If option is omitted services will not be checked or changed.",
		]
		servicecategory: {
			description: "Service category"
			choices: ["all"]
		}
		servicegroup: description: [
			"List of service group names to assign.",
			"If an empty list is passed all assigned service groups will be removed from the rule.",
			"If option is omitted service groups will not be checked or changed.",
		]
		sourcehost: description: [
			"List of source host names to assign.",
			"If an empty list if passed all assigned source hosts will be removed from the rule.",
			"If option is omitted source hosts will not be checked or changed.",
		]
		sourcehostcategory: {
			description: "Source host category"
			choices: ["all"]
		}
		sourcehostgroup: description: [
			"List of source host group names to assign.",
			"If an empty list if passed all assigned source host groups will be removed from the rule.",
			"If option is omitted source host groups will not be checked or changed.",
		]
		state: {
			description: "State to ensure"
			default:     "present"
			choices: ["present", "absent", "enabled", "disabled"]
		}
		user: description: [
			"List of user names to assign.",
			"If an empty list if passed all assigned users will be removed from the rule.",
			"If option is omitted users will not be checked or changed.",
		]
		usercategory: {
			description: "User category"
			choices: ["all"]
		}
		usergroup: description: [
			"List of user group names to assign.",
			"If an empty list if passed all assigned user groups will be removed from the rule.",
			"If option is omitted user groups will not be checked or changed.",
		]
	}
	extends_documentation_fragment: "ipa.documentation"
	version_added:                  "2.3"
}
