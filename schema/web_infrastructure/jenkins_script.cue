package ansible

module: jenkins_script: {
	author:            "James Hogarth (@hogarthj)"
	module:            "jenkins_script"
	short_description: "Executes a groovy script in the jenkins instance"
	version_added:     "2.3"
	description: [
		"The C(jenkins_script) module takes a script plus a dict of values to use within the script and returns the result of the script being run.",
	]

	options: {
		script: {
			description: [
				"The groovy script to be executed. This gets passed as a string Template if args is defined.",
			]

			required: true
		}
		url: {
			description: [
				"The jenkins server to execute the script against. The default is a local jenkins instance that is not being proxied through a webserver.",
			]

			default: "http://localhost:8080"
		}
		validate_certs: {
			description: [
				"If set to C(no), the SSL certificates will not be validated. This should only set to C(no) used on personally controlled sites using self-signed certificates as it avoids verifying the source site.",
			]

			type:    "bool"
			default: "yes"
		}
		user: description: [
			"The username to connect to the jenkins server with.",
		]
		password: description: [
			"The password to connect to the jenkins server with.",
		]
		timeout: {
			description: [
				"The request timeout in seconds",
			]
			default:       10
			version_added: "2.4"
		}
		args: description: [
			"A dict of key-value pairs used in formatting the script using string.Template (see https://docs.python.org/2/library/string.html#template-strings).",
		]
	}

	notes: [
		"Since the script can do anything this does not report on changes. Knowing the script is being run it's important to set changed_when for the ansible output to be clear on any alterations made.",
	]
}
