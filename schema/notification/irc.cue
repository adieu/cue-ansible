package ansible

module: irc: {
	module:            "irc"
	version_added:     "1.2"
	short_description: "Send a message to an IRC channel"
	description: [
		"Send a message to an IRC channel. This is a very simplistic implementation.",
	]
	options: {
		server: {
			description: [
				"IRC server name/address",
			]
			default: "localhost"
		}
		port: {
			description: [
				"IRC server port number",
			]
			default: 6667
		}
		nick: {
			description: [
				"Nickname to send the message from. May be shortened, depending on server's NICKLEN setting.",
			]
			default: "ansible"
		}
		msg: {
			description: [
				"The message body.",
			]
			required: true
		}
		topic: {
			description: [
				"Set the channel topic",
			]
			version_added: "2.0"
		}
		color: {
			description: [
				"Text color for the message. (\"none\" is a valid option in 1.6 or later, in 1.6 and prior, the default color is black, not \"none\"). Added 11 more colors in version 2.0.",
			]

			default: "none"
			choices: [
				"none",
				"white",
				"black",
				"blue",
				"green",
				"red",
				"brown",
				"purple",
				"orange",
				"yellow",
				"light_green",
				"teal",
				"light_cyan",
				"light_blue",
				"pink",
				"gray",
				"light_gray",
			]
		}
		channel: {
			description: [
				"Channel name.  One of nick_to or channel needs to be set.  When both are set, the message will be sent to both of them.",
			]
			required: true
		}
		nick_to: {
			description: [
				"A list of nicknames to send the message to. One of nick_to or channel needs to be set.  When both are defined, the message will be sent to both of them.",
			]
			version_added: "2.0"
		}
		key: {
			description: [
				"Channel key",
			]
			version_added: "1.7"
		}
		passwd: description: [
			"Server password",
		]
		timeout: {
			description: [
				"Timeout to use while waiting for successful registration and join messages, this is to prevent an endless loop",
			]

			default:       30
			version_added: "1.5"
		}
		use_ssl: {
			description: [
				"Designates whether TLS/SSL should be used when connecting to the IRC server",
			]
			type:          "bool"
			default:       "no"
			version_added: "1.8"
		}
		part: {
			description: [
				"Designates whether user should part from channel after sending message or not. Useful for when using a faux bot and not wanting join/parts between messages.",
			]

			type:          "bool"
			default:       "yes"
			version_added: "2.0"
		}
		style: {
			description: [
				"Text style for the message. Note italic does not work on some clients",
			]
			choices: ["bold", "underline", "reverse", "italic"]
			version_added: "2.0"
		}
	}

	// informational: requirements for nodes
	requirements: ["socket"]
	author: [
		"Jan-Piet Mens (@jpmens)",
		"Matt Martz (@sivel)",
	]
}
