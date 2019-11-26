package ansible

module: circonus_annotation: {
	module:            "circonus_annotation"
	short_description: "create an annotation in circonus"
	description: [
		"Create an annotation event with a given category, title and description. Optionally start, end or durations can be provided",
	]
	author:        "Nick Harring (@NickatEpic)"
	version_added: 2.0
	requirements: [
		"requests (either >= 2.0.0 for Python 3, or >= 1.0.0 for Python 2)",
	]
	notes: [
		"Check mode isn't supported.",
	]
	options: {
		api_key: {
			description: [
				"Circonus API key",
			]
			required: true
		}
		category: {
			description: [
				"Annotation Category",
			]
			required: true
		}
		description: {
			description: [
				"Description of annotation",
			]
			required: true
		}
		title: {
			description: [
				"Title of annotation",
			]
			required: true
		}
		start: {
			description: [
				"Unix timestamp of event start",
			]
			default: "I(now)"
		}
		stop: {
			description: [
				"Unix timestamp of event end",
			]
			default: "I(now) + I(duration)"
		}
		duration: {
			description: [
				"Duration in seconds of annotation",
			]
			default: 0
		}
	}
}
