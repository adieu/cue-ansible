package ansible

module: one_image_info: {
	module:            "one_image_info"
	short_description: "Gather information on OpenNebula images"
	description: [
		"Gather information on OpenNebula images.",
		"This module was called C(one_image_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.6"
	requirements: [
		"pyone",
	]
	options: {
		api_url: description: [
			"URL of the OpenNebula RPC server.",
			"It is recommended to use HTTPS so that the username/password are not",
			"transferred over the network unencrypted.",
			"If not set then the value of the C(ONE_URL) environment variable is used.",
		]
		api_username: description: [
			"Name of the user to login into the OpenNebula RPC server. If not set",
			"then the value of the C(ONE_USERNAME) environment variable is used.",
		]
		api_password: description: [
			"Password of the user to login into OpenNebula RPC server. If not set",
			"then the value of the C(ONE_PASSWORD) environment variable is used.",
		]
		ids: {
			description: [
				"A list of images ids whose facts you want to gather.",
			]
			aliases: ["id"]
		}
		name: description: [
			"A C(name) of the image whose facts will be gathered.",
			"If the C(name) begins with '~' the C(name) will be used as regex pattern",
			"which restricts the list of images (whose facts will be returned) whose names match specified regex.",
			"Also, if the C(name) begins with '~*' case-insensitive matching will be performed.",
			"See examples for more details.",
		]
	}
	author: [
		"Milan Ilic (@ilicmilan)",
		"Jan Meerkamp (@meerkampdvv)",
	]
}
