package ansible

module: bigip_iapp_template: {
	module:            "bigip_iapp_template"
	short_description: "Manages TCL iApp templates on a BIG-IP"
	description: [
		"Manages TCL iApp templates on a BIG-IP. This module will allow you to deploy iApp templates to the BIG-IP and manage their lifecycle. The conventional way to use this module is to import new iApps as needed or by extracting the contents of the iApp archive that is provided at downloads.f5.com and then importing all the iApps with this module. This module can also update existing iApps provided that the source of the iApp changed while the name stayed the same. Note however that this module will not reconfigure any services that may have been created using the C(bigip_iapp_service) module. iApps are normally not updated in production. Instead, new versions are deployed and then existing services are changed to consume that new template. As such, the ability to update templates in-place requires the C(force) option to be used.",
	]

	version_added: 2.4
	options: {
		force: {
			description: [
				"Specifies whether or not to force the uploading of an iApp. When C(yes), will force update the iApp even if there are iApp services using it. This will not update the running service though. Use C(bigip_iapp_service) to do that. When C(no), will update the iApp only if there are no iApp services using the template.",
			]

			type: "bool"
		}
		name: {
			description: [
				"The name of the iApp template that you want to delete. This option is only available when specifying a C(state) of C(absent) and is provided as a way to delete templates that you may no longer have the source of.",
			]

			type: "str"
		}
		content: {
			description: [
				"Sets the contents of an iApp template directly to the specified value. This is for simple values, but can be used with lookup plugins for anything complex or with formatting. C(content) must be provided when creating new templates.",
			]

			type: "str"
		}
		state: {
			description: [
				"Whether the iApp template should exist or not.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:    "str"
			default: "Common"
		}
	}
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
