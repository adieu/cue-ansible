package ansible

module: win_eventlog: {
	module:            "win_eventlog"
	version_added:     "2.4"
	short_description: "Manage Windows event logs"
	description: [
		"Allows the addition, clearing and removal of local Windows event logs, and the creation and removal of sources from a given event log.  Also allows the specification of settings per log and source.",
	]

	options: {
		name: {
			description: [
				"Name of the event log to manage.",
			]
			type:     "str"
			required: true
		}
		state: {
			description: [
				"Desired state of the log and/or sources.",
				"When C(sources) is populated, state is checked for sources.",
				"When C(sources) is not populated, state is checked for the specified log itself.",
				"If C(state) is C(clear), event log entries are cleared for the target log.",
			]
			type: "str"
			choices: ["absent", "clear", "present"]
			default: "present"
		}
		sources: {
			description: [
				"A list of one or more sources to ensure are present/absent in the log.",
				"When C(category_file), C(message_file) and/or C(parameter_file) are specified, these values are applied across all sources.",
			]

			type: "list"
		}
		category_file: {
			description: [
				"For one or more sources specified, the path to a custom category resource file.",
			]
			type: "path"
		}
		message_file: {
			description: [
				"For one or more sources specified, the path to a custom event message resource file.",
			]
			type: "path"
		}
		parameter_file: {
			description: [
				"For one or more sources specified, the path to a custom parameter resource file.",
			]
			type: "path"
		}
		maximum_size: {
			description: [
				"The maximum size of the event log.",
				"Value must be between 64KB and 4GB, and divisible by 64KB.",
				"Size can be specified in KB, MB or GB (e.g. 128KB, 16MB, 2.5GB).",
			]
			type: "str"
		}
		overflow_action: {
			description: [
				"The action for the log to take once it reaches its maximum size.",
				"For C(DoNotOverwrite), all existing entries are kept and new entries are not retained.",
				"For C(OverwriteAsNeeded), each new entry overwrites the oldest entry.",
				"For C(OverwriteOlder), new log entries overwrite those older than the C(retention_days) value.",
			]
			type: "str"
			choices: ["DoNotOverwrite", "OverwriteAsNeeded", "OverwriteOlder"]
		}
		retention_days: {
			description: [
				"The minimum number of days event entries must remain in the log.",
				"This option is only used when C(overflow_action) is C(OverwriteOlder).",
			]
			type: "int"
		}
	}
	seealso: [{
		module: "win_eventlog_entry"
	}]
	author: ["Andrew Saraceni (@andrewsaraceni)"]
}
