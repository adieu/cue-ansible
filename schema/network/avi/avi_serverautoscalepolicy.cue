package ansible

module: avi_serverautoscalepolicy: {
	module: "avi_serverautoscalepolicy"
	author: "Gaurav Rastogi (@grastogi23) <grastogi@avinetworks.com>"

	short_description: "Module for setup of ServerAutoScalePolicy Avi RESTful Object"
	description: [
		"This module is used to configure ServerAutoScalePolicy object",
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
		description: description: [
			"User defined description for the object.",
		]
		intelligent_autoscale: {
			description: [
				"Use avi intelligent autoscale algorithm where autoscale is performed by comparing load on the pool against estimated capacity of all the servers.",
				"Default value when not specified in API or module is interpreted by Avi Controller as False.",
			]
			type: "bool"
		}
		intelligent_scalein_margin: description: [
			"Maximum extra capacity as percentage of load used by the intelligent scheme.",
			"Scalein is triggered when available capacity is more than this margin.",
			"Allowed values are 1-99.",
			"Default value when not specified in API or module is interpreted by Avi Controller as 40.",
		]
		intelligent_scaleout_margin: description: [
			"Minimum extra capacity as percentage of load used by the intelligent scheme.",
			"Scaleout is triggered when available capacity is less than this margin.",
			"Allowed values are 1-99.",
			"Default value when not specified in API or module is interpreted by Avi Controller as 20.",
		]
		max_scalein_adjustment_step: description: [
			"Maximum number of servers to scalein simultaneously.",
			"The actual number of servers to scalein is chosen such that target number of servers is always more than or equal to the min_size.",
			"Default value when not specified in API or module is interpreted by Avi Controller as 1.",
		]
		max_scaleout_adjustment_step: description: [
			"Maximum number of servers to scaleout simultaneously.",
			"The actual number of servers to scaleout is chosen such that target number of servers is always less than or equal to the max_size.",
			"Default value when not specified in API or module is interpreted by Avi Controller as 1.",
		]
		max_size: description: [
			"Maximum number of servers after scaleout.",
			"Allowed values are 0-400.",
		]
		min_size: description: [
			"No scale-in happens once number of operationally up servers reach min_servers.",
			"Allowed values are 0-400.",
		]
		name: {
			description: [
				"Name of the object.",
			]
			required: true
		}
		scalein_alertconfig_refs: description: [
			"Trigger scalein when alerts due to any of these alert configurations are raised.",
			"It is a reference to an object of type alertconfig.",
		]
		scalein_cooldown: description: [
			"Cooldown period during which no new scalein is triggered to allow previous scalein to successfully complete.",
			"Default value when not specified in API or module is interpreted by Avi Controller as 300.",
		]
		scaleout_alertconfig_refs: description: [
			"Trigger scaleout when alerts due to any of these alert configurations are raised.",
			"It is a reference to an object of type alertconfig.",
		]
		scaleout_cooldown: description: [
			"Cooldown period during which no new scaleout is triggered to allow previous scaleout to successfully complete.",
			"Default value when not specified in API or module is interpreted by Avi Controller as 300.",
		]
		tenant_ref: description: [
			"It is a reference to an object of type tenant.",
		]
		url: description: [
			"Avi controller URL of the object.",
		]
		use_predicted_load: {
			description: [
				"Use predicted load rather than current load.",
				"Default value when not specified in API or module is interpreted by Avi Controller as False.",
			]
			type: "bool"
		}
		uuid: description: [
			"Unique object identifier of the object.",
		]
	}
	extends_documentation_fragment: ["avi"]
}
