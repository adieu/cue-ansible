package ansible

module: ecs_cluster: {
	module:            "ecs_cluster"
	short_description: "Create or terminate ECS clusters."
	notes: [
		"When deleting a cluster, the information returned is the state of the cluster prior to deletion.",
		"It will also wait for a cluster to have instances registered to it.",
	]
	description: [
		"Creates or terminates ecs clusters.",
	]
	version_added: "2.0"
	author:        "Mark Chance (@Java1Guy)"
	requirements: ["boto3"]
	options: {
		state: {
			description: [
				"The desired state of the cluster.",
			]
			required: true
			choices: ["present", "absent", "has_instances"]
			type: "str"
		}
		name: {
			description: [
				"The cluster name.",
			]
			required: true
			type:     "str"
		}
		delay: {
			description: [
				"Number of seconds to wait.",
			]
			required: false
			type:     "int"
			default:  10
		}
		repeat: {
			description: [
				"The number of times to wait for the cluster to have an instance.",
			]
			required: false
			type:     "int"
			default:  10
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
