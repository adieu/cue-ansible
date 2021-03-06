package ansible

module: ec2_snapshot: {
	module:            "ec2_snapshot"
	short_description: "Creates a snapshot from an existing volume"
	description: [
		"Creates an EC2 snapshot from an existing EBS volume.",
	]
	version_added: "1.5"
	options: {
		volume_id: {
			description: [
				"Volume from which to take the snapshot.",
			]
			required: false
			type:     "str"
		}
		description: {
			description: [
				"Description to be applied to the snapshot.",
			]
			required: false
			type:     "str"
		}
		instance_id: {
			description: [
				"Instance that has the required volume to snapshot mounted.",
			]
			required: false
			type:     "str"
		}
		device_name: {
			description: [
				"Device name of a mounted volume to be snapshotted.",
			]
			required: false
			type:     "str"
		}
		snapshot_tags: {
			description: [
				"A dictionary of tags to add to the snapshot.",
			]
			type:          "dict"
			required:      false
			version_added: "1.6"
		}
		wait: {
			description: [
				"Wait for the snapshot to be ready.",
			]
			type:          "bool"
			required:      false
			default:       true
			version_added: "1.5.1"
		}
		wait_timeout: {
			description: [
				"How long before wait gives up, in seconds.",
				"Specify 0 to wait forever.",
			]
			required:      false
			default:       0
			version_added: "1.5.1"
			type:          "int"
		}
		state: {
			description: [
				"Whether to add or create a snapshot.",
			]
			required: false
			default:  "present"
			choices: ["absent", "present"]
			version_added: "1.9"
			type:          "str"
		}
		snapshot_id: {
			description: [
				"Snapshot id to remove.",
			]
			required:      false
			version_added: "1.9"
			type:          "str"
		}
		last_snapshot_min_age: {
			description: [
				"If the volume's most recent snapshot has started less than `last_snapshot_min_age' minutes ago, a new snapshot will not be created.",
			]
			required:      false
			default:       0
			version_added: "2.0"
			type:          "int"
		}
	}

	author: "Will Thames (@willthames)"
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
