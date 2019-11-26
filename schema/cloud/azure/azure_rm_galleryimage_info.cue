package ansible

module: azure_rm_galleryimage_info: {
	module:            "azure_rm_galleryimage_info"
	version_added:     "2.9"
	short_description: "Get Azure SIG Image info"
	description: [
		"Get info of Azure SIG Image.",
	]
	options: {
		resource_group: {
			description: [
				"The name of the resource group.",
			]
			type:     "str"
			required: true
		}
		gallery_name: {
			description: [
				"The name of the shared image gallery from which the image definitions are to be retrieved.",
			]
			type:     "str"
			required: true
		}
		name: {
			description: [
				"Resource name.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: [
		"azure",
	]
	author: [
		"Liu Qingyi (@smile37773)",
	]
}
