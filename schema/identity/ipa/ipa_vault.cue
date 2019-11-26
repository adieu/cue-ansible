package ansible

module: ipa_vault: {
	module:            "ipa_vault"
	author:            "Juan Manuel Parrilla (@jparrill)"
	short_description: "Manage FreeIPA vaults"
	description: [
		"Add, modify and delete vaults and secret vaults.",
		"KRA service should be enabled to use this module.",
	]
	options: {
		cn: {
			description: [
				"Vault name.",
				"Can not be changed as it is the unique identifier.",
			]
			required: true
			aliases: ["name"]
		}
		description: description: [
			"Description.",
		]
		ipavaulttype: {
			description: [
				"Vault types are based on security level.",
			]
			default: "symmetric"
			choices: ["standard", "symmetric", "asymmetric"]
			required: true
			aliases: ["vault_type"]
		}
		ipavaultpublickey: {
			description: [
				"Public key.",
			]
			aliases: ["vault_public_key"]
		}
		ipavaultsalt: {
			description: [
				"Vault Salt.",
			]
			aliases: ["vault_salt"]
		}
		username: {
			description: [
				"Any user can own one or more user vaults.",
				"Mutually exclusive with service.",
			]
			aliases: ["user"]
		}
		service: description: [
			"Any service can own one or more service vaults.",
			"Mutually exclusive with user.",
		]
		state: {
			description: [
				"State to ensure.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
		replace: {
			description: [
				"Force replace the existant vault on IPA server.",
			]
			type:    "bool"
			default: false
			choices: ["True", "False"]
		}
		validate_certs: {
			description: [
				"Validate IPA server certificates.",
			]
			type:    "bool"
			default: true
		}
	}
	extends_documentation_fragment: "ipa.documentation"
	version_added:                  "2.7"
}
