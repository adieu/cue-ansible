package ansible

module: azure_rm_galleryimageversion_info: {
	module:            "azure_rm_galleryimageversion_info"
	version_added:     "2.9"
	short_description: "Get Azure SIG Image Version info"
	description: [
		"Get info of Azure SIG Image Version.",
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
				"The name of the Shared Image Gallery in which the Image Definition resides.",
			]
			type:     "str"
			required: true
		}
		gallery_image_name: {
			description: [
				"The name of the gallery Image Definition in which the Image Version resides.",
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
