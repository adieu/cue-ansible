package ansible

module: gluster_volume: {
	module:            "gluster_volume"
	short_description: "Manage GlusterFS volumes"
	description: [
		"Create, remove, start, stop and tune GlusterFS volumes",
	]
	version_added: "1.9"
	options: {
		name: {
			description: [
				"The volume name.",
			]
			required: true
			aliases: ["volume"]
		}
		state: {
			description: [
				"Use present/absent ensure if a volume exists or not. Use started/stopped to control its availability.",
			]

			required: true
			choices: ["absent", "present", "started", "stopped"]
		}
		cluster: description: [
			"List of hosts to use for probing and brick setup.",
		]
		host: description: [
			"Override local hostname (for peer probing purposes).",
		]
		replicas: description: [
			"Replica count for volume.",
		]
		arbiters: {
			description: [
				"Arbiter count for volume.",
			]
			version_added: "2.3"
		}
		stripes: description: [
			"Stripe count for volume.",
		]
		disperses: {
			description: [
				"Disperse count for volume.",
			]
			version_added: "2.2"
		}
		redundancies: {
			description: [
				"Redundancy count for volume.",
			]
			version_added: "2.2"
		}
		transport: {
			description: [
				"Transport type for volume.",
			]
			default: "tcp"
			choices: ["tcp", "rdma", "tcp,rdma"]
		}
		bricks: {
			description: [
				"Brick paths on servers. Multiple brick paths can be separated by commas.",
			]
			aliases: ["brick"]
		}
		start_on_create: {
			description: [
				"Controls whether the volume is started after creation or not.",
			]
			type:    "bool"
			default: "yes"
		}
		rebalance: {
			description: [
				"Controls whether the cluster is rebalanced after changes.",
			]
			type:    "bool"
			default: "no"
		}
		directory: description: [
			"Directory for limit-usage.",
		]
		options: description: [
			"A dictionary/hash with options/settings for the volume.",
		]
		quota: description: [
			"Quota value for limit-usage (be sure to use 10.0MB instead of 10MB, see quota list).",
		]
		force: {
			description: [
				"If brick is being created in the root partition, module will fail. Set force to true to override this behaviour.",
			]

			type: "bool"
		}
	}
	notes: [
		"Requires cli tools for GlusterFS on servers.",
		"Will add new bricks, but not remove them.",
	]
	author: ["Taneli Leppä (@rosmo)"]
}
