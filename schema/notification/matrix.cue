package ansible

module: matrix: {
	author:            "Jan Christian Grünhage (@jcgruenhage)"
	module:            "matrix"
	short_description: "Send notifications to matrix"
	description: ["This module sends html formatted notifications to matrix rooms."]
	version_added: "2.8"
	options: {
		msg_plain: {
			description: ["Plain text form of the message to send to matrix, usually markdown"]
			required: true
		}
		msg_html: {
			description: ["HTML form of the message to send to matrix"]
			required: true
		}
		room_id: {
			description: ["ID of the room to send the notification to"]
			required: true
		}
		hs_url: {
			description: ["URL of the homeserver, where the CS-API is reachable"]
			required: true
		}
		token: description: ["Authentication token for the API call. If provided, user_id and password are not required"]
		user_id: description: ["The user id of the user"]
		password: description: ["The password to log in with"]
	}
	requirements: ["matrix-client (Python library)"]
}
