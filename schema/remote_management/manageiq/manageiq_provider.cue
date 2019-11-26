package ansible

module: manageiq_provider: {
	module:                         "manageiq_provider"
	short_description:              "Management of provider in ManageIQ."
	extends_documentation_fragment: "manageiq"
	version_added:                  "2.4"
	author:                         "Daniel Korn (@dkorn)"
	description: [
		"The manageiq_provider module supports adding, updating, and deleting provider in ManageIQ.",
	]

	options: {
		state: {
			description: [
				"absent - provider should not exist, present - provider should be present, refresh - provider will be refreshed",
			]
			choices: ["absent", "present", "refresh"]
			default: "present"
		}
		name: {
			description: "The provider's name."
			required:    true
		}
		type: {
			description: "The provider's type."
			required:    true
			choices: ["Openshift", "Amazon", "oVirt", "VMware", "Azure", "Director", "OpenStack", "GCE"]
		}
		zone: {
			description: "The ManageIQ zone name that will manage the provider."
			default:     "default"
		}
		provider_region: description: "The provider region name to connect to (e.g. AWS region for Amazon)."
		host_default_vnc_port_start: {
			description:   "The first port in the host VNC range. defaults to None."
			version_added: "2.5"
		}
		host_default_vnc_port_end: {
			description:   "The last port in the host VNC range. defaults to None."
			version_added: "2.5"
		}
		subscription: {
			description:   "Microsoft Azure subscription ID. defaults to None."
			version_added: "2.5"
		}
		project: {
			description:   "Google Compute Engine Project ID. defaults to None."
			version_added: "2.5"
		}
		azure_tenant_id: {
			description:   "Tenant ID. defaults to None."
			version_added: "2.5"
			aliases: ["keystone_v3_domain_id"]
		}
		tenant_mapping_enabled: {
			type:          "bool"
			default:       "no"
			description:   "Whether to enable mapping of existing tenants. defaults to False."
			version_added: "2.5"
		}
		api_version: {
			description: "The OpenStack Keystone API version. defaults to None."
			choices: ["v2", "v3"]
			version_added: "2.5"
		}

		provider: {
			description: "Default endpoint connection information, required if state is true."
			suboptions: {
				hostname: {
					description: "The provider's api hostname."
					required:    true
				}
				port: description: "The provider's api port."
				userid: description: "Provider's api endpoint authentication userid. defaults to None."
				password: description: "Provider's api endpoint authentication password. defaults to None."
				auth_key: description: "Provider's api endpoint authentication bearer token. defaults to None."
				validate_certs: {
					description: "Whether SSL certificates should be verified for HTTPS requests (deprecated). defaults to True."
					type:        "bool"
					default:     "yes"
				}
				security_protocol: {
					description: "How SSL certificates should be used for HTTPS requests. defaults to None."
					choices: ["ssl-with-validation", "ssl-with-validation-custom-ca", "ssl-without-validation", "non-ssl"]
				}
				certificate_authority: description: "The CA bundle string with custom certificates. defaults to None."
			}
		}

		metrics: {
			description: "Metrics endpoint connection information."
			suboptions: {
				hostname: {
					description: "The provider's api hostname."
					required:    true
				}
				port: description: "The provider's api port."
				userid: description: "Provider's api endpoint authentication userid. defaults to None."
				password: description: "Provider's api endpoint authentication password. defaults to None."
				auth_key: description: "Provider's api endpoint authentication bearer token. defaults to None."
				validate_certs: {
					description: "Whether SSL certificates should be verified for HTTPS requests (deprecated). defaults to True."
					type:        "bool"
					default:     "yes"
				}
				security_protocol: {
					choices: ["ssl-with-validation", "ssl-with-validation-custom-ca", "ssl-without-validation", "non-ssl"]
					description: "How SSL certificates should be used for HTTPS requests. defaults to None."
				}
				certificate_authority: description: "The CA bundle string with custom certificates. defaults to None."
				path: {
					description: "Database name for oVirt metrics. Defaults to ovirt_engine_history."
					default:     "ovirt_engine_history"
				}
			}
		}

		alerts: {
			description: "Alerts endpoint connection information."
			suboptions: {
				hostname: {
					description: "The provider's api hostname."
					required:    true
				}
				port: description: "The provider's api port."
				userid: description: "Provider's api endpoint authentication userid. defaults to None."
				password: description: "Provider's api endpoint authentication password. defaults to None."
				auth_key: description: "Provider's api endpoint authentication bearer token. defaults to None."
				validate_certs: {
					description: "Whether SSL certificates should be verified for HTTPS requests (deprecated). defaults to True."
					default:     true
				}
				security_protocol: {
					choices: ["ssl-with-validation", "ssl-with-validation-custom-ca", "ssl-without-validation"]
					description: "How SSL certificates should be used for HTTPS requests. defaults to None."
				}
				certificate_authority: description: "The CA bundle string with custom certificates. defaults to None."
			}
		}

		ssh_keypair: {
			description:   "SSH key pair used for SSH connections to all hosts in this provider."
			version_added: "2.5"
			suboptions: {
				hostname: {
					description: "Director hostname."
					required:    true
				}
				userid: description: "SSH username."
				auth_key: description: "SSH private key."
			}
		}
	}
}
