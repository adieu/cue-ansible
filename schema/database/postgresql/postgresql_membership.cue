package ansible

module: postgresql_membership: {
	module:            "postgresql_membership"
	short_description: "Add or remove PostgreSQL roles from groups"
	description: [
		"Adds or removes PostgreSQL roles from groups (other roles).",
		"Users are roles with login privilege.",
		"Groups are PostgreSQL roles usually without LOGIN privilege.",
		"Common use case:",
		"1) add a new group (groups) by M(postgresql_user) module with I(role_attr_flags=NOLOGIN)",
		"2) grant them desired privileges by M(postgresql_privs) module",
		"3) add desired PostgreSQL users to the new group (groups) by this module",
	]
	version_added: "2.8"
	options: {
		groups: {
			description: [
				"The list of groups (roles) that need to be granted to or revoked from I(target_roles).",
			]
			required: true
			type:     "list"
			elements: "str"
			aliases: [
				"group",
				"source_role",
				"source_roles",
			]
		}
		target_roles: {
			description: [
				"The list of target roles (groups will be granted to them).",
			]
			required: true
			type:     "list"
			elements: "str"
			aliases: [
				"target_role",
				"users",
				"user",
			]
		}
		fail_on_role: {
			description: [
				"If C(yes), fail when group or target_role doesn't exist. If C(no), just warn and continue.",
			]
			default: true
			type:    "bool"
		}
		state: {
			description: [
				"Membership state.",
				"I(state=present) implies the I(groups)must be granted to I(target_roles).",
				"I(state=absent) implies the I(groups) must be revoked from I(target_roles).",
			]
			type:    "str"
			default: "present"
			choices: ["absent", "present"]
		}
		db: {
			description: [
				"Name of database to connect to.",
			]
			type: "str"
			aliases: [
				"login_db",
			]
		}
		session_role: {
			description: [
				"Switch to session_role after connecting. The specified session_role must be a role that the current login_user is a member of.",
				"Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.",
			]

			type: "str"
		}
	}
	seealso: [{
		module: "postgresql_user"
	}, {
		module: "postgresql_privs"
	}, {
		module: "postgresql_owner"
	}, {
		name:        "PostgreSQL role membership reference"
		description: "Complete reference of the PostgreSQL role membership documentation."
		link:        "https://www.postgresql.org/docs/current/role-membership.html"
	}, {
		name:        "PostgreSQL role attributes reference"
		description: "Complete reference of the PostgreSQL role attributes documentation."
		link:        "https://www.postgresql.org/docs/current/role-attributes.html"
	}]
	author: [
		"Andrew Klychkov (@Andersson007)",
	]
	extends_documentation_fragment: "postgres"
}
