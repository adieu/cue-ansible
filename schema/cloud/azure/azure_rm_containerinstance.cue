package ansible

module: azure_rm_containerinstance: {
	module:            "azure_rm_containerinstance"
	version_added:     "2.5"
	short_description: "Manage an Azure Container Instance"
	description: [
		"Create, update and delete an Azure Container Instance.",
	]

	options: {
		resource_group: {
			description: [
				"Name of resource group.",
			]
			required: true
		}
		name: {
			description: [
				"The name of the container group.",
			]
			required: true
		}
		os_type: {
			description: [
				"The OS type of containers.",
			]
			choices: [
				"linux",
				"windows",
			]
			default: "linux"
		}
		state: {
			description: [
				"Assert the state of the container instance. Use C(present) to create or update an container instance and C(absent) to delete it.",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
		ip_address: {
			description: [
				"The IP address type of the container group.",
				"Default is C(none) and creating an instance without public IP.",
			]
			choices: [
				"public",
				"none",
			]
			default: "none"
		}
		dns_name_label: {
			description: [
				"The Dns name label for the IP.",
			]
			type:          "str"
			version_added: "2.8"
		}
		ports: {
			description: [
				"List of ports exposed within the container group.",
				"This option is deprecated, using I(ports) under I(containers)\".",
			]
			type: "list"
		}
		location: description: [
			"Valid azure location. Defaults to location of the resource group.",
		]
		registry_login_server: description: [
			"The container image registry login server.",
		]
		registry_username: description: [
			"The username to log in container image registry server.",
		]
		registry_password: description: [
			"The password to log in container image registry server.",
		]
		containers: {
			description: [
				"List of containers.",
				"Required when creation.",
			]
			suboptions: {
				name: {
					description: [
						"The name of the container instance.",
					]
					required: true
				}
				image: {
					description: [
						"The container image name.",
					]
					required: true
				}
				memory: {
					description: [
						"The required memory of the containers in GB.",
					]
					type:    "float"
					default: 1.5
				}
				cpu: {
					description: [
						"The required number of CPU cores of the containers.",
					]
					type:    "float"
					default: 1
				}
				ports: {
					description: [
						"List of ports exposed within the container group.",
					]
					type: "list"
				}
				environment_variables: {
					description: [
						"List of container environment variables.",
						"When updating existing container all existing variables will be replaced by new ones.",
					]
					type: "dict"
					suboptions: {
						name: {
							description: [
								"Environment variable name.",
							]
							type: "str"
						}
						value: {
							description: [
								"Environment variable value.",
							]
							type: "str"
						}
						is_secure: {
							description: [
								"Is variable secure.",
							]
							type: "bool"
						}
					}
					version_added: "2.8"
				}
				commands: {
					description: [
						"List of commands to execute within the container instance in exec form.",
						"When updating existing container all existing commands will be replaced by new ones.",
					]
					type:          "list"
					version_added: "2.8"
				}
			}
		}
		restart_policy: {
			description: [
				"Restart policy for all containers within the container group.",
			]
			type: "str"
			choices: [
				"always",
				"on_failure",
				"never",
			]
			version_added: "2.8"
		}
		force_update: {
			description: [
				"Force update of existing container instance. Any update will result in deletion and recreation of existing containers.",
			]
			type:    "bool"
			default: "no"
		}
	}

	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: [
		"Zim Kalinowski (@zikalino)",
	]
}
