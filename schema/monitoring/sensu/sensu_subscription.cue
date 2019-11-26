package ansible

module: sensu_subscription: {
	module:            "sensu_subscription"
	short_description: "Manage Sensu subscriptions"
	version_added:     2.2
	description: [
		"Manage which I(sensu channels) a machine should subscribe to",
	]
	options: {
		name: {
			description: [
				"The name of the channel",
			]
			required: true
		}
		state: {
			description: [
				"Whether the machine should subscribe or unsubscribe from the channel",
			]
			choices: ["present", "absent"]
			required: false
			default:  "present"
		}
		path: {
			description: [
				"Path to the subscriptions json file",
			]
			required: false
			default:  "/etc/sensu/conf.d/subscriptions.json"
		}
		backup: {
			description: [
				"Create a backup file (if yes), including the timestamp information so you",
				"can get the original file back if you somehow clobbered it incorrectly.",
			]
			type:     "bool"
			required: false
			default:  false
		}
	}
	requirements: []
	author: "Anders Ingemann (@andsens)"
}
