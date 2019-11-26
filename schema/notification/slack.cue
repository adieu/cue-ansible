package ansible

module: slack: {
	module:            "slack"
	short_description: "Send Slack notifications"
	description: [
		"The C(slack) module sends notifications to U(http://slack.com) via the Incoming WebHook integration",
	]
	version_added: "1.6"
	author:        "Ramon de la Fuente (@ramondelafuente)"
	options: {
		domain: description: [
			"Slack (sub)domain for your environment without protocol. (i.e. C(example.slack.com)) In 1.8 and beyond, this is deprecated and may be ignored.  See token documentation for information.",
		]

		token: {
			description: [
				"Slack integration token.  This authenticates you to the slack service. Prior to 1.8, a token looked like C(3Ffe373sfhRE6y42Fg3rvf4GlK).  In 1.8 and above, ansible adapts to the new slack API where tokens look like C(G922VJP24/D921DW937/3Ffe373sfhRE6y42Fg3rvf4GlK).  If tokens are in the new format then slack will ignore any value of domain.  If the token is in the old format the domain is required.  Ansible has no control of when slack will get rid of the old API.  When slack does that the old format will stop working.  ** Please keep in mind the tokens are not the API tokens but are the webhook tokens.  In slack these are found in the webhook URL which are obtained under the apps and integrations. The incoming webhooks can be added in that area.  In some cases this may be locked by your Slack admin and you must request access.  It is there that the incoming webhooks can be added.  The key is on the end of the URL given to you in that section.",
			]

			required: true
		}
		msg: description: [
			"Message to send. Note that the module does not handle escaping characters. Plain-text angle brackets and ampersands should be converted to HTML entities (e.g. & to &amp;) before sending. See Slack's documentation (U(https://api.slack.com/docs/message-formatting)) for more.",
		]

		channel: description: [
			"Channel to send the message to. If absent, the message goes to the channel selected for the I(token).",
		]
		thread_id: {
			version_added: 2.8
			description: [
				"Optional. Timestamp of message to thread this message to as a float. https://api.slack.com/docs/message-threading",
			]
		}
		username: {
			description: [
				"This is the sender of the message.",
			]
			default: "Ansible"
		}
		icon_url: description: [
			"Url for the message sender's icon (default C(https://www.ansible.com/favicon.ico))",
		]
		icon_emoji: description: [
			"Emoji for the message sender. See Slack documentation for options. (if I(icon_emoji) is set, I(icon_url) will not be used)",
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
		parse: {
			description: [
				"Setting for the message parser at Slack",
			]
			choices: [
				"full",
				"none",
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
			version_added: "2.0"
			description: [
				"Allow text to use default colors - use the default of 'normal' to not send a custom color bar at the start of the message.",
				"Allowed values for color can be one of 'normal', 'good', 'warning', 'danger', any valid 3 digit or 6 digit hex color value.",
				"Specifying value in hex is supported from version 2.8.",
			]
			default: "normal"
		}
		attachments: description: [
			"Define a list of attachments. This list mirrors the Slack JSON API.",
			"For more information, see also in the (U(https://api.slack.com/docs/attachments)).",
		]
	}
}
