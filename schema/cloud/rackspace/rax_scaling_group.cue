package ansible

module: rax_scaling_group: {
	module:            "rax_scaling_group"
	short_description: "Manipulate Rackspace Cloud Autoscale Groups"
	description: [
		"Manipulate Rackspace Cloud Autoscale Groups",
	]
	version_added: 1.7
	options: {
		config_drive: {
			description: [
				"Attach read-only configuration drive to server as label config-2",
			]
			type:          "bool"
			default:       "no"
			version_added: 1.8
		}
		cooldown: description: [
			"The period of time, in seconds, that must pass before any scaling can occur after the previous scaling. Must be an integer between 0 and 86400 (24 hrs).",
		]

		disk_config: {
			description: [
				"Disk partitioning strategy",
			]
			choices: [
				"auto",
				"manual",
			]
			default: "auto"
		}
		files: description: [
			"Files to insert into the instance. Hash of C(remotepath: localpath)",
		]
		flavor: {
			description: [
				"flavor to use for the instance",
			]
			required: true
		}
		image: {
			description: [
				"image to use for the instance. Can be an C(id), C(human_id) or C(name)",
			]
			required: true
		}
		key_name: description: [
			"key pair to use on the instance",
		]
		loadbalancers: description: [
			"List of load balancer C(id) and C(port) hashes",
		]
		max_entities: {
			description: [
				"The maximum number of entities that are allowed in the scaling group. Must be an integer between 0 and 1000.",
			]

			required: true
		}
		meta: description: [
			"A hash of metadata to associate with the instance",
		]
		min_entities: {
			description: [
				"The minimum number of entities that are allowed in the scaling group. Must be an integer between 0 and 1000.",
			]

			required: true
		}
		name: {
			description: [
				"Name to give the scaling group",
			]
			required: true
		}
		networks: {
			description: [
				"The network to attach to the instances. If specified, you must include ALL networks including the public and private interfaces. Can be C(id) or C(label).",
			]

			default: [
				"public",
				"private",
			]
		}
		server_name: {
			description: [
				"The base name for servers created by Autoscale",
			]
			required: true
		}
		state: {
			description: [
				"Indicate desired state of the resource",
			]
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
		user_data: {
			description: [
				"Data to be uploaded to the servers config drive. This option implies I(config_drive). Can be a file path or a string",
			]

			version_added: 1.8
		}
		wait: {
			description: [
				"wait for the scaling group to finish provisioning the minimum amount of servers",
			]

			type:    "bool"
			default: "no"
		}
		wait_timeout: {
			description: [
				"how long before wait gives up, in seconds",
			]
			default: 300
		}
	}
	author: "Matt Martz (@sivel)"
	extends_documentation_fragment: [
		"rackspace",
		"rackspace.openstack",
	]
}
