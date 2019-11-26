package ansible

module: azure_rm_servicebustopic: {
	module:            "azure_rm_servicebustopic"
	version_added:     "2.8"
	short_description: "Manage Azure Service Bus"
	description: [
		"Create, update or delete an Azure Service Bus topics.",
	]
	options: {
		resource_group: {
			description: [
				"Name of resource group.",
			]
			required: true
		}
		name: {
			description: [
				"Name of the topic.",
			]
			required: true
		}
		namespace: {
			description: [
				"Servicebus namespace name.",
				"A namespace is a scoping container for all messaging components.",
				"Multipletopics can reside within a single namespace.",
			]
			required: true
		}
		state: {
			description: [
				"Assert the state of the topic. Use C(present) to create or update and use C(absent) to delete.",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
		auto_delete_on_idle_in_seconds: {
			description: [
				"Time idle interval after which a topic is automatically deleted.",
				"The minimum duration is 5 minutes.",
			]
			type: "int"
		}
		default_message_time_to_live_seconds: {
			description: [
				"Default message timespan to live value.",
				"This is the duration after which the message expires, starting from when the message is sent to Service Bus.",
				"This is the default value used when TimeToLive is not set on a message itself.",
			]
			type: "int"
		}
		enable_batched_operations: {
			description: [
				"Value that indicates whether server-side batched operations are enabled.",
			]
			type: "bool"
		}
		enable_express: {
			description: [
				"Value that indicates whether Express Entities are enabled.",
				"An express topic holds a message in memory temporarily before writing it to persistent storage.",
			]
			type: "bool"
		}
		enable_partitioning: {
			description: [
				"A value that indicates whether the topic is to be partitioned across multiple message brokers.",
			]
			type: "bool"
		}
		max_size_in_mb: {
			description: [
				"The maximum size of the topic in megabytes, which is the size of memory allocated for the topic.",
			]
			type: "int"
		}
		requires_duplicate_detection: {
			description: [
				"A value indicating if this topic requires duplicate detection.",
			]
			type: "bool"
		}
		duplicate_detection_time_in_seconds: {
			description: [
				"TimeSpan structure that defines the duration of the duplicate detection history.",
			]
			type: "int"
		}
		support_ordering: {
			description: [
				"Value that indicates whether the topic supports ordering.",
			]
			type: "bool"
		}
		status: {
			description: [
				"Status of the entity.",
			]
			choices: [
				"active",
				"disabled",
				"send_disabled",
				"receive_disabled",
			]
		}
	}

	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: [
		"Yuwei Zhou (@yuwzho)",
	]
}
