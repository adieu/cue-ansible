package ansible

module: cloudwatchlogs_log_group_info: {
	module:            "cloudwatchlogs_log_group_info"
	short_description: "Get information about log_group in CloudWatchLogs"
	description: [
		"Lists the specified log groups. You can list all your log groups or filter the results by prefix.",
		"This module was called C(cloudwatchlogs_log_group_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.5"
	author: [
		"Willian Ricardo (@willricardo) <willricardo@gmail.com>",
	]
	requirements: ["botocore", "boto3"]
	options: log_group_name: {
		description: [
			"The name or prefix of the log group to filter by.",
		]
		type: "str"
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
