package ansible

module: azure_rm_devtestlabpolicy: {
	module:            "azure_rm_devtestlabpolicy"
	version_added:     "2.8"
	short_description: "Manage Azure Policy instance"
	description: [
		"Create, update and delete instance of Azure Policy.",
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
		policy_set_name: {
			description: [
				"The name of the policy set.",
			]
			required: true
		}
		name: {
			description: [
				"The name of the policy.",
			]
			required: true
		}
		description: description: [
			"The description of the policy.",
		]
		fact_name: {
			description: [
				"The fact name of the policy (e.g. C(lab_vm_count), C(lab_vm_size)), MaxVmsAllowedPerLab, etc.",
			]
			choices: [
				"user_owned_lab_vm_count",
				"user_owned_lab_premium_vm_count",
				"lab_vm_count",
				"lab_premium_vm_count",
				"lab_vm_size",
				"gallery_image",
				"user_owned_lab_vm_count_in_subnet",
				"lab_target_cost",
			]
		}
		threshold: {
			description: [
				"The threshold of the policy (it could be either a maximum value or a list of allowed values).",
			]
			type: "raw"
		}
		state: {
			description: [
				"Assert the state of the Policy.",
				"Use C(present) to create or update an Policy and C(absent) to delete it.",
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
