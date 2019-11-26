package ansible

module: one_image: {
	module:            "one_image"
	short_description: "Manages OpenNebula images"
	description: [
		"Manages OpenNebula images",
	]
	version_added: "2.6"
	requirements: [
		"python-oca",
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
		id: description: [
			"A C(id) of the image you would like to manage.",
		]
		name: description: [
			"A C(name) of the image you would like to manage.",
		]
		state: {
			description: [
				"C(present) - state that is used to manage the image",
				"C(absent) - delete the image",
				"C(cloned) - clone the image",
				"C(renamed) - rename the image to the C(new_name)",
			]
			choices: ["present", "absent", "cloned", "renamed"]
			default: "present"
		}
		enabled: {
			description: [
				"Whether the image should be enabled or disabled.",
			]
			type: "bool"
		}
		new_name: description: [
			"A name that will be assigned to the existing or new image.",
			"In the case of cloning, by default C(new_name) will take the name of the origin image with the prefix 'Copy of'.",
		]
	}
	author: ["Milan Ilic (@ilicmilan)"]
}
