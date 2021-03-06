package ansible

module: na_elementsw_snapshot_restore: {
	module: "na_elementsw_snapshot_restore"

	short_description: "NetApp Element Software Restore Snapshot"
	extends_documentation_fragment: [
		"netapp.solidfire",
	]
	version_added: "2.7"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Element OS Cluster restore snapshot to volume.",
	]

	options: {

		src_volume_id: {
			description: [
				"ID or Name of source active volume.",
			]
			required: true
		}

		src_snapshot_id: {
			description: [
				"ID or Name of an existing snapshot.",
			]
			required: true
		}

		dest_volume_name: {
			description: [
				"New Name of destination for restoring the snapshot",
			]
			required: true
		}

		account_id: {
			description: [
				"Account ID or Name of Parent/Source Volume.",
			]
			required: true
		}
	}
}
