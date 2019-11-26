package ansible

module: s3_website: {
	module:            "s3_website"
	short_description: "Configure an s3 bucket as a website"
	description: [
		"Configure an s3 bucket as a website",
	]
	version_added: "2.2"
	requirements: ["boto3"]
	author: "Rob White (@wimnat)"
	options: {
		name: {
			description: [
				"Name of the s3 bucket",
			]
			required: true
			type:     "str"
		}
		error_key: {
			description: [
				"The object key name to use when a 4XX class error occurs. To remove an error key, set to None.",
			]
			type: "str"
		}
		redirect_all_requests: {
			description: [
				"Describes the redirect behavior for every request to this s3 bucket website endpoint",
			]
			type: "str"
		}
		state: {
			description: [
				"Add or remove s3 website configuration",
			]
			choices: ["present", "absent"]
			required: true
			type:     "str"
		}
		suffix: {
			description: [
				"""
		Suffix that is appended to a request that is for a directory on the website endpoint (e.g. if the suffix is index.html and you make a request to samplebucket/images/ the data that is returned will be for the object with the key name images/index.html). The suffix must not include a slash character.

		""",
			]

			default: "index.html"
			type:    "str"
		}
	}

	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
