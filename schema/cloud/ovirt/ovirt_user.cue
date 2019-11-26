package ansible

module: ovirt_user: {
	module:            "ovirt_user"
	short_description: "Module to manage users in oVirt/RHV"
	version_added:     "2.3"
	author:            "Ondra Machacek (@machacekondra)"
	description: [
		"Module to manage users in oVirt/RHV.",
	]
	options: {
		name: {
			description: [
				"Name of the user to manage. In most LDAPs it's I(uid) of the user, but in Active Directory you must specify I(UPN) of the user.",
			]
			required: true
		}
		state: {
			description: [
				"Should the user be present/absent.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		authz_name: {
			description: [
				"Authorization provider of the user. In previous versions of oVirt/RHV known as domain.",
			]
			required: true
			aliases: ["domain"]
		}
		namespace: description: [
			"Namespace where the user resides. When using the authorization provider that stores users in the LDAP server, this attribute equals the naming context of the LDAP server.",
		]
	}

	extends_documentation_fragment: "ovirt"
}
