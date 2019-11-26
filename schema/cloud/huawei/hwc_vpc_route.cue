package ansible

module: hwc_vpc_route: {
	module: "hwc_vpc_route"
	description: [
		"vpc route management.",
	]
	short_description: "Creates a resource of Vpc/Route in Huawei Cloud"
	notes: [
		"If I(id) option is provided, it takes precedence over I(destination), I(vpc_id), I(type) and I(next_hop) for route selection.",
		"I(destination), I(vpc_id), I(type) and I(next_hop) are used for route selection. If more than one route with this options exists, execution is aborted.",
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
		destination: {
			description: [
				"Specifies the destination IP address or CIDR block.",
			]
			type:     "str"
			required: true
		}
		next_hop: {
			description: [
				"Specifies the next hop. The value is VPC peering connection ID.",
			]
			type:     "str"
			required: true
		}
		vpc_id: {
			description: [
				"Specifies the VPC ID to which route is added.",
			]
			type:     "str"
			required: true
		}
		type: {
			description: [
				"Specifies the type of route.",
			]
			type:     "str"
			required: false
			default:  "peering"
		}
	}
	extends_documentation_fragment: "hwc"
}
