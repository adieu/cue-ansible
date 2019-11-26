package ansible

module: purefa_syslog: {
	module:            "purefa_syslog"
	version_added:     "2.9"
	short_description: "Configure Pure Storage FlashArray syslog settings"
	description: [
		"Configure syslog configuration for Pure Storage FlashArrays.",
		"Add or delete an individual syslog server to the existing list of serves.",
	]

	author: [
		"Pure Storage Ansible Team (@sdodsley) <pure-ansible-team@purestorage.com>",
	]
	options: {
		state: {
			description: [
				"Create or delete syslog servers configuration",
			]
			default: "present"
			type:    "str"
			choices: ["absent", "present"]
		}
		protocol: {
			description: [
				"Protocol which server uses",
			]
			required: true
			type:     "str"
			choices: ["tcp", "tls", "udp"]
		}
		port: {
			description: [
				"Port at which the server is listening. If no port is specified the system will use 514",
			]

			type: "str"
		}
		address: {
			description: [
				"Syslog server address. This field supports IPv4, IPv6 or FQDN. An invalid IP addresses will cause the module to fail. No validation is performed for FQDNs.",
			]

			type:     "str"
			required: true
		}
	}
	extends_documentation_fragment: ["purestorage.fa"]
}
