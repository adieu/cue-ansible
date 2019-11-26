package ansible

module: gce_snapshot: {
	module:            "gce_snapshot"
	version_added:     "2.3"
	short_description: "Create or destroy snapshots for GCE storage volumes"
	description: [
		"Manages snapshots for GCE instances. This module manages snapshots for the storage volumes of a GCE compute instance. If there are multiple volumes, each snapshot will be prepended with the disk name",
	]

	options: {
		instance_name: {
			description: [
				"The GCE instance to snapshot",
			]
			required: true
		}
		snapshot_name: description: [
			"The name of the snapshot to manage",
		]
		disks: {
			description: [
				"A list of disks to create snapshots for. If none is provided, all of the volumes will be snapshotted",
			]

			default:  "all"
			required: false
		}
		state: {
			description: [
				"Whether a snapshot should be C(present) or C(absent)",
			]
			required: false
			default:  "present"
			choices: ["present", "absent"]
		}
		service_account_email: {
			description: [
				"GCP service account email for the project where the instance resides",
			]
			required: true
		}
		credentials_file: {
			description: [
				"The path to the credentials file associated with the service account",
			]
			required: true
		}
		project_id: {
			description: [
				"The GCP project ID to use",
			]
			required: true
		}
	}
	requirements: [
		"python >= 2.6",
		"apache-libcloud >= 0.19.0",
	]
	author: "Rob Wagner (@robwagner33)"
}
