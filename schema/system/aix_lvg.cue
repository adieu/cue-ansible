package ansible

module: aix_lvg: {
	author: [
		"Kairo Araujo (@kairoaraujo)",
	]
	module:            "aix_lvg"
	short_description: "Manage LVM volume groups on AIX"
	description: [
		"This module creates, removes or resize volume groups on AIX LVM.",
	]
	version_added: "2.8"
	options: {
		force: {
			description: [
				"Force volume group creation.",
			]
			type:    "bool"
			default: false
		}
		pp_size: {
			description: [
				"The size of the physical partition in megabytes.",
			]
			type: "int"
		}
		pvs: {
			description: [
				"List of comma-separated devices to use as physical devices in this volume group.",
				"Required when creating or extending (C(present) state) the volume group.",
				"If not informed reducing (C(absent) state) the volume group will be removed.",
			]
			type: "list"
		}
		state: {
			description: [
				"Control if the volume group exists and volume group AIX state varyonvg C(varyon) or varyoffvg C(varyoff).",
			]
			type: "str"
			choices: ["absent", "present", "varyoff", "varyon"]
			default: "present"
		}
		vg: {
			description: [
				"The name of the volume group.",
			]
			type:     "str"
			required: true
		}
		vg_type: {
			description: [
				"The type of the volume group.",
			]
			type: "str"
			choices: ["big", "normal", "scalable"]
			default: "normal"
		}
	}
	notes: [
		"AIX will permit remove VG only if all LV/Filesystems are not busy.",
		"Module does not modify PP size for already present volume group.",
	]
}
