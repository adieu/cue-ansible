package ansible

module: redhat_subscription: {
	module:            "redhat_subscription"
	short_description: "Manage registration and subscriptions to RHSM using the C(subscription-manager) command"
	description: [
		"Manage registration and subscription to the Red Hat Subscription Management entitlement platform using the C(subscription-manager) command",
	]
	version_added: "1.2"
	author:        "Barnaby Court (@barnabycourt)"
	notes: [
		"In order to register a system, subscription-manager requires either a username and password, or an activationkey and an Organization ID.",
		"Since 2.5 values for I(server_hostname), I(server_insecure), I(rhsm_baseurl), I(server_proxy_hostname), I(server_proxy_port), I(server_proxy_user) and I(server_proxy_password) are no longer taken from the C(/etc/rhsm/rhsm.conf) config file and default to None.",
	]

	requirements: [
		"subscription-manager",
	]
	options: {
		state: {
			description: [
				"whether to register and subscribe (C(present)), or unregister (C(absent)) a system",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		username: description: [
			"access.redhat.com or Sat6  username",
		]
		password: description: [
			"access.redhat.com or Sat6 password",
		]
		server_hostname: description: [
			"Specify an alternative Red Hat Subscription Management or Sat6 server",
		]
		server_insecure: description: [
			"Enable or disable https server certificate verification when connecting to C(server_hostname)",
		]
		rhsm_baseurl: description: [
			"Specify CDN baseurl",
		]
		rhsm_repo_ca_cert: {
			description: [
				"Specify an alternative location for a CA certificate for CDN",
			]
			version_added: "2.7"
		}
		server_proxy_hostname: {
			description: [
				"Specify a HTTP proxy hostname",
			]
			version_added: "2.4"
		}
		server_proxy_port: {
			description: [
				"Specify a HTTP proxy port",
			]
			version_added: "2.4"
		}
		server_proxy_user: {
			description: [
				"Specify a user for HTTP proxy with basic authentication",
			]
			version_added: "2.4"
		}
		server_proxy_password: {
			description: [
				"Specify a password for HTTP proxy with basic authentication",
			]
			version_added: "2.4"
		}
		auto_attach: {
			description: [
				"Upon successful registration, auto-consume available subscriptions",
				"Added in favor of deprecated autosubscribe in 2.5.",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.5"
			aliases: ["autosubscribe"]
		}
		activationkey: description: [
			"supply an activation key for use with registration",
		]
		org_id: {
			description: [
				"Organization ID to use in conjunction with activationkey",
			]
			version_added: "2.0"
		}
		environment: {
			description: [
				"Register with a specific environment in the destination org. Used with Red Hat Satellite 6.x or Katello",
			]
			version_added: "2.2"
		}
		pool: {
			description: [
				"""
		Specify a subscription pool name to consume.  Regular expressions accepted. Use I(pool_ids) instead if
		possible, as it is much faster. Mutually exclusive with I(pool_ids).

		""",
			]

			default: "^$"
		}
		pool_ids: {
			description: [
				"""
		Specify subscription pool IDs to consume. Prefer over I(pool) when possible as it is much faster.
		A pool ID may be specified as a C(string) - just the pool ID (ex. C(0123456789abcdef0123456789abcdef)),
		or as a C(dict) with the pool ID as the key, and a quantity as the value (ex.
		C(0123456789abcdef0123456789abcdef: 2). If the quantity is provided, it is used to consume multiple
		entitlements from a pool (the pool must support this). Mutually exclusive with I(pool).

		""",
			]

			default: []
			version_added: "2.4"
		}
		consumer_type: {
			description: [
				"The type of unit to register, defaults to system",
			]
			version_added: "2.1"
		}
		consumer_name: {
			description: [
				"Name of the system to register, defaults to the hostname",
			]
			version_added: "2.1"
		}
		consumer_id: {
			description: [
				"""
		References an existing consumer ID to resume using a previous registration
		for this system. If the  system's identity certificate is lost or corrupted,
		this option allows it to resume using its previous identity and subscriptions.
		The default is to not specify a consumer ID so a new ID is created.

		""",
			]

			version_added: "2.1"
		}
		force_register: {
			description: [
				"Register the system even if it is already registered",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.2"
		}
		release: {
			description: [
				"Set a release version",
			]
			version_added: "2.8"
		}
		syspurpose: {
			description: [
				"Set syspurpose attributes in file C(/etc/rhsm/syspurpose/syspurpose.json) and synchronize these attributes with RHSM server. Syspurpose attributes help attach the most appropriate subscriptions to the system automatically. When C(syspurpose.json) file already contains some attributes, then new attributes overwrite existing attributes. When some attribute is not listed in the new list of attributes, the existing attribute will be removed from C(syspurpose.json) file. Unknown attributes are ignored.",
			]

			type: "dict"
			default: {}
			version_added: "2.9"
			suboptions: {
				usage: description: "Syspurpose attribute usage"
				role: description: "Syspurpose attribute role"
				service_level_agreement: description: "Syspurpose attribute service_level_agreement"
				addons: {
					description: "Syspurpose attribute addons"
					type:        "list"
				}
				sync: {
					description: [
						"When this option is true, then syspurpose attributes are synchronized with RHSM server immediately. When this option is false, then syspurpose attributes will be synchronized with RHSM server by rhsmcertd daemon.",
					]

					type:    "bool"
					default: false
				}
			}
		}
	}
}
