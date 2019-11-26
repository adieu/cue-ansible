package ansible

module: typetalk: {
	module:            "typetalk"
	version_added:     "1.6"
	short_description: "Send a message to typetalk"
	description: [
		"Send a message to typetalk using typetalk API",
	]
	options: {
		client_id: {
			description: [
				"OAuth2 client ID",
			]
			required: true
		}
		client_secret: {
			description: [
				"OAuth2 client secret",
			]
			required: true
		}
		topic: {
			description: [
				"topic id to post message",
			]
			required: true
		}
		msg: {
			description: [
				"message body",
			]
			required: true
		}
	}
	requirements: ["json"]
	author: "Takashi Someda (@tksmd)"
}
