package ansible

module: ipa_sudorule: {
	module:            "ipa_sudorule"
	author:            "Thomas Krahn (@Nosmoht)"
	short_description: "Manage FreeIPA sudo rule"
	description: [
		"Add, modify or delete sudo rule within IPA server using IPA API.",
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
		cmdcategory: {
			description: [
				"Command category the rule applies to.",
			]
			choices: ["all"]
		}
		cmd: description: [
			"List of commands assigned to the rule.",
			"If an empty list is passed all commands will be removed from the rule.",
			"If option is omitted commands will not be checked or changed.",
		]
		description: description: [
			"Description of the sudo rule.",
		]
		host: description: [
			"List of hosts assigned to the rule.",
			"If an empty list is passed all hosts will be removed from the rule.",
			"If option is omitted hosts will not be checked or changed.",
			"Option C(hostcategory) must be omitted to assign hosts.",
		]
		hostcategory: {
			description: [
				"Host category the rule applies to.",
				"If 'all' is passed one must omit C(host) and C(hostgroup).",
				"Option C(host) and C(hostgroup) must be omitted to assign 'all'.",
			]
			choices: ["all"]
		}
		hostgroup: description: [
			"List of host groups assigned to the rule.",
			"If an empty list is passed all host groups will be removed from the rule.",
			"If option is omitted host groups will not be checked or changed.",
			"Option C(hostcategory) must be omitted to assign host groups.",
		]
		runasusercategory: {
			description: [
				"RunAs User category the rule applies to.",
			]
			choices: ["all"]
			version_added: "2.5"
		}
		runasgroupcategory: {
			description: [
				"RunAs Group category the rule applies to.",
			]
			choices: ["all"]
			version_added: "2.5"
		}
		sudoopt: description: [
			"List of options to add to the sudo rule.",
		]
		user: description: [
			"List of users assigned to the rule.",
			"If an empty list is passed all users will be removed from the rule.",
			"If option is omitted users will not be checked or changed.",
		]
		usercategory: {
			description: [
				"User category the rule applies to.",
			]
			choices: ["all"]
		}
		usergroup: description: [
			"List of user groups assigned to the rule.",
			"If an empty list is passed all user groups will be removed from the rule.",
			"If option is omitted user groups will not be checked or changed.",
		]
		state: {
			description: "State to ensure"
			default:     "present"
			choices: ["present", "absent", "enabled", "disabled"]
		}
	}
	extends_documentation_fragment: "ipa.documentation"
	version_added:                  "2.3"
}
