package ansible

module: lambda_alias: {
	module:            "lambda_alias"
	short_description: "Creates, updates or deletes AWS Lambda function aliases."
	description: [
		"This module allows the management of AWS Lambda functions aliases via the Ansible framework.  It is idempotent and supports \"Check\" mode.    Use module M(lambda) to manage the lambda function itself and M(lambda_event) to manage event source mappings.",
	]

	version_added: "2.2"

	author: "Pierre Jodouin (@pjodouin), Ryan Scott Brown (@ryansb)"
	options: {
		function_name: {
			description: [
				"The name of the function alias.",
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
		name: {
			description: [
				"Name of the function alias.",
			]
			required: true
			aliases: ["alias_name"]
			type: "str"
		}
		description: {
			description: [
				"A short, user-defined function alias description.",
			]
			required: false
			type:     "str"
		}
		function_version: {
			description: [
				"Version associated with the Lambda function alias. A value of 0 (or omitted parameter) sets the alias to the $LATEST version.",
			]

			required: false
			aliases: ["version"]
			type: "int"
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
