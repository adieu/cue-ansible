package ansible

module: aws_codecommit: {
	module:            "aws_codecommit"
	version_added:     "2.8"
	short_description: "Manage repositories in AWS CodeCommit"
	description: [
		"Supports creation and deletion of CodeCommit repositories.",
		"See U(https://aws.amazon.com/codecommit/) for more information about CodeCommit.",
	]
	author: "Shuang Wang (@ptux)"

	requirements: [
		"botocore",
		"boto3",
		"python >= 2.6",
	]

	options: {
		name: {
			description: [
				"name of repository.",
			]
			required: true
			type:     "str"
		}
		description: {
			description: [
				"description or comment of repository.",
			]
			required: false
			aliases: [
				"comment",
			]
			type: "str"
		}
		state: {
			description: [
				"Specifies the state of repository.",
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
