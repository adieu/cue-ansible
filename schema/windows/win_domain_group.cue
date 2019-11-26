package ansible

module: win_domain_group: {
	module:            "win_domain_group"
	version_added:     "2.4"
	short_description: "Creates, modifies or removes domain groups"
	description: [
		"Creates, modifies or removes groups in Active Directory.",
		"For local groups, use the M(win_group) module instead.",
	]
	options: {
		attributes: {
			description: [
				"A dict of custom LDAP attributes to set on the group.",
				"This can be used to set custom attributes that are not exposed as module parameters, e.g. C(mail).",
				"See the examples on how to format this parameter.",
			]
			type: "dict"
		}
		category: {
			description: [
				"The category of the group, this is the value to assign to the LDAP C(groupType) attribute.",
				"If a new group is created then C(security) will be used by default.",
			]
			type: "str"
			choices: ["distribution", "security"]
		}
		description: {
			description: [
				"The value to be assigned to the LDAP C(description) attribute.",
			]
			type: "str"
		}
		display_name: {
			description: [
				"The value to assign to the LDAP C(displayName) attribute.",
			]
			type: "str"
		}
		domain_username: {
			description: [
				"The username to use when interacting with AD.",
				"If this is not set then the user Ansible used to log in with will be used instead.",
			]

			type: "str"
		}
		domain_password: {
			description: [
				"The password for C(username).",
			]
			type: "str"
		}
		domain_server: {
			description: [
				"Specifies the Active Directory Domain Services instance to connect to.",
				"Can be in the form of an FQDN or NetBIOS name.",
				"If not specified then the value is based on the domain of the computer running PowerShell.",
			]

			type:          "str"
			version_added: "2.5"
		}
		ignore_protection: {
			description: [
				"Will ignore the C(ProtectedFromAccidentalDeletion) flag when deleting or moving a group.",
				"The module will fail if one of these actions need to occur and this value is set to C(no).",
			]

			type:    "bool"
			default: false
		}
		managed_by: {
			description: [
				"The value to be assigned to the LDAP C(managedBy) attribute.",
				"This value can be in the forms C(Distinguished Name), C(objectGUID), C(objectSid) or C(sAMAccountName), see examples for more details.",
			]

			type: "str"
		}
		name: {
			description: [
				"The name of the group to create, modify or remove.",
				"This value can be in the forms C(Distinguished Name), C(objectGUID), C(objectSid) or C(sAMAccountName), see examples for more details.",
			]

			type:     "str"
			required: true
		}
		organizational_unit: {
			description: [
				"The full LDAP path to create or move the group to.",
				"This should be the path to the parent object to create or move the group to.",
				"See examples for details of how this path is formed.",
			]
			type: "str"
			aliases: ["ou", "path"]
		}
		protect: {
			description: [
				"Will set the C(ProtectedFromAccidentalDeletion) flag based on this value.",
				"This flag stops a user from deleting or moving a group to a different path.",
			]

			type: "bool"
		}
		scope: {
			description: [
				"The scope of the group.",
				"If C(state=present) and the group doesn't exist then this must be set.",
			]
			type: "str"
			choices: ["domainlocal", "global", "universal"]
		}
		state: {
			description: [
				"If C(state=present) this module will ensure the group is created and is configured accordingly.",
				"If C(state=absent) this module will delete the group if it exists",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
	}
	notes: [
		"This must be run on a host that has the ActiveDirectory powershell module installed.",
	]
	seealso: [{
		module: "win_domain"
	}, {
		module: "win_domain_controller"
	}, {
		module: "win_domain_computer"
	}, {
		module: "win_domain_membership"
	}, {
		module: "win_domain_user"
	}, {
		module: "win_group"
	}, {
		module: "win_group_membership"
	}]
	author: ["Jordan Borean (@jborean93)"]
}
