package ansible

module: aws_glue_job: {
	module:            "aws_glue_job"
	short_description: "Manage an AWS Glue job"
	description: [
		"Manage an AWS Glue job. See U(https://aws.amazon.com/glue/) for details.",
	]
	version_added: "2.6"
	requirements: ["boto3"]
	author: "Rob White (@wimnat)"
	options: {
		allocated_capacity: {
			description: [
				"The number of AWS Glue data processing units (DPUs) to allocate to this Job. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory.",
			]

			required: false
			type:     "int"
		}
		command_name: {
			description: [
				"The name of the job command. This must be 'glueetl'.",
			]
			required: false
			default:  "glueetl"
			type:     "str"
		}
		command_script_location: {
			description: [
				"The S3 path to a script that executes a job.",
			]
			required: true
			type:     "str"
		}
		connections: {
			description: [
				"A list of Glue connections used for this job.",
			]
			required: false
			type:     "list"
			elements: "str"
		}
		default_arguments: {
			description: [
				"A dict of default arguments for this job.  You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.",
			]

			required: false
			type:     "dict"
		}
		description: {
			description: [
				"Description of the job being defined.",
			]
			required: false
			type:     "str"
		}
		max_concurrent_runs: {
			description: [
				"The maximum number of concurrent runs allowed for the job. The default is 1. An error is returned when this threshold is reached. The maximum value you can specify is controlled by a service limit.",
			]

			required: false
			type:     "int"
		}
		max_retries: {
			description: [
				"The maximum number of times to retry this job if it fails.",
			]
			required: false
			type:     "int"
		}
		name: {
			description: [
				"The name you assign to this job definition. It must be unique in your account.",
			]
			required: true
			type:     "str"
		}
		role: {
			description: [
				"The name or ARN of the IAM role associated with this job.",
			]
			required: true
			type:     "str"
		}
		state: {
			description: [
				"Create or delete the AWS Glue job.",
			]
			required: true
			choices: ["present", "absent"]
			type: "str"
		}
		timeout: {
			description: [
				"The job timeout in minutes.",
			]
			required: false
			type:     "int"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
