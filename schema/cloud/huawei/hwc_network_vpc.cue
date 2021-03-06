package ansible

module: hwc_network_vpc: {
	module: "hwc_network_vpc"
	description: [
		"Represents an vpc resource.",
	]
	short_description: "Creates a Huawei Cloud VPC"
	version_added:     "2.8"
	author:            "Huawei Inc. (@huaweicloud)"
	requirements: [
		"requests >= 2.18.4",
		"keystoneauth1 >= 3.6.0",
	]
	options: {
		state: {
			description: [
				"Whether the given object should exist in vpc.",
			]
			type: "str"
			choices: ["present", "absent"]
			default: "present"
		}
		timeouts: {
			description: [
				"The timeouts for each operations.",
			]
			type:          "dict"
			version_added: "2.9"
			suboptions: {
				create: {
					description: [
						"The timeout for create operation.",
					]
					type:    "str"
					default: "15m"
				}
				update: {
					description: [
						"The timeout for update operation.",
					]
					type:    "str"
					default: "15m"
				}
				delete: {
					description: [
						"The timeout for delete operation.",
					]
					type:    "str"
					default: "15m"
				}
			}
		}
		name: {
			description: [
				"The name of vpc.",
			]
			type:     "str"
			required: true
		}
		cidr: {
			description: [
				"The range of available subnets in the vpc.",
			]
			type:     "str"
			required: true
		}
	}
	extends_documentation_fragment: "hwc"
}
