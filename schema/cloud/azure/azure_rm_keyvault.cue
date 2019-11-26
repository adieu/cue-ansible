package ansible

module: azure_rm_keyvault: {
	module:            "azure_rm_keyvault"
	version_added:     "2.5"
	short_description: "Manage Key Vault instance"
	description: [
		"Create, update and delete instance of Key Vault.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the Resource Group to which the server belongs.",
			]
			required: true
		}
		vault_name: {
			description: [
				"Name of the vault.",
			]
			required: true
		}
		location: description: [
			"Resource location. If not set, location from the resource group will be used as default.",
		]
		vault_tenant: description: [
			"The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault.",
		]
		sku: {
			description: [
				"SKU details.",
			]
			suboptions: {
				family: description: [
					"SKU family name.",
				]
				name: {
					description: [
						"SKU name to specify whether the key vault is a standard vault or a premium vault.",
					]
					required: true
					choices: [
						"standard",
						"premium",
					]
				}
			}
		}
		access_policies: {
			description: [
				"An array of 0 to 16 identities that have access to the key vault.",
				"All identities in the array must use the same tenant ID as the key vault's tenant ID.",
			]
			suboptions: {
				tenant_id: description: [
					"The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault.",
					"Current keyvault C(tenant_id) value will be used if not specified.",
				]
				object_id: {
					description: [
						"The object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault.",
						"The object ID must be unique for the list of access policies.",
						"Please note this is not application id. Object id can be obtained by running \"az ad sp show --id <application id>\".",
					]
					required: true
				}
				application_id: description: [
					"Application ID of the client making request on behalf of a principal.",
				]
				keys: {
					description: [
						"List of permissions to keys.",
					]
					choices: [
						"encrypt",
						"decrypt",
						"wrapkey",
						"unwrapkey",
						"sign",
						"verify",
						"get",
						"list",
						"create",
						"update",
						"import",
						"delete",
						"backup",
						"restore",
						"recover",
						"purge",
					]
				}
				secrets: {
					description: [
						"List of permissions to secrets.",
					]
					choices: [
						"get",
						"list",
						"set",
						"delete",
						"backup",
						"restore",
						"recover",
						"purge",
					]
				}
				certificates: {
					description: [
						"List of permissions to certificates.",
					]
					choices: [
						"get",
						"list",
						"delete",
						"create",
						"import",
						"update",
						"managecontacts",
						"getissuers",
						"listissuers",
						"setissuers",
						"deleteissuers",
						"manageissuers",
						"recover",
						"purge",
					]
				}
				storage: description: [
					"List of permissions to storage accounts.",
				]
			}
		}
		enabled_for_deployment: {
			description: [
				"Property to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault.",
			]
			type: "bool"
		}
		enabled_for_disk_encryption: {
			description: [
				"Property to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys.",
			]
			type: "bool"
		}
		enabled_for_template_deployment: {
			description: [
				"Property to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault.",
			]
			type: "bool"
		}
		enable_soft_delete: {
			description: [
				"Property to specify whether the soft delete functionality is enabled for this key vault.",
			]
			type: "bool"
		}
		recover_mode: {
			description: [
				"Create vault in recovery mode.",
			]
			type: "bool"
		}
		state: {
			description: [
				"Assert the state of the KeyVault. Use C(present) to create or update an KeyVault and C(absent) to delete it.",
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
		"Zim Kalinowski (@zikalino)",
	]
}
