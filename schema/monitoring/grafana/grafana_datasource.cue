package ansible

module: grafana_datasource: {
	module: "grafana_datasource"
	author: [
		"Thierry Sallé (@seuf)",
		"Martin Wang (@martinwangjian)",
	]
	version_added:     "2.5"
	short_description: "Manage Grafana datasources"
	description: ["Create/update/delete Grafana datasources via API."]
	options: {
		grafana_url: {
			description: ["The Grafana URL."]
			required: true
		}
		name: {
			description: ["The name of the datasource."]
			required: true
		}
		ds_type: {
			description: ["The type of the datasource."]
			required: true
			choices: ["graphite", "prometheus", "elasticsearch", "influxdb", "opentsdb", "mysql", "postgres", "cloudwatch", "alexanderzobnin-zabbix-datasource"]
		}
		url: {
			description: ["The URL of the datasource."]
			required: true
			aliases: ["ds_url"]
		}
		access: {
			description: ["The access mode for this datasource."]
			choices: ["direct", "proxy"]
			default: "proxy"
		}
		url_username: {
			description: ["The Grafana API user."]
			default: "admin"
			aliases: ["grafana_user"]
			version_added: 2.7
		}
		url_password: {
			description: ["The Grafana API password."]
			default: "admin"
			aliases: ["grafana_password"]
			version_added: 2.7
		}
		grafana_api_key: description: [
			"The Grafana API key.",
			"If set, C(grafana_user) and C(grafana_password) will be ignored.",
		]
		database: {
			description: [
				"Name of the database for the datasource.",
				"This options is required when the C(ds_type) is C(influxdb), C(elasticsearch) (index name), C(mysql) or C(postgres).",
			]
			required: false
		}
		user: description: ["The datasource login user for influxdb datasources."]
		password: description: ["The datasource password"]
		basic_auth_user: description: [
			"The datasource basic auth user.",
			"Setting this option with basic_auth_password will enable basic auth.",
		]
		basic_auth_password: description: ["The datasource basic auth password, when C(basic auth) is C(yes)."]
		with_credentials: {
			description: ["Whether credentials such as cookies or auth headers should be sent with cross-site requests."]
			type:    "bool"
			default: "no"
		}
		tls_client_cert: description: [
			"The client TLS certificate.",
			"If C(tls_client_cert) and C(tls_client_key) are set, this will enable TLS authentication.",
			"Starts with ----- BEGIN CERTIFICATE -----",
		]
		tls_client_key: description: [
			"The client TLS private key",
			"Starts with ----- BEGIN RSA PRIVATE KEY -----",
		]
		tls_ca_cert: description: [
			"The TLS CA certificate for self signed certificates.",
			"Only used when C(tls_client_cert) and C(tls_client_key) are set.",
		]
		tls_skip_verify: {
			description: ["Skip the TLS datasource certificate verification."]
			type:          "bool"
			default:       false
			version_added: 2.6
		}
		is_default: {
			description: ["Make this datasource the default one."]
			type:    "bool"
			default: "no"
		}
		org_id: {
			description: [
				"Grafana Organisation ID in which the datasource should be created.",
				"Not used when C(grafana_api_key) is set, because the C(grafana_api_key) only belong to one organisation.",
			]
			default: 1
		}
		state: {
			description: ["Status of the datasource"]
			choices: ["absent", "present"]
			default: "present"
		}
		es_version: {
			description: [
				"Elasticsearch version (for C(ds_type = elasticsearch) only)",
				"Version 56 is for elasticsearch 5.6+ where you can specify the C(max_concurrent_shard_requests) option.",
			]
			choices: [2, 5, 56]
			default: 5
		}
		max_concurrent_shard_requests: {
			description: ["Starting with elasticsearch 5.6, you can specify the max concurrent shard per requests."]
			default: 256
		}
		time_field: {
			description: [
				"Name of the time field in elasticsearch ds.",
				"For example C(@timestamp)",
			]
			default: "timestamp"
		}
		time_interval: description: [
			"Minimum group by interval for C(influxdb) or C(elasticsearch) datasources.",
			"for example C(>10s)",
		]
		interval: {
			description: ["For elasticsearch C(ds_type), this is the index pattern used."]
			choices: ["", "Hourly", "Daily", "Weekly", "Monthly", "Yearly"]
		}
		tsdb_version: {
			description: [
				"The opentsdb version.",
				"Use C(1) for <=2.1, C(2) for ==2.2, C(3) for ==2.3.",
			]
			choices: [1, 2, 3]
			default: 1
		}
		tsdb_resolution: {
			description: ["The opentsdb time resolution."]
			choices: ["millisecond", "second"]
			default: "second"
		}
		sslmode: {
			description: ["SSL mode for C(postgres) datasource type."]
			choices: ["disable", "require", "verify-ca", "verify-full"]
		}
		trends: {
			required: false
			description: ["Use trends or not for zabbix datasource type"]
			type:          "bool"
			version_added: 2.6
		}
		client_cert: {
			required: false
			description: ["TLS certificate path used by ansible to query grafana api"]
			version_added: 2.8
		}
		client_key: {
			required: false
			description: ["TLS private key path used by ansible to query grafana api"]
			version_added: 2.8
		}
		validate_certs: {
			description: ["Whether to validate the Grafana certificate."]
			type:    "bool"
			default: "yes"
		}
		use_proxy: {
			description: ["Boolean of whether or not to use proxy."]
			default:       "yes"
			type:          "bool"
			version_added: 2.8
		}
		aws_auth_type: {
			description: ["Type for AWS authentication for CloudWatch datasource type (authType of grafana api)"]
			default: "keys"
			choices: ["keys", "credentials", "arn"]
			version_added: 2.8
		}
		aws_default_region: {
			description: ["AWS default region for CloudWatch datasource type"]
			default: "us-east-1"
			choices: [
				"ap-northeast-1",
				"ap-northeast-2",
				"ap-southeast-1",
				"ap-southeast-2",
				"ap-south-1",
				"ca-central-1",
				"cn-north-1",
				"cn-northwest-1",
				"eu-central-1",
				"eu-west-1",
				"eu-west-2",
				"eu-west-3",
				"sa-east-1",
				"us-east-1",
				"us-east-2",
				"us-gov-west-1",
				"us-west-1",
				"us-west-2",
			]

			version_added: 2.8
		}
		aws_credentials_profile: {
			description: ["Profile for AWS credentials for CloudWatch datasource type when C(aws_auth_type) is C(credentials)"]
			default:       ""
			required:      false
			version_added: 2.8
		}
		aws_access_key: {
			description: ["AWS access key for CloudWatch datasource type when C(aws_auth_type) is C(keys)"]
			default:       ""
			required:      false
			version_added: 2.8
		}
		aws_secret_key: {
			description: ["AWS secret key for CloudWatch datasource type when C(aws_auth_type) is C(keys)"]
			default:       ""
			required:      false
			version_added: 2.8
		}
		aws_assume_role_arn: {
			description: ["AWS IAM role arn to assume for CloudWatch datasource type when C(aws_auth_type) is C(arn)"]
			default:       ""
			required:      false
			version_added: 2.8
		}
		aws_custom_metrics_namespaces: {
			description: ["Namespaces of Custom Metrics for CloudWatch datasource type"]
			default:       ""
			required:      false
			version_added: 2.8
		}
	}
}
