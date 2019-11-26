package ansible

module: ali_instance: {
	module:            "ali_instance"
	version_added:     "2.8"
	short_description: "Create, Start, Stop, Restart or Terminate an Instance in ECS. Add or Remove Instance to/from a Security Group."
	description: [
		"Create, start, stop, restart, modify or terminate ecs instances.",
		"Add or remove ecs instances to/from security group.",
	]
	options: {
		state: {
			description: [
				"The state of the instance after operating.",
			]
			default: "present"
			choices: ["present", "running", "stopped", "restarted", "absent"]
		}
		availability_zone: {
			description: [
				"Aliyun availability zone ID in which to launch the instance. If it is not specified, it will be allocated by system automatically.",
			]

			aliases: ["alicloud_zone"]
		}
		image_id: {
			description: [
				"Image ID used to launch instances. Required when C(state=present) and creating new ECS instances.",
			]
			aliases: ["image"]
		}
		instance_type: {
			description: [
				"Instance type used to launch instances. Required when C(state=present) and creating new ECS instances.",
			]
			aliases: ["type"]
		}
		security_groups: description: [
			"A list of security group IDs.",
		]
		vswitch_id: {
			description: [
				"The subnet ID in which to launch the instances (VPC).",
			]
			aliases: ["subnet_id"]
		}
		instance_name: {
			description: [
				"The name of ECS instance, which is a string of 2 to 128 Chinese or English characters. It must begin with an uppercase/lowercase letter or a Chinese character and can contain numerals, \".\", \"_\" or \"-\". It cannot begin with http:// or https://.",
			]

			aliases: ["name"]
		}
		description: description: [
			"The description of ECS instance, which is a string of 2 to 256 characters. It cannot begin with http:// or https://.",
		]
		internet_charge_type: {
			description: [
				"Internet charge type of ECS instance.",
			]
			default: "PayByBandwidth"
			choices: ["PayByBandwidth", "PayByTraffic"]
		}
		max_bandwidth_in: {
			description: [
				"Maximum incoming bandwidth from the public network, measured in Mbps (Megabits per second).",
			]
			default: 200
		}
		max_bandwidth_out: {
			description: [
				"Maximum outgoing bandwidth to the public network, measured in Mbps (Megabits per second).",
			]
			default: 0
		}
		host_name: description: [
			"Instance host name.",
		]
		password: description: [
			"The password to login instance. After rebooting instances, modified password will take effect.",
		]
		system_disk_category: {
			description: [
				"Category of the system disk.",
			]
			default: "cloud_efficiency"
			choices: ["cloud_efficiency", "cloud_ssd"]
		}
		system_disk_size: {
			description: [
				"Size of the system disk, in GB. The valid values are 40~500.",
			]
			default: 40
		}
		system_disk_name: description: [
			"Name of the system disk.",
		]
		system_disk_description: description: [
			"Description of the system disk.",
		]
		count: {
			description: [
				"The number of the new instance. An integer value which indicates how many instances that match I(count_tag) should be running. Instances are either created or terminated based on this value.",
			]

			default: 1
		}
		count_tag: description: [
			"I(count) determines how many instances based on a specific tag criteria should be present. This can be expressed in multiple ways and is shown in the EXAMPLES section. The specified count_tag must already exist or be passed in as the I(instance_tags) option. If it is not specified, it will be replaced by I(instance_name).",
		]

		allocate_public_ip: {
			description: [
				"Whether allocate a public ip for the new instance.",
			]
			default: false
			aliases: ["assign_public_ip"]
			type: "bool"
		}
		instance_charge_type: {
			description: [
				"The charge type of the instance.",
			]
			choices: ["PrePaid", "PostPaid"]
			default: "PostPaid"
		}
		period: {
			description: [
				"The charge duration of the instance, in month. Required when C(instance_charge_type=PrePaid).",
				"The valid value are [1-9, 12, 24, 36].",
			]
			default: 1
		}
		auto_renew: {
			description: [
				"Whether automate renew the charge of the instance.",
			]
			type:    "bool"
			default: false
		}
		auto_renew_period: {
			description: [
				"The duration of the automatic renew the charge of the instance. Required when C(auto_renew=True).",
			]
			choices: [1, 2, 3, 6, 12]
		}
		instance_ids: description: [
			"A list of instance ids. It is required when need to operate existing instances. If it is specified, I(count) will lose efficacy.",
		]

		force: {
			description: [
				"Whether the current operation needs to be execute forcibly.",
			]
			default: false
			type:    "bool"
		}
		instance_tags: {
			description: [
				"A hash/dictionaries of instance tags, to add to the new instance or for starting/stopping instance by tag. C({\"key\":\"value\"})",
			]
			aliases: ["tags"]
		}
		key_name: {
			description: [
				"The name of key pair which is used to access ECS instance in SSH.",
			]
			required: false
			aliases: ["keypair"]
		}
		user_data: {
			description: [
				"User-defined data to customize the startup behaviors of an ECS instance and to pass data into an ECS instance. It only will take effect when launching the new ECS instances.",
			]

			required: false
		}
	}
	author: [
		"He Guimin (@xiaozhu36)",
	]
	requirements: [
		"python >= 2.6",
		"footmark >= 1.1.16",
	]
	extends_documentation_fragment: ["alicloud"]
}
