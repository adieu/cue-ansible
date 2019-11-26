package ansible

module: bearychat: {
	module:            "bearychat"
	short_description: "Send BearyChat notifications"
	description: [
		"The M(bearychat) module sends notifications to U(https://bearychat.com) via the Incoming Robot integration.",
	]

	version_added: "2.4"
	author:        "Jiangge Zhang (@tonyseek)"
	options: {
		url: {
			description: [
				"BearyChat WebHook URL. This authenticates you to the bearychat service. It looks like C(https://hook.bearychat.com/=ae2CF/incoming/e61bd5c57b164e04b11ac02e66f47f60).",
			]

			required: true
		}
		text: description: [
			"Message to send.",
		]
		markdown: {
			description: [
				"If C(yes), text will be parsed as markdown.",
			]
			default: "yes"
			type:    "bool"
		}
		channel: description: [
			"Channel to send the message to. If absent, the message goes to the default channel selected by the I(url).",
		]

		attachments: description: [
			"Define a list of attachments. For more information, see https://github.com/bearyinnovative/bearychat-tutorial/blob/master/robots/incoming.md#attachments",
		]
	}
}
