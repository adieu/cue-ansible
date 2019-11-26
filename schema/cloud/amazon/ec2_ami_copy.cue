package ansible

module: ec2_ami_copy: {
	module:            "ec2_ami_copy"
	short_description: "copies AMI between AWS regions, return new image id"
	description: [
		"Copies AMI from a source region to a destination region. B(Since version 2.3 this module depends on boto3.)",
	]
	version_added: "2.0"
	options: {
		source_region: {
			description: [
				"The source region the AMI should be copied from.",
			]
			required: true
			type:     "str"
		}
		source_image_id: {
			description: [
				"The ID of the AMI in source region that should be copied.",
			]
			required: true
			type:     "str"
		}
		name: {
			description: [
				"The name of the new AMI to copy. (As of 2.3 the default is 'default', in prior versions it was 'null'.)",
			]
			default: "default"
			type:    "str"
		}
		description: {
			description: [
				"An optional human-readable string describing the contents and purpose of the new AMI.",
			]
			type: "str"
		}
		encrypted: {
			description: [
				"Whether or not the destination snapshots of the copied AMI should be encrypted.",
			]
			version_added: "2.2"
			type:          "bool"
		}
		kms_key_id: {
			description: [
				"KMS key id used to encrypt the image. If not specified, uses default EBS Customer Master Key (CMK) for your account.",
			]
			version_added: "2.2"
			type:          "str"
		}
		wait: {
			description: [
				"Wait for the copied AMI to be in state 'available' before returning.",
			]
			type:    "bool"
			default: "no"
		}
		wait_timeout: {
			description: [
				"How long before wait gives up, in seconds. Prior to 2.3 the default was 1200.",
				"From 2.3-2.5 this option was deprecated in favor of boto3 waiter defaults. This was reenabled in 2.6 to allow timeouts greater than 10 minutes.",
			]

			default: 600
			type:    "int"
		}
		tags: {
			description: [
				"A hash/dictionary of tags to add to the new copied AMI: C({\"key\":\"value\"}) and C({\"key\":\"value\",\"key\":\"value\"})",
			]
			type: "dict"
		}
		tag_equality: {
			description: [
				"Whether to use tags if the source AMI already exists in the target region. If this is set, and all tags match in an existing AMI, the AMI will not be copied again.",
			]

			default:       false
			type:          "bool"
			version_added: 2.6
		}
	}
	author: [
		"Amir Moulavi (@amir343) <amir.moulavi@gmail.com>",
		"Tim C (@defunctio) <defunct@defunct.io>",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
	requirements: ["boto3"]
}
