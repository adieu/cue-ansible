package ansible

module: scaleway_user_data: {
	module:            "scaleway_user_data"
	short_description: "Scaleway user_data management module"
	version_added:     "2.8"
	author:            "Remy Leone (@sieben)"
	description: [
		"This module manages user_data on compute instances on Scaleway.",
		"It can be used to configure cloud-init for instance",
	]
	extends_documentation_fragment: "scaleway"

	options: {

		server_id: {
			description: [
				"Scaleway Compute instance ID of the server",
			]
			required: true
		}

		user_data: {
			description: [
				"User defined data. Typically used with `cloud-init`.",
				"Pass your cloud-init script here as a string",
			]
			required: false
		}

		region: {
			description: [
				"Scaleway compute zone",
			]
			required: true
			choices: [
				"ams1",
				"EMEA-NL-EVS",
				"par1",
				"EMEA-FR-PAR1",
			]
		}
	}
}
