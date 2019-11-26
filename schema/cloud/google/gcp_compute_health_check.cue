package ansible

module: gcp_compute_health_check: {
	module: "gcp_compute_health_check"
	description: [
		"Health Checks determine whether instances are responsive and able to do work.",
		"They are an important part of a comprehensive load balancing configuration, as they enable monitoring instances behind load balancers.",
		"Health Checks poll instances at a specified interval. Instances that do not respond successfully to some number of probes in a row are marked as unhealthy. No new connections are sent to unhealthy instances, though existing connections will continue. The health check will continue to poll unhealthy instances. If an instance later responds successfully to some number of consecutive probes, it is marked healthy again and can receive new connections.",
	]

	short_description: "Creates a GCP HealthCheck"
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
		check_interval_sec: {
			description: [
				"How often (in seconds) to send a health check. The default value is 5 seconds.",
			]
			required: false
			default:  "5"
			type:     "int"
		}
		description: {
			description: [
				"An optional description of this resource. Provide this property when you create the resource.",
			]

			required: false
			type:     "str"
		}
		healthy_threshold: {
			description: [
				"A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.",
			]

			required: false
			default:  "2"
			type:     "int"
		}
		name: {
			description: [
				"Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.",
			]

			required: true
			type:     "str"
		}
		timeout_sec: {
			description: [
				"How long (in seconds) to wait before claiming failure.",
				"The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.",
			]

			required: false
			default:  "5"
			type:     "int"
			aliases: [
				"timeout_seconds",
			]
		}
		unhealthy_threshold: {
			description: [
				"A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.",
			]

			required: false
			default:  "2"
			type:     "int"
		}
		type: {
			description: [
				"Specifies the type of the healthCheck, either TCP, SSL, HTTP or HTTPS. If not specified, the default is TCP. Exactly one of the protocol-specific health check field must be specified, which must match type field.",
				"Some valid choices include: \"TCP\", \"SSL\", \"HTTP\", \"HTTPS\", \"HTTP2\"",
			]
			required: false
			type:     "str"
		}
		http_health_check: {
			description: [
				"A nested object resource.",
			]
			required: false
			type:     "dict"
			suboptions: {
				host: {
					description: [
						"The value of the host header in the HTTP health check request.",
						"If left empty (default value), the public IP on behalf of which this health check is performed will be used.",
					]

					required: false
					type:     "str"
				}
				request_path: {
					description: [
						"The request path of the HTTP health check request.",
						"The default value is /.",
					]
					required: false
					default:  "/"
					type:     "str"
				}
				response: {
					description: [
						"The bytes to match against the beginning of the response data. If left empty (the default value), any response will indicate health. The response data can only be ASCII.",
					]

					required: false
					type:     "str"
				}
				port: {
					description: [
						"The TCP port number for the HTTP health check request.",
						"The default value is 80.",
					]
					required: false
					type:     "int"
				}
				port_name: {
					description: [
						"Port name as defined in InstanceGroup#NamedPort#name. If both port and port_name are defined, port takes precedence.",
					]

					required: false
					type:     "str"
				}
				proxy_header: {
					description: [
						"Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.",
						"Some valid choices include: \"NONE\", \"PROXY_V1\"",
					]
					required: false
					default:  "NONE"
					type:     "str"
				}
				port_specification: {
					description: [
						"Specifies how port is selected for health checking, can be one of the following values: * `USE_FIXED_PORT`: The port number in `port` is used for health checking.",
						"* `USE_NAMED_PORT`: The `portName` is used for health checking.",
						"* `USE_SERVING_PORT`: For NetworkEndpointGroup, the port specified for each network endpoint is used for health checking. For other backends, the port or named port specified in the Backend Service is used for health checking.",
						"If not specified, HTTP health check follows behavior specified in `port` and `portName` fields.",
						"Some valid choices include: \"USE_FIXED_PORT\", \"USE_NAMED_PORT\", \"USE_SERVING_PORT\"",
					]
					required:      false
					type:          "str"
					version_added: "2.9"
				}
			}
		}
		https_health_check: {
			description: [
				"A nested object resource.",
			]
			required: false
			type:     "dict"
			suboptions: {
				host: {
					description: [
						"The value of the host header in the HTTPS health check request.",
						"If left empty (default value), the public IP on behalf of which this health check is performed will be used.",
					]

					required: false
					type:     "str"
				}
				request_path: {
					description: [
						"The request path of the HTTPS health check request.",
						"The default value is /.",
					]
					required: false
					default:  "/"
					type:     "str"
				}
				response: {
					description: [
						"The bytes to match against the beginning of the response data. If left empty (the default value), any response will indicate health. The response data can only be ASCII.",
					]

					required: false
					type:     "str"
				}
				port: {
					description: [
						"The TCP port number for the HTTPS health check request.",
						"The default value is 443.",
					]
					required: false
					type:     "int"
				}
				port_name: {
					description: [
						"Port name as defined in InstanceGroup#NamedPort#name. If both port and port_name are defined, port takes precedence.",
					]

					required: false
					type:     "str"
				}
				proxy_header: {
					description: [
						"Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.",
						"Some valid choices include: \"NONE\", \"PROXY_V1\"",
					]
					required: false
					default:  "NONE"
					type:     "str"
				}
				port_specification: {
					description: [
						"Specifies how port is selected for health checking, can be one of the following values: * `USE_FIXED_PORT`: The port number in `port` is used for health checking.",
						"* `USE_NAMED_PORT`: The `portName` is used for health checking.",
						"* `USE_SERVING_PORT`: For NetworkEndpointGroup, the port specified for each network endpoint is used for health checking. For other backends, the port or named port specified in the Backend Service is used for health checking.",
						"If not specified, HTTPS health check follows behavior specified in `port` and `portName` fields.",
						"Some valid choices include: \"USE_FIXED_PORT\", \"USE_NAMED_PORT\", \"USE_SERVING_PORT\"",
					]
					required:      false
					type:          "str"
					version_added: "2.9"
				}
			}
		}
		tcp_health_check: {
			description: [
				"A nested object resource.",
			]
			required: false
			type:     "dict"
			suboptions: {
				request: {
					description: [
						"The application data to send once the TCP connection has been established (default value is empty). If both request and response are empty, the connection establishment alone will indicate health. The request data can only be ASCII.",
					]

					required: false
					type:     "str"
				}
				response: {
					description: [
						"The bytes to match against the beginning of the response data. If left empty (the default value), any response will indicate health. The response data can only be ASCII.",
					]

					required: false
					type:     "str"
				}
				port: {
					description: [
						"The TCP port number for the TCP health check request.",
						"The default value is 443.",
					]
					required: false
					type:     "int"
				}
				port_name: {
					description: [
						"Port name as defined in InstanceGroup#NamedPort#name. If both port and port_name are defined, port takes precedence.",
					]

					required: false
					type:     "str"
				}
				proxy_header: {
					description: [
						"Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.",
						"Some valid choices include: \"NONE\", \"PROXY_V1\"",
					]
					required: false
					default:  "NONE"
					type:     "str"
				}
				port_specification: {
					description: [
						"Specifies how port is selected for health checking, can be one of the following values: * `USE_FIXED_PORT`: The port number in `port` is used for health checking.",
						"* `USE_NAMED_PORT`: The `portName` is used for health checking.",
						"* `USE_SERVING_PORT`: For NetworkEndpointGroup, the port specified for each network endpoint is used for health checking. For other backends, the port or named port specified in the Backend Service is used for health checking.",
						"If not specified, TCP health check follows behavior specified in `port` and `portName` fields.",
						"Some valid choices include: \"USE_FIXED_PORT\", \"USE_NAMED_PORT\", \"USE_SERVING_PORT\"",
					]
					required:      false
					type:          "str"
					version_added: "2.9"
				}
			}
		}
		ssl_health_check: {
			description: [
				"A nested object resource.",
			]
			required: false
			type:     "dict"
			suboptions: {
				request: {
					description: [
						"The application data to send once the SSL connection has been established (default value is empty). If both request and response are empty, the connection establishment alone will indicate health. The request data can only be ASCII.",
					]

					required: false
					type:     "str"
				}
				response: {
					description: [
						"The bytes to match against the beginning of the response data. If left empty (the default value), any response will indicate health. The response data can only be ASCII.",
					]

					required: false
					type:     "str"
				}
				port: {
					description: [
						"The TCP port number for the SSL health check request.",
						"The default value is 443.",
					]
					required: false
					type:     "int"
				}
				port_name: {
					description: [
						"Port name as defined in InstanceGroup#NamedPort#name. If both port and port_name are defined, port takes precedence.",
					]

					required: false
					type:     "str"
				}
				proxy_header: {
					description: [
						"Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.",
						"Some valid choices include: \"NONE\", \"PROXY_V1\"",
					]
					required: false
					default:  "NONE"
					type:     "str"
				}
				port_specification: {
					description: [
						"Specifies how port is selected for health checking, can be one of the following values: * `USE_FIXED_PORT`: The port number in `port` is used for health checking.",
						"* `USE_NAMED_PORT`: The `portName` is used for health checking.",
						"* `USE_SERVING_PORT`: For NetworkEndpointGroup, the port specified for each network endpoint is used for health checking. For other backends, the port or named port specified in the Backend Service is used for health checking.",
						"If not specified, SSL health check follows behavior specified in `port` and `portName` fields.",
						"Some valid choices include: \"USE_FIXED_PORT\", \"USE_NAMED_PORT\", \"USE_SERVING_PORT\"",
					]
					required:      false
					type:          "str"
					version_added: "2.9"
				}
			}
		}
		http2_health_check: {
			description: [
				"A nested object resource.",
			]
			required:      false
			type:          "dict"
			version_added: "2.10"
			suboptions: {
				host: {
					description: [
						"The value of the host header in the HTTP2 health check request.",
						"If left empty (default value), the public IP on behalf of which this health check is performed will be used.",
					]

					required: false
					type:     "str"
				}
				request_path: {
					description: [
						"The request path of the HTTP2 health check request.",
						"The default value is /.",
					]
					required: false
					default:  "/"
					type:     "str"
				}
				response: {
					description: [
						"The bytes to match against the beginning of the response data. If left empty (the default value), any response will indicate health. The response data can only be ASCII.",
					]

					required: false
					type:     "str"
				}
				port: {
					description: [
						"The TCP port number for the HTTP2 health check request.",
						"The default value is 443.",
					]
					required: false
					type:     "int"
				}
				port_name: {
					description: [
						"Port name as defined in InstanceGroup#NamedPort#name. If both port and port_name are defined, port takes precedence.",
					]

					required: false
					type:     "str"
				}
				proxy_header: {
					description: [
						"Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.",
						"Some valid choices include: \"NONE\", \"PROXY_V1\"",
					]
					required: false
					default:  "NONE"
					type:     "str"
				}
				port_specification: {
					description: [
						"Specifies how port is selected for health checking, can be one of the following values: * `USE_FIXED_PORT`: The port number in `port` is used for health checking.",
						"* `USE_NAMED_PORT`: The `portName` is used for health checking.",
						"* `USE_SERVING_PORT`: For NetworkEndpointGroup, the port specified for each network endpoint is used for health checking. For other backends, the port or named port specified in the Backend Service is used for health checking.",
						"If not specified, HTTP2 health check follows behavior specified in `port` and `portName` fields.",
						"Some valid choices include: \"USE_FIXED_PORT\", \"USE_NAMED_PORT\", \"USE_SERVING_PORT\"",
					]
					required: false
					type:     "str"
				}
			}
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
		"API Reference: U(https://cloud.google.com/compute/docs/reference/rest/v1/healthChecks)",
		"Official Documentation: U(https://cloud.google.com/load-balancing/docs/health-checks)",
		"for authentication, you can set service_account_file using the C(gcp_service_account_file) env variable.",
		"for authentication, you can set service_account_contents using the C(GCP_SERVICE_ACCOUNT_CONTENTS) env variable.",
		"For authentication, you can set service_account_email using the C(GCP_SERVICE_ACCOUNT_EMAIL) env variable.",
		"For authentication, you can set auth_kind using the C(GCP_AUTH_KIND) env variable.",
		"For authentication, you can set scopes using the C(GCP_SCOPES) env variable.",
		"Environment variables values will only be used if the playbook values are not set.",
		"The I(service_account_email) and I(service_account_file) options are mutually exclusive.",
	]
}
