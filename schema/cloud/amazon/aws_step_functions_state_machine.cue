package ansible

module: aws_step_functions_state_machine: {
	module: "aws_step_functions_state_machine"

	short_description: "Manage AWS Step Functions state machines"

	version_added: "2.10"

	description: [
		"Create, update and delete state machines in AWS Step Functions.",
		"Calling the module in C(state=present) for an existing AWS Step Functions state machine will attempt to update the state machine definition, IAM Role, or tags with the provided data.",
	]

	options: {
		name: {
			description: [
				"Name of the state machine",
			]
			required: true
			type:     "str"
		}
		definition: {
			description: [
				"The Amazon States Language definition of the state machine. See U(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html) for more information on the Amazon States Language.",
				"This parameter is required when C(state=present).",
			]
			type: "json"
		}
		role_arn: {
			description: [
				"The ARN of the IAM Role that will be used by the state machine for its executions.",
				"This parameter is required when C(state=present).",
			]
			type: "str"
		}
		state: {
			description: [
				"Desired state for the state machine",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
		tags: {
			description: [
				"A hash/dictionary of tags to add to the new state machine or to add/remove from an existing one.",
			]
			type: "dict"
		}
		purge_tags: {
			description: [
				"If yes, existing tags will be purged from the resource to match exactly what is defined by I(tags) parameter. If the I(tags) parameter is not set then tags will not be modified.",
			]

			default: true
			type:    "bool"
		}
	}

	extends_documentation_fragment: [
		"aws",
		"ec2",
	]

	author: ["Tom De Keyser (@tdekeyser)"]
}
