package ansible

module: purefa_snmp: {
	module:            "purefa_snmp"
	version_added:     "2.9"
	short_description: "Configure FlashArray SNMP Managers"
	description: [
		"Manage SNMP managers on a Pure Storage FlashArray.",
		"Changing of a named SNMP managers version is not supported.",
		"This module is not idempotent and will always modify an existing SNMP manager due to hidden parameters that cannot be compared to the play parameters.",
	]

	author: [
		"Pure Storage Ansible Team (@sdodsley) <pure-ansible-team@purestorage.com>",
	]
	options: {
		name: {
			description: [
				"Name of SNMP Manager",
			]
			required: true
			type:     "str"
		}
		state: {
			description: [
				"Create or delete SNMP manager",
			]
			type:    "str"
			default: "present"
			choices: ["absent", "present"]
		}
		auth_passphrase: {
			type: "str"
			description: [
				"SNMPv3 only. Passphrase of 8 - 32 characters.",
			]
		}
		auth_protocol: {
			type: "str"
			description: [
				"SNMP v3 only. Hash algorithm to use",
			]
			choices: ["MD5", "SHA"]
		}
		community: {
			type: "str"
			description: [
				"SNMP v2c only. Manager community ID. Between 1 and 32 characters long.",
			]
		}
		host: {
			type: "str"
			description: [
				"IPv4 or IPv6 address or FQDN to send trap messages to.",
			]
			required: true
		}
		user: {
			type: "str"
			description: [
				"SNMP v3 only. User ID recognized by the specified SNMP manager. Must be between 1 and 32 characters.",
			]
		}

		version: {
			type: "str"
			description: [
				"Version of SNMP protocol to use for the manager.",
			]
			choices: ["v2c", "v3"]
			default: "v2c"
		}
		notification: {
			type: "str"
			description: [
				"Action to perform on event.",
			]
			default: "trap"
			choices: ["inform", "trap"]
		}
		privacy_passphrase: {
			type: "str"
			description: [
				"SNMPv3 only. Passphrase to encrypt SNMP messages. Must be between 8 and 63 non-space ASCII characters.",
			]
		}

		privacy_protocol: {
			type: "str"
			description: [
				"SNMP v3 only. Encryption protocol to use",
			]
			choices: ["AES", "DES"]
		}
	}
	extends_documentation_fragment: ["purestorage.fa"]
}
