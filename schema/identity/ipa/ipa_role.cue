package ansible

module: ipa_role: {
	module:            "ipa_role"
	author:            "Thomas Krahn (@Nosmoht)"
	short_description: "Manage FreeIPA role"
	description: [
		"Add, modify and delete a role within FreeIPA server using FreeIPA API",
	]
	options: {
		cn: {
			description: [
				"Role name.",
				"Can not be changed as it is the unique identifier.",
			]
			required: true
			aliases: ["name"]
		}
		description: description: [
			"A description of this role-group.",
		]
		group: description: [
			"List of group names assign to this role.",
			"If an empty list is passed all assigned groups will be unassigned from the role.",
			"If option is omitted groups will not be checked or changed.",
			"If option is passed all assigned groups that are not passed will be unassigned from the role.",
		]
		host: description: [
			"List of host names to assign.",
			"If an empty list is passed all assigned hosts will be unassigned from the role.",
			"If option is omitted hosts will not be checked or changed.",
			"If option is passed all assigned hosts that are not passed will be unassigned from the role.",
		]
		hostgroup: description: [
			"List of host group names to assign.",
			"If an empty list is passed all assigned host groups will be removed from the role.",
			"If option is omitted host groups will not be checked or changed.",
			"If option is passed all assigned hostgroups that are not passed will be unassigned from the role.",
		]
		privilege: {
			description: [
				"List of privileges granted to the role.",
				"If an empty list is passed all assigned privileges will be removed.",
				"If option is omitted privileges will not be checked or changed.",
				"If option is passed all assigned privileges that are not passed will be removed.",
			]
			version_added: "2.4"
		}
		service: description: [
			"List of service names to assign.",
			"If an empty list is passed all assigned services will be removed from the role.",
			"If option is omitted services will not be checked or changed.",
			"If option is passed all assigned services that are not passed will be removed from the role.",
		]
		state: {
			description: "State to ensure"
			default:     "present"
			choices: ["present", "absent"]
		}
		user: description: [
			"List of user names to assign.",
			"If an empty list is passed all assigned users will be removed from the role.",
			"If option is omitted users will not be checked or changed.",
		]
	}
	extends_documentation_fragment: "ipa.documentation"
	version_added:                  "2.3"
}
