package ansible

module: avi_autoscalelaunchconfig: {
	module: "avi_autoscalelaunchconfig"
	author: "Chaitanya Deshpande (@chaitanyaavi) <chaitanya.deshpande@avinetworks.com>"

	short_description: "Module for setup of AutoScaleLaunchConfig Avi RESTful Object"
	description: [
		"This module is used to configure AutoScaleLaunchConfig object",
		"more examples at U(https://github.com/avinetworks/devops)",
	]
	requirements: ["avisdk"]
	version_added: "2.6"
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
			default: "put"
			choices: ["put", "patch"]
		}
		avi_api_patch_op: {
			description: [
				"Patch operation to use when using avi_api_update_method as patch.",
			]
			choices: ["add", "replace", "delete"]
		}
		description: description: [
			"User defined description for the object.",
		]
		image_id: description: [
			"Unique id of the amazon machine image (ami)  or openstack vm id.",
		]
		mesos: description: [
			"Autoscalemesossettings settings for autoscalelaunchconfig.",
		]
		name: {
			description: [
				"Name of the object.",
			]
			required: true
		}
		openstack: description: [
			"Autoscaleopenstacksettings settings for autoscalelaunchconfig.",
		]
		tenant_ref: description: [
			"It is a reference to an object of type tenant.",
		]
		url: description: [
			"Avi controller URL of the object.",
		]
		use_external_asg: {
			description: [
				"If set to true, serverautoscalepolicy will use the autoscaling group (external_autoscaling_groups) from pool to perform scale up and scale down.",
				"Pool should have single autoscaling group configured.",
				"Field introduced in 17.2.3.",
				"Default value when not specified in API or module is interpreted by Avi Controller as True.",
			]
			type: "bool"
		}
		uuid: description: [
			"Unique object identifier of the object.",
		]
	}
	extends_documentation_fragment: ["avi"]
}
