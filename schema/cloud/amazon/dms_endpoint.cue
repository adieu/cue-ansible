package ansible

module: dms_endpoint: {
	module:            "dms_endpoint"
	short_description: "Creates or destroys a data migration services endpoint"
	description: [
		"Creates or destroys a data migration services endpoint, that can be used to replicate data.",
	]

	version_added: "2.9"
	options: {
		state: {
			description: [
				"State of the endpoint.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
		endpointidentifier: {
			description: [
				"An identifier name for the endpoint.",
			]
			type: "str"
		}
		endpointtype: {
			description: [
				"Type of endpoint we want to manage.",
			]
			choices: ["source", "target"]
			type: "str"
		}
		enginename: {
			description: [
				"Database engine that we want to use, please refer to the AWS DMS for more information on the supported engines and their limitations.",
			]

			choices: [
				"mysql",
				"oracle",
				"postgres",
				"mariadb",
				"aurora",
				"redshift",
				"s3",
				"db2",
				"azuredb",
				"sybase",
				"dynamodb",
				"mongodb",
				"sqlserver",
			]
			type: "str"
		}
		username: {
			description: [
				"Username our endpoint will use to connect to the database.",
			]
			type: "str"
		}
		password: {
			description: [
				"Password used to connect to the database this attribute can only be written the AWS API does not return this parameter.",
			]

			type: "str"
		}
		servername: {
			description: [
				"Servername that the endpoint will connect to.",
			]
			type: "str"
		}
		port: {
			description: [
				"TCP port for access to the database.",
			]
			type: "int"
		}
		databasename: {
			description: [
				"Name for the database on the origin or target side",
			]
			type: "str"
		}
		extraconnectionattributes: {
			description: [
				"Extra attributes for the database connection, the AWS documentation states \" For more information about extra connection attributes, see the documentation section for your data store.\"",
			]

			type: "str"
		}
		kmskeyid: {
			description: [
				"Encryption key to use to encrypt replication storage and connection information.",
			]

			type: "str"
		}
		tags: {
			description: [
				"A list of tags to add to the endpoint.",
			]
			type: "dict"
		}
		certificatearn: {
			description: [
				"Amazon Resource Name (ARN) for the certificate.",
			]
			type: "str"
		}
		sslmode: {
			description: [
				"Mode used for the ssl connection",
			]
			default: "none"
			choices: ["none", "require", "verify-ca", "verify-full"]
			type: "str"
		}
		serviceaccessrolearn: {
			description: [
				"Amazon Resource Name (ARN) for the service access role that you want to use to create the endpoint.",
			]

			type: "str"
		}
		externaltabledefinition: {
			description: [
				"The external table definition",
			]
			type: "str"
		}
		dynamodbsettings: {
			description: [
				"Settings in JSON format for the target Amazon DynamoDB endpoint if source or target is dynamodb",
			]

			type: "dict"
		}
		s3settings: {
			description: [
				"S3 buckets settings for the target Amazon S3 endpoint.",
			]
			type: "dict"
		}
		dmstransfersettings: {
			description: [
				"The settings in JSON format for the DMS transfer type of source endpoint",
			]

			type: "dict"
		}
		mongodbsettings: {
			description: [
				"Settings in JSON format for the source MongoDB endpoint",
			]
			type: "dict"
		}
		kinesissettings: {
			description: [
				"Settings in JSON format for the target Amazon Kinesis Data Streams endpoint",
			]

			type: "dict"
		}
		elasticsearchsettings: {
			description: [
				"Settings in JSON format for the target Elasticsearch endpoint",
			]
			type: "dict"
		}
		wait: {
			description: [
				"should wait for the object to be deleted when state = absent",
			]
			type:    "bool"
			default: "false"
		}
		timeout: {
			description: [
				"time in seconds we should wait for when deleting a resource",
			]
			type: "int"
		}
		retries: {
			description: [
				"number of times we should retry when deleting a resource",
			]
			type: "int"
		}
	}
	author: [
		"Rui Moreira (@ruimoreira)",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
