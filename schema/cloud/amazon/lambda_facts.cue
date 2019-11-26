package ansible

module: lambda_facts: {
	module: "lambda_facts"
	deprecated: {
		removed_in:  "2.13"
		why:         "Deprecated in favour of C(_info) module."
		alternative: "Use M(lambda_info) instead."
	}
	short_description: "Gathers AWS Lambda function details as Ansible facts"
	description: [
		"Gathers various details related to Lambda functions, including aliases, versions and event source mappings. Use module M(lambda) to manage the lambda function itself, M(lambda_alias) to manage function aliases and M(lambda_event) to manage lambda event source mappings.",
	]

	version_added: "2.2"

	options: {
		query: {
			description: [
				"Specifies the resource type for which to gather facts.  Leave blank to retrieve all facts.",
			]
			required: true
			choices: ["aliases", "all", "config", "mappings", "policy", "versions"]
			default: "all"
			type:    "str"
		}
		function_name: {
			description: [
				"The name of the lambda function for which facts are requested.",
			]
			aliases: ["function", "name"]
			type: "str"
		}
		event_source_arn: {
			description: [
				"For query type 'mappings', this is the Amazon Resource Name (ARN) of the Amazon Kinesis or DynamoDB stream.",
			]
			type: "str"
		}
	}
	author: "Pierre Jodouin (@pjodouin)"
	requirements: [
		"boto3",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
