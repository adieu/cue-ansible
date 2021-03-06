package ansible

module: purefa_pgsnap: {
	module:            "purefa_pgsnap"
	version_added:     "2.6"
	short_description: "Manage protection group snapshots on Pure Storage FlashArrays"
	description: [
		"Create or delete protection group snapshots on Pure Storage FlashArray.",
		"Recovery of replicated snapshots on the replica target array is enabled.",
	]
	author: [
		"Pure Storage Ansible Team (@sdodsley) <pure-ansible-team@purestorage.com>",
	]
	options: {
		name: {
			description: [
				"The name of the source protection group.",
			]
			type:     "str"
			required: true
		}
		suffix: description: [
			"Suffix of snapshot name.",
		]
		state: {
			description: [
				"Define whether the protection group snapshot should exist or not. Copy (added in 2.7) will create a full read/write clone of the snapshot.",
			]

			type: "str"
			choices: ["absent", "present", "copy"]
			default: "present"
		}
		eradicate: {
			description: [
				"Define whether to eradicate the snapshot on delete or leave in trash.",
			]
			type:    "bool"
			default: "no"
		}
		restore: {
			description: [
				"Restore a specific volume from a protection group snapshot.",
			]
			type:          "str"
			version_added: 2.7
		}
		overwrite: {
			description: [
				"Define whether to overwrite the target volume if it already exists.",
			]
			type:          "bool"
			default:       "no"
			version_added: 2.8
		}
		target: {
			description: [
				"Volume to restore a specified volume to.",
				"If not supplied this will default to the volume defined in I(restore)",
			]
			type:          "str"
			version_added: 2.8
		}
		now: {
			description:   "Whether to initiate a snapshot of the protection group immediately"
			type:          "bool"
			default:       false
			version_added: 2.9
		}
		apply_retention: {
			description:   "Apply retention schedule settings to the snapshot"
			type:          "bool"
			default:       false
			version_added: 2.9
		}
		remote: {
			description:   "Force immeadiate snapshot to remote targets"
			type:          "bool"
			default:       false
			version_added: 2.9
		}
	}
	extends_documentation_fragment: ["purestorage.fa"]
}
