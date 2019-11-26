package ansible

module: stackdriver: {
	module:            "stackdriver"
	short_description: "Send code deploy and annotation events to stackdriver"
	description: [
		"Send code deploy and annotation events to Stackdriver",
	]
	version_added: "1.6"
	author:        "Ben Whaley (@bwhaley)"
	options: {
		key: {
			description: [
				"API key.",
			]
			required: true
		}
		event: {
			description: [
				"The type of event to send, either annotation or deploy",
			]
			choices: ["annotation", "deploy"]
		}
		revision_id: description: [
			"The revision of the code that was deployed. Required for deploy events",
		]
		deployed_by: {
			description: [
				"The person or robot responsible for deploying the code",
			]
			default: "Ansible"
		}
		deployed_to: description: [
			"The environment code was deployed to. (ie: development, staging, production)",
		]
		repository: description: [
			"The repository (or project) deployed",
		]
		msg: description: ["The contents of the annotation message, in plain text. \u00a0Limited to 256 characters. Required for annotation."]
		annotated_by: {
			description: ["The person or robot\u00a0who the annotation should be attributed to."]
			default: "Ansible"
		}
		level: {
			description: ["one of INFO/WARN/ERROR, defaults to INFO if not supplied. \u00a0May affect display."]
			choices: ["INFO", "WARN", "ERROR"]
			default: "INFO"
		}
		instance_id: description: ["id of an EC2 instance that this event should be attached to, which will limit the contexts where this event is shown"]
		event_epoch: description: ["Unix timestamp of where the event should appear in the timeline, defaults to now. Be careful with this."]
	}
}
