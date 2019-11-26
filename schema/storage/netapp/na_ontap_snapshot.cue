package ansible

module: na_ontap_snapshot: {
	module:            "na_ontap_snapshot"
	short_description: "NetApp ONTAP manage Snapshots"
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.6"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Create/Modify/Delete ONTAP snapshots",
	]
	options: {
		state: {
			description: [
				"If you want to create/modify a snapshot, or delete it.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		snapshot: {
			description:
				"Name of the snapshot to be managed. The maximum string length is 256 characters."

			required: true
		}
		from_name: {
			description: [
				"Name of the existing snapshot to be renamed to.",
			]
			version_added: "2.8"
		}
		volume: {
			description: [
				"Name of the volume on which the snapshot is to be created.",
			]
			required: true
		}
		async_bool: {
			description: [
				"If true, the snapshot is to be created asynchronously.",
			]
			type: "bool"
		}
		comment: description:
			"A human readable comment attached with the snapshot. The size of the comment can be at most 255 characters."

		snapmirror_label: description:
			"A human readable SnapMirror Label attached with the snapshot. Size of the label can be at most 31 characters."

		ignore_owners: {
			description: [
				"if this field is true, snapshot will be deleted even if some other processes are accessing it.",
			]

			type: "bool"
		}
		snapshot_instance_uuid: description: [
			"The 128 bit unique snapshot identifier expressed in the form of UUID.",
		]
		vserver: {
			description: [
				"The Vserver name",
			]
			required: true
		}
	}
}
