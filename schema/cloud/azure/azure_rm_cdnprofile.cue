package ansible

module: azure_rm_cdnprofile: {
	module:            "azure_rm_cdnprofile"
	version_added:     "2.8"
	short_description: "Manage a Azure CDN profile"
	description: [
		"Create, update and delete a Azure CDN profile.",
	]

	options: {
		resource_group: {
			description: [
				"Name of a resource group where the CDN profile exists or will be created.",
			]
			required: true
		}
		name: {
			description: [
				"Name of the CDN profile.",
			]
			required: true
		}
		location: description: [
			"Valid Azure location. Defaults to location of the resource group.",
		]
		sku: {
			description: [
				"The pricing tier, defines a CDN provider, feature list and rate of the CDN profile.",
				"Detailed pricing can be find at U(https://azure.microsoft.com/en-us/pricing/details/cdn/).",
			]
			choices: [
				"standard_verizon",
				"premium_verizon",
				"custom_verizon",
				"standard_akamai",
				"standard_chinacdn",
				"standard_microsoft",
			]
		}
		state: {
			description: [
				"Assert the state of the CDN profile. Use C(present) to create or update a CDN profile and C(absent) to delete it.",
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
		"Hai Cao (@caohai)",
		"Yunge Zhu (@yungezz)",
	]
}
