package ansible

module: cloudfront_origin_access_identity: {
	module: "cloudfront_origin_access_identity"

	short_description: "Create, update and delete origin access identities for a CloudFront distribution"

	description: [
		"Allows for easy creation, updating and deletion of origin access identities.",
	]

	requirements: [
		"boto3 >= 1.0.0",
		"python >= 2.6",
	]

	version_added: "2.5"

	author: "Willem van Ketwich (@wilvk)"

	extends_documentation_fragment: [
		"aws",
		"ec2",
	]

	options: {
		state: {
			description: "If the named resource should exist."
			choices: [
				"present",
				"absent",
			]
			default: "present"
			type:    "str"
		}
		origin_access_identity_id: {
			description: [
				"The origin_access_identity_id of the CloudFront distribution.",
			]
			required: false
			type:     "str"
		}
		comment: {
			description: [
				"A comment to describe the CloudFront origin access identity.",
			]
			required: false
			type:     "str"
		}
		caller_reference: {
			description: [
				"A unique identifier to reference the origin access identity by.",
			]
			required: false
			type:     "str"
		}
	}

	notes: [
		"Does not support check mode.",
	]
}
