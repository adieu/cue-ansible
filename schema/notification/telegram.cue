package ansible

module: telegram: {
	module:        "telegram"
	version_added: "2.2"
	author:        "Artem Feofanov (@tyouxa)"

	short_description: "module for sending notifications via telegram"

	description: [
		"Send notifications via telegram bot, to a verified group or user",
	]
	notes: [
		"You will require a telegram account and create telegram bot to use this module.",
	]
	options: {
		msg: {
			description: [
				"What message you wish to send.",
			]
			required: true
		}
		msg_format: {
			description: [
				"Message format. Formatting options `markdown` and `html` described in Telegram API docs (https://core.telegram.org/bots/api#formatting-options). If option `plain` set, message will not be formatted.",
			]

			default: "plain"
			choices: ["plain", "markdown", "html"]
			version_added: "2.4"
		}
		token: {
			description: [
				"Token identifying your telegram bot.",
			]
			required: true
		}
		chat_id: {
			description: [
				"Telegram group or user chat_id",
			]
			required: true
		}
	}
}
