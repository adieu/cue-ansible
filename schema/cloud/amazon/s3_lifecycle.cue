package ansible

module: s3_lifecycle: {
	module:            "s3_lifecycle"
	short_description: "Manage s3 bucket lifecycle rules in AWS"
	description: [
		"Manage s3 bucket lifecycle rules in AWS",
	]
	version_added: "2.0"
	author:        "Rob White (@wimnat)"
	notes: [
		"If specifying expiration time as days then transition time must also be specified in days",
		"If specifying expiration time as a date then transition time must also be specified as a date",
	]
	requirements: [
		"python-dateutil",
	]
	options: {
		name: {
			description: [
				"Name of the s3 bucket",
			]
			required: true
			type:     "str"
		}
		expiration_date: {
			description: [
				"""
		Indicates the lifetime of the objects that are subject to the rule by the date they will expire. The value must be ISO-8601 format, the time must be midnight and a GMT timezone must be specified.

		""",
			]

			type: "str"
		}
		expiration_days: {
			description: [
				"Indicates the lifetime, in days, of the objects that are subject to the rule. The value must be a non-zero positive integer.",
			]
			type: "int"
		}
		prefix: {
			description: [
				"Prefix identifying one or more objects to which the rule applies.  If no prefix is specified, the rule will apply to the whole bucket.",
			]
			type: "str"
		}
		purge_transitions: {
			description: [
				"""
		\"Whether to replace all the current transition(s) with the new transition(s). When false, the provided transition(s) will be added, replacing transitions with the same storage_class. When true, existing transitions will be removed and replaced with the new transition(s)

		""",
			]

			default:       true
			type:          "bool"
			version_added: 2.6
		}
		noncurrent_version_expiration_days: {
			description: [
				"Delete noncurrent versions this many days after they become noncurrent",
			]
			required:      false
			version_added: 2.6
			type:          "int"
		}
		noncurrent_version_storage_class: {
			description: [
				"Transition noncurrent versions to this storage class",
			]
			default: "glacier"
			choices: ["glacier", "onezone_ia", "standard_ia"]
			required:      false
			version_added: 2.6
			type:          "str"
		}
		noncurrent_version_transition_days: {
			description: [
				"Transition noncurrent versions this many days after they become noncurrent",
			]
			required:      false
			version_added: 2.6
			type:          "int"
		}
		noncurrent_version_transitions: {
			description: [
				"""
		A list of transition behaviors to be applied to noncurrent versions for the rule. Each storage class may be used only once. Each transition behavior contains these elements
		  I(transition_days)
		  I(storage_class)

		""",
			]

			version_added: 2.6
			type:          "list"
		}
		rule_id: {
			description: [
				"Unique identifier for the rule. The value cannot be longer than 255 characters. A unique value for the rule will be generated if no value is provided.",
			]
			type: "str"
		}
		state: {
			description: [
				"Create or remove the lifecycle rule",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
		status: {
			description: [
				"If 'enabled', the rule is currently being applied. If 'disabled', the rule is not currently being applied.",
			]
			default: "enabled"
			choices: ["enabled", "disabled"]
			type: "str"
		}
		storage_class: {
			description: [
				"The storage class to transition to. Currently there are two supported values - 'glacier',  'onezone_ia', or 'standard_ia'.",
				"The 'standard_ia' class is only being available from Ansible version 2.2.",
			]
			default: "glacier"
			choices: ["glacier", "onezone_ia", "standard_ia"]
			type: "str"
		}
		transition_date: {
			description: [
				"""
		Indicates the lifetime of the objects that are subject to the rule by the date they will transition to a different storage class. The value must be ISO-8601 format, the time must be midnight and a GMT timezone must be specified. If transition_days is not specified, this parameter is required.\"

		""",
			]

			type: "str"
		}
		transition_days: {
			description: [
				"Indicates when, in days, an object transitions to a different storage class. If transition_date is not specified, this parameter is required.",
			]
			type: "int"
		}
		transitions: {
			description: [
				"A list of transition behaviors to be applied to the rule. Each storage class may be used only once. Each transition behavior may contain these elements I(transition_days) I(transition_date) I(storage_class)",
			]

			version_added: 2.6
			type:          "list"
		}
		requester_pays: {
			description: [
				"The I(requester_pays) option does nothing and will be removed in Ansible 2.14.",
			]
			type: "bool"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
