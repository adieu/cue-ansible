package ansible

module: hwc_vpc_private_ip: {
	module: "hwc_vpc_private_ip"
	description: [
		"vpc private ip management.",
	]
	short_description: "Creates a resource of Vpc/PrivateIP in Huawei Cloud"
	notes: [
		"If I(id) option is provided, it takes precedence over I(subnet_id), I(ip_address) for private ip selection.",
		"I(subnet_id), I(ip_address) are used for private ip selection. If more than one private ip with this options exists, execution is aborted.",
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
		subnet_id: {
			description: [
				"Specifies the ID of the subnet from which IP addresses are assigned. Cannot be changed after creating the private ip.",
			]

			type:     "str"
			required: true
		}
		ip_address: {
			description: [
				"Specifies the target IP address. The value can be an available IP address in the subnet. If it is not specified, the system automatically assigns an IP address. Cannot be changed after creating the private ip.",
			]

			type:     "str"
			required: false
		}
	}
	extends_documentation_fragment: "hwc"
}
