package ansible

module: webfaction_site: {
	module:            "webfaction_site"
	short_description: "Add or remove a website on a Webfaction host"
	description: [
		"Add or remove a website on a Webfaction host.  Further documentation at https://github.com/quentinsf/ansible-webfaction.",
	]
	author:        "Quentin Stafford-Fraser (@quentinsf)"
	version_added: "2.0"
	notes: [
		"Sadly, you I(do) need to know your webfaction hostname for the C(host) parameter.  But at least, unlike the API, you don't need to know the IP address. You can use a DNS name.",
		"If a site of the same name exists in the account but on a different host, the operation will exit.",
		"""
		You can run playbooks that use this on a local machine, or on a Webfaction host, or elsewhere, since the scripts use the remote webfaction API. The location is not important. However, running them on multiple hosts I(simultaneously) is best avoided. If you don't specify I(localhost) as your host, you may want to add C(serial: 1) to the plays.

		""",
		"See `the webfaction API <https://docs.webfaction.com/xmlrpc-api/>`_ for more info.",
	]

	options: {

		name: {
			description: [
				"The name of the website",
			]
			required: true
		}

		state: {
			description: [
				"Whether the website should exist",
			]
			choices: ["present", "absent"]
			default: "present"
		}

		host: {
			description: [
				"The webfaction host on which the site should be created.",
			]
			required: true
		}

		https: {
			description: [
				"Whether or not to use HTTPS",
			]
			type:    "bool"
			default: "no"
		}

		site_apps: {
			description: [
				"A mapping of URLs to apps",
			]
			default: []
		}

		subdomains: {
			description: [
				"A list of subdomains associated with this site.",
			]
			default: []
		}

		login_name: {
			description: [
				"The webfaction account to use",
			]
			required: true
		}

		login_password: {
			description: [
				"The webfaction password to use",
			]
			required: true
		}
	}
}
