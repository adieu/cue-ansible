package ansible

module: azure_rm_devtestlabcustomimage: {
	module:            "azure_rm_devtestlabcustomimage"
	version_added:     "2.8"
	short_description: "Manage Azure DevTest Lab Custom Image instance"
	description: [
		"Create, update and delete instance of Azure DevTest Lab Custom Image.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group.",
			]
			required: true
		}
		lab_name: {
			description: [
				"The name of the lab.",
			]
			required: true
		}
		name: {
			description: [
				"The name of the custom image.",
			]
			required: true
		}
		source_vm: description: [
			"Source DevTest Lab virtual machine name.",
		]
		windows_os_state: {
			description: [
				"The state of the Windows OS.",
			]
			choices: [
				"non_sysprepped",
				"sysprep_requested",
				"sysprep_applied",
			]
		}
		linux_os_state: {
			description: [
				"The state of the Linux OS.",
			]
			choices: [
				"non_deprovisioned",
				"deprovision_requested",
				"deprovision_applied",
			]
		}
		description: description: [
			"The description of the custom image.",
		]
		author: description: [
			"The author of the custom image.",
		]
		state: {
			description: [
				"Assert the state of the Custom Image.",
				"Use C(present) to create or update an Custom Image and C(absent) to delete it.",
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
