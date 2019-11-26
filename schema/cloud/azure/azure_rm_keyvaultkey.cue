package ansible

module: azure_rm_keyvaultkey: {
	module:            "azure_rm_keyvaultkey"
	version_added:     2.5
	short_description: "Use Azure KeyVault keys"
	description: [
		"Create or delete a key within a given keyvault.",
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
		key_name: {
			description: [
				"Name of the keyvault key.",
			]
			required: true
		}
		byok_file: description: [
			"BYOK file.",
		]
		pem_file: description: [
			"PEM file.",
		]
		pem_password: description: [
			"PEM password.",
		]
		state: {
			description: [
				"Assert the state of the key. Use C(present) to create a key and C(absent) to delete a key.",
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
