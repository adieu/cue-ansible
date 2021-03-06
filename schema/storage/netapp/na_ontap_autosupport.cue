package ansible

module: na_ontap_autosupport: {
	author: "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Enable/Disable Autosupport",
	]
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	module: "na_ontap_autosupport"
	options: {
		state: {
			description: [
				"Specifies whether the AutoSupport daemon is present or absent.",
				"When this setting is absent, delivery of all AutoSupport messages is turned off.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		node_name: {
			description: [
				"The name of the filer that owns the AutoSupport Configuration.",
			]
			required: true
		}
		transport: {
			description: [
				"The name of the transport protocol used to deliver AutoSupport messages",
			]
			choices: ["http", "https", "smtp"]
		}
		noteto: description: [
			"Specifies up to five recipients of short AutoSupport e-mail messages.",
		]
		post_url: description: [
			"The URL used to deliver AutoSupport messages via HTTP POST",
		]
		mail_hosts: description: [
			"List of mail server(s) used to deliver AutoSupport messages via SMTP.",
			"Both host names and IP addresses may be used as valid input.",
		]
		support: {
			description: [
				"Specifies whether AutoSupport notification to technical support is enabled.",
			]
			type: "bool"
		}
		from_address: {
			description: [
				"specify the e-mail address from which the node sends AutoSupport messages",
			]
			version_added: 2.8
		}
		partner_addresses: {
			description: [
				"Specifies up to five partner vendor recipients of full AutoSupport e-mail messages.",
			]
			version_added: 2.8
		}
		to_addresses: {
			description: [
				"Specifies up to five recipients of full AutoSupport e-mail messages.",
			]
			version_added: 2.8
		}
		proxy_url: {
			description: [
				"specify an HTTP or HTTPS proxy if the 'transport' parameter is set to HTTP or HTTPS and your organization uses a proxy.",
				"If authentication is required, use the format \"username:password@host:port\".",
			]
			version_added: 2.8
		}
		hostname_in_subject: {
			description: [
				"Specify whether the hostname of the node is included in the subject line of the AutoSupport message.",
			]
			type:          "bool"
			version_added: 2.8
		}
	}
	short_description: "NetApp ONTAP Autosupport"
	version_added:     "2.7"
}
