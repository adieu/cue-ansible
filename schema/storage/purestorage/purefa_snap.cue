package ansible

module: purefa_snap: {
	module:            "purefa_snap"
	version_added:     "2.4"
	short_description: "Manage volume snapshots on Pure Storage FlashArrays"
	description: [
		"Create or delete volumes and volume snapshots on Pure Storage FlashArray.",
	]
	author: [
		"Pure Storage Ansible Team (@sdodsley) <pure-ansible-team@purestorage.com>",
	]
	options: {
		name: {
			description: [
				"The name of the source volume.",
			]
			type:     "str"
			required: true
		}
		suffix: {
			description: [
				"Suffix of snapshot name.",
			]
			type: "str"
		}
		target: {
			description: [
				"Name of target volume if creating from snapshot.",
			]
			type: "str"
		}
		overwrite: {
			description: [
				"Define whether to overwrite existing volume when creating from snapshot.",
			]
			type:    "bool"
			default: "no"
		}
		state: {
			description: [
				"Define whether the volume snapshot should exist or not.",
			]
			choices: ["absent", "copy", "present"]
			type:    "str"
			default: "present"
		}
		eradicate: {
			description: [
				"Define whether to eradicate the snapshot on delete or leave in trash.",
			]
			type:    "bool"
			default: "no"
		}
	}
	extends_documentation_fragment: ["purestorage.fa"]
}
