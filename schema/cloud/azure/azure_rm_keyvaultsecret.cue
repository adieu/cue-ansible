package ansible

module: azure_rm_keyvaultsecret: {
	module:            "azure_rm_keyvaultsecret"
	version_added:     2.5
	short_description: "Use Azure KeyVault Secrets"
	description: [
		"Create or delete a secret within a given keyvault.",
		"By using Key Vault, you can encrypt keys and secrets.",
		"Such as authentication keys, storage account keys, data encryption keys, .PFX files, and passwords.",
	]
	options: {
		keyvault_uri: {
			description: [
				"URI of the keyvault endpoint.",
			]
			required: true
		}
		secret_name: {
			description: [
				"Name of the keyvault secret.",
			]
			required: true
		}
		secret_value: description: [
			"Secret to be secured by keyvault.",
		]
		state: {
			description: [
				"Assert the state of the subnet. Use C(present) to create or update a secret and C(absent) to delete a secret .",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
	}

	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: [
		"Ian Philpot (@iphilpot)",
	]
}
