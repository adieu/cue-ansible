package ansible

module: rocketchat: {
	module:            "rocketchat"
	short_description: "Send notifications to Rocket Chat"
	description: [
		"The C(rocketchat) module sends notifications to Rocket Chat via the Incoming WebHook integration",
	]
	version_added: "2.2"
	author:        "Ramon de la Fuente (@ramondelafuente)"
	options: {
		domain: {
			description: [
				"The domain for your environment without protocol. (i.e. C(example.com) or C(chat.example.com))",
			]

			required: true
		}
		token: {
			description: [
				"Rocket Chat Incoming Webhook integration token.  This provides authentication to Rocket Chat's Incoming webhook for posting messages.",
			]

			required: true
		}
		protocol: {
			description: [
				"Specify the protocol used to send notification messages before the webhook url. (i.e. http or https)",
			]
			default: "https"
			choices: [
				"http",
				"https",
			]
		}
		msg: description: [
			"Message to be sent.",
		]
		channel: description: [
			"Channel to send the message to. If absent, the message goes to the channel selected for the I(token) specified during the creation of webhook.",
		]

		username: {
			description: [
				"This is the sender of the message.",
			]
			default: "Ansible"
		}
		icon_url: {
			description: [
				"URL for the message sender's icon.",
			]
			default: "https://www.ansible.com/favicon.ico"
		}
		icon_emoji: description: [
			"Emoji for the message sender. The representation for the available emojis can be got from Rocket Chat. (for example :thumbsup:) (if I(icon_emoji) is set, I(icon_url) will not be used)",
		]

		link_names: {
			description: [
				"Automatically create links for channels and usernames in I(msg).",
			]
			default: 1
			choices: [
				1,
				0,
			]
		}
		validate_certs: {
			description: [
				"If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.",
			]

			type:    "bool"
			default: "yes"
		}
		color: {
			description: [
				"Allow text to use default colors - use the default of 'normal' to not send a custom color bar at the start of the message",
			]
			default: "normal"
			choices: [
				"normal",
				"good",
				"warning",
				"danger",
			]
		}
		attachments: description: ["Define a list of attachments."]
	}
}
