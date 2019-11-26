package ansible

module: mail: {
	author: [
		"Dag Wieers (@dagwieers)",
	]
	module:            "mail"
	short_description: "Send an email"
	description: [
		"This module is useful for sending emails from playbooks.",
		"One may wonder why automate sending emails?  In complex environments there are from time to time processes that cannot be automated, either because you lack the authority to make it so, or because not everyone agrees to a common approach.",
		"If you cannot automate a specific step, but the step is non-blocking, sending out an email to the responsible party to make them perform their part of the bargain is an elegant way to put the responsibility in someone else's lap.",
		"Of course sending out a mail can be equally useful as a way to notify one or more people in a team that a specific action has been (successfully) taken.",
	]

	version_added: "0.8"
	options: {
		from: {
			description: [
				"The email-address the mail is sent from. May contain address and phrase.",
			]
			type:    "str"
			default: "root"
		}
		to: {
			description: [
				"The email-address(es) the mail is being sent to.",
				"This is a list, which may contain address and phrase portions.",
			]
			type:    "list"
			default: "root"
			aliases: ["recipients"]
		}
		cc: {
			description: [
				"The email-address(es) the mail is being copied to.",
				"This is a list, which may contain address and phrase portions.",
			]
			type: "list"
		}
		bcc: {
			description: [
				"The email-address(es) the mail is being 'blind' copied to.",
				"This is a list, which may contain address and phrase portions.",
			]
			type: "list"
		}
		subject: {
			description: [
				"The subject of the email being sent.",
			]
			required: true
			type:     "str"
		}
		body: {
			description: [
				"The body of the email being sent.",
			]
			type:    "str"
			default: "$subject"
		}
		username: {
			description: [
				"If SMTP requires username.",
			]
			type:          "str"
			version_added: "1.9"
		}
		password: {
			description: [
				"If SMTP requires password.",
			]
			type:          "str"
			version_added: "1.9"
		}
		host: {
			description: [
				"The mail server.",
			]
			type:    "str"
			default: "localhost"
		}
		port: {
			description: [
				"The mail server port.",
				"This must be a valid integer between 1 and 65534",
			]
			type:          "int"
			default:       25
			version_added: "1.0"
		}
		attach: {
			description: [
				"A list of pathnames of files to attach to the message.",
				"Attached files will have their content-type set to C(application/octet-stream).",
			]
			type: "list"
			default: []
			version_added: "1.0"
		}
		headers: {
			description: [
				"A list of headers which should be added to the message.",
				"Each individual header is specified as C(header=value) (see example below).",
			]
			type: "list"
			default: []
			version_added: "1.0"
		}
		charset: {
			description: [
				"The character set of email being sent.",
			]
			type:    "str"
			default: "utf-8"
		}
		subtype: {
			description: [
				"The minor mime type, can be either C(plain) or C(html).",
				"The major type is always C(text).",
			]
			type: "str"
			choices: ["html", "plain"]
			default:       "plain"
			version_added: "2.0"
		}
		secure: {
			description: [
				"If C(always), the connection will only send email if the connection is Encrypted. If the server doesn't accept the encrypted connection it will fail.",
				"If C(try), the connection will attempt to setup a secure SSL/TLS session, before trying to send.",
				"If C(never), the connection will not attempt to setup a secure SSL/TLS session, before sending",
				"If C(starttls), the connection will try to upgrade to a secure SSL/TLS connection, before sending. If it is unable to do so it will fail.",
			]

			type: "str"
			choices: ["always", "never", "starttls", "try"]
			default:       "try"
			version_added: "2.3"
		}
		timeout: {
			description: [
				"Sets the timeout in seconds for connection attempts.",
			]
			type:          "int"
			default:       20
			version_added: "2.3"
		}
	}
}
