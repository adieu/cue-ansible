package ansible

module: tower_credential: {
	module:            "tower_credential"
	author:            "Wayne Witzel III (@wwitzel3)"
	version_added:     "2.3"
	short_description: "create, update, or destroy Ansible Tower credential."
	description: [
		"Create, update, or destroy Ansible Tower credentials. See U(https://www.ansible.com/tower) for an overview.",
	]

	options: {
		name: {
			description: [
				"The name to use for the credential.",
			]
			required: true
			type:     "str"
		}
		description: {
			description: [
				"The description to use for the credential.",
			]
			type: "str"
		}
		user: {
			description: [
				"User that should own this credential.",
			]
			type: "str"
		}
		team: {
			description: [
				"Team that should own this credential.",
			]
			type: "str"
		}
		project: {
			description: [
				"Project that should for this credential.",
			]
			type: "str"
		}
		organization: {
			description: [
				"Organization that should own the credential.",
			]
			required: true
			type:     "str"
		}
		kind: {
			description: [
				"Type of credential being added.",
				"The ssh choice refers to a Tower Machine credential.",
			]
			required: true
			type:     "str"
			choices: ["ssh", "vault", "net", "scm", "aws", "vmware", "satellite6", "cloudforms", "gce", "azure_rm", "openstack", "rhv", "insights", "tower"]
		}
		host: {
			description: [
				"Host for this credential.",
			]
			type: "str"
		}
		username: {
			description: [
				"Username for this credential. ``access_key`` for AWS.",
			]
			type: "str"
		}
		password: {
			description: [
				"Password for this credential. ``secret_key`` for AWS. ``api_key`` for RAX.",
				"Use \"ASK\" and launch in Tower to be prompted.",
			]
			type: "str"
		}
		ssh_key_data: {
			description: [
				"SSH private key content. To extract the content from a file path, use the lookup function (see examples).",
			]
			required: false
			type:     "str"
		}
		ssh_key_unlock: {
			description: [
				"Unlock password for ssh_key.",
				"Use \"ASK\" and launch in Tower to be prompted.",
			]
			type: "str"
		}
		authorize: {
			description: [
				"Should use authorize for net type.",
			]
			type:    "bool"
			default: "no"
		}
		authorize_password: {
			description: [
				"Password for net credentials that require authorize.",
			]
			type: "str"
		}
		client: {
			description: [
				"Client or application ID for azure_rm type.",
			]
			type: "str"
		}
		security_token: {
			description: [
				"STS token for aws type.",
			]
			version_added: "2.6"
			type:          "str"
		}
		secret: {
			description: [
				"Secret token for azure_rm type.",
			]
			type: "str"
		}
		subscription: {
			description: [
				"Subscription ID for azure_rm type.",
			]
			type: "str"
		}
		tenant: {
			description: [
				"Tenant ID for azure_rm type.",
			]
			type: "str"
		}
		domain: {
			description: [
				"Domain for openstack type.",
			]
			type: "str"
		}
		become_method: {
			description: [
				"Become method to use for privilege escalation.",
			]
			choices: ["None", "sudo", "su", "pbrun", "pfexec", "pmrun"]
			type: "str"
		}
		become_username: {
			description: [
				"Become username.",
				"Use \"ASK\" and launch in Tower to be prompted.",
			]
			type: "str"
		}
		become_password: {
			description: [
				"Become password.",
				"Use \"ASK\" and launch in Tower to be prompted.",
			]
			type: "str"
		}
		vault_password: {
			description: [
				"Vault password.",
				"Use \"ASK\" and launch in Tower to be prompted.",
			]
			type: "str"
		}
		vault_id: {
			description: [
				"Vault identifier.",
				"This parameter is only valid if C(kind) is specified as C(vault).",
			]
			type:          "str"
			version_added: "2.8"
		}
		state: {
			description: [
				"Desired state of the resource.",
			]
			choices: ["present", "absent"]
			default: "present"
			type:    "str"
		}
	}
	extends_documentation_fragment: "tower"
}
