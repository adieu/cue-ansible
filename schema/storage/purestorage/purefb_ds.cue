package ansible

module: purefb_ds: {
	module:            "purefb_ds"
	version_added:     "2.8"
	short_description: "Configure FlashBlade Directory Service"
	description: [
		"Create or erase directory services configurations. There is no facility to SSL certificates at this time. Use the FlashBlade GUI for this additional configuration work.",
		"To modify an existing directory service configuration you must first delete an existing configuration and then recreate with new settings.",
	]

	author: [
		"Pure Storage Ansible Team (@sdodsley) <pure-ansible-team@purestorage.com>",
	]
	options: {
		state: {
			description: [
				"Create or delete directory service configuration",
			]
			default: "present"
			type:    "str"
			choices: ["absent", "present"]
		}
		dstype: {
			description: [
				"The type of directory service to work on",
			]
			choices: ["management", "nfs", "smb"]
			type: "str"
		}
		enable: {
			description: [
				"Whether to enable or disable directory service support.",
			]
			default: false
			type:    "bool"
		}
		uri: {
			description: [
				"A list of up to 30 URIs of the directory servers. Each URI must include the scheme ldap:// or ldaps:// (for LDAP over SSL), a hostname, and a domain name or IP address. For example, ldap://ad.company.com configures the directory service with the hostname \"ad\" in the domain \"company.com\" while specifying the unencrypted LDAP protocol.",
			]

			type: "list"
		}
		base_dn: {
			description: [
				"Sets the base of the Distinguished Name (DN) of the directory service groups. The base should consist of only Domain Components (DCs). The base_dn will populate with a default value when a URI is entered by parsing domain components from the URI. The base DN should specify DC= for each domain component and multiple DCs should be separated by commas.",
			]

			required: true
			type:     "str"
		}
		bind_password: {
			description: [
				"Sets the password of the bind_user user name account.",
			]
			type: "str"
		}
		bind_user: {
			description: [
				"Sets the user name that can be used to bind to and query the directory.",
				"For Active Directory, enter the username - often referred to as sAMAccountName or User Logon Name - of the account that is used to perform directory lookups.",
				"For OpenLDAP, enter the full DN of the user.",
			]
			type: "str"
		}
		nis_servers: {
			description: [
				"A list of up to 30 IP addresses or FQDNs for NIS servers.",
				"This cannot be used in conjunction with LDAP configurations.",
			]
			type:          "list"
			version_added: 2.9
		}
		nis_domain: {
			description: [
				"The NIS domain to search",
				"This cannot be used in conjunction with LDAP configurations.",
			]
			type:          "str"
			version_added: 2.9
		}
		join_ou: {
			description: [
				"The optional organizational unit (OU) where the machine account for the directory service will be created.",
			]

			type:          "str"
			version_added: 2.9
		}
	}
	extends_documentation_fragment: ["purestorage.fb"]
}
