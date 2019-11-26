package ansible

module: gcp_pubsub_subscription: {
	module: "gcp_pubsub_subscription"
	description: [
		"A named resource representing the stream of messages from a single, specific topic, to be delivered to the subscribing application.",
	]

	short_description: "Creates a GCP Subscription"
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
		name: {
			description: [
				"Name of the subscription.",
			]
			required: true
			type:     "str"
		}
		topic: {
			description: [
				"A reference to a Topic resource.",
				"This field represents a link to a Topic resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'name' and value of your resource's name Alternatively, you can add `register: name-of-resource` to a gcp_pubsub_topic task and then set this topic field to \"{{ name-of-resource }}\"",
			]

			required: true
			type:     "dict"
		}
		labels: {
			description: [
				"A set of key/value label pairs to assign to this Subscription.",
			]
			required:      false
			type:          "dict"
			version_added: "2.8"
		}
		push_config: {
			description: [
				"If push delivery is used with this subscription, this field is used to configure it. An empty pushConfig signifies that the subscriber will pull and ack messages using API methods.",
			]

			required: false
			type:     "dict"
			suboptions: {
				oidc_token: {
					description: [
						"If specified, Pub/Sub will generate and attach an OIDC JWT token as an Authorization header in the HTTP request for every pushed message.",
					]

					required:      false
					type:          "dict"
					version_added: "2.10"
					suboptions: {
						service_account_email: {
							description: [
								"Service account email to be used for generating the OIDC token.",
								"The caller (for subscriptions.create, subscriptions.patch, and subscriptions.modifyPushConfig RPCs) must have the iam.serviceAccounts.actAs permission for the service account.",
							]

							required: true
							type:     "str"
						}
						audience: {
							description: [
								"Audience to be used when generating OIDC token. The audience claim identifies the recipients that the JWT is intended for. The audience value is a single case-sensitive string. Having multiple values (array) for the audience field is not supported. More info about the OIDC JWT token audience here: U(https://tools.ietf.org/html/rfc7519#section-4.1.3) Note: if not specified, the Push endpoint URL will be used.",
							]

							required: false
							type:     "str"
						}
					}
				}
				push_endpoint: {
					description: [
						"A URL locating the endpoint to which messages should be pushed.",
						"For example, a Webhook endpoint might use \"U(https://example.com/push\").",
					]
					required: true
					type:     "str"
				}
				attributes: {
					description: [
						"Endpoint configuration attributes.",
						"Every endpoint has a set of API supported attributes that can be used to control different aspects of the message delivery.",
						"The currently supported attribute is x-goog-version, which you can use to change the format of the pushed message. This attribute indicates the version of the data expected by the endpoint. This controls the shape of the pushed message (i.e., its fields and metadata). The endpoint version is based on the version of the Pub/Sub API.",
						"If not present during the subscriptions.create call, it will default to the version of the API used to make such call. If not present during a subscriptions.modifyPushConfig call, its value will not be changed. subscriptions.get calls will always return a valid version, even if the subscription was created without this attribute.",
						"The possible values for this attribute are: - v1beta1: uses the push format defined in the v1beta1 Pub/Sub API.",
						"- v1 or v1beta2: uses the push format defined in the v1 Pub/Sub API.",
					]
					required: false
					type:     "dict"
				}
			}
		}
		ack_deadline_seconds: {
			description: [
				"This value is the maximum time after a subscriber receives a message before the subscriber should acknowledge the message. After message delivery but before the ack deadline expires and before the message is acknowledged, it is an outstanding message and will not be delivered again during that time (on a best-effort basis).",
				"For pull subscriptions, this value is used as the initial value for the ack deadline. To override this value for a given message, call subscriptions.modifyAckDeadline with the corresponding ackId if using pull. The minimum custom deadline you can specify is 10 seconds. The maximum custom deadline you can specify is 600 seconds (10 minutes).",
				"If this parameter is 0, a default value of 10 seconds is used.",
				"For push delivery, this value is also used to set the request timeout for the call to the push endpoint.",
				"If the subscriber never acknowledges the message, the Pub/Sub system will eventually redeliver the message.",
			]

			required: false
			type:     "int"
		}
		message_retention_duration: {
			description: [
				"How long to retain unacknowledged messages in the subscription's backlog, from the moment a message is published. If retainAckedMessages is true, then this also configures the retention of acknowledged messages, and thus configures how far back in time a subscriptions.seek can be done. Defaults to 7 days. Cannot be more than 7 days (`\"604800s\"`) or less than 10 minutes (`\"600s\"`).",
				"A duration in seconds with up to nine fractional digits, terminated by 's'. Example: `\"600.5s\"`.",
			]

			required:      false
			default:       "604800s"
			type:          "str"
			version_added: "2.8"
		}
		retain_acked_messages: {
			description: [
				"Indicates whether to retain acknowledged messages. If `true`, then messages are not expunged from the subscription's backlog, even if they are acknowledged, until they fall out of the messageRetentionDuration window.",
			]

			required:      false
			type:          "bool"
			version_added: "2.8"
		}
		expiration_policy: {
			description: [
				"A policy that specifies the conditions for this subscription's expiration.",
				"A subscription is considered active as long as any connected subscriber is successfully consuming messages from the subscription or is issuing operations on the subscription. If expirationPolicy is not set, a default policy with ttl of 31 days will be used. If it is set but left empty, the resource never expires. The minimum allowed value for expirationPolicy.ttl is 1 day.",
			]

			required:      false
			type:          "dict"
			version_added: "2.9"
			suboptions: ttl: {
				description: [
					"Specifies the \"time-to-live\" duration for an associated resource. The resource expires if it is not active for a period of ttl.",
					"If ttl is not set, the associated resource never expires.",
					"A duration in seconds with up to nine fractional digits, terminated by 's'.",
					"Example - \"3.5s\".",
				]
				required: false
				type:     "str"
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
		"API Reference: U(https://cloud.google.com/pubsub/docs/reference/rest/v1/projects.subscriptions)",
		"Managing Subscriptions: U(https://cloud.google.com/pubsub/docs/admin#managing_subscriptions)",
		"for authentication, you can set service_account_file using the C(gcp_service_account_file) env variable.",
		"for authentication, you can set service_account_contents using the C(GCP_SERVICE_ACCOUNT_CONTENTS) env variable.",
		"For authentication, you can set service_account_email using the C(GCP_SERVICE_ACCOUNT_EMAIL) env variable.",
		"For authentication, you can set auth_kind using the C(GCP_AUTH_KIND) env variable.",
		"For authentication, you can set scopes using the C(GCP_SCOPES) env variable.",
		"Environment variables values will only be used if the playbook values are not set.",
		"The I(service_account_email) and I(service_account_file) options are mutually exclusive.",
	]
}
