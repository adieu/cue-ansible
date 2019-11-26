package ansible

module: icinga2_host: {
	module:            "icinga2_host"
	short_description: "Manage a host in Icinga2"
	description: [
		"Add or remove a host to Icinga2 through the API.",
		"See U(https://www.icinga.com/docs/icinga2/latest/doc/12-icinga2-api/)",
	]
	version_added: "2.5"
	author:        "Jurgen Brand (@t794104)"
	options: {
		url: {
			description: [
				"HTTP, HTTPS, or FTP URL in the form (http|https|ftp)://[user[:pass]]@host.domain[:port]/path",
			]
			required: true
		}
		use_proxy: {
			description: [
				"If C(no), it will not use a proxy, even if one is defined in an environment variable on the target hosts.",
			]

			type:    "bool"
			default: "yes"
		}
		validate_certs: {
			description: [
				"If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.",
			]

			type:    "bool"
			default: "yes"
		}
		url_username: description: [
			"The username for use in HTTP basic authentication.",
			"This parameter can be used without C(url_password) for sites that allow empty passwords.",
		]
		url_password: description: [
			"The password for use in HTTP basic authentication.",
			"If the C(url_username) parameter is not specified, the C(url_password) parameter will not be used.",
		]
		force_basic_auth: {
			description: [
				"httplib2, the library used by the uri module only sends authentication information when a webservice responds to an initial request with a 401 status. Since some basic auth services do not properly send a 401, logins will fail. This option forces the sending of the Basic authentication header upon initial request.",
			]

			type:    "bool"
			default: "no"
		}
		client_cert: description: [
			"PEM formatted certificate chain file to be used for SSL client authentication. This file can also include the key as well, and if the key is included, C(client_key) is not required.",
		]

		client_key: description: [
			"PEM formatted file that contains your private key to be used for SSL client authentication. If C(client_cert) contains both the certificate and key, this option is not required.",
		]

		state: {
			description: [
				"Apply feature state.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		name: {
			description: [
				"Name used to create / delete the host. This does not need to be the FQDN, but does needs to be unique.",
			]
			required: true
		}
		zone: description: [
			"The zone from where this host should be polled.",
		]
		template: description: [
			"The template used to define the host.",
			"Template cannot be modified after object creation.",
		]
		check_command: {
			description: [
				"The command used to check if the host is alive.",
			]
			default: "hostalive"
		}
		display_name: {
			description: [
				"The name used to display the host.",
			]
			default: "if none is give it is the value of the <name> parameter"
		}
		ip: {
			description: [
				"The IP address of the host.",
			]
			required: true
		}
		variables: description: ["List of variables."]
	}
}
