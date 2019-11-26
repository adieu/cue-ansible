package ansible

module: campfire: {
	module:            "campfire"
	version_added:     "1.2"
	short_description: "Send a message to Campfire"
	description: [
		"Send a message to Campfire.",
		"Messages with newlines will result in a \"Paste\" message being sent.",
	]
	options: {
		subscription: {
			description: [
				"The subscription name to use.",
			]
			required: true
		}
		token: {
			description: [
				"API token.",
			]
			required: true
		}
		room: {
			description: [
				"Room number to which the message should be sent.",
			]
			required: true
		}
		msg: {
			description: [
				"The message body.",
			]
			required: true
		}
		notify: {
			description: [
				"Send a notification sound before the message.",
			]
			required: false
			choices: [
				"56k",
				"bell",
				"bezos",
				"bueller",
				"clowntown",
				"cottoneyejoe",
				"crickets",
				"dadgummit",
				"dangerzone",
				"danielsan",
				"deeper",
				"drama",
				"greatjob",
				"greyjoy",
				"guarantee",
				"heygirl",
				"horn",
				"horror",
				"inconceivable",
				"live",
				"loggins",
				"makeitso",
				"noooo",
				"nyan",
				"ohmy",
				"ohyeah",
				"pushit",
				"rimshot",
				"rollout",
				"rumble",
				"sax",
				"secret",
				"sexyback",
				"story",
				"tada",
				"tmyk",
				"trololo",
				"trombone",
				"unix",
				"vuvuzela",
				"what",
				"whoomp",
				"yeah",
				"yodel",
			]
		}
	}

	// informational: requirements for nodes
	requirements: []
	author: "Adam Garside (@fabulops)"
}
