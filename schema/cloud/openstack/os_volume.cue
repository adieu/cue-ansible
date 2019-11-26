package ansible

module: os_volume: {
	module:                         "os_volume"
	short_description:              "Create/Delete Cinder Volumes"
	extends_documentation_fragment: "openstack"
	version_added:                  "2.0"
	author:                         "Monty Taylor (@emonty)"
	description: [
		"Create or Remove cinder block storage volumes",
	]
	options: {
		size: description: [
			"Size of volume in GB. This parameter is required when the I(state) parameter is 'present'.",
		]

		display_name: {
			description: [
				"Name of volume",
			]
			required: true
		}
		display_description: description: [
			"String describing the volume",
		]
		volume_type: description: [
			"Volume type for volume",
		]
		image: description: [
			"Image name or id for boot from volume",
		]
		snapshot_id: description: [
			"Volume snapshot id to create from",
		]
		volume: {
			description: [
				"Volume name or id to create from",
			]
			version_added: "2.3"
		}
		state: {
			description: [
				"Should the resource be present or absent.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		availability_zone: description: [
			"Ignored. Present for backwards compatibility",
		]
		scheduler_hints: {
			description: [
				"Scheduler hints passed to volume API in form of dict",
			]
			version_added: "2.4"
		}
		metadata: {
			description: [
				"Metadata for the volume",
			]
			version_added: "2.8"
		}
	}
	requirements: [
		"python >= 2.7",
		"openstacksdk",
	]
}
