package ansible

module: aws_eks_cluster: {
	module:            "aws_eks_cluster"
	short_description: "Manage Elastic Kubernetes Service Clusters"
	description: [
		"Manage Elastic Kubernetes Service Clusters",
	]
	version_added: "2.7"

	author: "Will Thames (@willthames)"

	options: {
		name: {
			description: "Name of EKS cluster"
			required:    true
			type:        "str"
		}
		version: {
			description: "Kubernetes version - defaults to latest"
			type:        "str"
		}
		role_arn: {
			description: "ARN of IAM role used by the EKS cluster"
			type:        "str"
		}
		subnets: {
			description: "list of subnet IDs for the Kubernetes cluster"
			type:        "list"
			elements:    "str"
		}
		security_groups: {
			description: "list of security group names or IDs"
			type:        "list"
			elements:    "str"
		}
		state: {
			description: "desired state of the EKS cluster"
			choices: [
				"absent",
				"present",
			]
			default: "present"
			type:    "str"
		}
		wait: {
			description: "Specifies whether the module waits until the cluster is active or deleted before moving on. It takes \"usually less than 10 minutes\" per AWS documentation."

			type:    "bool"
			default: false
		}
		wait_timeout: {
			description: "The duration in seconds to wait for the cluster to become active. Defaults to 1200 seconds (20 minutes)."

			default: 1200
			type:    "int"
		}
	}

	requirements: ["botocore", "boto3"]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
