package ansible

module: vmware_category: {
	module:            "vmware_category"
	short_description: "Manage VMware categories"
	description: [
		"This module can be used to create / delete / update VMware categories.",
		"Tag feature is introduced in vSphere 6 version, so this module is not supported in the earlier versions of vSphere.",
		"All variables and VMware object names are case sensitive.",
	]
	version_added: "2.7"
	author: [
		"Abhijeet Kasurde (@Akasurde)",
	]
	notes: [
		"Tested on vSphere 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
		"vSphere Automation SDK",
	]
	options: {
		category_name: {
			description: [
				"The name of category to manage.",
			]
			required: true
			type:     "str"
		}
		category_description: {
			description: [
				"The category description.",
				"This is required only if C(state) is set to C(present).",
				"This parameter is ignored, when C(state) is set to C(absent).",
			]
			default: ""
			type:    "str"
		}
		category_cardinality: {
			description: [
				"The category cardinality.",
				"This parameter is ignored, when updating existing category.",
			]
			choices: ["multiple", "single"]
			default: "multiple"
			type:    "str"
		}
		new_category_name: {
			description: [
				"The new name for an existing category.",
				"This value is used while updating an existing category.",
			]
			type: "str"
		}
		state: {
			description: [
				"The state of category.",
				"If set to C(present) and category does not exists, then category is created.",
				"If set to C(present) and category exists, then category is updated.",
				"If set to C(absent) and category exists, then category is deleted.",
				"If set to C(absent) and category does not exists, no action is taken.",
				"Process of updating category only allows name, description change.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
	}
	extends_documentation_fragment: "vmware_rest_client.documentation"
}
