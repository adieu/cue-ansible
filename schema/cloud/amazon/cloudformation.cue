package ansible

module: cloudformation: {
	module:            "cloudformation"
	short_description: "Create or delete an AWS CloudFormation stack"
	description: [
		"Launches or updates an AWS CloudFormation stack and waits for it complete.",
	]
	notes: [
		"CloudFormation features change often, and this module tries to keep up. That means your botocore version should be fresh. The version listed in the requirements is the oldest version that works with the module as a whole. Some features may require recent versions, and we do not pinpoint a minimum version for each feature. Instead of relying on the minimum version, keep botocore up to date. AWS is always releasing features and fixing bugs.",
	]

	version_added: "1.1"
	options: {
		stack_name: {
			description: [
				"Name of the CloudFormation stack.",
			]
			required: true
			type:     "str"
		}
		disable_rollback: {
			description: [
				"If a stacks fails to form, rollback will remove the stack.",
			]
			default: false
			type:    "bool"
		}
		on_create_failure: {
			description: [
				"Action to take upon failure of stack creation. Incompatible with the I(disable_rollback) option.",
			]
			choices: [
				"DO_NOTHING",
				"ROLLBACK",
				"DELETE",
			]
			version_added: "2.8"
			type:          "str"
		}
		create_timeout: {
			description: [
				"The amount of time (in minutes) that can pass before the stack status becomes CREATE_FAILED",
			]
			version_added: "2.6"
			type:          "int"
		}
		template_parameters: {
			description: [
				"A list of hashes of all the template variables for the stack. The value can be a string or a dict.",
				"Dict can be used to set additional template parameter attributes like UsePreviousValue (see example).",
			]
			default: {}
			type: "dict"
		}
		state: {
			description: [
				"If I(state=present), stack will be created.",
				"If I(state=present) and if stack exists and template has changed, it will be updated.",
				"If I(state=absent), stack will be removed.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
		template: {
			description: [
				"The local path of the CloudFormation template.",
				"This must be the full path to the file, relative to the working directory. If using roles this may look like C(roles/cloudformation/files/cloudformation-example.json).",
				"If I(state=present) and the stack does not exist yet, either I(template), I(template_body) or I(template_url) must be specified (but only one of them).",
				"If I(state=present), the stack does exist, and neither I(template), I(template_body) nor I(template_url) are specified, the previous template will be reused.",
			]

			type: "path"
		}
		notification_arns: {
			description: [
				"A comma separated list of Simple Notification Service (SNS) topic ARNs to publish stack related events.",
			]
			version_added: "2.0"
			type:          "str"
		}
		stack_policy: {
			description: [
				"The path of the CloudFormation stack policy. A policy cannot be removed once placed, but it can be modified. for instance, allow all updates U(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html#d0e9051)",
			]

			version_added: "1.9"
			type:          "str"
		}
		tags: {
			description: [
				"Dictionary of tags to associate with stack and its resources during stack creation.",
				"Can be updated later, updating tags removes previous entries.",
			]
			version_added: "1.4"
			type:          "dict"
		}
		template_url: {
			description: [
				"Location of file containing the template body. The URL must point to a template (max size 307,200 bytes) located in an S3 bucket in the same region as the stack.",
				"If I(state=present) and the stack does not exist yet, either I(template), I(template_body) or I(template_url) must be specified (but only one of them).",
				"If I(state=present), the stack does exist, and neither I(template), I(template_body) nor I(template_url) are specified, the previous template will be reused.",
			]

			version_added: "2.0"
			type:          "str"
		}
		create_changeset: {
			description: [
				"If stack already exists create a changeset instead of directly applying changes.  See the AWS Change Sets docs U(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html).",
				"WARNING: if the stack does not exist, it will be created without changeset. If I(state=absent), the stack will be deleted immediately with no changeset.",
			]

			type:          "bool"
			default:       false
			version_added: "2.4"
		}
		changeset_name: {
			description: [
				"Name given to the changeset when creating a changeset.",
				"Only used when I(create_changeset=true).",
				"By default a name prefixed with Ansible-STACKNAME is generated based on input parameters. See the AWS Change Sets docs for more information U(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html)",
			]

			version_added: "2.4"
			type:          "str"
		}
		template_format: {
			description: [
				"This parameter is ignored since Ansible 2.3 and will be removed in Ansible 2.14.",
				"Templates are now passed raw to CloudFormation regardless of format.",
			]
			version_added: "2.0"
			type:          "str"
		}
		role_arn: {
			description: [
				"The role that AWS CloudFormation assumes to create the stack. See the AWS CloudFormation Service Role docs U(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-servicerole.html)",
			]

			version_added: "2.3"
			type:          "str"
		}
		termination_protection: {
			description: [
				"Enable or disable termination protection on the stack. Only works with botocore >= 1.7.18.",
			]
			type:          "bool"
			version_added: "2.5"
		}
		template_body: {
			description: [
				"Template body. Use this to pass in the actual body of the CloudFormation template.",
				"If I(state=present) and the stack does not exist yet, either I(template), I(template_body) or I(template_url) must be specified (but only one of them).",
				"If I(state=present), the stack does exist, and neither I(template), I(template_body) nor I(template_url) are specified, the previous template will be reused.",
			]

			version_added: "2.5"
			type:          "str"
		}
		events_limit: {
			description: [
				"Maximum number of CloudFormation events to fetch from a stack when creating or updating it.",
			]
			default:       200
			version_added: "2.7"
			type:          "int"
		}
		backoff_delay: {
			description: [
				"Number of seconds to wait for the next retry.",
			]
			default:       3
			version_added: "2.8"
			type:          "int"
			required:      false
		}
		backoff_max_delay: {
			description: [
				"Maximum amount of time to wait between retries.",
			]
			default:       30
			version_added: "2.8"
			type:          "int"
			required:      false
		}
		backoff_retries: {
			description: [
				"Number of times to retry operation.",
				"AWS API throttling mechanism fails CloudFormation module so we have to retry a couple of times.",
			]
			default:       10
			version_added: "2.8"
			type:          "int"
			required:      false
		}
		capabilities: {
			description: [
				"Specify capabilities that stack template contains.",
				"Valid values are C(CAPABILITY_IAM), C(CAPABILITY_NAMED_IAM) and C(CAPABILITY_AUTO_EXPAND).",
			]
			type:          "list"
			elements:      "str"
			version_added: "2.8"
			default: ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM"]
		}
	}

	author: "James S. Martin (@jsmartin)"
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
	requirements: ["boto3", "botocore>=1.5.45"]
}
