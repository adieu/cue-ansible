package ansible

module: lvol: {
	author: [
		"Jeroen Hoekx (@jhoekx)",
		"Alexander Bulimov (@abulimov)",
	]
	module:            "lvol"
	short_description: "Configure LVM logical volumes"
	description: [
		"This module creates, removes or resizes logical volumes.",
	]
	version_added: "1.1"
	options: {
		vg: description: [
			"The volume group this logical volume is part of.",
		]
		lv: description: [
			"The name of the logical volume.",
		]
		size: description: [
			"The size of the logical volume, according to lvcreate(8) --size, by default in megabytes or optionally with one of [bBsSkKmMgGtTpPeE] units; or according to lvcreate(8) --extents as a percentage of [VG|PVS|FREE]; Float values must begin with a digit. Resizing using percentage values was not supported prior to 2.1.",
		]

		state: {
			description: [
				"Control if the logical volume exists. If C(present) and the volume does not already exist then the C(size) option is required.",
			]

			choices: ["absent", "present"]
			default: "present"
		}
		active: {
			description: [
				"Whether the volume is active and visible to the host.",
			]
			type:          "bool"
			default:       "yes"
			version_added: "2.2"
		}
		force: {
			description: [
				"Shrink or remove operations of volumes requires this switch. Ensures that that filesystems get never corrupted/destroyed by mistake.",
			]

			type:          "bool"
			default:       "no"
			version_added: "1.5"
		}
		opts: {
			description: [
				"Free-form options to be passed to the lvcreate command.",
			]
			version_added: "2.0"
		}
		snapshot: {
			description: [
				"The name of the snapshot volume",
			]
			version_added: "2.1"
		}
		pvs: {
			description: [
				"Comma separated list of physical volumes (e.g. /dev/sda,/dev/sdb).",
			]
			version_added: "2.2"
		}
		thinpool: {
			description: [
				"The thin pool volume name. When you want to create a thin provisioned volume, specify a thin pool volume name.",
			]
			version_added: "2.5"
		}
		shrink: {
			description: [
				"Shrink if current size is higher than size requested.",
			]
			type:          "bool"
			default:       "yes"
			version_added: "2.2"
		}
		resizefs: {
			description: [
				"Resize the underlying filesystem together with the logical volume.",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.5"
		}
	}
	notes: ["You must specify lv (when managing the state of logical volumes) or thinpool (when managing a thin provisioned volume)."]
}
