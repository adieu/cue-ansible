package ansible

module: foreman: {
	module:            "foreman"
	short_description: "Manage Foreman Resources"
	deprecated: {
		removed_in:  "2.12"
		why:         "Replaced by re-designed individual modules living at https://github.com/theforeman/foreman-ansible-modules"
		alternative: "https://github.com/theforeman/foreman-ansible-modules"
	}
	description: [
		"Allows the management of Foreman resources inside your Foreman server.",
	]
	version_added: "2.3"
	author: [
		"Eric D Helms (@ehelms)",
	]
	requirements: [
		"nailgun >= 0.28.0",
		"python >= 2.6",
		"datetime",
	]
	options: {
		server_url: {
			description: [
				"URL of Foreman server.",
			]
			required: true
		}
		username: {
			description: [
				"Username on Foreman server.",
			]
			required: true
		}
		verify_ssl: {
			description: [
				"Whether to verify an SSL connection to Foreman server.",
			]
			type:    "bool"
			default: false
		}
		password: {
			description: [
				"Password for user accessing Foreman server.",
			]
			required: true
		}
		entity: {
			description: [
				"The Foreman resource that the action will be performed on (e.g. organization, host).",
			]
			required: true
		}
		params: {
			description: [
				"Parameters associated to the entity resource to set or edit in dictionary format (e.g. name, description).",
			]
			required: true
		}
	}
}
