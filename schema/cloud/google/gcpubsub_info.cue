package ansible

module: gcpubsub_info: {
	module:            "gcpubsub_info"
	version_added:     "2.3"
	short_description: "List Topics/Subscriptions and Messages from Google PubSub."
	description: [
		"List Topics/Subscriptions from Google PubSub.  Use the gcpubsub module for topic/subscription management. See U(https://cloud.google.com/pubsub/docs) for an overview.",
		"This module was called C(gcpubsub_facts) before Ansible 2.9. The usage did not change.",
	]
	requirements: [
		"python >= 2.6",
		"google-auth >= 0.5.0",
		"google-cloud-pubsub >= 0.22.0",
	]
	notes: [
		"list state enables user to list topics or subscriptions in the project.  See examples for details.",
	]
	author: [
		"Tom Melendez (@supertom) <tom@supertom.com>",
	]
	options: {
		topic: {
			description: [
				"GCP pubsub topic name.  Only the name, not the full path, is required.",
			]
			required: false
		}
		view: {
			description: [
				"Choices are 'topics' or 'subscriptions'",
			]
			required: true
		}
		state: {
			description: [
				"list is the only valid option.",
			]
			required: false
		}
	}
}
