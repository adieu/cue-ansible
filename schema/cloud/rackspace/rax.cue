package ansible

module: rax: {
	module:            "rax"
	short_description: "create / delete an instance in Rackspace Public Cloud"
	description: [
		"creates / deletes a Rackspace Public Cloud instance and optionally waits for it to be 'running'.",
	]

	version_added: "1.2"
	options: {
		auto_increment: {
			description: [
				"Whether or not to increment a single number with the name of the created servers. Only applicable when used with the I(group) attribute or meta key.",
			]

			type:          "bool"
			default:       "yes"
			version_added: 1.5
		}
		boot_from_volume: {
			description: [
				"Whether or not to boot the instance from a Cloud Block Storage volume. If C(yes) and I(image) is specified a new volume will be created at boot time. I(boot_volume_size) is required with I(image) to create a new volume at boot time.",
			]

			type:          "bool"
			default:       "no"
			version_added: 1.9
		}
		boot_volume: {
			description: [
				"Cloud Block Storage ID or Name to use as the boot volume of the instance",
			]

			version_added: 1.9
		}
		boot_volume_size: {
			description: [
				"Size of the volume to create in Gigabytes. This is only required with I(image) and I(boot_from_volume).",
			]

			default:       100
			version_added: 1.9
		}
		boot_volume_terminate: {
			description: [
				"Whether the I(boot_volume) or newly created volume from I(image) will be terminated when the server is terminated",
			]

			type:          "bool"
			default:       "no"
			version_added: 1.9
		}
		config_drive: {
			description: [
				"Attach read-only configuration drive to server as label config-2",
			]
			type:          "bool"
			default:       "no"
			version_added: 1.7
		}
		count: {
			description: [
				"number of instances to launch",
			]
			default:       1
			version_added: 1.4
		}
		count_offset: {
			description: [
				"number count to start at",
			]
			default:       1
			version_added: 1.4
		}
		disk_config: {
			description: [
				"Disk partitioning strategy",
			]
			choices: [
				"auto",
				"manual",
			]
			version_added: "1.4"
			default:       "auto"
		}
		exact_count: {
			description: [
				"Explicitly ensure an exact count of instances, used with state=active/present. If specified as C(yes) and I(count) is less than the servers matched, servers will be deleted to match the count. If the number of matched servers is fewer than specified in I(count) additional servers will be added.",
			]

			type:          "bool"
			default:       "no"
			version_added: 1.4
		}
		extra_client_args: {
			description: [
				"A hash of key/value pairs to be used when creating the cloudservers client. This is considered an advanced option, use it wisely and with caution.",
			]

			version_added: 1.6
		}
		extra_create_args: {
			description: [
				"A hash of key/value pairs to be used when creating a new server. This is considered an advanced option, use it wisely and with caution.",
			]

			version_added: 1.6
		}
		files: description: [
			"Files to insert into the instance. remotefilename:localcontent",
		]
		flavor: description: [
			"flavor to use for the instance",
		]
		group: {
			description: [
				"host group to assign to server, is also used for idempotent operations to ensure a specific number of instances",
			]

			version_added: 1.4
		}
		image: description: [
			"image to use for the instance. Can be an C(id), C(human_id) or C(name). With I(boot_from_volume), a Cloud Block Storage volume will be created with this image",
		]

		instance_ids: {
			description: [
				"list of instance ids, currently only used when state='absent' to remove instances",
			]

			version_added: 1.4
		}
		key_name: {
			description: [
				"key pair to use on the instance",
			]
			aliases: [
				"keypair",
			]
		}
		meta: description: [
			"A hash of metadata to associate with the instance",
		]
		name: description: [
			"Name to give the instance",
		]
		networks: {
			description: [
				"The network to attach to the instances. If specified, you must include ALL networks including the public and private interfaces. Can be C(id) or C(label).",
			]

			default: [
				"public",
				"private",
			]
			version_added: 1.4
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

			version_added: 1.7
		}
		wait: {
			description: [
				"wait for the instance to be in state 'running' before returning",
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
	author: [
		"Jesse Keating (@omgjlk)",
		"Matt Martz (@sivel)",
	]
	notes: [
		"I(exact_count) can be \"destructive\" if the number of running servers in the I(group) is larger than that specified in I(count). In such a case, the I(state) is effectively set to C(absent) and the extra servers are deleted. In the case of deletion, the returned data structure will have C(action) set to C(delete), and the oldest servers in the group will be deleted.",
	]

	extends_documentation_fragment: "rackspace.openstack"
}
