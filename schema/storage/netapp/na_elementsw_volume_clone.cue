package ansible

module: na_elementsw_volume_clone: {
	module: "na_elementsw_volume_clone"

	short_description: "NetApp Element Software Create Volume Clone"
	extends_documentation_fragment: [
		"netapp.solidfire",
	]
	version_added: "2.7"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Create volume clones on Element OS",
	]

	options: {

		name: {
			description: [
				"The name of the clone.",
			]
			required: true
		}

		src_volume_id: {
			description: [
				"The id of the src volume to clone. id may be a numeric identifier or a volume name.",
			]
			required: true
		}

		src_snapshot_id: description: [
			"The id of the snapshot to clone. id may be a numeric identifier or a snapshot name.",
		]

		account_id: {
			description: [
				"Account ID for the owner of this cloned volume. id may be a numeric identifier or an account name.",
			]
			required: true
		}

		attributes: description: "A YAML dictionary of attributes that you would like to apply on this cloned volume."

		size: description: [
			"The size of the cloned volume in (size_unit).",
		]

		size_unit: {
			description: [
				"The unit used to interpret the size parameter.",
			]
			choices: ["bytes", "b", "kb", "mb", "gb", "tb", "pb", "eb", "zb", "yb"]
			default: "gb"
		}

		access: {
			choices: ["readOnly", "readWrite", "locked", "replicationTarget"]
			description: [
				"Access allowed for the volume.",
				"If unspecified, the access settings of the clone will be the same as the source.",
				"readOnly - Only read operations are allowed.",
				"readWrite - Reads and writes are allowed.",
				"locked - No reads or writes are allowed.",
				"replicationTarget - Identify a volume as the target volume for a paired set of volumes. If the volume is not paired, the access status is locked.",
			]
		}
	}
}
