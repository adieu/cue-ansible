package ansible

module: azure_rm_storageaccount: {
	module:            "azure_rm_storageaccount"
	version_added:     "2.1"
	short_description: "Manage Azure storage accounts"
	description: [
		"Create, update or delete a storage account.",
	]
	options: {
		resource_group: {
			description: [
				"Name of the resource group to use.",
			]
			required: true
			aliases: [
				"resource_group_name",
			]
		}
		name: description: [
			"Name of the storage account to update or create.",
		]
		state: {
			description: [
				"State of the storage account. Use C(present) to create or update a storage account and use C(absent) to delete an account.",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
		location: description: [
			"Valid Azure location. Defaults to location of the resource group.",
		]
		account_type: {
			description: [
				"Type of storage account. Required when creating a storage account.",
				"C(Standard_ZRS) and C(Premium_LRS) accounts cannot be changed to other account types.",
				"Other account types cannot be changed to C(Standard_ZRS) or C(Premium_LRS).",
			]
			choices: [
				"Premium_LRS",
				"Standard_GRS",
				"Standard_LRS",
				"StandardSSD_LRS",
				"Standard_RAGRS",
				"Standard_ZRS",
				"Premium_ZRS",
			]
			aliases: [
				"type",
			]
		}
		custom_domain: {
			description: [
				"User domain assigned to the storage account.",
				"Must be a dictionary with I(name) and I(use_sub_domain) keys where I(name) is the CNAME source.",
				"Only one custom domain is supported per storage account at this time.",
				"To clear the existing custom domain, use an empty string for the custom domain name property.",
				"Can be added to an existing storage account. Will be ignored during storage account creation.",
			]
			aliases: [
				"custom_dns_domain_suffix",
			]
		}
		kind: {
			description: [
				"The kind of storage.",
			]
			default: "Storage"
			choices: [
				"Storage",
				"StorageV2",
				"BlobStorage",
			]
			version_added: "2.2"
		}
		access_tier: {
			description: [
				"The access tier for this storage account. Required when I(kind=BlobStorage).",
			]
			choices: [
				"Hot",
				"Cool",
			]
			version_added: "2.4"
		}
		force_delete_nonempty: {
			description: [
				"Attempt deletion if resource already exists and cannot be updated.",
			]
			type: "bool"
			aliases: [
				"force",
			]
		}
		https_only: {
			description: [
				"Allows https traffic only to storage service when set to C(true).",
			]
			type:          "bool"
			version_added: "2.8"
		}
		blob_cors: {
			description: [
				"Specifies CORS rules for the Blob service.",
				"You can include up to five CorsRule elements in the request.",
				"If no blob_cors elements are included in the argument list, nothing about CORS will be changed.",
				"If you want to delete all CORS rules and disable CORS for the Blob service, explicitly set I(blob_cors=[]).",
			]
			type:          "list"
			version_added: "2.8"
			suboptions: {
				allowed_origins: {
					description: [
						"A list of origin domains that will be allowed via CORS, or \"*\" to allow all domains.",
					]
					type:     "list"
					required: true
				}
				allowed_methods: {
					description: [
						"A list of HTTP methods that are allowed to be executed by the origin.",
					]
					type:     "list"
					required: true
				}
				max_age_in_seconds: {
					description: [
						"The number of seconds that the client/browser should cache a preflight response.",
					]
					type:     "int"
					required: true
				}
				exposed_headers: {
					description: [
						"A list of response headers to expose to CORS clients.",
					]
					type:     "list"
					required: true
				}
				allowed_headers: {
					description: [
						"A list of headers allowed to be part of the cross-origin request.",
					]
					type:     "list"
					required: true
				}
			}
		}
	}

	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: [
		"Chris Houseknecht (@chouseknecht)",
		"Matt Davis (@nitzmahone)",
	]
}
