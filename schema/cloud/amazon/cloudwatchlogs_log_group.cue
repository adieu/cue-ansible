package ansible

module: cloudwatchlogs_log_group: {
	module:            "cloudwatchlogs_log_group"
	short_description: "create or delete log_group in CloudWatchLogs"
	notes: [
		"For details of the parameters and returns see U(http://boto3.readthedocs.io/en/latest/reference/services/logs.html).",
	]
	description: [
		"Create or delete log_group in CloudWatchLogs.",
	]
	version_added: "2.5"
	author: [
		"Willian Ricardo (@willricardo) <willricardo@gmail.com>",
	]
	requirements: ["json", "botocore", "boto3"]
	options: {
		state: {
			description: [
				"Whether the rule is present or absent.",
			]
			choices: ["present", "absent"]
			default:  "present"
			required: false
			type:     "str"
		}
		log_group_name: {
			description: [
				"The name of the log group.",
			]
			required: true
			type:     "str"
		}
		kms_key_id: {
			description: [
				"The Amazon Resource Name (ARN) of the CMK to use when encrypting log data.",
			]
			required: false
			type:     "str"
		}
		tags: {
			description: [
				"The key-value pairs to use for the tags.",
			]
			required: false
			type:     "dict"
		}
		retention: {
			description: [
				"The number of days to retain the log events in the specified log group.",
				"Valid values are: [1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653]",
			]
			required: false
			type:     "int"
		}
		overwrite: {
			description: [
				"Whether an existing log group should be overwritten on create.",
			]
			default:  false
			required: false
			type:     "bool"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
