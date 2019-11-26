package ansible

module: postgresql_pg_hba: {
	module:            "postgresql_pg_hba"
	short_description: "Add, remove or modify a rule in a pg_hba file"
	description: [
		"The fundamental function of the module is to create, or delete lines in pg_hba files.",
		"The lines in the file should be in a typical pg_hba form and lines should be unique per key (type, databases, users, source). If they are not unique and the SID is 'the one to change', only one for C(state=present) or none for C(state=absent) of the SID's will remain.",
	]

	extends_documentation_fragment: "files"
	version_added:                  "2.8"
	options: {
		address: {
			description: [
				"The source address/net where the connections could come from.",
				"Will not be used for entries of I(type)=C(local).",
				"You can also use keywords C(all), C(samehost), and C(samenet).",
			]
			default: "samehost"
			type:    "str"
			aliases: ["source", "src"]
		}
		backup: {
			description: [
				"If set, create a backup of the C(pg_hba) file before it is modified. The location of the backup is returned in the (backup) variable by this module.",
			]

			default: false
			type:    "bool"
		}
		backup_file: {
			description: [
				"Write backup to a specific backupfile rather than a temp file.",
			]
			type: "str"
		}
		create: {
			description: [
				"Create an C(pg_hba) file if none exists.",
				"When set to false, an error is raised when the C(pg_hba) file doesn't exist.",
			]
			default: false
			type:    "bool"
		}
		contype: {
			description: [
				"Type of the rule. If not set, C(postgresql_pg_hba) will only return contents.",
			]
			type: "str"
			choices: ["local", "host", "hostnossl", "hostssl"]
		}
		databases: {
			description: [
				"Databases this line applies to.",
			]
			default: "all"
			type:    "str"
		}
		dest: {
			description: [
				"Path to C(pg_hba) file to modify.",
			]
			type:     "path"
			required: true
		}
		method: {
			description: [
				"Authentication method to be used.",
			]
			type: "str"
			choices: ["cert", "gss", "ident", "krb5", "ldap", "md5", "pam", "password", "peer", "radius", "reject", "scram-sha-256", "sspi", "trust"]
			default: "md5"
		}
		netmask: {
			description: [
				"The netmask of the source address.",
			]
			type: "str"
		}
		options: {
			description: [
				"Additional options for the authentication I(method).",
			]
			type: "str"
		}
		order: {
			description: [
				"The entries will be written out in a specific order. With this option you can control by which field they are ordered first, second and last. s=source, d=databases, u=users. This option is deprecated since 2.9 and will be removed in 2.11. Sortorder is now hardcoded to sdu.",
			]

			default: "sdu"
			choices: ["sdu", "sud", "dsu", "dus", "usd", "uds"]
		}
		state: {
			description: [
				"The lines will be added/modified when C(state=present) and removed when C(state=absent).",
			]
			default: "present"
			choices: ["absent", "present"]
		}
		users: {
			description: [
				"Users this line applies to.",
			]
			default: "all"
		}
	}

	notes: [
		"The default authentication assumes that on the host, you are either logging in as or sudo'ing to an account with appropriate permissions to read and modify the file.",
		"This module also returns the pg_hba info. You can use this module to only retrieve it by only specifying I(dest). The info can be found in the returned data under key pg_hba, being a list, containing a dict per rule.",
		"This module will sort resulting C(pg_hba) files if a rule change is required. This could give unexpected results with manual created hba files, if it was improperly sorted. For example a rule was created for a net first and for a ip in that net range next. In that situation, the 'ip specific rule' will never hit, it is in the C(pg_hba) file obsolete. After the C(pg_hba) file is rewritten by the M(postgresql_pg_hba) module, the ip specific rule will be sorted above the range rule. And then it will hit, which will give unexpected results.",
		"With the 'order' parameter you can control which field is used to sort first, next and last.",
		"The module supports a check mode and a diff mode.",
	]

	seealso: [{
		name:        "PostgreSQL pg_hba.conf file reference"
		description: "Complete reference of the PostgreSQL pg_hba.conf file documentation."
		link:        "https://www.postgresql.org/docs/current/auth-pg-hba-conf.html"
	}]

	requirements: [
		"ipaddress",
	]

	author: "Sebastiaan Mannem (@sebasmannem)"
}
