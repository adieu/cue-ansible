package ansible

module: netapp_e_ldap: {
	module:            "netapp_e_ldap"
	short_description: "NetApp E-Series manage LDAP integration to use for authentication"
	description: [
		"Configure an E-Series system to allow authentication via an LDAP server",
	]
	version_added: "2.7"
	author:        "Michael Price (@lmprice)"
	extends_documentation_fragment: [
		"netapp.eseries",
	]
	options: {
		state: {
			description: [
				"Enable/disable LDAP support on the system. Disabling will clear out any existing defined domains.",
			]
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
		identifier: description: [
			"This is a unique identifier for the configuration (for cases where there are multiple domains configured).",
			"If this is not specified, but I(state=present), we will utilize a default value of 'default'.",
		]
		username: {
			description: [
				"This is the user account that will be used for querying the LDAP server.",
				"Example: CN=MyBindAcct,OU=ServiceAccounts,DC=example,DC=com",
			]
			required: true
			aliases: [
				"bind_username",
			]
		}
		password: {
			description: [
				"This is the password for the bind user account.",
			]
			required: true
			aliases: [
				"bind_password",
			]
		}
		attributes: {
			description: [
				"The user attributes that should be considered for the group to role mapping.",
				"Typically this is used with something like 'memberOf', and a user's access is tested against group membership or lack thereof.",
			]

			default: "memberOf"
		}
		server: {
			description: [
				"This is the LDAP server url.",
				"The connection string should be specified as using the ldap or ldaps protocol along with the port information.",
			]

			aliases: [
				"server_url",
			]
			required: true
		}
		name: {
			description: [
				"The domain name[s] that will be utilized when authenticating to identify which domain to utilize.",
				"Default to use the DNS name of the I(server).",
				"The only requirement is that the name[s] be resolvable.",
				"Example: user@example.com",
			]
			required: false
		}
		search_base: {
			description: [
				"The search base is used to find group memberships of the user.",
				"Example: ou=users,dc=example,dc=com",
			]
			required: true
		}
		role_mappings: {
			description: [
				"This is where you specify which groups should have access to what permissions for the storage-system.",
				"For example, all users in group A will be assigned all 4 available roles, which will allow access to all the management functionality of the system (super-user). Those in group B only have the storage.monitor role, which will allow only read-only access.",
				"This is specified as a mapping of regular expressions to a list of roles. See the examples.",
				"The roles that will be assigned to to the group/groups matching the provided regex.",
				"storage.admin allows users full read/write access to storage objects and operations.",
				"storage.monitor allows users read-only access to storage objects and operations.",
				"support.admin allows users access to hardware, diagnostic information, the Major Event Log, and other critical support-related functionality, but not the storage configuration.",
				"security.admin allows users access to authentication/authorization configuration, as well as the audit log configuration, and certification management.",
			]

			required: true
		}
		user_attribute: {
			description: [
				"This is the attribute we will use to match the provided username when a user attempts to authenticate.",
			]

			default: "sAMAccountName"
		}
		log_path: {
			description: [
				"A local path to a file to be used for debug logging",
			]
			required: false
		}
	}
	notes: [
		"Check mode is supported.",
		"This module allows you to define one or more LDAP domains identified uniquely by I(identifier) to use for authentication. Authorization is determined by I(role_mappings), in that different groups of users may be given different (or no), access to certain aspects of the system and API.",
		"The local user accounts will still be available if the LDAP server becomes unavailable/inaccessible.",
		"Generally, you'll need to get the details of your organization's LDAP server before you'll be able to configure the system for using LDAP authentication; every implementation is likely to be very different.",
		"This API is currently only supported with the Embedded Web Services API v2.0 and higher, or the Web Services Proxy v3.0 and higher.",
	]
}
