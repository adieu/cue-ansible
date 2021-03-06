package ansible

module: hwc_vpc_eip: {
	module: "hwc_vpc_eip"
	description: [
		"elastic ip management.",
	]
	short_description: "Creates a resource of Vpc/EIP in Huawei Cloud"
	version_added:     "2.10"
	author:            "Huawei Inc. (@huaweicloud)"
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
		timeouts: {
			description: [
				"The timeouts for each operations.",
			]
			type: "dict"
			suboptions: {
				create: {
					description: [
						"The timeouts for create operation.",
					]
					type:    "str"
					default: "5m"
				}
				update: {
					description: [
						"The timeouts for update operation.",
					]
					type:    "str"
					default: "5m"
				}
			}
		}
		type: {
			description: [
				"Specifies the EIP type.",
			]
			type:     "str"
			required: true
		}
		dedicated_bandwidth: {
			description: [
				"Specifies the dedicated bandwidth object.",
			]
			type:     "dict"
			required: false
			suboptions: {
				charge_mode: {
					description: [
						"Specifies whether the bandwidth is billed by traffic or by bandwidth size. The value can be bandwidth or traffic. If this parameter is left blank or is null character string, default value bandwidth is used. For IPv6 addresses, the default parameter value is bandwidth outside China and is traffic in China.",
					]

					type:     "str"
					required: true
				}
				name: {
					description: [
						"Specifies the bandwidth name. The value is a string of 1 to 64 characters that can contain letters, digits, underscores C(_), hyphens (-), and periods (.).",
					]

					type:     "str"
					required: true
				}
				size: {
					description: [
						"Specifies the bandwidth size. The value ranges from 1 Mbit/s to 2000 Mbit/s by default. (The specific range may vary depending on the configuration in each region. You can see the bandwidth range of each region on the management console.) The minimum unit for bandwidth adjustment varies depending on the bandwidth range. The details are as follows.",
						"The minimum unit is 1 Mbit/s if the allowed bandwidth size ranges from 0 to 300 Mbit/s (with 300 Mbit/s included).",
						"The minimum unit is 50 Mbit/s if the allowed bandwidth size ranges 300 Mbit/s to 1000 Mbit/s (with 1000 Mbit/s included).",
						"The minimum unit is 500 Mbit/s if the allowed bandwidth size is greater than 1000 Mbit/s.",
					]

					type:     "int"
					required: true
				}
			}
		}
		enterprise_project_id: {
			description: [
				"Specifies the enterprise project ID.",
			]
			type:     "str"
			required: false
		}
		ip_version: {
			description: [
				"The value can be 4 (IPv4 address) or 6 (IPv6 address). If this parameter is left blank, an IPv4 address will be assigned.",
			]

			type:     "int"
			required: false
		}
		ipv4_address: {
			description: [
				"Specifies the obtained IPv4 EIP. The system automatically assigns an EIP if you do not specify it.",
			]

			type:     "str"
			required: false
		}
		port_id: {
			description: [
				"Specifies the port ID. This parameter is returned only when a private IP address is bound with the EIP.",
			]

			type:     "str"
			required: false
		}
		shared_bandwidth_id: {
			description: [
				"Specifies the ID of shared bandwidth.",
			]
			type:     "str"
			required: false
		}
	}
	extends_documentation_fragment: "hwc"
}
