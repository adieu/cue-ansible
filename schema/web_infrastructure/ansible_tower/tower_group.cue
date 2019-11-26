package ansible

module: tower_group: {
	module:            "tower_group"
	author:            "Wayne Witzel III (@wwitzel3)"
	version_added:     "2.3"
	short_description: "create, update, or destroy Ansible Tower group."
	description: [
		"Create, update, or destroy Ansible Tower groups. See U(https://www.ansible.com/tower) for an overview.",
	]

	options: {
		name: {
			description: [
				"The name to use for the group.",
			]
			required: true
		}
		description: description: [
			"The description to use for the group.",
		]
		inventory: {
			description: [
				"Inventory the group should be made a member of.",
			]
			required: true
		}
		variables: description: [
			"Variables to use for the group, use C(@) for a file.",
		]
		credential: description: [
			"Credential to use for the group.",
		]
		source: {
			description: [
				"The source to use for this group.",
			]
			choices: ["manual", "file", "ec2", "rax", "vmware", "gce", "azure", "azure_rm", "openstack", "satellite6", "cloudforms", "custom"]
		}
		source_regions: description: [
			"Regions for cloud provider.",
		]
		source_vars: description: [
			"Override variables from source with variables from this field.",
		]
		instance_filters: description: [
			"Comma-separated list of filter expressions for matching hosts.",
		]
		group_by: description: [
			"Limit groups automatically created from inventory source.",
		]
		source_script: description: [
			"Inventory script to be used when group type is C(custom).",
		]
		overwrite: {
			description: [
				"Delete child groups and hosts not found in source.",
			]
			type:    "bool"
			default: "no"
		}
		overwrite_vars: description: [
			"Override vars in child groups and hosts with those from external source.",
		]
		update_on_launch: {
			description: [
				"Refresh inventory data from its source each time a job is run.",
			]
			type:    "bool"
			default: "no"
		}
		state: {
			description: [
				"Desired state of the resource.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "tower"
}
