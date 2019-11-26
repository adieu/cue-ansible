package ansible

module: gcp_compute_backend_service: {
	module: "gcp_compute_backend_service"
	description: [
		"A Backend Service defines a group of virtual machines that will serve traffic for load balancing. This resource is a global backend service, appropriate for external load balancing or self-managed internal load balancing.",
		"For managed internal load balancing, use a regional backend service instead.",
		"Currently self-managed internal load balancing is only available in beta.",
	]
	short_description: "Creates a GCP BackendService"
	version_added:     "2.6"
	author:            "Google Inc. (@googlecloudplatform)"
	requirements: [
		"python >= 2.6",
		"requests >= 2.18.4",
		"google-auth >= 1.3.0",
	]
	options: {
		state: {
			description: [
				"Whether the given object should exist in GCP",
			]
			choices: [
				"present",
				"absent",
			]
			default: "present"
			type:    "str"
		}
		affinity_cookie_ttl_sec: {
			description: [
				"Lifetime of cookies in seconds if session_affinity is GENERATED_COOKIE. If set to 0, the cookie is non-persistent and lasts only until the end of the browser session (or equivalent). The maximum allowed value for TTL is one day.",
				"When the load balancing scheme is INTERNAL, this field is not used.",
			]
			required: false
			type:     "int"
		}
		backends: {
			description: [
				"The set of backends that serve this BackendService.",
			]
			required: false
			type:     "list"
			suboptions: {
				balancing_mode: {
					description: [
						"Specifies the balancing mode for this backend.",
						"For global HTTP(S) or TCP/SSL load balancing, the default is UTILIZATION. Valid values are UTILIZATION, RATE (for HTTP(S)) and CONNECTION (for TCP/SSL).",
						"Some valid choices include: \"UTILIZATION\", \"RATE\", \"CONNECTION\"",
					]
					required: false
					default:  "UTILIZATION"
					type:     "str"
				}
				capacity_scaler: {
					description: [
						"A multiplier applied to the group's maximum servicing capacity (based on UTILIZATION, RATE or CONNECTION).",
						"Default value is 1, which means the group will serve up to 100% of its configured capacity (depending on balancingMode). A setting of 0 means the group is completely drained, offering 0% of its available Capacity. Valid range is [0.0,1.0].",
					]

					required: false
					default:  "1.0"
					type:     "str"
				}
				description: {
					description: [
						"An optional description of this resource.",
						"Provide this property when you create the resource.",
					]
					required: false
					type:     "str"
				}
				group: {
					description: [
						"The fully-qualified URL of an Instance Group or Network Endpoint Group resource. In case of instance group this defines the list of instances that serve traffic. Member virtual machine instances from each instance group must live in the same zone as the instance group itself. No two backends in a backend service are allowed to use same Instance Group resource.",
						"For Network Endpoint Groups this defines list of endpoints. All endpoints of Network Endpoint Group must be hosted on instances located in the same zone as the Network Endpoint Group.",
						"Backend services cannot mix Instance Group and Network Endpoint Group backends.",
						"Note that you must specify an Instance Group or Network Endpoint Group resource using the fully-qualified URL, rather than a partial URL.",
					]

					required: false
					type:     "str"
				}
				max_connections: {
					description: [
						"The max number of simultaneous connections for the group. Can be used with either CONNECTION or UTILIZATION balancing modes.",
						"For CONNECTION mode, either maxConnections or one of maxConnectionsPerInstance or maxConnectionsPerEndpoint, as appropriate for group type, must be set.",
					]

					required: false
					type:     "int"
				}
				max_connections_per_instance: {
					description: [
						"The max number of simultaneous connections that a single backend instance can handle. This is used to calculate the capacity of the group. Can be used in either CONNECTION or UTILIZATION balancing modes.",
						"For CONNECTION mode, either maxConnections or maxConnectionsPerInstance must be set.",
					]

					required: false
					type:     "int"
				}
				max_connections_per_endpoint: {
					description: [
						"The max number of simultaneous connections that a single backend network endpoint can handle. This is used to calculate the capacity of the group. Can be used in either CONNECTION or UTILIZATION balancing modes.",
						"For CONNECTION mode, either maxConnections or maxConnectionsPerEndpoint must be set.",
					]

					required:      false
					type:          "int"
					version_added: "2.9"
				}
				max_rate: {
					description: [
						"The max requests per second (RPS) of the group.",
						"Can be used with either RATE or UTILIZATION balancing modes, but required if RATE mode. For RATE mode, either maxRate or one of maxRatePerInstance or maxRatePerEndpoint, as appropriate for group type, must be set.",
					]

					required: false
					type:     "int"
				}
				max_rate_per_instance: {
					description: [
						"The max requests per second (RPS) that a single backend instance can handle. This is used to calculate the capacity of the group. Can be used in either balancing mode. For RATE mode, either maxRate or maxRatePerInstance must be set.",
					]

					required: false
					type:     "str"
				}
				max_rate_per_endpoint: {
					description: [
						"The max requests per second (RPS) that a single backend network endpoint can handle. This is used to calculate the capacity of the group. Can be used in either balancing mode. For RATE mode, either maxRate or maxRatePerEndpoint must be set.",
					]

					required:      false
					type:          "str"
					version_added: "2.9"
				}
				max_utilization: {
					description: [
						"Used when balancingMode is UTILIZATION. This ratio defines the CPU utilization target for the group. The default is 0.8. Valid range is [0.0, 1.0].",
					]

					required: false
					default:  "0.8"
					type:     "str"
				}
			}
		}
		cdn_policy: {
			description: [
				"Cloud CDN configuration for this BackendService.",
			]
			required: false
			type:     "dict"
			suboptions: {
				cache_key_policy: {
					description: [
						"The CacheKeyPolicy for this CdnPolicy.",
					]
					required: false
					type:     "dict"
					suboptions: {
						include_host: {
							description: [
								"If true requests to different hosts will be cached separately.",
							]
							required: false
							type:     "bool"
						}
						include_protocol: {
							description: [
								"If true, http and https requests will be cached separately.",
							]
							required: false
							type:     "bool"
						}
						include_query_string: {
							description: [
								"If true, include query string parameters in the cache key according to query_string_whitelist and query_string_blacklist. If neither is set, the entire query string will be included.",
								"If false, the query string will be excluded from the cache key entirely.",
							]
							required: false
							type:     "bool"
						}
						query_string_blacklist: {
							description: [
								"Names of query string parameters to exclude in cache keys.",
								"All other parameters will be included. Either specify query_string_whitelist or query_string_blacklist, not both.",
								"'&' and '=' will be percent encoded and not treated as delimiters.",
							]
							required: false
							type:     "list"
						}
						query_string_whitelist: {
							description: [
								"Names of query string parameters to include in cache keys.",
								"All other parameters will be excluded. Either specify query_string_whitelist or query_string_blacklist, not both.",
								"'&' and '=' will be percent encoded and not treated as delimiters.",
							]
							required: false
							type:     "list"
						}
					}
				}
				signed_url_cache_max_age_sec: {
					description: [
						"Maximum number of seconds the response to a signed URL request will be considered fresh, defaults to 1hr (3600s). After this time period, the response will be revalidated before being served.",
						"When serving responses to signed URL requests, Cloud CDN will internally behave as though all responses from this backend had a \"Cache-Control: public, max-age=[TTL]\" header, regardless of any existing Cache-Control header. The actual headers served in responses will not be altered.",
					]

					required:      false
					default:       "3600"
					type:          "int"
					version_added: "2.8"
				}
			}
		}
		connection_draining: {
			description: [
				"Settings for connection draining .",
			]
			required: false
			type:     "dict"
			suboptions: draining_timeout_sec: {
				description: [
					"Time for which instance will be drained (not accept new connections, but still work to finish started).",
				]

				required: false
				default:  "300"
				type:     "int"
			}
		}
		description: {
			description: [
				"An optional description of this resource.",
			]
			required: false
			type:     "str"
		}
		enable_cdn: {
			description: [
				"If true, enable Cloud CDN for this BackendService.",
			]
			required: false
			type:     "bool"
		}
		health_checks: {
			description: [
				"The set of URLs to the HttpHealthCheck or HttpsHealthCheck resource for health checking this BackendService. Currently at most one health check can be specified, and a health check is required.",
				"For internal load balancing, a URL to a HealthCheck resource must be specified instead.",
			]

			required: true
			type:     "list"
		}
		iap: {
			description: [
				"Settings for enabling Cloud Identity Aware Proxy.",
			]
			required:      false
			type:          "dict"
			version_added: "2.7"
			suboptions: {
				enabled: {
					description: [
						"Enables IAP.",
					]
					required: false
					type:     "bool"
				}
				oauth2_client_id: {
					description: [
						"OAuth2 Client ID for IAP .",
					]
					required: true
					type:     "str"
				}
				oauth2_client_secret: {
					description: [
						"OAuth2 Client Secret for IAP .",
					]
					required: true
					type:     "str"
				}
			}
		}
		load_balancing_scheme: {
			description: [
				"Indicates whether the backend service will be used with internal or external load balancing. A backend service created for one type of load balancing cannot be used with the other. Must be `EXTERNAL` or `INTERNAL_SELF_MANAGED` for a global backend service. Defaults to `EXTERNAL`.",
				"Some valid choices include: \"EXTERNAL\", \"INTERNAL_SELF_MANAGED\"",
			]
			required:      false
			default:       "EXTERNAL"
			type:          "str"
			version_added: "2.7"
		}
		name: {
			description: [
				"Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.",
			]

			required: true
			type:     "str"
		}
		port_name: {
			description: [
				"Name of backend port. The same name should appear in the instance groups referenced by this service. Required when the load balancing scheme is EXTERNAL.",
			]

			required: false
			type:     "str"
		}
		protocol: {
			description: [
				"The protocol this BackendService uses to communicate with backends.",
				"Possible values are HTTP, HTTPS, HTTP2, TCP, and SSL. The default is HTTP. **NOTE**: HTTP2 is only valid for beta HTTP/2 load balancer types and may result in errors if used with the GA API.",
				"Some valid choices include: \"HTTP\", \"HTTPS\", \"HTTP2\", \"TCP\", \"SSL\"",
			]
			required: false
			type:     "str"
		}
		security_policy: {
			description: [
				"The security policy associated with this backend service.",
			]
			required:      false
			type:          "str"
			version_added: "2.8"
		}
		session_affinity: {
			description: [
				"Type of session affinity to use. The default is NONE. Session affinity is not applicable if the protocol is UDP.",
				"Some valid choices include: \"NONE\", \"CLIENT_IP\", \"CLIENT_IP_PORT_PROTO\", \"CLIENT_IP_PROTO\", \"GENERATED_COOKIE\", \"HEADER_FIELD\", \"HTTP_COOKIE\"",
			]

			required: false
			type:     "str"
		}
		timeout_sec: {
			description: [
				"How many seconds to wait for the backend before considering it a failed request. Default is 30 seconds. Valid range is [1, 86400].",
			]

			required: false
			type:     "int"
			aliases: [
				"timeout_seconds",
			]
		}
		project: {
			description: [
				"The Google Cloud Platform project to use.",
			]
			type: "str"
		}
		auth_kind: {
			description: [
				"The type of credential used.",
			]
			type:     "str"
			required: true
			choices: [
				"application",
				"machineaccount",
				"serviceaccount",
			]
		}
		service_account_contents: {
			description: [
				"The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.",
			]

			type: "jsonarg"
		}
		service_account_file: {
			description: [
				"The path of a Service Account JSON file if serviceaccount is selected as type.",
			]
			type: "path"
		}
		service_account_email: {
			description: [
				"An optional service account email address if machineaccount is selected and the user does not wish to use the default email.",
			]

			type: "str"
		}
		scopes: {
			description: [
				"Array of scopes to be used",
			]
			type: "list"
		}
		env_type: {
			description: [
				"Specifies which Ansible environment you're running this module within.",
				"This should not be set unless you know what you're doing.",
				"This only alters the User Agent string for any API requests.",
			]
			type: "str"
		}
	}
	notes: [
		"API Reference: U(https://cloud.google.com/compute/docs/reference/v1/backendServices)",
		"Official Documentation: U(https://cloud.google.com/compute/docs/load-balancing/http/backend-service)",
		"for authentication, you can set service_account_file using the C(gcp_service_account_file) env variable.",
		"for authentication, you can set service_account_contents using the C(GCP_SERVICE_ACCOUNT_CONTENTS) env variable.",
		"For authentication, you can set service_account_email using the C(GCP_SERVICE_ACCOUNT_EMAIL) env variable.",
		"For authentication, you can set auth_kind using the C(GCP_AUTH_KIND) env variable.",
		"For authentication, you can set scopes using the C(GCP_SCOPES) env variable.",
		"Environment variables values will only be used if the playbook values are not set.",
		"The I(service_account_email) and I(service_account_file) options are mutually exclusive.",
	]
}
