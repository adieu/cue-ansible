package ansible

module: ecs_taskdefinition_info: {
	module:            "ecs_taskdefinition_info"
	short_description: "Describe a task definition in ECS"
	notes: [
		"For details of the parameters and returns see U(http://boto3.readthedocs.io/en/latest/reference/services/ecs.html#ECS.Client.describe_task_definition)",
		"This module was called C(ecs_taskdefinition_facts) before Ansible 2.9. The usage did not change.",
	]
	description: [
		"Describes a task definition in ECS.",
	]
	version_added: "2.5"
	author: [
		"Gustavo Maia (@gurumaia)",
		"Mark Chance (@Java1Guy)",
		"Darek Kaczynski (@kaczynskid)",
	]
	requirements: ["json", "botocore", "boto3"]
	options: task_definition: {
		description: [
			"The name of the task definition to get details for",
		]
		required: true
		type:     "str"
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
