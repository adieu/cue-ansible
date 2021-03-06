package ansible

module: aws_codepipeline: {
	module:            "aws_codepipeline"
	short_description: "Create or delete AWS CodePipelines"
	notes: [
		"for details of the parameters and returns see U(http://boto3.readthedocs.io/en/latest/reference/services/codepipeline.html)",
	]
	description: [
		"Create or delete a CodePipeline on AWS.",
	]
	version_added: "2.9"
	author: [
		"Stefan Horning (@stefanhorning) <horning@mediapeers.com>",
	]
	requirements: ["botocore", "boto3"]
	options: {
		name: {
			description: [
				"Name of the pipeline",
			]
			required: true
			type:     "str"
		}
		role_arn: {
			description: [
				"ARN of the IAM role to use when executing the pipeline",
			]
			required: true
			type:     "str"
		}
		artifact_store: {
			description: [
				"Location information where artifacts are stored (on S3). Dictionary with fields type and location.",
			]
			required: true
			suboptions: {
				type: {
					description: [
						"Type of the artifacts storage (only 'S3' is currently supported).",
					]
					type: "str"
				}
				location: {
					description: [
						"Bucket name for artifacts.",
					]
					type: "str"
				}
			}
			type: "dict"
		}
		stages: {
			description: [
				"List of stages to perform in the CodePipeline. List of dictionaries containing name and actions for each stage.",
			]
			required: true
			suboptions: {
				name: {
					description: [
						"Name of the stage (step) in the codepipeline",
					]
					type: "str"
				}
				actions: {
					description: [
						"List of action configurations for that stage.",
						"See the boto3 documentation for full documentation of suboptions:",
						"U(https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/codepipeline.html#CodePipeline.Client.create_pipeline)",
					]
					type:     "list"
					elements: "dict"
				}
			}
			elements: "dict"
			type:     "list"
		}
		version: {
			description: [
				"Version number of the pipeline. This number is automatically incremented when a pipeline is updated.",
			]
			required: false
			type:     "int"
		}
		state: {
			description: [
				"Create or remove code pipeline",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
