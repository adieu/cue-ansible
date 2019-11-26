package ansible

module: dynamodb_ttl: {
	module:            "dynamodb_ttl"
	short_description: "Set TTL for a given DynamoDB table"
	description: [
		"Uses boto3 to set TTL.",
		"Requires botocore version 1.5.24 or higher.",
	]
	version_added: "2.4"
	options: {
		state: {
			description: [
				"State to set DynamoDB table to.",
			]
			choices: ["enable", "disable"]
			required: false
			type:     "str"
		}
		table_name: {
			description: [
				"Name of the DynamoDB table to work on.",
			]
			required: true
			type:     "str"
		}
		attribute_name: {
			description: [
				"The name of the Time To Live attribute used to store the expiration time for items in the table.",
				"This appears to be required by the API even when disabling TTL.",
			]
			required: true
			type:     "str"
		}
	}

	author: "Ted Timmons (@tedder)"
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
	requirements: ["botocore>=1.5.24", "boto3"]
}
