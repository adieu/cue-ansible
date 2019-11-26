package ansible

module: gce_tag: {
	module:            "gce_tag"
	version_added:     "2.0"
	short_description: "add or remove tag(s) to/from GCE instances"
	description: [
		"This module can add or remove tags U(https://cloud.google.com/compute/docs/label-or-tag-resources#tags) to/from GCE instances.  Use 'instance_pattern' to update multiple instances in a specify zone.",
	]

	options: {
		instance_name: description: [
			"The name of the GCE instance to add/remove tags.",
			"Required if C(instance_pattern) is not specified.",
		]
		instance_pattern: {
			description: [
				"The pattern of GCE instance names to match for adding/removing tags.  Full-Python regex is supported. See U(https://docs.python.org/2/library/re.html) for details.",
				"If C(instance_name) is not specified, this field is required.",
			]
			version_added: "2.3"
		}
		tags: {
			description: [
				"Comma-separated list of tags to add or remove.",
			]
			required: true
		}
		state: {
			description: [
				"Desired state of the tags.",
			]
			choices: ["absent", "present"]
			default: "present"
		}
		zone: {
			description: [
				"The zone of the disk specified by source.",
			]
			default: "us-central1-a"
		}
		service_account_email: description: [
			"Service account email.",
		]
		pem_file: description: [
			"Path to the PEM file associated with the service account email.",
		]
		project_id: description: [
			"Your GCE project ID.",
		]
	}
	requirements: [
		"python >= 2.6",
		"apache-libcloud >= 0.17.0",
	]
	notes: [
		"Either I(instance_name) or I(instance_pattern) is required.",
	]
	author: [
		"Do Hoang Khiem (@dohoangkhiem) <(dohoangkhiem@gmail.com>",
		"Tom Melendez (@supertom)",
	]
}
