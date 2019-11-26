package ansible

module: imc_rest: {
	module:            "imc_rest"
	short_description: "Manage Cisco IMC hardware through its REST API"
	description: [
		"Provides direct access to the Cisco IMC REST API.",
		"Perform any configuration changes and actions that the Cisco IMC supports.",
		"More information about the IMC REST API is available from U(http://www.cisco.com/c/en/us/td/docs/unified_computing/ucs/c/sw/api/3_0/b_Cisco_IMC_api_301.html)",
	]

	author: [
		"Dag Wieers (@dagwieers)",
	]
	version_added: "2.4"
	requirements: [
		"lxml",
		"xmljson >= 0.1.8",
	]
	options: {
		hostname: {
			description: [
				"IP Address or hostname of Cisco IMC, resolvable by Ansible control host.",
			]
			required: true
			aliases: ["host", "ip"]
		}
		username: {
			description: [
				"Username used to login to the switch.",
			]
			default: "admin"
			aliases: ["user"]
		}
		password: {
			description: [
				"The password to use for authentication.",
			]
			default: "password"
		}
		path: {
			description: [
				"Name of the absolute path of the filename that includes the body of the http request being sent to the Cisco IMC REST API.",
				"Parameter C(path) is mutual exclusive with parameter C(content).",
			]
			aliases: ["src", "config_file"]
		}
		content: description: [
			"When used instead of C(path), sets the content of the API requests directly.",
			"This may be convenient to template simple requests, for anything complex use the M(template) module.",
			"You can collate multiple IMC XML fragments and they will be processed sequentially in a single stream, the Cisco IMC output is subsequently merged.",
			"Parameter C(content) is mutual exclusive with parameter C(path).",
		]
		protocol: {
			description: [
				"Connection protocol to use.",
			]
			default: "https"
			choices: ["http", "https"]
		}
		timeout: {
			description: [
				"The socket level timeout in seconds.",
				"This is the time that every single connection (every fragment) can spend. If this C(timeout) is reached, the module will fail with a C(Connection failure) indicating that C(The read operation timed out).",
			]

			default: 60
		}
		validate_certs: {
			description: [
				"If C(no), SSL certificates will not be validated.",
				"This should only set to C(no) used on personally controlled sites using self-signed certificates.",
			]
			type:    "bool"
			default: "yes"
		}
	}
	notes: [
		"The XML fragments don't need an authentication cookie, this is injected by the module automatically.",
		"The Cisco IMC XML output is being translated to JSON using the Cobra convention.",
		"Any configConfMo change requested has a return status of 'modified', even if there was no actual change from the previous configuration. As a result, this module will always report a change on subsequent runs. In case this behaviour is fixed in a future update to Cisco IMC, this module will automatically adapt.",
		"If you get a C(Connection failure) related to C(The read operation timed out) increase the C(timeout) parameter. Some XML fragments can take longer than the default timeout.",
		"More information about the IMC REST API is available from U(http://www.cisco.com/c/en/us/td/docs/unified_computing/ucs/c/sw/api/3_0/b_Cisco_IMC_api_301.html)",
	]
}
