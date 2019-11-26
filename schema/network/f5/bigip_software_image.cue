package ansible

module: bigip_software_image: {
	module:            "bigip_software_image"
	short_description: "Manage software images on a BIG-IP"
	description: [
		"Manages software images on a BIG-IP. These images may include both base images and hotfix images.",
	]

	version_added: 2.7
	options: {
		force: {
			description: [
				"When C(yes), will upload the file every time and replace the file on the device.",
				"When C(no), the file will only be uploaded if it does not already exist.",
				"Generally should be C(yes) only in cases where you have reason to believe that the image was corrupted during upload.",
			]

			type:    "bool"
			default: false
		}
		state: {
			description: [
				"When C(present), ensures that the image is uploaded.",
				"When C(absent), ensures that the image is removed.",
			]
			type: "str"
			choices: [
				"absent",
				"present",
			]
			default: "present"
		}
		image: {
			description: [
				"The image to put on the remote device.",
				"This may be an absolute or relative location on the Ansible controller.",
				"Image names, whether they are base ISOs or hotfix ISOs, B(must) be unique.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "f5"
	author: ["Tim Rupp (@caphrim007)"]
}
