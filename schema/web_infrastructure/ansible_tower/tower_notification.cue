package ansible

module: tower_notification: {
	module:            "tower_notification"
	author:            "Samuel Carpentier (@samcarpentier)"
	version_added:     "2.8"
	short_description: "create, update, or destroy Ansible Tower notification."
	description: [
		"Create, update, or destroy Ansible Tower notifications. See U(https://www.ansible.com/tower) for an overview.",
	]

	options: {
		name: {
			description: [
				"The name of the notification.",
			]
			required: true
		}
		description: {
			description: [
				"The description of the notification.",
			]
			required: false
		}
		organization: {
			description: [
				"The organization the notification belongs to.",
			]
			required: false
		}
		notification_type: {
			description: [
				"The type of notification to be sent.",
			]
			required: true
			choices: ["email", "slack", "twilio", "pagerduty", "hipchat", "webhook", "irc"]
		}
		notification_configuration: {
			description: [
				"The notification configuration file. Note providing this field would disable all notification-configuration-related fields.",
			]
			required: false
		}
		username: {
			description: [
				"The mail server username. Required if I(notification_type=email).",
			]
			required: false
		}
		sender: {
			description: [
				"The sender email address. Required if I(notification_type=email).",
			]
			required: false
		}
		recipients: {
			description: [
				"The recipients email addresses. Required if I(notification_type=email).",
			]
			required: false
		}
		use_tls: {
			description: [
				"The TLS trigger. Required if I(notification_type=email).",
			]
			required: false
			type:     "bool"
		}
		host: {
			description: [
				"The mail server host. Required if I(notification_type=email).",
			]
			required: false
		}
		use_ssl: {
			description: [
				"The SSL trigger. Required if I(notification_type=email) or if I(notification_type=irc).",
			]
			required: false
			type:     "bool"
		}
		password: {
			description: [
				"The mail server password. Required if I(notification_type=email) or if I(notification_type=irc).",
			]
			required: false
		}
		port: {
			description: [
				"The mail server port. Required if I(notification_type=email) or if I(notification_type=irc).",
			]
			required: false
		}
		channels: {
			description: [
				"The destination Slack channels. Required if I(notification_type=slack).",
			]
			required: false
			type:     "list"
		}
		token: {
			description: [
				"The access token. Required if I(notification_type=slack), if I(notification_type=pagerduty) or if I(notification_type=hipchat).",
			]
			required: false
		}
		account_token: {
			description: [
				"The Twillio account token. Required if I(notification_type=twillio).",
			]
			required: false
		}
		from_number: {
			description: [
				"The source phone number. Required if I(notification_type=twillio).",
			]
			required: false
		}
		to_numbers: {
			description: [
				"The destination phone numbers. Required if I(notification_type=twillio).",
			]
			required: false
		}
		account_sid: {
			description: [
				"The Twillio account SID. Required if I(notification_type=twillio).",
			]
			required: false
		}
		subdomain: {
			description: [
				"The PagerDuty subdomain. Required if I(notification_type=pagerduty).",
			]
			required: false
		}
		service_key: {
			description: [
				"The PagerDuty service/integration API key. Required if I(notification_type=pagerduty).",
			]
			required: false
		}
		client_name: {
			description: [
				"The PagerDuty client identifier. Required if I(notification_type=pagerduty).",
			]
			required: false
		}
		message_from: {
			description: [
				"The label to be shown with the notification. Required if I(notification_type=hipchat).",
			]
			required: false
		}
		api_url: {
			description: [
				"The HipChat API URL. Required if I(notification_type=hipchat).",
			]
			required: false
		}
		color: {
			description: [
				"The notification color. Required if I(notification_type=hipchat).",
			]
			required: false
			choices: ["yellow", "green", "red", "purple", "gray", "random"]
		}
		rooms: {
			description: [
				"HipChat rooms to send the notification to. Required if I(notification_type=hipchat).",
			]
			required: false
			type:     "list"
		}
		notify: {
			description: [
				"The notify channel trigger. Required if I(notification_type=hipchat).",
			]
			required: false
			type:     "bool"
		}
		url: {
			description: [
				"The target URL. Required if I(notification_type=webhook).",
			]
			required: false
		}
		headers: {
			description: [
				"The HTTP headers as JSON string. Required if I(notification_type=webhook).",
			]
			required: false
		}
		server: {
			description: [
				"The IRC server address. Required if I(notification_type=irc).",
			]
			required: false
		}
		nickname: {
			description: [
				"The IRC nickname. Required if I(notification_type=irc).",
			]
			required: false
		}
		targets: {
			description: [
				"The destination channels or users. Required if I(notification_type=irc).",
			]
			required: false
			type:     "list"
		}
		state: {
			description: [
				"Desired state of the resource.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "tower"
}
