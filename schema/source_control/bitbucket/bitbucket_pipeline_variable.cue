package ansible

module: bitbucket_pipeline_variable: {
	module:            "bitbucket_pipeline_variable"
	short_description: "Manages Bitbucket pipeline variables"
	description: [
		"Manages Bitbucket pipeline variables.",
	]
	version_added: "2.8"
	author: [
		"Evgeniy Krysanov (@catcombo)",
	]
	options: {
		client_id: {
			description: [
				"The OAuth consumer key.",
				"If not set the environment variable C(BITBUCKET_CLIENT_ID) will be used.",
			]
			type: "str"
		}
		client_secret: {
			description: [
				"The OAuth consumer secret.",
				"If not set the environment variable C(BITBUCKET_CLIENT_SECRET) will be used.",
			]
			type: "str"
		}
		repository: {
			description: [
				"The repository name.",
			]
			type:     "str"
			required: true
		}
		username: {
			description: [
				"The repository owner.",
			]
			type:     "str"
			required: true
		}
		name: {
			description: [
				"The pipeline variable name.",
			]
			type:     "str"
			required: true
		}
		value: {
			description: [
				"The pipeline variable value.",
			]
			type: "str"
		}
		secured: {
			description: [
				"Whether to encrypt the variable value.",
			]
			type:    "bool"
			default: false
		}
		state: {
			description: [
				"Indicates desired state of the variable.",
			]
			type:     "str"
			required: true
			choices: ["absent", "present"]
		}
	}
	notes: [
		"Bitbucket OAuth consumer key and secret can be obtained from Bitbucket profile -> Settings -> Access Management -> OAuth.",
		"Check mode is supported.",
		"For secured values return parameter C(changed) is always C(True).",
	]
}
