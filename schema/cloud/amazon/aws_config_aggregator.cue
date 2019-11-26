package ansible

module: aws_config_aggregator: {
	module:            "aws_config_aggregator"
	short_description: "Manage AWS Config aggregations across multiple accounts"
	description: [
		"Module manages AWS Config resources",
	]
	version_added: "2.6"
	requirements: ["botocore", "boto3"]
	author: [
		"Aaron Smith (@slapula)",
	]
	options: {
		name: {
			description: [
				"The name of the AWS Config resource.",
			]
			required: true
			type:     "str"
		}
		state: {
			description: [
				"Whether the Config rule should be present or absent.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
		account_sources: {
			description: [
				"Provides a list of source accounts and regions to be aggregated.",
			]
			suboptions: {
				account_ids: {
					description: [
						"A list of 12-digit account IDs of accounts being aggregated.",
					]
					type:     "list"
					elements: "str"
				}
				aws_regions: {
					description: [
						"A list of source regions being aggregated.",
					]
					type:     "list"
					elements: "str"
				}
				all_aws_regions: {
					description: [
						"If true, aggregate existing AWS Config regions and future regions.",
					]
					type: "bool"
				}
			}
			type:     "list"
			elements: "dict"
		}
		organization_source: {
			description: [
				"The region authorized to collect aggregated data.",
			]
			suboptions: {
				role_arn: {
					description: [
						"ARN of the IAM role used to retrieve AWS Organization details associated with the aggregator account.",
					]
					type: "str"
				}
				aws_regions: {
					description: [
						"The source regions being aggregated.",
					]
					type:     "list"
					elements: "str"
				}
				all_aws_regions: {
					description: [
						"If true, aggregate existing AWS Config regions and future regions.",
					]
					type: "bool"
				}
			}
			type: "dict"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
