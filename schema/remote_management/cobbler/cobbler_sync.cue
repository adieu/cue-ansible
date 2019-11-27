package ansible

module: cobbler_sync: {
	module:            "cobbler_sync"
	version_added:     "2.7"
	short_description: "Sync Cobbler"
	description: [
		"Sync Cobbler to commit changes.",
	]
	options: {
		host: {
			description: [
				"The name or IP address of the Cobbler system.",
			]
			default: "127.0.0.1"
		}
		port: description: [
			"Port number to be used for REST connection.",
			"The default value depends on parameter C(use_ssl).",
		]
		username: {
			description: [
				"The username to log in to Cobbler.",
			]
			default: "cobbler"
		}
		password: {
			description: [
				"The password to log in to Cobbler.",
			]
			required: true
		}
		use_ssl: {
			description: [
				"If C(no), an HTTP connection will be used instead of the default HTTPS connection.",
			]
			type:    "bool"
			default: "yes"
		}
		validate_certs: {
			description: [
				"If C(no), SSL certificates will not be validated.",
				"This should only set to C(no) when used on personally controlled sites using self-signed certificates.",
			]
			type:    "bool"
			default: "yes"
		}
	}
	author: [
		"Dag Wieers (@dagwieers)",
	]
	todo: null
	notes: [
		"Concurrently syncing Cobbler is bound to fail with weird errors.",
		"On python 2.7.8 and older (i.e. on RHEL7) you may need to tweak the python behaviour to disable certificate validation. More information at L(Certificate verification in Python standard library HTTP clients,https://access.redhat.com/articles/2039753).",
	]
}
