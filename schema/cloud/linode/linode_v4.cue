package ansible

module: linode_v4: {
	module:            "linode_v4"
	short_description: "Manage instances on the Linode cloud."
	description:       "Manage instances on the Linode cloud."
	version_added:     "2.8"
	requirements: [
		"python >= 2.7",
		"linode_api4 >= 2.0.0",
	]
	author: [
		"Luke Murphy (@decentral1se)",
	]
	notes: [
		"No Linode resizing is currently implemented. This module will, in time, replace the current Linode module which uses deprecated API bindings on the Linode side.",
	]

	options: {
		region: {
			description: [
				"The region of the instance. This is a required parameter only when creating Linode instances. See U(https://developers.linode.com/api/v4#tag/Regions).",
			]

			required: false
			type:     "str"
		}
		image: {
			description: [
				"The image of the instance. This is a required parameter only when creating Linode instances. See U(https://developers.linode.com/api/v4#tag/Images).",
			]

			type:     "str"
			required: false
		}
		type: {
			description: [
				"The type of the instance. This is a required parameter only when creating Linode instances. See U(https://developers.linode.com/api/v4#tag/Linode-Types).",
			]

			type:     "str"
			required: false
		}
		label: {
			description: [
				"The instance label. This label is used as the main determiner for idempotence for the module and is therefore mandatory.",
			]

			type:     "str"
			required: true
		}
		group: {
			description: [
				"The group that the instance should be marked under. Please note, that group labelling is deprecated but still supported. The encouraged method for marking instances is to use tags.",
			]

			type:     "str"
			required: false
		}
		tags: {
			description: [
				"The tags that the instance should be marked under. See U(https://developers.linode.com/api/v4#tag/Tags).",
			]

			required: false
			type:     "list"
		}
		root_pass: {
			description: [
				"The password for the root user. If not specified, one will be generated. This generated password will be available in the task success JSON.",
			]

			required: false
			type:     "str"
		}
		authorized_keys: {
			description: [
				"A list of SSH public key parts to deploy for the root user.",
			]
			required: false
			type:     "list"
		}
		state: {
			description: [
				"The desired instance state.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			required: true
		}
		access_token: {
			description: [
				"The Linode API v4 access token. It may also be specified by exposing the C(LINODE_ACCESS_TOKEN) environment variable. See U(https://developers.linode.com/api/v4#section/Access-and-Authentication).",
			]

			required: true
		}
	}
}
