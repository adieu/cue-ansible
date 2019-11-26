package ansible

module: purefa_smtp: {
	module:        "purefa_smtp"
	version_added: "2.9"
	author: [
		"Pure Storage ansible Team (@sdodsley) <pure-ansible-team@purestorage.com>",
	]
	short_description: "Configure FlashArray SMTP settings"
	description: [
		"Set or erase configuration for the SMTP settings.",
		"If username/password are set this will always force a change as there is no way to see if the password is different from the current SMTP configuration.",
		"Pure Storage Ansible Team (@sdodsley) <pure-ansible-team@purestorage.com>",
	]
	options: {
		state: {
			description: [
				"Set or delete SMTP configuration",
			]
			default: "present"
			type:    "str"
			choices: ["absent", "present"]
		}
		password: {
			description: [
				"The SMTP password.",
			]
			type: "str"
		}
		user: {
			description: [
				"The SMTP username.",
			]
			type: "str"
		}
		relay_host: {
			description: [
				"IPv4 or IPv6 address or FQDN. A port number may be appended.",
			]
			type: "str"
		}
		sender_domain: {
			description: [
				"Domain name.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: ["purestorage.fa"]
}
