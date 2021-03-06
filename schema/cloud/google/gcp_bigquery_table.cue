package ansible

module: gcp_bigquery_table: {
	module: "gcp_bigquery_table"
	description: [
		"A Table that belongs to a Dataset .",
	]
	short_description: "Creates a GCP Table"
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
		table_reference: {
			description: [
				"Reference describing the ID of this table.",
			]
			required: false
			type:     "dict"
			suboptions: {
				dataset_id: {
					description: [
						"The ID of the dataset containing this table.",
					]
					required: false
					type:     "str"
				}
				project_id: {
					description: [
						"The ID of the project containing this table.",
					]
					required: false
					type:     "str"
				}
				table_id: {
					description: [
						"The ID of the the table.",
					]
					required: false
					type:     "str"
				}
			}
		}
		clustering: {
			description: [
				"One or more fields on which data should be clustered. Only top-level, non-repeated, simple-type fields are supported. When you cluster a table using multiple columns, the order of columns you specify is important. The order of the specified columns determines the sort order of the data.",
			]

			required:      false
			type:          "list"
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
				"A descriptive name for this table.",
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
		name: {
			description: [
				"Name of the table.",
			]
			required: false
			type:     "str"
		}
		num_rows: {
			description: [
				"The number of rows of data in this table, excluding any data in the streaming buffer.",
			]

			required:      false
			type:          "int"
			version_added: "2.9"
		}
		view: {
			description: [
				"The view definition.",
			]
			required: false
			type:     "dict"
			suboptions: {
				use_legacy_sql: {
					description: [
						"Specifies whether to use BigQuery's legacy SQL for this view .",
					]
					required: false
					type:     "bool"
				}
				user_defined_function_resources: {
					description: [
						"Describes user-defined function resources used in the query.",
					]
					required: false
					type:     "list"
					suboptions: {
						inline_code: {
							description: [
								"An inline resource that contains code for a user-defined function (UDF). Providing a inline code resource is equivalent to providing a URI for a file containing the same code.",
							]

							required: false
							type:     "str"
						}
						resource_uri: {
							description: [
								"A code resource to load from a Google Cloud Storage URI (gs://bucket/path).",
							]
							required: false
							type:     "str"
						}
					}
				}
			}
		}
		time_partitioning: {
			description: [
				"If specified, configures time-based partitioning for this table.",
			]
			required: false
			type:     "dict"
			suboptions: {
				expiration_ms: {
					description: [
						"Number of milliseconds for which to keep the storage for a partition.",
					]
					required: false
					type:     "int"
				}
				field: {
					description: [
						"If not set, the table is partitioned by pseudo column, referenced via either '_PARTITIONTIME' as TIMESTAMP type, or '_PARTITIONDATE' as DATE type. If field is specified, the table is instead partitioned by this field. The field must be a top-level TIMESTAMP or DATE field. Its mode must be NULLABLE or REQUIRED.",
					]

					required:      false
					type:          "str"
					version_added: "2.9"
				}
				type: {
					description: [
						"The only type supported is DAY, which will generate one partition per day.",
						"Some valid choices include: \"DAY\"",
					]
					required: false
					type:     "str"
				}
			}
		}
		schema: {
			description: [
				"Describes the schema of this table.",
			]
			required: false
			type:     "dict"
			suboptions: fields: {
				description: [
					"Describes the fields in a table.",
				]
				required: false
				type:     "list"
				suboptions: {
					description: {
						description: [
							"The field description. The maximum length is 1,024 characters.",
						]
						required: false
						type:     "str"
					}
					fields: {
						description: [
							"Describes the nested schema fields if the type property is set to RECORD.",
						]
						required: false
						type:     "list"
					}
					mode: {
						description: [
							"The field mode.",
							"Some valid choices include: \"NULLABLE\", \"REQUIRED\", \"REPEATED\"",
						]
						required: false
						type:     "str"
					}
					name: {
						description: [
							"The field name.",
						]
						required: false
						type:     "str"
					}
					type: {
						description: [
							"The field data type.",
							"Some valid choices include: \"STRING\", \"BYTES\", \"INTEGER\", \"FLOAT\", \"TIMESTAMP\", \"DATE\", \"TIME\", \"DATETIME\", \"RECORD\"",
						]

						required: false
						type:     "str"
					}
				}
			}
		}
		encryption_configuration: {
			description: [
				"Custom encryption configuration.",
			]
			required: false
			type:     "dict"
			suboptions: kms_key_name: {
				description: [
					"Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table. The BigQuery Service Account associated with your project requires access to this encryption key.",
				]

				required: false
				type:     "str"
			}
		}
		expiration_time: {
			description: [
				"The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely.",
			]

			required: false
			type:     "int"
		}
		external_data_configuration: {
			description: [
				"Describes the data format, location, and other properties of a table stored outside of BigQuery. By defining these properties, the data source can then be queried as if it were a standard BigQuery table.",
			]

			required: false
			type:     "dict"
			suboptions: {
				autodetect: {
					description: [
						"Try to detect schema and format options automatically. Any option specified explicitly will be honored.",
					]

					required: false
					type:     "bool"
				}
				compression: {
					description: [
						"The compression type of the data source.",
						"Some valid choices include: \"GZIP\", \"NONE\"",
					]
					required: false
					type:     "str"
				}
				ignore_unknown_values: {
					description: [
						"Indicates if BigQuery should allow extra values that are not represented in the table schema .",
					]

					required: false
					type:     "bool"
				}
				max_bad_records: {
					description: [
						"The maximum number of bad records that BigQuery can ignore when reading data .",
					]

					required: false
					default:  "0"
					type:     "int"
				}
				source_format: {
					description: [
						"The data format.",
						"Some valid choices include: \"CSV\", \"GOOGLE_SHEETS\", \"NEWLINE_DELIMITED_JSON\", \"AVRO\", \"DATASTORE_BACKUP\", \"BIGTABLE\"",
					]

					required: false
					type:     "str"
				}
				source_uris: {
					description: [
						"The fully-qualified URIs that point to your data in Google Cloud.",
						"For Google Cloud Storage URIs: Each URI can contain one '*' wildcard character and it must come after the 'bucket' name. Size limits related to load jobs apply to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore backups, exactly one URI can be specified. Also, the '*' wildcard character is not allowed.",
					]

					required: false
					type:     "list"
				}
				schema: {
					description: [
						"The schema for the data. Schema is required for CSV and JSON formats.",
					]
					required: false
					type:     "dict"
					suboptions: fields: {
						description: [
							"Describes the fields in a table.",
						]
						required: false
						type:     "list"
						suboptions: {
							description: {
								description: [
									"The field description.",
								]
								required: false
								type:     "str"
							}
							fields: {
								description: [
									"Describes the nested schema fields if the type property is set to RECORD .",
								]

								required: false
								type:     "list"
							}
							mode: {
								description: [
									"Field mode.",
									"Some valid choices include: \"NULLABLE\", \"REQUIRED\", \"REPEATED\"",
								]
								required: false
								type:     "str"
							}
							name: {
								description: [
									"Field name.",
								]
								required: false
								type:     "str"
							}
							type: {
								description: [
									"Field data type.",
									"Some valid choices include: \"STRING\", \"BYTES\", \"INTEGER\", \"FLOAT\", \"TIMESTAMP\", \"DATE\", \"TIME\", \"DATETIME\", \"RECORD\"",
								]

								required: false
								type:     "str"
							}
						}
					}
				}
				google_sheets_options: {
					description: [
						"Additional options if sourceFormat is set to GOOGLE_SHEETS.",
					]
					required: false
					type:     "dict"
					suboptions: skip_leading_rows: {
						description: [
							"The number of rows at the top of a Google Sheet that BigQuery will skip when reading the data.",
						]

						required: false
						default:  "0"
						type:     "int"
					}
				}
				csv_options: {
					description: [
						"Additional properties to set if sourceFormat is set to CSV.",
					]
					required: false
					type:     "dict"
					suboptions: {
						allow_jagged_rows: {
							description: [
								"Indicates if BigQuery should accept rows that are missing trailing optional columns .",
							]

							required: false
							type:     "bool"
						}
						allow_quoted_newlines: {
							description: [
								"Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file .",
							]

							required: false
							type:     "bool"
						}
						encoding: {
							description: [
								"The character encoding of the data.",
								"Some valid choices include: \"UTF-8\", \"ISO-8859-1\"",
							]
							required: false
							type:     "str"
						}
						field_delimiter: {
							description: [
								"The separator for fields in a CSV file.",
							]
							required: false
							type:     "str"
						}
						quote: {
							description: [
								"The value that is used to quote data sections in a CSV file.",
							]
							required: false
							type:     "str"
						}
						skip_leading_rows: {
							description: [
								"The number of rows at the top of a CSV file that BigQuery will skip when reading the data.",
							]

							required: false
							default:  "0"
							type:     "int"
						}
					}
				}
				bigtable_options: {
					description: [
						"Additional options if sourceFormat is set to BIGTABLE.",
					]
					required: false
					type:     "dict"
					suboptions: {
						ignore_unspecified_column_families: {
							description: [
								"If field is true, then the column families that are not specified in columnFamilies list are not exposed in the table schema .",
							]

							required: false
							type:     "bool"
						}
						read_rowkey_as_string: {
							description: [
								"If field is true, then the rowkey column families will be read and converted to string.",
							]

							required: false
							type:     "bool"
						}
						column_families: {
							description: [
								"List of column families to expose in the table schema along with their types.",
							]

							required: false
							type:     "list"
							suboptions: {
								columns: {
									description: [
										"Lists of columns that should be exposed as individual fields as opposed to a list of (column name, value) pairs.",
									]

									required: false
									type:     "list"
									suboptions: {
										encoding: {
											description: [
												"The encoding of the values when the type is not STRING.",
												"Some valid choices include: \"TEXT\", \"BINARY\"",
											]
											required: false
											type:     "str"
										}
										field_name: {
											description: [
												"If the qualifier is not a valid BigQuery field identifier, a valid identifier must be provided as the column field name and is used as field name in queries.",
											]

											required: false
											type:     "str"
										}
										only_read_latest: {
											description: [
												"If this is set, only the latest version of value in this column are exposed .",
											]

											required: false
											type:     "bool"
										}
										qualifier_string: {
											description: [
												"Qualifier of the column.",
											]
											required: true
											type:     "str"
										}
										type: {
											description: [
												"The type to convert the value in cells of this column.",
												"Some valid choices include: \"BYTES\", \"STRING\", \"INTEGER\", \"FLOAT\", \"BOOLEAN\"",
											]

											required: false
											type:     "str"
										}
									}
								}
								encoding: {
									description: [
										"The encoding of the values when the type is not STRING.",
										"Some valid choices include: \"TEXT\", \"BINARY\"",
									]
									required: false
									type:     "str"
								}
								family_id: {
									description: [
										"Identifier of the column family.",
									]
									required: false
									type:     "str"
								}
								only_read_latest: {
									description: [
										"If this is set only the latest version of value are exposed for all columns in this column family .",
									]

									required: false
									type:     "bool"
								}
								type: {
									description: [
										"The type to convert the value in cells of this column family.",
										"Some valid choices include: \"BYTES\", \"STRING\", \"INTEGER\", \"FLOAT\", \"BOOLEAN\"",
									]

									required: false
									type:     "str"
								}
							}
						}
					}
				}
			}
		}
		dataset: {
			description: [
				"Name of the dataset.",
			]
			required: false
			type:     "str"
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
