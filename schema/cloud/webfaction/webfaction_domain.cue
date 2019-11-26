package ansible

module: webfaction_domain: {
	module:            "webfaction_domain"
	short_description: "Add or remove domains and subdomains on Webfaction"
	description: [
		"Add or remove domains or subdomains on a Webfaction host. Further documentation at https://github.com/quentinsf/ansible-webfaction.",
	]
	author:        "Quentin Stafford-Fraser (@quentinsf)"
	version_added: "2.0"
	notes: [
		"If you are I(deleting) domains by using C(state=absent), then note that if you specify subdomains, just those particular subdomains will be deleted. If you don't specify subdomains, the domain will be deleted.",
		"""
		You can run playbooks that use this on a local machine, or on a Webfaction host, or elsewhere, since the scripts use the remote webfaction API. The location is not important. However, running them on multiple hosts I(simultaneously) is best avoided. If you don't specify I(localhost) as your host, you may want to add C(serial: 1) to the plays.

		""",
		"See `the webfaction API <https://docs.webfaction.com/xmlrpc-api/>`_ for more info.",
	]

	options: {

		name: {
			description: [
				"The name of the domain",
			]
			required: true
		}

		state: {
			description: [
				"Whether the domain should exist",
			]
			choices: ["present", "absent"]
			default: "present"
		}

		subdomains: {
			description: [
				"Any subdomains to create.",
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
