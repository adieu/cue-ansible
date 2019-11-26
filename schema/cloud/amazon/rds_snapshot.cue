package ansible

module: rds_snapshot: {
	module:            "rds_snapshot"
	version_added:     "2.9"
	short_description: "manage Amazon RDS snapshots."
	description: [
		"Creates or deletes RDS snapshots.",
	]
	options: {
		state: {
			description: [
				"Specify the desired state of the snapshot.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
		db_snapshot_identifier: {
			description: [
				"The snapshot to manage.",
			]
			required: true
			aliases: [
				"id",
				"snapshot_id",
			]
			type: "str"
		}
		db_instance_identifier: {
			description: [
				"Database instance identifier. Required when state is present.",
			]
			aliases: [
				"instance_id",
			]
			type: "str"
		}
		wait: {
			description: [
				"Whether or not to wait for snapshot creation or deletion.",
			]
			type:    "bool"
			default: "no"
		}
		wait_timeout: {
			description: [
				"how long before wait gives up, in seconds.",
			]
			default: 300
			type:    "int"
		}
		tags: {
			description: [
				"tags dict to apply to a snapshot.",
			]
			type: "dict"
		}
		purge_tags: {
			description: [
				"whether to remove tags not present in the C(tags) parameter.",
			]
			default: true
			type:    "bool"
		}
	}
	requirements: [
		"python >= 2.6",
		"boto3",
	]
	author: [
		"Will Thames (@willthames)",
		"Michael De La Rue (@mikedlr)",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
