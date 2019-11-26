package ansible

module: ec2_vpc_endpoint: {
	module:            "ec2_vpc_endpoint"
	short_description: "Create and delete AWS VPC Endpoints."
	description: [
		"Creates AWS VPC endpoints.",
		"Deletes AWS VPC endpoints.",
		"This module support check mode.",
	]
	version_added: "2.4"
	requirements: ["boto3"]
	options: {
		vpc_id: {
			description: [
				"Required when creating a VPC endpoint.",
			]
			required: false
			type:     "str"
		}
		service: {
			description: [
				"An AWS supported vpc endpoint service. Use the M(ec2_vpc_endpoint_info) module to describe the supported endpoint services.",
				"Required when creating an endpoint.",
			]
			required: false
			type:     "str"
		}
		policy: {
			description: [
				"A properly formatted json policy as string, see U(https://github.com/ansible/ansible/issues/7005#issuecomment-42894813). Cannot be used with I(policy_file).",
				"Option when creating an endpoint. If not provided AWS will utilise a default policy which provides full access to the service.",
			]

			required: false
			type:     "json"
		}
		policy_file: {
			description: [
				"The path to the properly json formatted policy file, see U(https://github.com/ansible/ansible/issues/7005#issuecomment-42894813) on how to use it properly. Cannot be used with I(policy).",
				"Option when creating an endpoint. If not provided AWS will utilise a default policy which provides full access to the service.",
			]

			required: false
			aliases: ["policy_path"]
			type: "path"
		}
		state: {
			description: [
				"present to ensure resource is created.",
				"absent to remove resource",
			]
			required: false
			default:  "present"
			choices: ["present", "absent"]
			type: "str"
		}
		wait: {
			description: [
				"When specified, will wait for either available status for state present. Unfortunately this is ignored for delete actions due to a difference in behaviour from AWS.",
			]

			required: false
			default:  false
			type:     "bool"
		}
		wait_timeout: {
			description: [
				"Used in conjunction with wait. Number of seconds to wait for status. Unfortunately this is ignored for delete actions due to a difference in behaviour from AWS.",
			]

			required: false
			default:  320
			type:     "int"
		}
		route_table_ids: {
			description: [
				"List of one or more route table ids to attach to the endpoint. A route is added to the route table with the destination of the endpoint if provided.",
			]

			required: false
			type:     "list"
			elements: "str"
		}
		vpc_endpoint_id: {
			description: [
				"One or more vpc endpoint ids to remove from the AWS account",
			]
			required: false
			type:     "str"
		}
		client_token: {
			description: [
				"Optional client token to ensure idempotency",
			]
			required: false
			type:     "str"
		}
	}
	author: "Karen Cheng (@Etherdaemon)"
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
