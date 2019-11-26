package ansible

module: ec2_vol: {
	module:            "ec2_vol"
	short_description: "Create and attach a volume, return volume id and device map"
	description: [
		"Creates an EBS volume and optionally attaches it to an instance.",
		"If both I(instance) and I(name) are given and the instance has a device at the device name, then no volume is created and no attachment is made.",
		"This module has a dependency on python-boto.",
	]
	version_added: "1.1"
	options: {
		instance: {
			description: [
				"Instance ID if you wish to attach the volume. Since 1.9 you can set to None to detach.",
			]
			type: "str"
		}
		name: {
			description: [
				"Volume Name tag if you wish to attach an existing volume (requires instance)",
			]
			version_added: "1.6"
			type:          "str"
		}
		id: {
			description: [
				"Volume id if you wish to attach an existing volume (requires instance) or remove an existing volume",
			]
			version_added: "1.6"
			type:          "str"
		}
		volume_size: {
			description: [
				"Size of volume (in GiB) to create.",
			]
			type: "int"
		}
		volume_type: {
			description: [
				"Type of EBS volume; standard (magnetic), gp2 (SSD), io1 (Provisioned IOPS), st1 (Throughput Optimized HDD), sc1 (Cold HDD). \"Standard\" is the old EBS default and continues to remain the Ansible default for backwards compatibility.",
			]

			default:       "standard"
			version_added: "1.9"
			choices: ["standard", "gp2", "io1", "st1", "sc1"]
			type: "str"
		}
		iops: {
			description: [
				"The provisioned IOPs you want to associate with this volume (integer).",
				"By default AWS will set this to 100.",
			]
			version_added: "1.3"
			type:          "int"
		}
		encrypted: {
			description: [
				"Enable encryption at rest for this volume.",
			]
			default:       false
			type:          "bool"
			version_added: "1.8"
		}
		kms_key_id: {
			description: [
				"Specify the id of the KMS key to use.",
			]
			version_added: "2.3"
			type:          "str"
		}
		device_name: {
			description: [
				"Device id to override device mapping. Assumes /dev/sdf for Linux/UNIX and /dev/xvdf for Windows.",
			]
			type: "str"
		}
		delete_on_termination: {
			description: [
				"When set to C(true), the volume will be deleted upon instance termination.",
			]
			type:          "bool"
			default:       false
			version_added: "2.1"
		}
		zone: {
			description: [
				"Zone in which to create the volume, if unset uses the zone the instance is in (if set).",
			]
			aliases: ["availability_zone", "aws_zone", "ec2_zone"]
			type: "str"
		}
		snapshot: {
			description: [
				"Snapshot ID on which to base the volume.",
			]
			version_added: "1.5"
			type:          "str"
		}
		validate_certs: {
			description: [
				"When set to \"no\", SSL certificates will not be validated for boto versions >= 2.6.0.",
			]
			type:          "bool"
			default:       true
			version_added: "1.5"
		}
		state: {
			description: [
				"Whether to ensure the volume is present or absent, or to list existing volumes (The C(list) option was added in version 1.8).",
			]
			default: "present"
			choices: ["absent", "present", "list"]
			version_added: "1.6"
			type:          "str"
		}
		tags: {
			description: [
				"tag:value pairs to add to the volume after creation.",
			]
			default: {}
			version_added: "2.3"
			type:          "dict"
		}
	}
	author: "Lester Wade (@lwade)"
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
