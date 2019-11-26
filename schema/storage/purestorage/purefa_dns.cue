package ansible

module: purefa_dns: {
	module:            "purefa_dns"
	version_added:     "2.8"
	short_description: "Configure FlashArray DNS settings"
	description: [
		"Set or erase configuration for the DNS settings.",
		"Nameservers provided will overwrite any existing nameservers.",
	]
	author: [
		"Pure Storage Ansible Team (@sdodsley) <pure-ansible-team@purestorage.com>",
	]
	options: {
		state: {
			description: [
				"Set or delete directory service configuration",
			]
			default: "present"
			type:    "str"
			choices: ["absent", "present"]
		}
		domain: {
			description: [
				"Domain suffix to be appended when performing DNS lookups.",
			]
			type: "str"
		}
		nameservers: {
			description: [
				"List of up to 3 unique DNS server IP addresses. These can be IPv4 or IPv6 - No validation is done of the addresses is performed.",
			]

			type: "list"
		}
	}
	extends_documentation_fragment: ["purestorage.fa"]
}
