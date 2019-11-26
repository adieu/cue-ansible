package ansible

module: azure_rm_devtestlabartifactsource: {
	module:            "azure_rm_devtestlabartifactsource"
	version_added:     "2.8"
	short_description: "Manage Azure DevTest Labs Artifacts Source instance"
	description: [
		"Create, update and delete instance of Azure DevTest Labs Artifacts Source.",
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
				"The name of the artifact source.",
			]
			required: true
		}
		display_name: description: [
			"The artifact source's display name.",
		]
		uri: description: [
			"The artifact source's URI.",
		]
		source_type: {
			description: [
				"The artifact source's type.",
			]
			choices: [
				"vso",
				"github",
			]
		}
		folder_path: description: [
			"The folder containing artifacts.",
		]
		arm_template_folder_path: description: [
			"The folder containing Azure Resource Manager templates.",
		]
		branch_ref: description: [
			"The artifact source's branch reference.",
		]
		security_token: description: [
			"The security token to authenticate to the artifact source.",
		]
		is_enabled: {
			description: [
				"Indicates whether the artifact source is enabled.",
			]
			type: "bool"
		}
		state: {
			description: [
				"Assert the state of the DevTest Labs Artifacts Source.",
				"Use C(present) to create or update an DevTest Labs Artifacts Source and C(absent) to delete it.",
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
