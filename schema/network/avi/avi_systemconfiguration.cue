package ansible

module: avi_systemconfiguration: {
	module: "avi_systemconfiguration"
	author: "Gaurav Rastogi (@grastogi23) <grastogi@avinetworks.com>"

	short_description: "Module for setup of SystemConfiguration Avi RESTful Object"
	description: [
		"This module is used to configure SystemConfiguration object",
		"more examples at U(https://github.com/avinetworks/devops)",
	]
	requirements: ["avisdk"]
	version_added: "2.3"
	options: {
		state: {
			description: [
				"The state that should be applied on the entity.",
			]
			default: "present"
			choices: ["absent", "present"]
		}
		avi_api_update_method: {
			description: [
				"Default method for object update is HTTP PUT.",
				"Setting to patch will override that behavior to use HTTP PATCH.",
			]
			version_added: "2.5"
			default:       "put"
			choices: ["put", "patch"]
		}
		avi_api_patch_op: {
			description: [
				"Patch operation to use when using avi_api_update_method as patch.",
			]
			version_added: "2.5"
			choices: ["add", "replace", "delete"]
		}
		admin_auth_configuration: description: [
			"Adminauthconfiguration settings for systemconfiguration.",
		]
		default_license_tier: {
			description: [
				"Specifies the default license tier which would be used by new clouds.",
				"Enum options - ENTERPRISE_16, ENTERPRISE_18.",
				"Field introduced in 17.2.5.",
				"Default value when not specified in API or module is interpreted by Avi Controller as ENTERPRISE_18.",
			]
			version_added: "2.5"
		}
		dns_configuration: description: [
			"Dnsconfiguration settings for systemconfiguration.",
		]
		dns_virtualservice_refs: description: [
			"Dns virtualservices hosting fqdn records for applications across avi vantage.",
			"If no virtualservices are provided, avi vantage will provide dns services for configured applications.",
			"Switching back to avi vantage from dns virtualservices is not allowed.",
			"It is a reference to an object of type virtualservice.",
		]
		docker_mode: {
			description: [
				"Boolean flag to set docker_mode.",
				"Default value when not specified in API or module is interpreted by Avi Controller as False.",
			]
			type: "bool"
		}
		email_configuration: description: [
			"Emailconfiguration settings for systemconfiguration.",
		]
		global_tenant_config: description: [
			"Tenantconfiguration settings for systemconfiguration.",
		]
		linux_configuration: description: [
			"Linuxconfiguration settings for systemconfiguration.",
		]
		mgmt_ip_access_control: description: [
			"Configure ip access control for controller to restrict open access.",
		]
		ntp_configuration: description: [
			"Ntpconfiguration settings for systemconfiguration.",
		]
		portal_configuration: description: [
			"Portalconfiguration settings for systemconfiguration.",
		]
		proxy_configuration: description: [
			"Proxyconfiguration settings for systemconfiguration.",
		]
		secure_channel_configuration: {
			description: [
				"Configure secure channel properties.",
				"Field introduced in 18.1.4, 18.2.1.",
			]
			version_added: "2.9"
		}
		snmp_configuration: description: [
			"Snmpconfiguration settings for systemconfiguration.",
		]
		ssh_ciphers: description: [
			"Allowed ciphers list for ssh to the management interface on the controller and service engines.",
			"If this is not specified, all the default ciphers are allowed.",
		]
		ssh_hmacs: description: [
			"Allowed hmac list for ssh to the management interface on the controller and service engines.",
			"If this is not specified, all the default hmacs are allowed.",
		]
		url: description: [
			"Avi controller URL of the object.",
		]
		uuid: description: [
			"Unique object identifier of the object.",
		]
		welcome_workflow_complete: {
			description: [
				"This flag is set once the initial controller setup workflow is complete.",
				"Field introduced in 18.2.3.",
				"Default value when not specified in API or module is interpreted by Avi Controller as False.",
			]
			version_added: "2.9"
			type:          "bool"
		}
	}
	extends_documentation_fragment: ["avi"]
}
