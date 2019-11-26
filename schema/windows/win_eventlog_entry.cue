package ansible

module: win_eventlog_entry: {
	module:            "win_eventlog_entry"
	version_added:     "2.4"
	short_description: "Write entries to Windows event logs"
	description: [
		"Write log entries to a given event log from a specified source.",
	]
	options: {
		log: {
			description: [
				"Name of the event log to write an entry to.",
			]
			type:     "str"
			required: true
		}
		source: {
			description: [
				"Name of the log source to indicate where the entry is from.",
			]
			type:     "str"
			required: true
		}
		event_id: {
			description: [
				"The numeric event identifier for the entry.",
				"Value must be between 0 and 65535.",
			]
			type:     "int"
			required: true
		}
		message: {
			description: [
				"The message for the given log entry.",
			]
			type:     "str"
			required: true
		}
		entry_type: {
			description: [
				"Indicates the entry being written to the log is of a specific type.",
			]
			type: "str"
			choices: ["Error", "FailureAudit", "Information", "SuccessAudit", "Warning"]
		}
		category: {
			description: [
				"A numeric task category associated with the category message file for the log source.",
			]
			type: "int"
		}
		raw_data: {
			description: [
				"Binary data associated with the log entry.",
				"Value must be a comma-separated array of 8-bit unsigned integers (0 to 255).",
			]
			type: "str"
		}
	}
	notes: [
		"This module will always report a change when writing an event entry.",
	]
	seealso: [{
		module: "win_eventlog"
	}]
	author: ["Andrew Saraceni (@andrewsaraceni)"]
}
