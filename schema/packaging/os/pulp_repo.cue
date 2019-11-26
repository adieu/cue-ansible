package ansible

module: pulp_repo: {
	module:            "pulp_repo"
	author:            "Joe Adams (@sysadmind)"
	short_description: "Add or remove Pulp repos from a remote host."
	description: [
		"Add or remove Pulp repos from a remote host.",
	]
	version_added: "2.3"
	options: {
		add_export_distributor: {
			description: [
				"Whether or not to add the export distributor to new C(rpm) repositories.",
			]
			type:    "bool"
			default: "no"
		}
		feed: description: [
			"Upstream feed URL to receive updates from.",
		]
		force_basic_auth: {
			description: [
				"httplib2, the library used by the M(uri) module only sends authentication information when a webservice responds to an initial request with a 401 status. Since some basic auth services do not properly send a 401, logins will fail. This option forces the sending of the Basic authentication header upon initial request.",
			]

			type:    "bool"
			default: "no"
		}
		generate_sqlite: {
			description: [
				"Boolean flag to indicate whether sqlite files should be generated during a repository publish.",
			]

			required:      false
			type:          "bool"
			default:       "no"
			version_added: "2.8"
		}
		feed_ca_cert: {
			description: [
				"CA certificate string used to validate the feed source SSL certificate. This can be the file content or the path to the file. The ca_cert alias will be removed in Ansible 2.14.",
			]

			type: "str"
			aliases: ["importer_ssl_ca_cert", "ca_cert"]
		}
		feed_client_cert: {
			version_added: "2.10"
			description: [
				"Certificate used as the client certificate when synchronizing the repository. This is used to communicate authentication information to the feed source. The value to this option must be the full path to the certificate. The specified file may be the certificate itself or a single file containing both the certificate and private key. This can be the file content or the path to the file.",
				"If not specified the default value will come from client_cert. Which will change in Ansible 2.14.",
			]

			type: "str"
			aliases: ["importer_ssl_client_cert"]
		}
		feed_client_key: {
			version_added: "2.10"
			description: [
				"Private key to the certificate specified in I(importer_ssl_client_cert), assuming it is not included in the certificate file itself. This can be the file content or the path to the file.",
				"If not specified the default value will come from client_key. Which will change in Ansible 2.14.",
			]

			type: "str"
			aliases: ["importer_ssl_client_key"]
		}
		name: {
			description: [
				"Name of the repo to add or remove. This correlates to repo-id in Pulp.",
			]
			required: true
		}
		proxy_host: {
			description: [
				"Proxy url setting for the pulp repository importer. This is in the format scheme://host.",
			]

			required: false
			default:  null
		}
		proxy_port: {
			description: [
				"Proxy port setting for the pulp repository importer.",
			]
			required: false
			default:  null
		}
		proxy_username: {
			description: [
				"Proxy username for the pulp repository importer.",
			]
			required:      false
			default:       null
			version_added: "2.8"
		}
		proxy_password: {
			description: [
				"Proxy password for the pulp repository importer.",
			]
			required:      false
			default:       null
			version_added: "2.8"
		}
		publish_distributor: description: [
			"Distributor to use when state is C(publish). The default is to publish all distributors.",
		]

		pulp_host: {
			description: [
				"URL of the pulp server to connect to.",
			]
			default: "http://127.0.0.1"
		}
		relative_url: {
			description: [
				"Relative URL for the local repository.",
			]
			required: true
		}
		repo_type: {
			description: [
				"Repo plugin type to use (i.e. C(rpm), C(docker)).",
			]
			default: "rpm"
		}
		repoview: {
			description: [
				"Whether to generate repoview files for a published repository. Setting this to \"yes\" automatically activates `generate_sqlite`.",
			]

			required:      false
			type:          "bool"
			default:       "no"
			version_added: "2.8"
		}
		serve_http: {
			description: [
				"Make the repo available over HTTP.",
			]
			type:    "bool"
			default: "no"
		}
		serve_https: {
			description: [
				"Make the repo available over HTTPS.",
			]
			type:    "bool"
			default: "yes"
		}
		state: {
			description: [
				"The repo state. A state of C(sync) will queue a sync of the repo. This is asynchronous but not delayed like a scheduled sync. A state of C(publish) will use the repository's distributor to publish the content.",
			]

			default: "present"
			choices: ["present", "absent", "sync", "publish"]
		}
		url_password: description: [
			"The password for use in HTTP basic authentication to the pulp API. If the I(url_username) parameter is not specified, the I(url_password) parameter will not be used.",
		]

		url_username: description: [
			"The username for use in HTTP basic authentication to the pulp API.",
		]
		validate_certs: {
			description: [
				"If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.",
			]

			type:    "bool"
			default: "yes"
		}
		wait_for_completion: {
			description: [
				"Wait for asynchronous tasks to complete before returning.",
			]
			type:    "bool"
			default: "no"
		}
	}
	notes: [
		"This module can currently only create distributors and importers on rpm repositories. Contributions to support other repo types are welcome.",
	]

	extends_documentation_fragment: ["url"]
}
