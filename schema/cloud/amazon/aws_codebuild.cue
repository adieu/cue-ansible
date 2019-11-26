package ansible

module: aws_codebuild: {
	module:            "aws_codebuild"
	short_description: "Create or delete an AWS CodeBuild project"
	notes: [
		"for details of the parameters and returns see U(http://boto3.readthedocs.io/en/latest/reference/services/codebuild.html)",
	]
	description: [
		"Create or delete a CodeBuild projects on AWS, used for building code artifacts from source code.",
	]
	version_added: "2.9"
	author: [
		"Stefan Horning (@stefanhorning) <horning@mediapeers.com>",
	]
	requirements: ["botocore", "boto3"]
	options: {
		name: {
			description: [
				"Name of the CodeBuild project",
			]
			required: true
			type:     "str"
		}
		description: {
			description: [
				"Descriptive text of the CodeBuild project",
			]
			required: false
			type:     "str"
		}
		source: {
			description: [
				"Configure service and location for the build input source.",
			]
			required: true
			suboptions: {
				type: {
					description: [
						"The type of the source. Allows one of these: CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE",
					]
					required: true
					type:     "str"
				}
				location: {
					description: [
						"Information about the location of the source code to be built. For type CODEPIPELINE location should not be specified.",
					]
					required: false
					type:     "str"
				}
				git_clone_depth: {
					description: [
						"When using git you can specify the clone depth as an integer here.",
					]
					required: false
					type:     "int"
				}
				buildspec: {
					description: [
						"The build spec declaration to use for the builds in this build project. Leave empty if part of the code project.",
					]
					required: false
					type:     "str"
				}
				insecure_ssl: {
					description: [
						"Enable this flag to ignore SSL warnings while connecting to the project source code.",
					]
					required: false
					type:     "bool"
				}
			}
			type: "dict"
		}
		artifacts: {
			description: [
				"Information about the build output artifacts for the build project.",
			]
			required: true
			suboptions: {
				type: {
					description: [
						"The type of build output for artifacts. Can be one of the following: CODEPIPELINE, NO_ARTIFACTS, S3",
					]
					required: true
				}
				location: {
					description: [
						"Information about the build output artifact location. When choosing type S3, set the bucket name here.",
					]
					required: false
				}
				path: {
					description: [
						"Along with namespace_type and name, the pattern that AWS CodeBuild will use to name and store the output artifacts.",
						"Used for path in S3 bucket when type is S3",
					]
					required: false
				}
				namespace_type: {
					description: [
						"Along with path and name, the pattern that AWS CodeBuild will use to determine the name and location to store the output artifacts",
						"Accepts BUILD_ID and NONE",
						"See docs here: U(http://boto3.readthedocs.io/en/latest/reference/services/codebuild.html#CodeBuild.Client.create_project)",
					]
					required: false
				}
				name: {
					description: [
						"Along with path and namespace_type, the pattern that AWS CodeBuild will use to name and store the output artifact",
					]
					required: false
				}
				packaging: {
					description: [
						"The type of build output artifact to create on S3, can be NONE for creating a folder or ZIP for a ZIP file",
					]
					required: false
				}
			}
			type: "dict"
		}
		cache: {
			description: [
				"Caching params to speed up following builds.",
			]
			required: false
			suboptions: {
				type: {
					description: [
						"Cache type. Can be NO_CACHE or S3.",
					]
					required: true
				}
				location: {
					description: [
						"Caching location on S3.",
					]
					required: true
				}
			}
			type: "dict"
		}
		environment: {
			description: [
				"Information about the build environment for the build project.",
			]
			required: true
			suboptions: {
				type: {
					description: [
						"The type of build environment to use for the project. Usually LINUX_CONTAINER",
					]
					required: true
				}
				image: {
					description: [
						"The ID of the Docker image to use for this build project.",
					]
					required: true
				}
				compute_type: {
					description: [
						"Information about the compute resources the build project will use.",
						"Available values include: BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE",
					]
					required: true
				}
				environment_variables: {
					description: [
						"A set of environment variables to make available to builds for the build project. List of dictionaries with name and value fields.",
						"Example: { name: 'MY_ENV_VARIABLE', value: 'test' }",
					]
					required: false
				}
				privileged_mode: {
					description: [
						"Enables running the Docker daemon inside a Docker container. Set to true only if the build project is be used to build Docker images.",
					]
					required: false
				}
			}
			type: "dict"
		}
		service_role: {
			description: [
				"The ARN of the AWS IAM role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.",
			]
			required: false
			type:     "str"
		}
		timeout_in_minutes: {
			description: [
				"How long CodeBuild should wait until timing out any build that has not been marked as completed.",
			]
			default:  60
			required: false
			type:     "int"
		}
		encryption_key: {
			description: [
				"The AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build output artifacts.",
			]
			required: false
			type:     "str"
		}
		tags: {
			description: [
				"A set of tags for the build project.",
			]
			required: false
			type:     "list"
			elements: "dict"
			suboptions: {
				key: {
					description: "The name of the Tag."
					type:        "str"
				}
				value: {
					description: "The value of the Tag."
					type:        "str"
				}
			}
		}
		vpc_config: {
			description: [
				"The VPC config enables AWS CodeBuild to access resources in an Amazon VPC.",
			]
			required: false
			type:     "dict"
		}
		state: {
			description: [
				"Create or remove code build project.",
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
