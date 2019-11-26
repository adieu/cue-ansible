package ansible

module: fortios_wanopt_webcache: {
	module:            "fortios_wanopt_webcache"
	short_description: "Configure global Web cache settings in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify wanopt feature and webcache category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
	]

	version_added: "2.9"
	author: [
		"Miguel Angel Munoz (@mamunozgonzalez)",
		"Nicolas Thomas (@thomnico)",
	]
	notes: [
		"Requires fortiosapi library developed by Fortinet",
		"Run as a local_action in your playbook",
	]
	requirements: [
		"fortiosapi>=0.9.8",
	]
	options: {
		host: {
			description: [
				"FortiOS or FortiGate IP address.",
			]
			type:     "str"
			required: false
		}
		username: {
			description: [
				"FortiOS or FortiGate username.",
			]
			type:     "str"
			required: false
		}
		password: {
			description: [
				"FortiOS or FortiGate password.",
			]
			type:    "str"
			default: ""
		}
		vdom: {
			description: [
				"Virtual domain, among those defined previously. A vdom is a virtual instance of the FortiGate that can be configured and used as a different unit.",
			]

			type:    "str"
			default: "root"
		}
		https: {
			description: [
				"Indicates if the requests towards FortiGate must use HTTPS protocol.",
			]
			type:    "bool"
			default: true
		}
		ssl_verify: {
			description: [
				"Ensures FortiGate certificate must be verified by a proper CA.",
			]
			type:    "bool"
			default: true
		}
		wanopt_webcache: {
			description: [
				"Configure global Web cache settings.",
			]
			default: null
			type:    "dict"
			suboptions: {
				always_revalidate: {
					description: [
						"Enable/disable revalidation of requested cached objects, which have content on the server, before serving it to the client.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				cache_by_default: {
					description: [
						"Enable/disable caching content that lacks explicit caching policies from the server.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				cache_cookie: {
					description: [
						"Enable/disable caching cookies. Since cookies contain information for or about individual users, they not usually cached.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				cache_expired: {
					description: [
						"Enable/disable caching type-1 objects that are already expired on arrival.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				default_ttl: {
					description: [
						"Default object expiry time . This only applies to those objects that do not have an expiry time set by the web server.",
					]
					type: "int"
				}
				external: {
					description: [
						"Enable/disable external Web caching.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				fresh_factor: {
					description: [
						"Frequency that the server is checked to see if any objects have expired (1 - 100). The higher the fresh factor, the less often the checks occur.",
					]

					type: "int"
				}
				host_validate: {
					description: [
						"Enable/disable validating Host: with original server IP.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ignore_conditional: {
					description: [
						"Enable/disable controlling the behavior of cache-control HTTP 1.1 header values.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ignore_ie_reload: {
					description: [
						"Enable/disable ignoring the PNC-interpretation of Internet Explorer's Accept: / header.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ignore_ims: {
					description: [
						"Enable/disable ignoring the if-modified-since (IMS) header.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ignore_pnc: {
					description: [
						"Enable/disable ignoring the pragma no-cache (PNC) header.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				max_object_size: {
					description: [
						"Maximum cacheable object size in kB (1 - 2147483 kb (2GB). All objects that exceed this are delivered to the client but not stored in the web cache.",
					]

					type: "int"
				}
				max_ttl: {
					description: [
						"Maximum time an object can stay in the web cache without checking to see if it has expired on the server .",
					]
					type: "int"
				}
				min_ttl: {
					description: [
						"Minimum time an object can stay in the web cache without checking to see if it has expired on the server .",
					]
					type: "int"
				}
				neg_resp_time: {
					description: [
						"Time in minutes to cache negative responses or errors (0 - 4294967295).",
					]
					type: "int"
				}
				reval_pnc: {
					description: [
						"Enable/disable revalidation of pragma-no-cache (PNC) to address bandwidth concerns.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
			}
		}
	}
}
