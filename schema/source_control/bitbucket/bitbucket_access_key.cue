package ansible

module: bitbucket_access_key: {
	module:            "bitbucket_access_key"
	short_description: "Manages Bitbucket repository access keys"
	description: [
		"Manages Bitbucket repository access keys (also called deploy keys).",
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
		key: {
			description: [
				"The SSH public key.",
			]
			type: "str"
		}
		label: {
			description: [
				"The key label.",
			]
			type:     "str"
			required: true
		}
		state: {
			description: [
				"Indicates desired state of the access key.",
			]
			type:     "str"
			required: true
			choices: ["absent", "present"]
		}
	}
	notes: [
		"Bitbucket OAuth consumer key and secret can be obtained from Bitbucket profile -> Settings -> Access Management -> OAuth.",
		"Bitbucket OAuth consumer should have permissions to read and administrate account repositories.",
		"Check mode is supported.",
	]
}
