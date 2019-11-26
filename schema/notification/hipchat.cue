package ansible

module: hipchat: {
	module:            "hipchat"
	version_added:     "1.2"
	short_description: "Send a message to Hipchat."
	description: [
		"Send a message to a Hipchat room, with options to control the formatting.",
	]
	options: {
		token: {
			description: [
				"API token.",
			]
			required: true
		}
		room: {
			description: [
				"ID or name of the room.",
			]
			required: true
		}
		from: {
			description: [
				"Name the message will appear to be sent from. Max length is 15 characters - above this it will be truncated.",
			]

			default: "Ansible"
		}
		msg: {
			description: [
				"The message body.",
			]
			required: true
		}
		color: {
			description: [
				"Background color for the message.",
			]
			default: "yellow"
			choices: ["yellow", "red", "green", "purple", "gray", "random"]
		}
		msg_format: {
			description: [
				"Message format.",
			]
			default: "text"
			choices: ["text", "html"]
		}
		notify: {
			description: [
				"If true, a notification will be triggered for users in the room.",
			]
			type:    "bool"
			default: "yes"
		}
		validate_certs: {
			description: [
				"If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.",
			]

			type:          "bool"
			default:       "yes"
			version_added: "1.5.1"
		}
		api: {
			description: [
				"API url if using a self-hosted hipchat server. For Hipchat API version 2 use the default URI with C(/v2) instead of C(/v1).",
			]

			default:       "https://api.hipchat.com/v1"
			version_added: "1.6.0"
		}
	}

	author: [
		"Shirou Wakayama (@shirou)",
		"Paul Bourdel (@pb8226)",
	]
}
