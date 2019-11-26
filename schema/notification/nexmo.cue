package ansible

module: nexmo: {
	module:            "nexmo"
	short_description: "Send a SMS via nexmo"
	description: [
		"Send a SMS message via nexmo",
	]
	version_added: 1.6
	author:        "Matt Martz (@sivel)"
	options: {
		api_key: {
			description: [
				"Nexmo API Key",
			]
			required: true
		}
		api_secret: {
			description: [
				"Nexmo API Secret",
			]
			required: true
		}
		src: {
			description: [
				"Nexmo Number to send from",
			]
			required: true
		}
		dest: {
			description: [
				"Phone number(s) to send SMS message to",
			]
			required: true
		}
		msg: {
			description: [
				"Message to text to send. Messages longer than 160 characters will be split into multiple messages",
			]

			required: true
		}
		validate_certs: {
			description: [
				"If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.",
			]

			type:    "bool"
			default: "yes"
		}
	}
	extends_documentation_fragment: ["url"]
}
