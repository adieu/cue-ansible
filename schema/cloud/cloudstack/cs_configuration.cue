package ansible

module: cs_configuration: {
	module:            "cs_configuration"
	short_description: "Manages configuration on Apache CloudStack based clouds."
	description: [
		"Manages global, zone, account, storage and cluster configurations.",
	]
	version_added: "2.1"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: ["Name of the configuration."]
			type:     "str"
			required: true
		}
		value: {
			description: ["Value of the configuration."]
			type:     "str"
			required: true
		}
		account: {
			description: ["Ensure the value for corresponding account."]
			type: "str"
		}
		domain: {
			description: [
				"Domain the account is related to.",
				"Only considered if I(account) is used.",
			]
			type:    "str"
			default: "ROOT"
		}
		zone: {
			description: ["Ensure the value for corresponding zone."]
			type: "str"
		}
		storage: {
			description: ["Ensure the value for corresponding storage pool."]
			type: "str"
		}
		cluster: {
			description: ["Ensure the value for corresponding cluster."]
			type: "str"
		}
	}
	extends_documentation_fragment: "cloudstack"
}
