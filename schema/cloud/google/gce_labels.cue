package ansible

module: gce_labels: {
	module:            "gce_labels"
	version_added:     "2.4"
	short_description: "Create, Update or Destroy GCE Labels."
	description: [
		"Create, Update or Destroy GCE Labels on instances, disks, snapshots, etc. When specifying the GCE resource, users may specify the full URL for the resource (its 'self_link'), or the individual parameters of the resource (type, location, name). Examples for the two options can be seen in the documentation. See U(https://cloud.google.com/compute/docs/label-or-tag-resources) for more information about GCE Labels. Labels are gradually being added to more GCE resources, so this module will need to be updated as new resources are added to the GCE (v1) API.",
	]

	requirements: [
		"python >= 2.6",
		"google-api-python-client >= 1.6.2",
		"google-auth >= 1.0.0",
		"google-auth-httplib2 >= 0.0.2",
	]
	notes: [
		"Labels support resources such as  instances, disks, images, etc. See U(https://cloud.google.com/compute/docs/labeling-resources) for the list of resources available in the GCE v1 API (not alpha or beta).",
	]

	author: [
		"Eric Johnson (@erjohnso) <erjohnso@google.com>",
	]
	options: {
		labels: {
			description: [
				"A list of labels (key/value pairs) to add or remove for the resource.",
			]
			required: false
		}
		resource_url: {
			description: [
				"The 'self_link' for the resource (instance, disk, snapshot, etc)",
			]
			required: false
		}
		resource_type: {
			description: [
				"The type of resource (instances, disks, snapshots, images)",
			]
			required: false
		}
		resource_location: {
			description: [
				"The location of resource (global, us-central1-f, etc.)",
			]
			required: false
		}
		resource_name: {
			description: [
				"The name of resource.",
			]
			required: false
		}
	}
}
