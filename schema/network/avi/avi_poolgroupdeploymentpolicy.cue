package ansible

module: avi_poolgroupdeploymentpolicy: {
	module: "avi_poolgroupdeploymentpolicy"
	author: "Gaurav Rastogi (@grastogi23) <grastogi@avinetworks.com>"

	short_description: "Module for setup of PoolGroupDeploymentPolicy Avi RESTful Object"
	description: [
		"This module is used to configure PoolGroupDeploymentPolicy object",
		"more examples at U(https://github.com/avinetworks/devops)",
	]
	requirements: ["avisdk"]
	version_added: "2.4"
	options: {
		state: {
			description: [
				"The state that should be applied on the entity.",
			]
			default: "present"
			choices: ["absent", "present"]
		}
		avi_api_update_method: {
			description: [
				"Default method for object update is HTTP PUT.",
				"Setting to patch will override that behavior to use HTTP PATCH.",
			]
			version_added: "2.5"
			default:       "put"
			choices: ["put", "patch"]
		}
		avi_api_patch_op: {
			description: [
				"Patch operation to use when using avi_api_update_method as patch.",
			]
			version_added: "2.5"
			choices: ["add", "replace", "delete"]
		}
		auto_disable_old_prod_pools: {
			description: [
				"It will automatically disable old production pools once there is a new production candidate.",
				"Default value when not specified in API or module is interpreted by Avi Controller as True.",
			]
			type: "bool"
		}
		description: description: [
			"User defined description for the object.",
		]
		evaluation_duration: description: [
			"Duration of evaluation period for automatic deployment.",
			"Allowed values are 60-86400.",
			"Default value when not specified in API or module is interpreted by Avi Controller as 300.",
		]
		name: {
			description: [
				"The name of the pool group deployment policy.",
			]
			required: true
		}
		rules: description: [
			"List of pgdeploymentrule.",
		]
		scheme: description: [
			"Deployment scheme.",
			"Enum options - BLUE_GREEN, CANARY.",
			"Default value when not specified in API or module is interpreted by Avi Controller as BLUE_GREEN.",
		]
		target_test_traffic_ratio: description: [
			"Target traffic ratio before pool is made production.",
			"Allowed values are 1-100.",
			"Default value when not specified in API or module is interpreted by Avi Controller as 100.",
		]
		tenant_ref: description: [
			"It is a reference to an object of type tenant.",
		]
		test_traffic_ratio_rampup: description: [
			"Ratio of the traffic that is sent to the pool under test.",
			"Test ratio of 100 means blue green.",
			"Allowed values are 1-100.",
			"Default value when not specified in API or module is interpreted by Avi Controller as 100.",
		]
		url: description: [
			"Avi controller URL of the object.",
		]
		uuid: description: [
			"Uuid of the pool group deployment policy.",
		]
		webhook_ref: description: [
			"Webhook configured with url that avi controller will pass back information about pool group, old and new pool information and current deployment",
			"rule results.",
			"It is a reference to an object of type webhook.",
			"Field introduced in 17.1.1.",
		]
	}
	extends_documentation_fragment: ["avi"]
}
