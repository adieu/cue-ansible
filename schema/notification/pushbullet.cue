package ansible

module: pushbullet: {
	author: "Willy Barro (@willybarro)"
	requirements: ["pushbullet.py"]
	module:            "pushbullet"
	short_description: "Sends notifications to Pushbullet"
	description: [
		"This module sends push notifications via Pushbullet to channels or devices.",
	]
	version_added: "2.0"
	options: {
		api_key: {
			description: [
				"Push bullet API token",
			]
			required: true
		}
		channel: description: [
			"The channel TAG you wish to broadcast a push notification, as seen on the \"My Channels\" > \"Edit your channel\" at Pushbullet page.",
		]

		device: description: [
			"The device NAME you wish to send a push notification, as seen on the Pushbullet main page.",
		]

		push_type: {
			description: [
				"Thing you wish to push.",
			]
			default: "note"
			choices: ["note", "link"]
		}
		title: {
			description: [
				"Title of the notification.",
			]
			required: true
		}
		body: description: [
			"Body of the notification, e.g. Details of the fault you're alerting.",
		]
	}

	notes: [
		"Requires pushbullet.py Python package on the remote host. You can install it via pip with ($ pip install pushbullet.py). See U(https://github.com/randomchars/pushbullet.py)",
	]
}
