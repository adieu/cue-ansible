package ansible

module: hwc_vpc_security_group: {
	module: "hwc_vpc_security_group"
	description: [
		"vpc security group management.",
	]
	short_description: "Creates a resource of Vpc/SecurityGroup in Huawei Cloud"
	notes: [
		"If I(id) option is provided, it takes precedence over I(name), I(enterprise_project_id) and I(vpc_id) for security group selection.",
		"I(name), I(enterprise_project_id) and I(vpc_id) are used for security group selection. If more than one security group with this options exists, execution is aborted.",
		"No parameter support updating. If one of option is changed, the module will create a new resource.",
	]

	version_added: "2.10"
	author:        "Huawei Inc. (@huaweicloud)"
	requirements: [
		"keystoneauth1 >= 3.6.0",
	]
	options: {
		state: {
			description: [
				"Whether the given object should exist in Huawei Cloud.",
			]
			type: "str"
			choices: ["present", "absent"]
			default: "present"
		}
		name: {
			description: [
				"Specifies the security group name. The value is a string of 1 to 64 characters that can contain letters, digits, underscores C(_), hyphens (-), and periods (.).",
			]

			type:     "str"
			required: true
		}
		enterprise_project_id: {
			description: [
				"Specifies the enterprise project ID. When creating a security group, associate the enterprise project ID with the security group.s",
			]

			type:     "str"
			required: false
			default:  0
		}
		vpc_id: {
			description: [
				"Specifies the resource ID of the VPC to which the security group belongs.",
			]

			type:     "str"
			required: false
		}
	}
	extends_documentation_fragment: "hwc"
}
