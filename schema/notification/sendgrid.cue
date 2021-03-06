package ansible

module: sendgrid: {
	version_added:     "2.0"
	module:            "sendgrid"
	short_description: "Sends an email with the SendGrid API"
	description: [
		"Sends an email with a SendGrid account through their API, not through the SMTP service.",
	]

	notes: [
		"This module is non-idempotent because it sends an email through the external API. It is idempotent only in the case that the module fails.",
		"Like the other notification modules, this one requires an external dependency to work. In this case, you'll need an active SendGrid account.",
		"In order to use api_key, cc, bcc, attachments, from_name, html_body, headers you must pip install sendgrid",
		"since 2.2 username and password are not required if you supply an api_key",
	]
	requirements: [
		"sendgrid python library",
	]
	options: {
		username: description: [
			"username for logging into the SendGrid account.",
			"Since 2.2 it is only required if api_key is not supplied.",
		]
		password: description: [
			"password that corresponds to the username",
			"Since 2.2 it is only required if api_key is not supplied.",
		]
		from_address: {
			description: [
				"the address in the \"from\" field for the email",
			]
			required: true
		}
		to_addresses: {
			description: [
				"a list with one or more recipient email addresses",
			]
			required: true
		}
		subject: {
			description: [
				"the desired subject for the email",
			]
			required: true
		}
		api_key: {
			description: [
				"sendgrid API key to use instead of username/password",
			]
			version_added: 2.2
		}
		cc: {
			description: [
				"a list of email addresses to cc",
			]
			version_added: 2.2
		}
		bcc: {
			description: [
				"a list of email addresses to bcc",
			]
			version_added: 2.2
		}
		attachments: {
			description: [
				"a list of relative or explicit paths of files you want to attach (7MB limit as per SendGrid docs)",
			]
			version_added: 2.2
		}
		from_name: {
			description: [
				"the name you want to appear in the from field, i.e 'John Doe'",
			]
			version_added: 2.2
		}
		html_body: {
			description: [
				"whether the body is html content that should be rendered",
			]
			version_added: 2.2
			type:          "bool"
			default:       "no"
		}
		headers: {
			description: [
				"a dict to pass on as headers",
			]
			version_added: 2.2
		}
	}
	author: "Matt Makai (@makaimc)"
}
