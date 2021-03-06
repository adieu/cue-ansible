package ansible

module: na_ontap_export_policy_rule: {
	module: "na_ontap_export_policy_rule"

	short_description: "NetApp ONTAP manage export policy rules"
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.6"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"

	description: [
		"Create or delete or modify export rules in ONTAP",
	]

	options: {
		state: {
			description: [
				"Whether the specified export policy rule should exist or not.",
			]
			required: false
			choices: ["present", "absent"]
			default: "present"
		}

		name: {
			description: [
				"The name of the export rule to manage.",
			]
			required: true
			aliases: [
				"policy_name",
			]
		}

		client_match: description: [
			"List of Client Match host names, IP Addresses, Netgroups, or Domains",
			"If rule_index is not provided, client_match is used as a key to fetch current rule to determine create,delete,modify actions. If a rule with provided client_match exists, a new rule will not be created, but the existing rule will be modified or deleted. If a rule with provided client_match doesn't exist, a new rule will be created if state is present.",
		]

		ro_rule: {
			description: [
				"List of Read only access specifications for the rule",
			]
			choices: ["any", "none", "never", "krb5", "krb5i", "krb5p", "ntlm", "sys"]
		}

		rw_rule: {
			description: [
				"List of Read Write access specifications for the rule",
			]
			choices: ["any", "none", "never", "krb5", "krb5i", "krb5p", "ntlm", "sys"]
		}

		super_user_security: {
			description: [
				"List of Read Write access specifications for the rule",
			]
			choices: ["any", "none", "never", "krb5", "krb5i", "krb5p", "ntlm", "sys"]
		}

		allow_suid: {
			description: [
				"If 'true', NFS server will honor SetUID bits in SETATTR operation. Default value on creation is 'true'",
			]
			type: "bool"
		}

		protocol: {
			description: [
				"List of Client access protocols.",
				"Default value is set to 'any' during create.",
			]
			choices: ["any", "nfs", "nfs3", "nfs4", "cifs", "flexcache"]
		}

		rule_index: description: [
			"rule index of the export policy",
		]

		vserver: {
			description: [
				"Name of the vserver to use.",
			]
			required: true
		}
	}
}
