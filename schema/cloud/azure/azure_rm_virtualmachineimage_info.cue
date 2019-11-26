package ansible

module: azure_rm_virtualmachineimage_info: {
	module: "azure_rm_virtualmachineimage_info"

	version_added: "2.9"

	short_description: "Get virtual machine image facts"

	description: [
		"Get facts for virtual machine images.",
	]

	options: {
		location: {
			description: [
				"Azure location value, for example C(westus), C(eastus), C(eastus2), C(northcentralus), etc.",
				"Supplying only a location value will yield a list of available publishers for the location.",
			]
			required: true
		}
		publisher: description: [
			"Name of an image publisher. List image offerings associated with a particular publisher.",
		]
		offer: description: [
			"Name of an image offering. Combine with SKU to see a list of available image versions.",
		]
		sku: description: [
			"Image offering SKU. Combine with offer to see a list of available versions.",
		]
		version: description: [
			"Specific version number of an image.",
		]
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Chris Houseknecht (@chouseknecht)",
		"Matt Davis (@nitzmahone)",
	]
}
