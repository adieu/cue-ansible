package ansible

module: webfaction_app: {
	module:            "webfaction_app"
	short_description: "Add or remove applications on a Webfaction host"
	description: [
		"Add or remove applications on a Webfaction host. Further documentation at U(https://github.com/quentinsf/ansible-webfaction).",
	]
	author:        "Quentin Stafford-Fraser (@quentinsf)"
	version_added: "2.0"
	notes: [
		"""
		You can run playbooks that use this on a local machine, or on a Webfaction host, or elsewhere, since the scripts use the remote webfaction API. The location is not important. However, running them on multiple hosts I(simultaneously) is best avoided. If you don't specify I(localhost) as your host, you may want to add C(serial: 1) to the plays.

		""",
		"See `the webfaction API <https://docs.webfaction.com/xmlrpc-api/>`_ for more info.",
	]

	options: {
		name: {
			description: [
				"The name of the application",
			]
			required: true
		}

		state: {
			description: [
				"Whether the application should exist",
			]
			choices: ["present", "absent"]
			default: "present"
		}

		type: {
			description: [
				"The type of application to create. See the Webfaction docs at U(https://docs.webfaction.com/xmlrpc-api/apps.html) for a list.",
			]
			required: true
		}

		autostart: {
			description: [
				"Whether the app should restart with an C(autostart.cgi) script",
			]
			type:    "bool"
			default: "no"
		}

		extra_info: {
			description: [
				"Any extra parameters required by the app",
			]
			default: ""
		}

		port_open: {
			description: [
				"IF the port should be opened",
			]
			type:    "bool"
			default: "no"
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

		machine: description: [
			"The machine name to use (optional for accounts with only one machine)",
		]
	}
}
