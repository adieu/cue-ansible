package ansible

module: azure_rm_deployment: {
	module: "azure_rm_deployment"

	short_description: "Create or destroy Azure Resource Manager template deployments"

	version_added: "2.1"

	description: [
		"Create or destroy Azure Resource Manager template deployments via the Azure SDK for Python.",
		"You can find some quick start templates in GitHub here U(https://github.com/azure/azure-quickstart-templates).",
		"For more information on Azure Resource Manager templates see U(https://azure.microsoft.com/en-us/documentation/articles/resource-group-template-deploy/).",
	]

	options: {
		resource_group: {
			description: [
				"The resource group name to use or create to host the deployed template.",
			]
			required: true
			aliases: [
				"resource_group_name",
			]
		}
		name: {
			description: [
				"The name of the deployment to be tracked in the resource group deployment history.",
				"Re-using a deployment name will overwrite the previous value in the resource group's deployment history.",
			]
			default: "ansible-arm"
			aliases: [
				"deployment_name",
			]
		}
		location: {
			description: [
				"The geo-locations in which the resource group will be located.",
			]
			default: "westus"
		}
		deployment_mode: {
			description: [
				"In incremental mode, resources are deployed without deleting existing resources that are not included in the template.",
				"In complete mode resources are deployed and existing resources in the resource group not included in the template are deleted.",
			]
			default: "incremental"
			choices: [
				"complete",
				"incremental",
			]
		}
		template: {
			description: [
				"A hash containing the templates inline. This parameter is mutually exclusive with I(template_link).",
				"Either I(template) or I(template_link) is required if I(state=present).",
			]
			type: "dict"
		}
		template_link: description: [
			"Uri of file containing the template body. This parameter is mutually exclusive with I(template).",
			"Either I(template) or I(template_link) is required if I(state=present).",
		]
		parameters: {
			description: [
				"A hash of all the required template variables for the deployment template. This parameter is mutually exclusive with I(parameters_link).",
				"Either I(parameters_link) or I(parameters) is required if I(state=present).",
			]
			type: "dict"
		}
		parameters_link: description: [
			"Uri of file containing the parameters body. This parameter is mutually exclusive with I(parameters).",
			"Either I(parameters_link) or I(parameters) is required if I(state=present).",
		]
		wait_for_deployment_completion: {
			description: [
				"Whether or not to block until the deployment has completed.",
			]
			type:    "bool"
			default: "yes"
		}
		wait_for_deployment_polling_period: {
			description: [
				"Time (in seconds) to wait between polls when waiting for deployment completion.",
			]
			default: 10
		}
		state: {
			description: [
				"If I(state=present), template will be created.",
				"If I(state=present) and deployment exists, it will be updated.",
				"If I(state=absent), stack will be removed.",
			]
			default: "present"
			choices: [
				"present",
				"absent",
			]
		}
	}

	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: [
		"David Justice (@devigned)",
		"Laurent Mazuel (@lmazuel)",
		"Andre Price (@obsoleted)",
	]
}
