package ansible

module: azure_rm_keyvaultkey_info: {
	module:            "azure_rm_keyvaultkey_info"
	version_added:     "2.9"
	short_description: "Get Azure Key Vault key facts"
	description: [
		"Get facts of Azure Key Vault key.",
	]

	options: {
		vault_uri: {
			description: [
				"Vault uri where the key stored in.",
			]
			required: true
			type:     "str"
		}
		name: {
			description: [
				"Key name. If not set, will list all keys in I(vault_uri).",
			]
			type: "str"
		}
		version: {
			description: [
				"Key version.",
				"Set it to C(current) to show latest version of a key.",
				"Set it to C(all) to list all versions of a key.",
				"Set it to specific version to list specific version of a key. eg. fd2682392a504455b79c90dd04a1bf46.",
			]
			default: "current"
			type:    "str"
		}
		show_deleted_key: {
			description: [
				"Set to C(true) to show deleted keys. Set to C(false) to show not deleted keys.",
			]
			type:    "bool"
			default: false
		}
		tags: {
			description: [
				"Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.",
			]
			type: "list"
		}
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Yunge Zhu (@yungezz)",
	]
}
