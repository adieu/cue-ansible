package ansible

module: aws_s3_cors: {
	module:            "aws_s3_cors"
	short_description: "Manage CORS for S3 buckets in AWS"
	description: [
		"Manage CORS for S3 buckets in AWS",
	]
	version_added: "2.5"
	author:        "Oyvind Saltvik (@fivethreeo)"
	options: {
		name: {
			description: [
				"Name of the s3 bucket",
			]
			required: true
			type:     "str"
		}
		rules: {
			description: [
				"Cors rules to put on the s3 bucket",
			]
			type: "list"
		}
		state: {
			description: [
				"Create or remove cors on the s3 bucket",
			]
			required: true
			choices: ["present", "absent"]
			type: "str"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
