package ansible

module: one_service: {
	module:            "one_service"
	short_description: "Deploy and manage OpenNebula services"
	description: [
		"Manage OpenNebula services",
	]
	version_added: "2.6"
	options: {
		api_url: description: [
			"URL of the OpenNebula OneFlow API server.",
			"It is recommended to use HTTPS so that the username/password are not transferred over the network unencrypted.",
			"If not set then the value of the ONEFLOW_URL environment variable is used.",
		]
		api_username: description: [
			"Name of the user to login into the OpenNebula OneFlow API server. If not set then the value of the C(ONEFLOW_USERNAME) environment variable is used.",
		]
		api_password: description: [
			"Password of the user to login into OpenNebula OneFlow API server. If not set then the value of the C(ONEFLOW_PASSWORD) environment variable is used.",
		]
		template_name: description: [
			"Name of service template to use to create a new instance of a service",
		]
		template_id: description: [
			"ID of a service template to use to create a new instance of a service",
		]
		service_id: description: [
			"ID of a service instance that you would like to manage",
		]
		service_name: description: [
			"Name of a service instance that you would like to manage",
		]
		unique: {
			description: [
				"Setting C(unique=yes) will make sure that there is only one service instance running with a name set with C(service_name) when",
				"instantiating a service from a template specified with C(template_id)/C(template_name). Check examples below.",
			]
			type:    "bool"
			default: false
		}
		state: {
			description: [
				"C(present) - instantiate a service from a template specified with C(template_id)/C(template_name).",
				"C(absent) - terminate an instance of a service specified with C(service_id)/C(service_name).",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		mode: description: [
			"Set permission mode of a service instance in octet format, e.g. C(600) to give owner C(use) and C(manage) and nothing to group and others.",
		]
		owner_id: description: [
			"ID of the user which will be set as the owner of the service",
		]
		group_id: description: [
			"ID of the group which will be set as the group of the service",
		]
		wait: {
			description: [
				"Wait for the instance to reach RUNNING state after DEPLOYING or COOLDOWN state after SCALING",
			]
			type:    "bool"
			default: false
		}
		wait_timeout: {
			description: [
				"How long before wait gives up, in seconds",
			]
			default: 300
		}
		custom_attrs: {
			description: [
				"Dictionary of key/value custom attributes which will be used when instantiating a new service.",
			]
			default: {}
		}
		role: description: [
			"Name of the role whose cardinality should be changed",
		]
		cardinality: description: [
			"Number of VMs for the specified role",
		]
		force: {
			description: [
				"Force the new cardinality even if it is outside the limits",
			]
			type:    "bool"
			default: false
		}
	}
	author: ["Milan Ilic (@ilicmilan)"]
}
