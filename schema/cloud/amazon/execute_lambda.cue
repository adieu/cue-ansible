package ansible

module: execute_lambda: {
	module:            "execute_lambda"
	short_description: "Execute an AWS Lambda function"
	description: [
		"This module executes AWS Lambda functions, allowing synchronous and asynchronous invocation.",
	]

	version_added: "2.2"
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
	author: "Ryan Scott Brown (@ryansb) <ryansb@redhat.com>"
	requirements: [
		"python >= 2.6",
		"boto3",
	]
	notes: [
		"Async invocation will always return an empty C(output) key.",
		"Synchronous invocation may result in a function timeout, resulting in an empty C(output) key.",
	]

	options: {
		name: {
			description: [
				"The name of the function to be invoked. This can only be used for invocations within the calling account. To invoke a function in another account, use I(function_arn) to specify the full ARN.",
			]

			type: "str"
		}
		function_arn: {
			description: [
				"The name of the function to be invoked",
			]
			type: "str"
		}
		tail_log: {
			description: [
				"If I(tail_log=yes), the result of the task will include the last 4 KB of the CloudWatch log for the function execution. Log tailing only works if you use synchronous invocation I(wait=yes). This is usually used for development or testing Lambdas.",
			]

			type:    "bool"
			default: false
		}
		wait: {
			description: [
				"Whether to wait for the function results or not. If I(wait=no) the task will not return any results. To wait for the Lambda function to complete, set I(wait=yes) and the result will be available in the I(output) key.",
			]

			type:    "bool"
			default: true
		}
		dry_run: {
			description: [
				"Do not *actually* invoke the function. A C(DryRun) call will check that the caller has permissions to call the function, especially for checking cross-account permissions.",
			]

			type:    "bool"
			default: false
		}
		version_qualifier: {
			description: [
				"Which version/alias of the function to run. This defaults to the C(LATEST) revision, but can be set to any existing version or alias. See U(https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html) for details.",
			]

			type: "str"
		}
		payload: {
			description: [
				"A dictionary in any form to be provided as input to the Lambda function.",
			]
			default: {}
			type: "dict"
		}
	}
}
