package ansible

module: ldap_entry: {
	module:            "ldap_entry"
	short_description: "Add or remove LDAP entries."
	description: [
		"Add or remove LDAP entries. This module only asserts the existence or non-existence of an LDAP entry, not its attributes. To assert the attribute values of an entry, see M(ldap_attr).",
	]

	notes: [
		"The default authentication settings will attempt to use a SASL EXTERNAL bind over a UNIX domain socket. This works well with the default Ubuntu install for example, which includes a cn=peercred,cn=external,cn=auth ACL rule allowing root to modify the server configuration. If you need to use a simple bind to access your server, pass the credentials in I(bind_dn) and I(bind_pw).",
	]

	version_added: "2.3"
	author: [
		"Jiri Tyr (@jtyr)",
	]
	requirements: [
		"python-ldap",
	]
	options: {
		attributes: description: [
			"If I(state=present), attributes necessary to create an entry. Existing entries are never modified. To assert specific attribute values on an existing entry, use M(ldap_attr) module instead.",
		]

		objectClass: description: [
			"If I(state=present), value or list of values to use when creating the entry. It can either be a string or an actual list of strings.",
		]

		params: description: [
			"List of options which allows to overwrite any of the task or the I(attributes) options. To remove an option, set the value of the option to C(null).",
		]

		state: {
			description: [
				"The target state of the entry.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
	}
	extends_documentation_fragment: "ldap.documentation"
}
