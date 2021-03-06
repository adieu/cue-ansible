package ansible

module: na_ontap_snapshot_policy: {
	module:            "na_ontap_snapshot_policy"
	short_description: "NetApp ONTAP manage Snapshot Policy"
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.8"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Create/Modify/Delete ONTAP snapshot policies",
	]
	options: {
		state: {
			description: [
				"If you want to create, modify or delete a snapshot policy.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		name: {
			description:
				"Name of the snapshot policy to be managed. The maximum string length is 256 characters."

			required: true
		}
		enabled: {
			description: [
				"Status of the snapshot policy indicating whether the policy will be enabled or disabled.",
			]
			type: "bool"
		}
		comment: description:
			"A human readable comment attached with the snapshot. The size of the comment can be at most 255 characters."

		count: {
			description:
				"Retention count for the snapshots created by the schedule."
			type: "list"
		}
		schedule: {
			description: [
				"Schedule to be added inside the policy.",
			]
			type: "list"
		}
		snapmirror_label: {
			description: [
				"SnapMirror label assigned to each schedule inside the policy. Use an empty string ('') for no label.",
			]

			type:          "list"
			required:      false
			version_added: "2.9"
		}
		vserver: {
			description: [
				"The name of the vserver to use. In a multi-tenanted environment, assigning a Snapshot Policy to a vserver will restrict its use to that vserver.",
			]

			required:      false
			version_added: "2.9"
		}
	}
}
