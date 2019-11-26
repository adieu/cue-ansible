package ansible

module: ecs_taskdefinition: {
	module:            "ecs_taskdefinition"
	short_description: "register a task definition in ecs"
	description: [
		"Registers or deregisters task definitions in the Amazon Web Services (AWS) EC2 Container Service (ECS).",
	]
	version_added: "2.0"
	author:        "Mark Chance (@Java1Guy)"
	requirements: ["json", "botocore", "boto3"]
	options: {
		state: {
			description: [
				"State whether the task definition should exist or be deleted.",
			]
			required: true
			choices: ["present", "absent"]
			type: "str"
		}
		arn: {
			description: [
				"The ARN of the task description to delete.",
			]
			required: false
			type:     "str"
		}
		family: {
			description: [
				"A Name that would be given to the task definition.",
			]
			required: false
			type:     "str"
		}
		revision: {
			description: [
				"A revision number for the task definition.",
			]
			required: false
			type:     "int"
		}
		force_create: {
			description: [
				"Always create new task definition.",
			]
			required:      false
			version_added: 2.5
			type:          "bool"
		}
		containers: {
			description: [
				"A list of containers definitions.",
			]
			required: false
			type:     "list"
			elements: "str"
		}
		network_mode: {
			description: [
				"The Docker networking mode to use for the containers in the task.",
				"C(awsvpc) mode was added in Ansible 2.5",
			]
			required: false
			default:  "bridge"
			choices: ["bridge", "host", "none", "awsvpc"]
			version_added: 2.3
			type:          "str"
		}
		task_role_arn: {
			description: [
				"The Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role.",
			]

			required:      false
			version_added: 2.3
			type:          "str"
		}
		execution_role_arn: {
			description: [
				"The Amazon Resource Name (ARN) of the task execution role that the Amazon ECS container agent and the Docker daemon can assume.",
			]
			required:      false
			version_added: 2.7
			type:          "str"
		}
		volumes: {
			description: [
				"A list of names of volumes to be attached.",
			]
			required: false
			type:     "list"
			elements: "dict"
			suboptions: name: {
				type:        "str"
				description: "The name of the volume."
				required:    true
			}
		}
		launch_type: {
			description: [
				"The launch type on which to run your task.",
			]
			required:      false
			version_added: 2.7
			type:          "str"
			choices: ["EC2", "FARGATE"]
		}
		cpu: {
			description: [
				"The number of cpu units used by the task. If using the EC2 launch type, this field is optional and any value can be used.",
				"If using the Fargate launch type, this field is required and you must use one of C(256), C(512), C(1024), C(2048), C(4096).",
			]
			required:      false
			version_added: 2.7
			type:          "str"
		}
		memory: {
			description: [
				"The amount (in MiB) of memory used by the task. If using the EC2 launch type, this field is optional and any value can be used.",
				"If using the Fargate launch type, this field is required and is limited by the cpu.",
			]
			required:      false
			version_added: 2.7
			type:          "str"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
