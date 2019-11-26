package ansible

module: ecs_ecr: {
	module:            "ecs_ecr"
	version_added:     "2.3"
	short_description: "Manage Elastic Container Registry repositories"
	description: [
		"Manage Elastic Container Registry repositories.",
	]
	requirements: ["boto3"]
	options: {
		name: {
			description: [
				"The name of the repository.",
			]
			required: true
			type:     "str"
		}
		registry_id: {
			description: [
				"AWS account id associated with the registry.",
				"If not specified, the default registry is assumed.",
			]
			required: false
			type:     "str"
		}
		policy: {
			description: [
				"JSON or dict that represents the new policy.",
			]
			required: false
			type:     "json"
		}
		force_set_policy: {
			description: [
				"If I(force_set_policy=false), it prevents setting a policy that would prevent you from setting another policy in the future.",
			]

			required: false
			default:  false
			type:     "bool"
		}
		delete_policy: {
			description: [
				"If yes, remove the policy from the repository.",
			]
			required: false
			default:  false
			type:     "bool"
		}
		image_tag_mutability: {
			description: [
				"Configure whether repository should be mutable (ie. an already existing tag can be overwritten) or not.",
			]
			required: false
			choices: ["mutable", "immutable"]
			default:       "mutable"
			version_added: "2.10"
			type:          "str"
		}
		state: {
			description: [
				"Create or destroy the repository.",
			]
			required: false
			choices: ["present", "absent"]
			default: "present"
			type:    "str"
		}
	}
	author: [
		"David M. Lee (@leedm777)",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
