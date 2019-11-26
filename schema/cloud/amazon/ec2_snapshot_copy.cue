package ansible

module: ec2_snapshot_copy: {
	module:            "ec2_snapshot_copy"
	short_description: "Copies an EC2 snapshot and returns the new Snapshot ID."
	description: [
		"Copies an EC2 Snapshot from a source region to a destination region.",
	]
	version_added: "2.4"
	options: {
		source_region: {
			description: [
				"The source region the Snapshot should be copied from.",
			]
			required: true
			type:     "str"
		}
		source_snapshot_id: {
			description: [
				"The ID of the Snapshot in source region that should be copied.",
			]
			required: true
			type:     "str"
		}
		description: {
			description: [
				"An optional human-readable string describing purpose of the new Snapshot.",
			]
			type: "str"
		}
		encrypted: {
			description: [
				"Whether or not the destination Snapshot should be encrypted.",
			]
			type:    "bool"
			default: "no"
		}
		kms_key_id: {
			description: [
				"KMS key id used to encrypt snapshot. If not specified, AWS defaults to C(alias/aws/ebs).",
			]
			type: "str"
		}
		wait: {
			description: [
				"Wait for the copied Snapshot to be in 'Available' state before returning.",
			]
			type:    "bool"
			default: "no"
		}
		wait_timeout: {
			version_added: "2.6"
			description: [
				"How long before wait gives up, in seconds.",
			]
			default: 600
			type:    "int"
		}
		tags: {
			description: [
				"A hash/dictionary of tags to add to the new Snapshot; '{\"key\":\"value\"}' and '{\"key\":\"value\",\"key\":\"value\"}'",
			]
			type: "dict"
		}
	}
	author: "Deepak Kothandan (@Deepakkothandan) <deepak.kdy@gmail.com>"
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
	requirements: ["boto3"]
}
