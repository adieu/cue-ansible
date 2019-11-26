package ansible

module: dynamodb_table: {
	module:            "dynamodb_table"
	short_description: "Create, update or delete AWS Dynamo DB tables"
	version_added:     "2.0"
	description: [
		"Create or delete AWS Dynamo DB tables.",
		"Can update the provisioned throughput on existing tables.",
		"Returns the status of the specified table.",
	]
	author: "Alan Loi (@loia)"
	requirements: [
		"boto >= 2.37.0",
		"boto3 >= 1.4.4 (for tagging)",
	]
	options: {
		state: {
			description: [
				"Create or delete the table.",
			]
			choices: ["present", "absent"]
			default: "present"
			type:    "str"
		}
		name: {
			description: [
				"Name of the table.",
			]
			required: true
			type:     "str"
		}
		hash_key_name: {
			description: [
				"Name of the hash key.",
				"Required when C(state=present).",
			]
			type: "str"
		}
		hash_key_type: {
			description: [
				"Type of the hash key.",
			]
			choices: ["STRING", "NUMBER", "BINARY"]
			default: "STRING"
			type:    "str"
		}
		range_key_name: {
			description: [
				"Name of the range key.",
			]
			type: "str"
		}
		range_key_type: {
			description: [
				"Type of the range key.",
			]
			choices: ["STRING", "NUMBER", "BINARY"]
			default: "STRING"
			type:    "str"
		}
		read_capacity: {
			description: [
				"Read throughput capacity (units) to provision.",
			]
			default: 1
			type:    "int"
		}
		write_capacity: {
			description: [
				"Write throughput capacity (units) to provision.",
			]
			default: 1
			type:    "int"
		}
		indexes: {
			description: [
				"list of dictionaries describing indexes to add to the table. global indexes can be updated. local indexes don't support updates or have throughput.",
				"required options: ['name', 'type', 'hash_key_name']",
				"other options: ['hash_key_type', 'range_key_name', 'range_key_type', 'includes', 'read_capacity', 'write_capacity']",
			]
			suboptions: {
				name: {
					description: "The name of the index."
					type:        "str"
					required:    true
				}
				type: {
					description: [
						"The type of index.",
						"Valid types: C(all), C(global_all), C(global_include), C(global_keys_only), C(include), C(keys_only)",
					]
					type:     "str"
					required: true
				}
				hash_key_name: {
					description: "The name of the hash-based key."
					required:    true
					type:        "str"
				}
				hash_key_type: {
					description: "The type of the hash-based key."
					type:        "str"
				}
				range_key_name: {
					description: "The name of the range-based key."
					type:        "str"
				}
				range_key_type: {
					type:        "str"
					description: "The type of the range-based key."
				}
				includes: {
					type:        "list"
					description: "A list of fields to include when using C(global_include) or C(include) indexes."
				}
				read_capacity: {
					description: [
						"Read throughput capacity (units) to provision for the index.",
					]
					type: "int"
				}
				write_capacity: {
					description: [
						"Write throughput capacity (units) to provision for the index.",
					]
					type: "int"
				}
			}
			default: []
			version_added: "2.1"
			type:          "list"
			elements:      "dict"
		}
		tags: {
			version_added: "2.4"
			description: [
				"A hash/dictionary of tags to add to the new instance or for starting/stopping instance by tag.",
				"For example: C({\"key\":\"value\"}) and C({\"key\":\"value\",\"key2\":\"value2\"})",
			]
			type: "dict"
		}
		wait_for_active_timeout: {
			version_added: "2.4"
			description: [
				"how long before wait gives up, in seconds. only used when tags is set",
			]
			default: 60
			type:    "int"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
