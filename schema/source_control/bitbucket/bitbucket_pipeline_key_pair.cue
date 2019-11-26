package ansible

module: bitbucket_pipeline_key_pair: {
	module:            "bitbucket_pipeline_key_pair"
	short_description: "Manages Bitbucket pipeline SSH key pair"
	description: [
		"Manages Bitbucket pipeline SSH key pair.",
	]
	version_added: "2.8"
	author: [
		"Evgeniy Krysanov (@catcombo)",
	]
	options: {
		client_id: {
			description: [
				"OAuth consumer key.",
				"If not set the environment variable C(BITBUCKET_CLIENT_ID) will be used.",
			]
			type: "str"
		}
		client_secret: {
			description: [
				"OAuth consumer secret.",
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
		public_key: {
			description: [
				"The public key.",
			]
			type: "str"
		}
		private_key: {
			description: [
				"The private key.",
			]
			type: "str"
		}
		state: {
			description: [
				"Indicates desired state of the key pair.",
			]
			type:     "str"
			required: true
			choices: ["absent", "present"]
		}
	}
	notes: [
		"Bitbucket OAuth consumer key and secret can be obtained from Bitbucket profile -> Settings -> Access Management -> OAuth.",
		"Check mode is supported.",
	]
}
