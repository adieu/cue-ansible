package ansible

module: udm_group: {
	module:        "udm_group"
	version_added: "2.2"
	author: ["Tobias Rüetschi (@keachi)"]
	short_description: "Manage of the posix group"
	description: [
		"This module allows to manage user groups on a univention corporate server (UCS). It uses the python API of the UCS to create a new object or edit it.",
	]

	requirements: ["Python >= 2.6"]
	options: {
		state: {
			required: false
			default:  "present"
			choices: ["present", "absent"]
			description: ["Whether the group is present or not."]
		}
		name: {
			required: true
			description: ["Name of the posix group."]
		}
		description: {
			required: false
			description: ["Group description."]
		}
		position: {
			required: false
			description: [
				"define the whole ldap position of the group, e.g. C(cn=g123m-1A,cn=classes,cn=schueler,cn=groups,ou=schule,dc=example,dc=com).",
			]
		}

		ou: {
			required: false
			description: ["LDAP OU, e.g. school for LDAP OU C(ou=school,dc=example,dc=com)."]
		}
		subpath: {
			required: false
			description: ["Subpath inside the OU, e.g. C(cn=classes,cn=students,cn=groups)."]
		}
	}
}
