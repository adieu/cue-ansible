package ansible

module: cloudtrail: {
	module:            "cloudtrail"
	short_description: "manage CloudTrail create, delete, update"
	description: [
		"Creates, deletes, or updates CloudTrail configuration. Ensures logging is also enabled.",
	]
	version_added: "2.0"
	author: [
		"Ansible Core Team",
		"Ted Timmons (@tedder)",
		"Daniel Shepherd (@shepdelacreme)",
	]
	requirements: [
		"boto3",
		"botocore",
	]
	options: {
		state: {
			description: [
				"Add or remove CloudTrail configuration.",
				"The following states have been preserved for backwards compatibility: I(state=enabled) and I(state=disabled).",
				"I(state=enabled) is equivalet to I(state=present).",
				"I(state=disabled) is equivalet to I(state=absent).",
			]
			type:     "str"
			required: true
			choices: ["present", "absent", "enabled", "disabled"]
			default: "present"
		}
		name: {
			description: [
				"Name for the CloudTrail.",
				"Names are unique per-region unless the CloudTrail is a multi-region trail, in which case it is unique per-account.",
			]
			type:     "str"
			required: true
			default:  "default"
		}
		enable_logging: {
			description: [
				"Start or stop the CloudTrail logging. If stopped the trail will be paused and will not record events or deliver log files.",
			]
			default:       true
			type:          "bool"
			version_added: "2.4"
		}
		s3_bucket_name: {
			description: [
				"An existing S3 bucket where CloudTrail will deliver log files.",
				"This bucket should exist and have the proper policy.",
				"See U(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/aggregating_logs_regions_bucket_policy.html).",
				"Required when I(state=present).",
			]
			type:          "str"
			version_added: "2.4"
		}
		s3_key_prefix: {
			description: [
				"S3 Key prefix for delivered log files. A trailing slash is not necessary and will be removed.",
			]
			type: "str"
		}
		is_multi_region_trail: {
			description: [
				"Specify whether the trail belongs only to one region or exists in all regions.",
			]
			default:       false
			type:          "bool"
			version_added: "2.4"
		}
		enable_log_file_validation: {
			description: [
				"Specifies whether log file integrity validation is enabled.",
				"CloudTrail will create a hash for every log file delivered and produce a signed digest file that can be used to ensure log files have not been tampered.",
			]
			version_added: "2.4"
			type:          "bool"
			aliases: ["log_file_validation_enabled"]
		}
		include_global_events: {
			description: [
				"Record API calls from global services such as IAM and STS.",
			]
			default: true
			type:    "bool"
			aliases: ["include_global_service_events"]
		}
		sns_topic_name: {
			description: [
				"SNS Topic name to send notifications to when a log file is delivered.",
			]
			version_added: "2.4"
			type:          "str"
		}
		cloudwatch_logs_role_arn: {
			description: [
				"Specifies a full ARN for an IAM role that assigns the proper permissions for CloudTrail to create and write to the log group.",
				"See U(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/send-cloudtrail-events-to-cloudwatch-logs.html).",
				"Required when C(cloudwatch_logs_log_group_arn).",
			]
			version_added: "2.4"
			type:          "str"
		}
		cloudwatch_logs_log_group_arn: {
			description: [
				"A full ARN specifying a valid CloudWatch log group to which CloudTrail logs will be delivered. The log group should already exist.",
				"See U(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/send-cloudtrail-events-to-cloudwatch-logs.html).",
				"Required when C(cloudwatch_logs_role_arn).",
			]
			type:          "str"
			version_added: "2.4"
		}
		kms_key_id: {
			description: [
				"Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. This also has the effect of enabling log file encryption.",
				"The value can be an alias name prefixed by \"alias/\", a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.",
				"See U(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/encrypting-cloudtrail-log-files-with-aws-kms.html).",
			]
			type:          "str"
			version_added: "2.4"
		}
		tags: {
			description: [
				"A hash/dictionary of tags to be applied to the CloudTrail resource.",
				"Remove completely or specify an empty dictionary to remove all tags.",
			]
			default: {}
			version_added: "2.4"
			type:          "dict"
		}
	}

	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
