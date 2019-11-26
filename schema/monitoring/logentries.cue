package ansible

module: logentries: {
	module:            "logentries"
	author:            "Ivan Vanderbyl (@ivanvanderbyl)"
	short_description: "Module for tracking logs via logentries.com"
	description: [
		"Sends logs to LogEntries in realtime",
	]
	version_added: "1.6"
	options: {
		path: {
			description: [
				"path to a log file",
			]
			required: true
		}
		state: {
			description: [
				"following state of the log",
			]
			choices: ["present", "absent"]
			required: false
			default:  "present"
		}
		name: {
			description: [
				"name of the log",
			]
			required: false
		}
		logtype: {
			description: [
				"type of the log",
			]
			required: false
		}
	}

	notes: ["Requires the LogEntries agent which can be installed following the instructions at logentries.com"]
}
