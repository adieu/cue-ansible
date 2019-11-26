package ansible

module: profitbricks_volume: {
	module:            "profitbricks_volume"
	short_description: "Create or destroy a volume."
	description: [
		"Allows you to create or remove a volume from a ProfitBricks datacenter. This module has a dependency on profitbricks >= 1.0.0",
	]
	version_added: "2.0"
	options: {
		datacenter: {
			description: [
				"The datacenter in which to create the volumes.",
			]
			required: true
		}
		name: {
			description: [
				"The name of the volumes. You can enumerate the names using auto_increment.",
			]
			required: true
		}
		size: {
			description: [
				"The size of the volume.",
			]
			required: false
			default:  10
		}
		bus: {
			description: [
				"The bus type.",
			]
			required: false
			default:  "VIRTIO"
			choices: ["IDE", "VIRTIO"]
		}
		image: {
			description: [
				"The system image ID for the volume, e.g. a3eae284-a2fe-11e4-b187-5f1f641608c8. This can also be a snapshot image ID.",
			]
			required: true
		}
		image_password: {
			description: [
				"Password set for the administrative user.",
			]
			required:      false
			version_added: "2.2"
		}
		ssh_keys: {
			description: [
				"Public SSH keys allowing access to the virtual machine.",
			]
			required:      false
			version_added: "2.2"
		}
		disk_type: {
			description: [
				"The disk type of the volume.",
			]
			required: false
			default:  "HDD"
			choices: ["HDD", "SSD"]
		}
		licence_type: {
			description: [
				"The licence type for the volume. This is used when the image is non-standard.",
			]
			required: false
			default:  "UNKNOWN"
			choices: ["LINUX", "WINDOWS", "UNKNOWN", "OTHER"]
		}
		count: {
			description: [
				"The number of volumes you wish to create.",
			]
			required: false
			default:  1
		}
		auto_increment: {
			description: [
				"Whether or not to increment a single number in the name for created virtual machines.",
			]
			default: true
			type:    "bool"
		}
		instance_ids: {
			description: [
				"list of instance ids, currently only used when state='absent' to remove instances.",
			]
			required: false
		}
		subscription_user: {
			description: [
				"The ProfitBricks username. Overrides the PB_SUBSCRIPTION_ID environment variable.",
			]
			required: false
		}
		subscription_password: {
			description: [
				"THe ProfitBricks password. Overrides the PB_PASSWORD environment variable.",
			]
			required: false
		}
		wait: {
			description: [
				"wait for the datacenter to be created before returning",
			]
			required: false
			default:  "yes"
			type:     "bool"
		}
		wait_timeout: {
			description: [
				"how long before wait gives up, in seconds",
			]
			default: 600
		}
		state: {
			description: [
				"create or terminate datacenters",
			]
			required: false
			default:  "present"
			choices: ["present", "absent"]
		}
	}

	requirements: ["profitbricks"]
	author: "Matt Baldwin (@baldwinSPC) <baldwin@stackpointcloud.com>"
}
