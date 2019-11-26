package ansible

module: netapp_e_auth: {
	module:            "netapp_e_auth"
	short_description: "NetApp E-Series set or update the password for a storage array."
	description: [
		"Sets or updates the password for a storage array.  When the password is updated on the storage array, it must be updated on the SANtricity Web Services proxy. Note, all storage arrays do not have a Monitor or RO role.",
	]

	version_added: "2.2"
	author:        "Kevin Hulquest (@hulquest)"
	options: {
		validate_certs: {
			required: false
			default:  true
			description: [
				"Should https certificates be validated?",
			]
			type: "bool"
		}
		name: {
			description: [
				"The name of the storage array. Note that if more than one storage array with this name is detected, the task will fail and you'll have to use the ID instead.",
			]

			required: false
		}
		ssid: {
			description: [
				"the identifier of the storage array in the Web Services Proxy.",
			]
			required: false
		}
		set_admin: {
			description: [
				"Boolean value on whether to update the admin password. If set to false then the RO account is updated.",
			]
			type:    "bool"
			default: false
		}
		current_password: {
			description: [
				"The current admin password. This is not required if the password hasn't been set before.",
			]
			required: false
		}
		new_password: {
			description: [
				"The password you would like to set. Cannot be more than 30 characters.",
			]
			required: true
		}
		api_url: {
			description: [
				"The full API url.",
				"Example: http://ENDPOINT:8080/devmgr/v2",
				"This can optionally be set via an environment variable, API_URL",
			]
			required: false
		}
		api_username: {
			description: [
				"The username used to authenticate against the API",
				"This can optionally be set via an environment variable, API_USERNAME",
			]
			required: false
		}
		api_password: {
			description: [
				"The password used to authenticate against the API",
				"This can optionally be set via an environment variable, API_PASSWORD",
			]
			required: false
		}
	}
}
