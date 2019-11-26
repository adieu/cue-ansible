package ansible

module: s3_bucket_notification: {
	module:            "s3_bucket_notification"
	short_description: "Creates, updates or deletes S3 Bucket notification for lambda"
	description: [
		"This module allows the management of AWS Lambda function bucket event mappings via the Ansible framework. Use module M(lambda) to manage the lambda function itself, M(lambda_alias) to manage function aliases and M(lambda_policy) to modify lambda permissions.",
	]

	notes: [
		"This module heavily depends on M(lambda_policy) as you need to allow C(lambda:InvokeFunction) permission for your lambda function.",
	]

	version_added: "2.9"

	author: [
		"XLAB d.o.o. (@xlab-si)",
		"Aljaz Kosir (@aljazkosir)",
		"Miha Plesko (@miha-plesko)",
	]
	options: {
		event_name: {
			description: [
				"unique name for event notification on bucket",
			]
			required: true
			type:     "str"
		}
		lambda_function_arn: {
			description: [
				"The ARN of the lambda function.",
			]
			aliases: ["function_arn"]
			type: "str"
		}
		bucket_name: {
			description: [
				"S3 bucket name",
			]
			required: true
			type:     "str"
		}
		state: {
			description: [
				"Describes the desired state.",
			]
			required: true
			default:  "present"
			choices: ["present", "absent"]
			type: "str"
		}
		lambda_alias: {
			description: [
				"Name of the Lambda function alias. Mutually exclusive with C(lambda_version).",
			]
			required: false
			type:     "str"
		}
		lambda_version: {
			description: [
				"Version of the Lambda function. Mutually exclusive with C(lambda_alias).",
			]
			required: false
			type:     "int"
		}
		events: {
			description: [
				"Events that you want to be triggering notifications. You can select multiple events to send to the same destination, you can set up different events to send to different destinations, and you can set up a prefix or suffix for an event. However, for each bucket, individual events cannot have multiple configurations with overlapping prefixes or suffixes that could match the same object key.",
			]

			required: true
			choices: [
				"s3:ObjectCreated:*",
				"s3:ObjectCreated:Put",
				"s3:ObjectCreated:Post",
				"s3:ObjectCreated:Copy",
				"s3:ObjectCreated:CompleteMultipartUpload",
				"s3:ObjectRemoved:*",
				"s3:ObjectRemoved:Delete",
				"s3:ObjectRemoved:DeleteMarkerCreated",
				"s3:ObjectRestore:Post",
				"s3:ObjectRestore:Completed",
				"s3:ReducedRedundancyLostObject",
			]
			type: "list"
		}
		prefix: {
			description: [
				"Optional prefix to limit the notifications to objects with keys that start with matching characters.",
			]

			required: false
			type:     "str"
		}
		suffix: {
			description: [
				"Optional suffix to limit the notifications to objects with keys that end with matching characters.",
			]

			required: false
			type:     "str"
		}
	}
	requirements: [
		"boto3",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
