package ansible

module: sns_topic: {
	module:            "sns_topic"
	short_description: "Manages AWS SNS topics and subscriptions"
	description: [
		"The M(sns_topic) module allows you to create, delete, and manage subscriptions for AWS SNS topics.",
		"As of 2.6, this module can be use to subscribe and unsubscribe to topics outside of your AWS account.",
	]
	version_added: 2.0
	author: [
		"Joel Thompson (@joelthompson)",
		"Fernando Jose Pando (@nand0p)",
		"Will Thames (@willthames)",
	]
	options: {
		name: {
			description: [
				"The name or ARN of the SNS topic to manage.",
			]
			required: true
			type:     "str"
		}
		state: {
			description: [
				"Whether to create or destroy an SNS topic.",
			]
			default: "present"
			choices: ["absent", "present"]
			type: "str"
		}
		display_name: {
			description: [
				"Display name of the topic.",
			]
			type: "str"
		}
		policy: {
			description: [
				"Policy to apply to the SNS topic.",
			]
			type: "dict"
		}
		delivery_policy: {
			description: [
				"Delivery policy to apply to the SNS topic.",
			]
			type: "dict"
		}
		subscriptions: {
			description: [
				"List of subscriptions to apply to the topic. Note that AWS requires subscriptions to be confirmed, so you will need to confirm any new subscriptions.",
			]

			suboptions: {
				endpoint: {
					description: "Endpoint of subscription."
					required:    true
				}
				protocol: {
					description: "Protocol of subscription."
					required:    true
				}
			}
			type:     "list"
			elements: "dict"
			default: []
		}
		purge_subscriptions: {
			description: [
				"Whether to purge any subscriptions not listed here. NOTE: AWS does not allow you to purge any PendingConfirmation subscriptions, so if any exist and would be purged, they are silently skipped. This means that somebody could come back later and confirm the subscription. Sorry. Blame Amazon.",
			]

			default: true
			type:    "bool"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
	requirements: ["boto"]
}
