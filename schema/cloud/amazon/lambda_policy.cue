package ansible

module: lambda_policy: {
	module:            "lambda_policy"
	short_description: "Creates, updates or deletes AWS Lambda policy statements."
	description: [
		"This module allows the management of AWS Lambda policy statements.",
		"It is idempotent and supports \"Check\" mode.",
		"Use module M(lambda) to manage the lambda function itself, M(lambda_alias) to manage function aliases, M(lambda_event) to manage event source mappings such as Kinesis streams, M(execute_lambda) to execute a lambda function and M(lambda_info) to gather information relating to one or more lambda functions.",
	]

	version_added: "2.4"

	author: [
		"Pierre Jodouin (@pjodouin)",
		"Michael De La Rue (@mikedlr)",
	]
	options: {
		function_name: {
			description: [
				"Name of the Lambda function whose resource policy you are updating by adding a new permission.",
				"You can specify a function name (for example, Thumbnail ) or you can specify Amazon Resource Name (ARN) of the",
				"function (for example, C(arn:aws:lambda:us-west-2:account-id:function:ThumbNail) ). AWS Lambda also allows you to",
				"specify partial ARN (for example, C(account-id:Thumbnail) ). Note that the length constraint applies only to the",
				"ARN. If you specify only the function name, it is limited to 64 character in length.",
			]
			required: true
			aliases: ["lambda_function_arn", "function_arn"]
			type: "str"
		}

		state: {
			description: [
				"Describes the desired state.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}

		alias: {
			description: [
				"Name of the function alias. Mutually exclusive with I(version).",
			]
			type: "str"
		}

		version: {
			description: [
				"Version of the Lambda function. Mutually exclusive with I(alias).",
			]
			type: "int"
		}

		statement_id: {
			description: [
				"A unique statement identifier.",
			]
			required: true
			aliases: ["sid"]
			type: "str"
		}

		action: {
			description: [
				"The AWS Lambda action you want to allow in this statement. Each Lambda action is a string starting with lambda: followed by the API name (see Operations ). For example, C(lambda:CreateFunction) . You can use wildcard (C(lambda:*)) to grant permission for all AWS Lambda actions.",
			]

			required: true
			type:     "str"
		}

		principal: {
			description: [
				"The principal who is getting this permission. It can be Amazon S3 service Principal (s3.amazonaws.com ) if you want Amazon S3 to invoke the function, an AWS account ID if you are granting cross-account permission, or any valid AWS service principal such as sns.amazonaws.com . For example, you might want to allow a custom application in another AWS account to push events to AWS Lambda by invoking your function.",
			]

			required: true
			type:     "str"
		}

		source_arn: {
			description: [
				"This is optional; however, when granting Amazon S3 permission to invoke your function, you should specify this field with the bucket Amazon Resource Name (ARN) as its value. This ensures that only events generated from the specified bucket can invoke the function.",
			]

			type: "str"
		}

		source_account: {
			description: [
				"The AWS account ID (without a hyphen) of the source owner. For example, if I(source_arn) identifies a bucket, then this is the bucket owner's account ID. You can use this additional condition to ensure the bucket you specify is owned by a specific account (it is possible the bucket owner deleted the bucket and some other AWS account created the bucket). You can also use this condition to specify all sources (that is, you don't specify the I(source_arn) ) owned by a specific account.",
			]

			type: "str"
		}

		event_source_token: {
			description: [
				"Token string representing source ARN or account. Mutually exclusive with I(source_arn) or I(source_account).",
			]
			type: "str"
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
