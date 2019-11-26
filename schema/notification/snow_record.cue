package ansible

module: snow_record: {
	module:            "snow_record"
	short_description: "Manage records in ServiceNow"
	version_added:     "2.5"
	description: [
		"Creates, deletes and updates a single record in ServiceNow.",
	]
	options: {
		table: {
			description: [
				"Table to query for records.",
			]
			required: false
			default:  "incident"
			type:     "str"
		}
		state: {
			description: [
				"If C(present) is supplied with a C(number) argument, the module will attempt to update the record with the supplied data.",
				"If no such record exists, a new one will be created.",
				"C(absent) will delete a record.",
			]
			choices: ["present", "absent"]
			required: true
			type:     "str"
		}
		data: {
			description: [
				"key, value pairs of data to load into the record. See Examples.",
				"Required for C(state:present).",
			]
			type: "dict"
		}
		number: {
			description: [
				"Record number to update.",
				"Required for C(state:absent).",
			]
			required: false
			type:     "str"
		}
		lookup_field: {
			description: [
				"Changes the field that C(number) uses to find records.",
			]
			required: false
			default:  "number"
			type:     "str"
		}
		attachment: {
			description: [
				"Attach a file to the record.",
			]
			required: false
			type:     "str"
		}
	}
	requirements: [
		"python pysnow (pysnow)",
	]
	author: [
		"Tim Rightnour (@garbled1)",
	]
	extends_documentation_fragment: "service_now.documentation"
}
