package ansible

module: ecs_task: {
	module:            "ecs_task"
	short_description: "Run, start or stop a task in ecs"
	description: [
		"Creates or deletes instances of task definitions.",
	]
	version_added: "2.0"
	author:        "Mark Chance (@Java1Guy)"
	requirements: ["json", "botocore", "boto3"]
	options: {
		operation: {
			description: [
				"Which task operation to execute.",
			]
			required: true
			choices: ["run", "start", "stop"]
			type: "str"
		}
		cluster: {
			description: [
				"The name of the cluster to run the task on.",
			]
			required: false
			type:     "str"
		}
		task_definition: {
			description: [
				"The task definition to start or run.",
			]
			required: false
			type:     "str"
		}
		overrides: {
			description: [
				"A dictionary of values to pass to the new instances.",
			]
			required: false
			type:     "dict"
		}
		count: {
			description: [
				"How many new instances to start.",
			]
			required: false
			type:     "int"
		}
		task: {
			description: [
				"The task to stop.",
			]
			required: false
			type:     "str"
		}
		container_instances: {
			description: [
				"The list of container instances on which to deploy the task.",
			]
			required: false
			type:     "list"
			elements: "str"
		}
		started_by: {
			description: [
				"A value showing who or what started the task (for informational purposes).",
			]
			required: false
			type:     "str"
		}
		network_configuration: {
			description: [
				"Network configuration of the service. Only applicable for task definitions created with I(network_mode=awsvpc).",
			]
			type: "dict"
			suboptions: {
				subnets: {
					description: "A list of subnet IDs to which the task is attached."
					type:        "list"
					elements:    "str"
				}
				security_groups: {
					description: "A list of group names or group IDs for the task."
					type:        "list"
					elements:    "str"
				}
			}
			version_added: 2.6
		}
		launch_type: {
			description: [
				"The launch type on which to run your service.",
			]
			required:      false
			version_added: 2.8
			choices: ["EC2", "FARGATE"]
			type: "str"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
