package ansible

module: win_msg: {
	module:            "win_msg"
	version_added:     "2.3"
	short_description: "Sends a message to logged in users on Windows hosts"
	description: [
		"Wraps the msg.exe command in order to send messages to Windows hosts.",
	]
	options: {
		to: {
			description: [
				"Who to send the message to. Can be a username, sessionname or sessionid.",
			]
			type:    "str"
			default: "*"
		}
		display_seconds: {
			description: [
				"How long to wait for receiver to acknowledge message, in seconds.",
			]
			type:    "int"
			default: 10
		}
		wait: {
			description: [
				"Whether to wait for users to respond.  Module will only wait for the number of seconds specified in display_seconds or 10 seconds if not specified. However, if I(wait) is C(yes), the message is sent to each logged on user in turn, waiting for the user to either press 'ok' or for the timeout to elapse before moving on to the next user.",
			]

			type:    "bool"
			default: "no"
		}
		msg: {
			description: [
				"The text of the message to be displayed.",
				"The message must be less than 256 characters.",
			]
			type:    "str"
			default: "Hello world!"
		}
	}
	notes: [
		"This module must run on a windows host, so ensure your play targets windows hosts, or delegates to a windows host.",
		"Messages are only sent to the local host where the module is run.",
		"The module does not support sending to users listed in a file.",
		"Setting wait to C(yes) can result in long run times on systems with many logged in users.",
	]
	seealso: [{
		module: "win_say"
	}, {
		module: "win_toast"
	}]
	author: ["Jon Hawkesworth (@jhawkesworth)"]
}
