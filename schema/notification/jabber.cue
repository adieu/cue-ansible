package ansible

module: jabber: {
	version_added:     "1.2"
	module:            "jabber"
	short_description: "Send a message to jabber user or chat room"
	description: [
		"Send a message to jabber",
	]
	options: {
		user: {
			description: [
				"User as which to connect",
			]
			required: true
		}
		password: {
			description: [
				"password for user to connect",
			]
			required: true
		}
		to: {
			description: [
				"user ID or name of the room, when using room use a slash to indicate your nick.",
			]
			required: true
		}
		msg: {
			description: [
				"The message body.",
			]
			required: true
		}
		host: description: [
			"host to connect, overrides user info",
		]
		port: {
			description: [
				"port to connect to, overrides default",
			]
			default: 5222
		}
		encoding: description: [
			"message encoding",
		]
	}

	// informational: requirements for nodes
	requirements: [
		"python xmpp (xmpppy)",
	]
	author: "Brian Coca (@bcoca)"
}
