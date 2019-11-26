package ansible

module: lvg: {
	author: [
		"Alexander Bulimov (@abulimov)",
	]
	module:            "lvg"
	short_description: "Configure LVM volume groups"
	description: [
		"This module creates, removes or resizes volume groups.",
	]
	version_added: "1.1"
	options: {
		vg: {
			description: [
				"The name of the volume group.",
			]
			type:     "str"
			required: true
		}
		pvs: {
			description: [
				"List of comma-separated devices to use as physical devices in this volume group.",
				"Required when creating or resizing volume group.",
				"The module will take care of running pvcreate if needed.",
			]
			type: "list"
		}
		pesize: {
			description: [
				"The size of the physical extent. I(pesize) must be a power of 2 of at least 1 sector (where the sector size is the largest sector size of the PVs currently used in the VG), or at least 128KiB.",
				"Since Ansible 2.6, pesize can be optionally suffixed by a UNIT (k/K/m/M/g/G), default unit is megabyte.",
			]
			type:    "str"
			default: "4"
		}
		pv_options: {
			description: [
				"Additional options to pass to C(pvcreate) when creating the volume group.",
			]
			type:          "str"
			version_added: "2.4"
		}
		vg_options: {
			description: [
				"Additional options to pass to C(vgcreate) when creating the volume group.",
			]
			type:          "str"
			version_added: "1.6"
		}
		state: {
			description: [
				"Control if the volume group exists.",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
		force: {
			description: [
				"If C(yes), allows to remove volume group with logical volumes.",
			]
			type:    "bool"
			default: false
		}
	}
	seealso: [{
		module: "filesystem"
	}, {
		module: "lvol"
	}, {
		module: "parted"
	}]
	notes: ["This module does not modify PE size for already present volume group."]
}
