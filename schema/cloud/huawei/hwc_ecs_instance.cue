package ansible

module: hwc_ecs_instance: {
	module: "hwc_ecs_instance"
	description: [
		"instance management.",
	]
	short_description: "Creates a resource of Ecs/Instance in Huawei Cloud"
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
					default: "30m"
				}
				update: {
					description: [
						"The timeouts for update operation.",
					]
					type:    "str"
					default: "30m"
				}
				delete: {
					description: [
						"The timeouts for delete operation.",
					]
					type:    "str"
					default: "30m"
				}
			}
		}
		availability_zone: {
			description: [
				"Specifies the name of the AZ where the ECS is located.",
			]
			type:     "str"
			required: true
		}
		flavor_name: {
			description: [
				"Specifies the name of the system flavor.",
			]
			type:     "str"
			required: true
		}
		image_id: {
			description: [
				"Specifies the ID of the system image.",
			]
			type:     "str"
			required: true
		}
		name: {
			description: [
				"Specifies the ECS name. Value requirements consists of 1 to 64 characters, including letters, digits, underscores C(_), hyphens (-), periods (.).",
			]

			type:     "str"
			required: true
		}
		nics: {
			description: [
				"Specifies the NIC information of the ECS. Constraints the network of the NIC must belong to the VPC specified by vpc_id. A maximum of 12 NICs can be attached to an ECS.",
			]

			type:     "list"
			required: true
			suboptions: {
				ip_address: {
					description: [
						"Specifies the IP address of the NIC. The value is an IPv4 address. Its value must be an unused IP address in the network segment of the subnet.",
					]

					type:     "str"
					required: true
				}
				subnet_id: {
					description: [
						"Specifies the ID of subnet.",
					]
					type:     "str"
					required: true
				}
			}
		}
		root_volume: {
			description: [
				"Specifies the configuration of the ECS's system disks.",
			]
			type:     "dict"
			required: true
			suboptions: {
				volume_type: {
					description: [
						"Specifies the ECS system disk type.",
						"SATA is common I/O disk type.",
						"SAS is high I/O disk type.",
						"SSD is ultra-high I/O disk type.",
						"co-p1 is high I/O (performance-optimized I) disk type.",
						"uh-l1 is ultra-high I/O (latency-optimized) disk type.",
						"NOTE is For HANA, HL1, and HL2 ECSs, use co-p1 and uh-l1 disks. For other ECSs, do not use co-p1 or uh-l1 disks.",
					]

					type:     "str"
					required: true
				}
				size: {
					description: [
						"Specifies the system disk size, in GB. The value range is 1 to 1024. The system disk size must be greater than or equal to the minimum system disk size supported by the image (min_disk attribute of the image). If this parameter is not specified or is set to 0, the default system disk size is the minimum value of the system disk in the image (min_disk attribute of the image).",
					]

					type:     "int"
					required: false
				}
				snapshot_id: {
					description: [
						"Specifies the snapshot ID or ID of the original data disk contained in the full-ECS image.",
					]

					type:     "str"
					required: false
				}
			}
		}
		vpc_id: {
			description: [
				"Specifies the ID of the VPC to which the ECS belongs.",
			]
			type:     "str"
			required: true
		}
		admin_pass: {
			description: [
				"Specifies the initial login password of the administrator account for logging in to an ECS using password authentication. The Linux administrator is root, and the Windows administrator is Administrator. Password complexity requirements, consists of 8 to 26 characters. The password must contain at least three of the following character types 'uppercase letters, lowercase letters, digits, and special characters (!@$%^-_=+[{}]:,./?)'. The password cannot contain the username or the username in reverse. The Windows ECS password cannot contain the username, the username in reverse, or more than two consecutive characters in the username.",
			]

			type:     "str"
			required: false
		}
		data_volumes: {
			description: [
				"Specifies the data disks of ECS instance.",
			]
			type:     "list"
			required: false
			suboptions: {
				volume_id: {
					description: [
						"Specifies the disk ID.",
					]
					type:     "str"
					required: true
				}
				device: {
					description: [
						"Specifies the disk device name.",
					]
					type:     "str"
					required: false
				}
			}
		}
		description: {
			description: [
				"Specifies the description of an ECS, which is a null string by default. Can contain a maximum of 85 characters. Cannot contain special characters, such as < and >.",
			]

			type:     "str"
			required: false
		}
		eip_id: {
			description: [
				"Specifies the ID of the elastic IP address assigned to the ECS. Only elastic IP addresses in the DOWN state can be assigned.",
			]

			type:     "str"
			required: false
		}
		enable_auto_recovery: {
			description: [
				"Specifies whether automatic recovery is enabled on the ECS.",
			]
			type:     "bool"
			required: false
		}
		enterprise_project_id: {
			description: [
				"Specifies the ID of the enterprise project to which the ECS belongs.",
			]

			type:     "str"
			required: false
		}
		security_groups: {
			description: [
				"Specifies the security groups of the ECS. If this parameter is left blank, the default security group is bound to the ECS by default.",
			]

			type:     "list"
			required: false
		}
		server_metadata: {
			description: [
				"Specifies the metadata of ECS to be created.",
			]
			type:     "dict"
			required: false
		}
		server_tags: {
			description: [
				"Specifies the tags of an ECS. When you create ECSs, one ECS supports up to 10 tags.",
			]

			type:     "dict"
			required: false
		}
		ssh_key_name: {
			description: [
				"Specifies the name of the SSH key used for logging in to the ECS.",
			]
			type:     "str"
			required: false
		}
		user_data: {
			description: [
				"Specifies the user data to be injected during the ECS creation process. Text, text files, and gzip files can be injected. The content to be injected must be encoded with base64. The maximum size of the content to be injected (before encoding) is 32 KB. For Linux ECSs, this parameter does not take effect when adminPass is used.",
			]

			type:     "str"
			required: false
		}
	}
	extends_documentation_fragment: "hwc"
}
