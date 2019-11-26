package ansible

module: ec2_asg_lifecycle_hook: {
	module:            "ec2_asg_lifecycle_hook"
	short_description: "Create, delete or update AWS ASG Lifecycle Hooks."
	description: [
		"Will create a new hook when I(state=present) and no given Hook is found.",
		"Will update an existing hook when I(state=present) and a Hook is found, but current and provided parameters differ.",
		"Will delete the hook when I(state=absent) and a Hook is found.",
	]
	version_added: "2.5"
	author:        "Igor 'Tsigankov' Eyrich (@tsiganenok) <tsiganenok@gmail.com>"
	options: {
		state: {
			description: [
				"Create or delete Lifecycle Hook.",
				"When I(state=present) updates existing hook or creates a new hook if not found.",
			]
			required: false
			choices: ["present", "absent"]
			default: "present"
			type:    "str"
		}
		lifecycle_hook_name: {
			description: [
				"The name of the lifecycle hook.",
			]
			required: true
			type:     "str"
		}
		autoscaling_group_name: {
			description: [
				"The name of the Auto Scaling group to which you want to assign the lifecycle hook.",
			]
			required: true
			type:     "str"
		}
		transition: {
			description: [
				"The instance state to which you want to attach the lifecycle hook.",
			]
			required: true
			choices: ["autoscaling:EC2_INSTANCE_TERMINATING", "autoscaling:EC2_INSTANCE_LAUNCHING"]
			type: "str"
		}
		role_arn: {
			description: [
				"The ARN of the IAM role that allows the Auto Scaling group to publish to the specified notification target.",
			]
			required: false
			type:     "str"
		}
		notification_target_arn: {
			description: [
				"The ARN of the notification target that Auto Scaling will use to notify you when an instance is in the transition state for the lifecycle hook.",
				"This target can be either an SQS queue or an SNS topic.",
				"If you specify an empty string, this overrides the current ARN.",
			]
			required: false
			type:     "str"
		}
		notification_meta_data: {
			description: [
				"Contains additional information that you want to include any time Auto Scaling sends a message to the notification target.",
			]
			required: false
			type:     "str"
		}
		heartbeat_timeout: {
			description: [
				"The amount of time, in seconds, that can elapse before the lifecycle hook times out. When the lifecycle hook times out, Auto Scaling performs the default action. You can prevent the lifecycle hook from timing out by calling RecordLifecycleActionHeartbeat.",
				"By default amazon will use 3600 (1 hour)",
			]
			required: false
			type:     "int"
		}
		default_result: {
			description: [
				"Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses or if an unexpected failure occurs. This parameter can be either CONTINUE or ABANDON.",
			]

			required: false
			choices: ["ABANDON", "CONTINUE"]
			default: "ABANDON"
			type:    "str"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
	requirements: ["boto3>=1.4.4"]
}
