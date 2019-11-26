package ansible

module: aws_netapp_cvs_pool: {
	module: "aws_netapp_cvs_pool"

	short_description: "NetApp AWS Cloud Volumes Service Manage Pools."
	extends_documentation_fragment: [
		"netapp.awscvs",
	]
	version_added: "2.9"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Create, Update, Delete Pool on AWS Cloud Volumes Service.",
	]

	options: {
		state: {
			description: [
				"Whether the specified pool should exist or not.",
			]
			choices: ["present", "absent"]
			required: true
			type:     "str"
		}
		region: {
			description: [
				"The region to which the Pool is associated.",
			]
			required: true
			type:     "str"
		}
		name: {
			description: [
				"pool name ( The human readable name of the Pool )",
				"name can be used for create, update and delete operations",
			]
			required: true
			type:     "str"
		}
		serviceLevel: {
			description: [
				"The service level of the Pool",
				"can be used with pool create, update operations",
			]
			choices: ["basic", "standard", "extreme"]
			type: "str"
		}
		sizeInBytes: {
			description: [
				"Size of the Pool in bytes",
				"can be used with pool create, update operations",
				"minimum value is 4000000000000 bytes",
			]
			type: "int"
		}
		vendorID: {
			description: [
				"A vendor ID for the Pool. E.g. an ID allocated by a vendor service for the Pool.",
				"can be used with pool create, update operations",
				"must be unique",
			]
			type: "str"
		}
		from_name: {
			description: [
				"rename the existing pool name ( The human readable name of the Pool )",
				"I(from_name) is the existing name, and I(name) the new name",
				"can be used with update operation",
			]
			type: "str"
		}
	}
}
