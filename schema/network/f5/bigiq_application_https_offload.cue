package ansible

module: bigiq_application_https_offload: {
	module:            "bigiq_application_https_offload"
	short_description: "Manages BIG-IQ HTTPS offload applications"
	description: [
		"Manages BIG-IQ applications used for load balancing an HTTPS application on port 443 with SSL offloading on BIG-IP.",
	]

	version_added: 2.6
	options: {
		name: {
			description: [
				"Name of the new application.",
			]
			type:     "str"
			required: true
		}
		description: {
			description: [
				"Description of the application.",
			]
			type: "str"
		}
		servers: {
			description: [
				"A list of servers that the application is hosted on.",
				"If you are familiar with other BIG-IP setting, you might also refer to this list as the list of pool members.",
				"When creating a new application, at least one server is required.",
			]
			suboptions: {
				address: {
					description: [
						"The IP address of the server.",
					]
					type: "str"
				}
				port: {
					description: [
						"The port of the server.",
					]
					type:    "str"
					default: 80
				}
			}
			type: "list"
		}
		inbound_virtual: {
			description: [
				"Settings to configure the virtual which will receive the inbound connection.",
				"This virtual will be used to host the HTTPS endpoint of the application.",
				"Traffic destined to the C(redirect_virtual) will be offloaded to this parameter to ensure that proper redirection from insecure, to secure, occurs.",
			]

			suboptions: {
				address: {
					description: [
						"Specifies destination IP address information to which the virtual server sends traffic.",
						"This parameter is required when creating a new application.",
					]
					type: "str"
				}
				netmask: {
					description: [
						"Specifies the netmask to associate with the given C(address).",
						"This parameter is required when creating a new application.",
					]
					type: "str"
				}
				port: {
					description: [
						"The port that the virtual listens for connections on.",
						"When creating a new application, if this parameter is not specified, the default value of C(443) will be used.",
					]

					type:    "str"
					default: 443
				}
			}
			type: "dict"
		}
		redirect_virtual: {
			description: [
				"Settings to configure the virtual which will receive the connection to be redirected.",
				"This virtual will be used to host the HTTP endpoint of the application.",
				"Traffic destined to this parameter will be offloaded to the C(inbound_virtual) parameter to ensure that proper redirection from insecure, to secure, occurs.",
			]

			suboptions: {
				address: {
					description: [
						"Specifies destination IP address information to which the virtual server sends traffic.",
						"This parameter is required when creating a new application.",
					]
					type: "str"
				}
				netmask: {
					description: [
						"Specifies the netmask to associate with the given C(address).",
						"This parameter is required when creating a new application.",
					]
					type: "str"
				}
				port: {
					description: [
						"The port that the virtual listens for connections on.",
						"When creating a new application, if this parameter is not specified, the default value of C(80) will be used.",
					]

					type:    "str"
					default: 80
				}
			}
			type: "dict"
		}
		client_ssl_profile: {
			description: [
				"Specifies the SSL profile for managing client-side SSL traffic.",
			]
			suboptions: {
				name: description: [
					"The name of the client SSL profile to created and used.",
					"When creating a new application, if this value is not specified, the default value of C(clientssl) will be used.",
				]

				cert_key_chain: {
					description: [
						"One or more certificates and keys to associate with the SSL profile.",
						"This option is always a list. The keys in the list dictate the details of the client/key/chain/passphrase combination.",
						"Note that BIG-IPs can only have one of each type of each certificate/key type. This means that you can only have one RSA, one DSA, and one ECDSA per profile.",
						"If you attempt to assign two RSA, DSA, or ECDSA certificate/key combo, the device will reject this.",
						"This list is a complex list that specifies a number of keys.",
						"When creating a new profile, if this parameter is not specified, the default value of C(inherit) will be used.",
					]

					suboptions: {
						cert: {
							description: [
								"Specifies a cert name for use.",
							]
							type:     "str"
							required: true
						}
						key: {
							description: [
								"Specifies a key name.",
							]
							type:     "str"
							required: true
						}
						chain: {
							description: [
								"Specifies a certificate chain that is relevant to the certificate and key mentioned earlier.",
								"This key is optional.",
							]
							type: "str"
						}
						passphrase: {
							description: [
								"Contains the passphrase of the key file, should it require one.",
								"Passphrases are encrypted on the remote BIG-IP device.",
							]
							type: "str"
						}
					}
					type: "raw"
				}
			}
			type: "dict"
		}
		service_environment: {
			description: [
				"Specifies the name of service environment or the hostname of the BIG-IP that the application will be deployed to.",
				"When creating a new application, this parameter is required.",
			]
			type: "str"
		}
		add_analytics: {
			description: [
				"Collects statistics of the BIG-IP that the application is deployed to.",
				"This parameter is only relevant when specifying a C(service_environment) which is a BIG-IP; not an SSG.",
			]

			type:    "bool"
			default: false
		}
		state: {
			description: [
				"The state of the resource on the system.",
				"When C(present), guarantees that the resource exists with the provided attributes.",
				"When C(absent), removes the resource from the system.",
			]
			type: "str"
			choices: [
				"absent",
				"present",
			]
			default: "present"
		}
		wait: {
			description: [
				"If the module should wait for the application to be created, deleted or updated.",
			]
			type:    "bool"
			default: true
		}
	}
	extends_documentation_fragment: "f5"
	notes: [
		"This module will not work on BIGIQ version 6.1.x or greater.",
	]
	author: ["Tim Rupp (@caphrim007)"]
}
