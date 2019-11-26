package ansible

module: gcp_bigquery_dataset: {
	module: "gcp_bigquery_dataset"
	description: [
		"Datasets allow you to organize and control access to your tables.",
	]
	short_description: "Creates a GCP Dataset"
	version_added:     "2.8"
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
				"Dataset name.",
			]
			required: false
			type:     "str"
		}
		access: {
			description: [
				"An array of objects that define dataset access for one or more entities.",
			]
			required: false
			type:     "list"
			suboptions: {
				domain: {
					description: [
						"A domain to grant access to. Any users signed in with the domain specified will be granted the specified access .",
					]

					required: false
					type:     "str"
				}
				group_by_email: {
					description: [
						"An email address of a Google Group to grant access to.",
					]
					required: false
					type:     "str"
				}
				role: {
					description: [
						"Describes the rights granted to the user specified by the other member of the access object. Primitive, Predefined and custom roles are supported. Predefined roles that have equivalent primitive roles are swapped by the API to their Primitive counterparts, and will show a diff post-create. See [official docs](U(https://cloud.google.com/bigquery/docs/access-control)).",
					]

					required: false
					type:     "str"
				}
				special_group: {
					description: [
						"A special group to grant access to.",
						"Possible values include: * `projectOwners`: Owners of the enclosing project.",
						"* `projectReaders`: Readers of the enclosing project.",
						"* `projectWriters`: Writers of the enclosing project.",
						"* `allAuthenticatedUsers`: All authenticated BigQuery users. .",
					]
					required: false
					type:     "str"
				}
				user_by_email: {
					description: [
						"An email address of a user to grant access to. For example: fred@example.com .",
					]

					required: false
					type:     "str"
				}
				view: {
					description: [
						"A view from a different dataset to grant access to. Queries executed against that view will have read access to tables in this dataset. The role field is not required when this field is set. If that view is updated by any user, access to the view needs to be granted again via an update operation.",
					]

					required: false
					type:     "dict"
					suboptions: {
						dataset_id: {
							description: [
								"The ID of the dataset containing this table.",
							]
							required: true
							type:     "str"
						}
						project_id: {
							description: [
								"The ID of the project containing this table.",
							]
							required: true
							type:     "str"
						}
						table_id: {
							description: [
								"The ID of the table. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores. The maximum length is 1,024 characters.",
							]

							required: true
							type:     "str"
						}
					}
				}
			}
		}
		dataset_reference: {
			description: [
				"A reference that identifies the dataset.",
			]
			required: true
			type:     "dict"
			suboptions: {
				dataset_id: {
					description: [
						"A unique ID for this dataset, without the project name. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores. The maximum length is 1,024 characters.",
					]

					required: true
					type:     "str"
				}
				project_id: {
					description: [
						"The ID of the project containing this dataset.",
					]
					required: false
					type:     "str"
				}
			}
		}
		default_table_expiration_ms: {
			description: [
				"The default lifetime of all tables in the dataset, in milliseconds.",
				"The minimum value is 3600000 milliseconds (one hour).",
				"Once this property is set, all newly-created tables in the dataset will have an `expirationTime` property set to the creation time plus the value in this property, and changing the value will only affect new tables, not existing ones. When the `expirationTime` for a given table is reached, that table will be deleted automatically.",
				"If a table's `expirationTime` is modified or removed before the table expires, or if you provide an explicit `expirationTime` when creating a table, that value takes precedence over the default expiration time indicated by this property.",
			]

			required: false
			type:     "int"
		}
		default_partition_expiration_ms: {
			description: [
				"The default partition expiration for all partitioned tables in the dataset, in milliseconds.",
				"Once this property is set, all newly-created partitioned tables in the dataset will have an `expirationMs` property in the `timePartitioning` settings set to this value, and changing the value will only affect new tables, not existing ones. The storage in a partition will have an expiration time of its partition time plus this value.",
				"Setting this property overrides the use of `defaultTableExpirationMs` for partitioned tables: only one of `defaultTableExpirationMs` and `defaultPartitionExpirationMs` will be used for any new partitioned table. If you provide an explicit `timePartitioning.expirationMs` when creating or updating a partitioned table, that value takes precedence over the default partition expiration time indicated by this property.",
			]

			required:      false
			type:          "int"
			version_added: "2.9"
		}
		description: {
			description: [
				"A user-friendly description of the dataset.",
			]
			required: false
			type:     "str"
		}
		friendly_name: {
			description: [
				"A descriptive name for the dataset.",
			]
			required: false
			type:     "str"
		}
		labels: {
			description: [
				"The labels associated with this dataset. You can use these to organize and group your datasets .",
			]

			required: false
			type:     "dict"
		}
		location: {
			description: [
				"The geographic location where the dataset should reside.",
				"See [official docs](U(https://cloud.google.com/bigquery/docs/dataset-locations)).",
				"There are two types of locations, regional or multi-regional. A regional location is a specific geographic place, such as Tokyo, and a multi-regional location is a large geographic area, such as the United States, that contains at least two geographic places.",
				"Possible regional values include: `asia-east1`, `asia-northeast1`, `asia-southeast1`, `australia-southeast1`, `europe-north1`, `europe-west2` and `us-east4`.",
				"Possible multi-regional values: `EU` and `US`.",
				"The default value is multi-regional location `US`.",
				"Changing this forces a new resource to be created.",
			]
			required: false
			default:  "US"
			type:     "str"
		}
		default_encryption_configuration: {
			description: [
				"The default encryption key for all tables in the dataset. Once this property is set, all newly-created partitioned tables in the dataset will have encryption key set to this value, unless table creation request (or query) overrides the key.",
			]

			required:      false
			type:          "dict"
			version_added: "2.10"
			suboptions: kms_key_name: {
				description: [
					"Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table. The BigQuery Service Account associated with your project requires access to this encryption key.",
				]

				required: true
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
}
