package ansible

module: aci_fabric_scheduler: {
	module: "aci_fabric_scheduler"

	short_description: "This modules creates ACI schedulers."

	version_added: "2.8"

	description: [
		"With the module you can create schedule policies that can be a shell, onetime execution or recurring",
	]

	options: {
		name: {
			description: [
				"The name of the Scheduler.",
			]
			type:     "str"
			required: true
			aliases: ["name", "scheduler_name"]
		}
		description: {
			description: [
				"Description for the Scheduler.",
			]
			type: "str"
			aliases: ["descr"]
		}
		recurring: {
			description: [
				"If you want to make the Scheduler a recurring it would be a \"True\" and for a oneTime execution it would be \"False\". For a shell just exclude this option from the task",
			]

			type:    "bool"
			default: "no"
		}
		windowname: {
			description: [
				"This is the name for your what recurring or oneTime execution",
			]
			type: "str"
		}
		concurCap: {
			description: [
				"This is the amount of devices that can be executed on at a time",
			]
			type: "int"
		}
		maxTime: {
			description: [
				"This is the amount MAX amount of time a process can be executed",
			]
			type: "str"
		}
		date: {
			description: [
				"This is the date and time that the scheduler will execute",
			]
			type: "str"
		}
		hour: {
			description: [
				"This set the hour of execution",
			]
			type: "int"
		}
		minute: {
			description: [
				"This sets the minute of execution, used in conjunction with hour",
			]
			type: "int"
		}
		day: {
			description: [
				"This sets the day when execution will take place",
			]
			type:    "str"
			default: "every-day"
			choices: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday", "even-day", "odd-day", "every-day"]
		}
		state: {
			description: [
				"Use C(present) or C(absent) for adding or removing.",
				"Use C(query) for listing an object or multiple objects.",
			]
			type:    "str"
			default: "present"
			choices: ["absent", "present", "query"]
		}
	}

	extends_documentation_fragment: "aci"

	author: ["Steven Gerhart (@sgerhart)"]
}
