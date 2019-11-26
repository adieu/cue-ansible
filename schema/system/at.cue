package ansible

module: at: {
	module:            "at"
	short_description: "Schedule the execution of a command or script file via the at command"
	description: [
		"Use this module to schedule a command or script file to run once in the future.",
		"All jobs are executed in the 'a' queue.",
	]
	version_added: "1.5"
	options: {
		command: {
			description: [
				"A command to be executed in the future.",
			]
			type: "str"
		}
		script_file: {
			description: [
				"An existing script file to be executed in the future.",
			]
			type: "str"
		}
		count: {
			description: [
				"The count of units in the future to execute the command or script file.",
			]
			type:     "int"
			required: true
		}
		units: {
			description: [
				"The type of units in the future to execute the command or script file.",
			]
			type:     "str"
			required: true
			choices: ["minutes", "hours", "days", "weeks"]
		}
		state: {
			description: [
				"The state dictates if the command or script file should be evaluated as present(added) or absent(deleted).",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
		unique: {
			description: [
				"If a matching job is present a new job will not be added.",
			]
			type:    "bool"
			default: false
		}
	}
	requirements: [
		"at",
	]
	author: ["Richard Isaacson (@risaacson)"]
}
