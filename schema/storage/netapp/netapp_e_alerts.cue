package ansible

module: netapp_e_alerts: {
	module:            "netapp_e_alerts"
	short_description: "NetApp E-Series manage email notification settings"
	description: [
		"Certain E-Series systems have the capability to send email notifications on potentially critical events.",
		"This module will allow the owner of the system to specify email recipients for these messages.",
	]
	version_added: "2.7"
	author:        "Michael Price (@lmprice)"
	extends_documentation_fragment: [
		"netapp.eseries",
	]
	options: {
		state: {
			description: [
				"Enable/disable the sending of email-based alerts.",
			]
			default:  "enabled"
			required: false
			choices: [
				"enabled",
				"disabled",
			]
		}
		server: {
			description: [
				"A fully qualified domain name, IPv4 address, or IPv6 address of a mail server.",
				"To use a fully qualified domain name, you must configure a DNS server on both controllers using M(netapp_e_mgmt_interface). - Required when I(state=enabled).",
			]

			required: false
		}
		sender: {
			description: [
				"This is the sender that the recipient will see. It doesn't necessarily need to be a valid email account.",
				"Required when I(state=enabled).",
			]
			required: false
		}
		contact: {
			description: [
				"Allows the owner to specify some free-form contact information to be included in the emails.",
				"This is typically utilized to provide a contact phone number.",
			]
			required: false
		}
		recipients: {
			description: [
				"The email addresses that will receive the email notifications.",
				"Required when I(state=enabled).",
			]
			required: false
		}
		test: {
			description: [
				"When a change is detected in the configuration, a test email will be sent.",
				"This may take a few minutes to process.",
				"Only applicable if I(state=enabled).",
			]
			default: false
			type:    "bool"
		}
		log_path: {
			description: [
				"Path to a file on the Ansible control node to be used for debug logging",
			]
			required: false
		}
	}
	notes: [
		"Check mode is supported.",
		"Alertable messages are a subset of messages shown by the Major Event Log (MEL), of the storage-system. Examples of alertable messages include drive failures, failed controllers, loss of redundancy, and other warning/critical events.",
		"This API is currently only supported with the Embedded Web Services API v2.0 and higher.",
	]
}
