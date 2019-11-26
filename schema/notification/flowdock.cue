package ansible

module: flowdock: {
	module:            "flowdock"
	version_added:     "1.2"
	author:            "Matt Coddington (@mcodd)"
	short_description: "Send a message to a flowdock"
	description: [
		"Send a message to a flowdock team inbox or chat using the push API (see https://www.flowdock.com/api/team-inbox and https://www.flowdock.com/api/chat)",
	]
	options: {
		token: {
			description: [
				"API token.",
			]
			required: true
		}
		type: {
			description: [
				"Whether to post to 'inbox' or 'chat'",
			]
			required: true
			choices: ["inbox", "chat"]
		}
		msg: {
			description: [
				"Content of the message",
			]
			required: true
		}
		tags: {
			description: [
				"tags of the message, separated by commas",
			]
			required: false
		}
		external_user_name: {
			description: [
				"(chat only - required) Name of the \"user\" sending the message",
			]
			required: false
		}
		from_address: {
			description: [
				"(inbox only - required) Email address of the message sender",
			]
			required: false
		}
		source: {
			description: [
				"(inbox only - required) Human readable identifier of the application that uses the Flowdock API",
			]
			required: false
		}
		subject: {
			description: [
				"(inbox only - required) Subject line of the message",
			]
			required: false
		}
		from_name: {
			description: [
				"(inbox only) Name of the message sender",
			]
			required: false
		}
		reply_to: {
			description: [
				"(inbox only) Email address for replies",
			]
			required: false
		}
		project: {
			description: [
				"(inbox only) Human readable identifier for more detailed message categorization",
			]
			required: false
		}
		link: {
			description: [
				"(inbox only) Link associated with the message. This will be used to link the message subject in Team Inbox.",
			]
			required: false
		}
		validate_certs: {
			description: [
				"If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.",
			]

			required:      false
			default:       "yes"
			type:          "bool"
			version_added: "1.5.1"
		}
	}

	requirements: []
}
