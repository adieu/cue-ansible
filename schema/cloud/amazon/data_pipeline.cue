package ansible

module: data_pipeline: {
	module:        "data_pipeline"
	version_added: "2.4"
	author: [
		"Raghu Udiyar (@raags) <raghusiddarth@gmail.com>",
		"Sloane Hertel (@s-hertel) <shertel@redhat.com>",
	]
	requirements: ["boto3"]
	short_description: "Create and manage AWS Datapipelines"
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
	description: [
		"Create and manage AWS Datapipelines. Creation is not idempotent in AWS, so the C(uniqueId) is created by hashing the options (minus objects) given to the datapipeline.",
		"The pipeline definition must be in the format given here U(https://docs.aws.amazon.com/datapipeline/latest/APIReference/API_PutPipelineDefinition.html#API_PutPipelineDefinition_RequestSyntax).",
		"Operations will wait for a configurable amount of time to ensure the pipeline is in the requested state.",
	]
	options: {
		name: {
			description: [
				"The name of the Datapipeline to create/modify/delete.",
			]
			required: true
			type:     "str"
		}
		description: {
			description: [
				"An optional description for the pipeline being created.",
			]
			default: ""
			type:    "str"
		}
		objects: {
			type:     "list"
			elements: "dict"
			description: [
				"A list of pipeline object definitions, each of which is a dict that takes the keys I(id), I(name) and I(fields).",
			]
			suboptions: {
				id: {
					description: [
						"The ID of the object.",
					]
					type: "str"
				}
				name: {
					description: [
						"The name of the object.",
					]
					type: "str"
				}
				fields: {
					description: [
						"Key-value pairs that define the properties of the object.",
						"The value is specified as a reference to another object I(refValue) or as a string value I(stringValue) but not as both.",
					]

					type:     "list"
					elements: "dict"
					suboptions: {
						key: {
							type: "str"
							description: [
								"The field identifier.",
							]
						}
						stringValue: {
							type: "str"
							description: [
								"The field value.",
								"Exactly one of I(stringValue) and I(refValue) may be specified.",
							]
						}
						refValue: {
							type: "str"
							description: [
								"The field value, expressed as the identifier of another object.",
								"Exactly one of I(stringValue) and I(refValue) may be specified.",
							]
						}
					}
				}
			}
		}
		parameters: {
			description: [
				"A list of parameter objects (dicts) in the pipeline definition.",
			]
			type:     "list"
			elements: "dict"
			suboptions: {
				id: description: [
					"The ID of the parameter object.",
				]
				attributes: {
					description: [
						"A list of attributes (dicts) of the parameter object.",
					]
					type:     "list"
					elements: "dict"
					suboptions: {
						key: {
							description: "The field identifier."
							type:        "str"
						}
						stringValue: {
							description: "The field value."
							type:        "str"
						}
					}
				}
			}
		}

		values: {
			description: [
				"A list of parameter values (dicts) in the pipeline definition.",
			]
			type:     "list"
			elements: "dict"
			suboptions: {
				id: {
					description: "The ID of the parameter value"
					type:        "str"
				}
				stringValue: {
					description: "The field value"
					type:        "str"
				}
			}
		}
		timeout: {
			description: [
				"Time in seconds to wait for the pipeline to transition to the requested state, fail otherwise.",
			]
			default: 300
			type:    "int"
		}
		state: {
			description: [
				"The requested state of the pipeline.",
			]
			choices: ["present", "absent", "active", "inactive"]
			default: "present"
			type:    "str"
		}
		tags: {
			description: [
				"A dict of key:value pair(s) to add to the pipeline.",
			]
			type: "dict"
		}
		version: {
			description: [
				"The version option has never had any effect and will be removed in Ansible 2.14",
			]

			type: "str"
		}
	}
}
