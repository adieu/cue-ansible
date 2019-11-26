package ansible

module: win_toast: {
	module:            "win_toast"
	version_added:     "2.4"
	short_description: "Sends Toast windows notification to logged in users on Windows 10 or later hosts"
	description: [
		"Sends alerts which appear in the Action Center area of the windows desktop.",
	]
	options: {
		expire: {
			description: [
				"How long in seconds before the notification expires.",
			]
			type:    "int"
			default: 45
		}
		group: {
			description: [
				"Which notification group to add the notification to.",
			]
			type:    "str"
			default: "Powershell"
		}
		msg: {
			description: [
				"The message to appear inside the notification.",
				"May include \\n to format the message to appear within the Action Center.",
			]
			type:    "str"
			default: "Hello, World!"
		}
		popup: {
			description: [
				"If C(no), the notification will not pop up and will only appear in the Action Center.",
			]
			type:    "bool"
			default: true
		}
		tag: {
			description: [
				"The tag to add to the notification.",
			]
			type:    "str"
			default: "Ansible"
		}
		title: {
			description: [
				"The notification title, which appears in the pop up..",
			]
			type:    "str"
			default: "Notification HH:mm"
		}
	}
	notes: [
		"This module must run on a windows 10 or Server 2016 host, so ensure your play targets windows hosts, or delegates to a windows host.",
		"The module does not fail if there are no logged in users to notify.",
		"Messages are only sent to the local host where the module is run.",
		"You must run this module with async, otherwise it will hang until the expire period has passed.",
	]
	seealso: [{
		module: "win_msg"
	}, {
		module: "win_say"
	}]
	author: ["Jon Hawkesworth (@jhawkesworth)"]
}
