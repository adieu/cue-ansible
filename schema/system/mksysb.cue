package ansible

module: mksysb: {
	author:            "Kairo Araujo (@kairoaraujo)"
	module:            "mksysb"
	short_description: "Generates AIX mksysb rootvg backups."
	description: [
		"This module manages a basic AIX mksysb (image) of rootvg.",
	]
	version_added: "2.5"
	options: {
		backup_crypt_files: {
			description: [
				"Backup encrypted files.",
			]
			type:    "bool"
			default: "yes"
		}
		backup_dmapi_fs: {
			description: [
				"Back up DMAPI filesystem files.",
			]
			type:    "bool"
			default: "yes"
		}
		create_map_files: {
			description: [
				"Creates a new MAP files.",
			]
			type:    "bool"
			default: "no"
		}
		exclude_files: {
			description: [
				"Excludes files using C(/etc/rootvg.exclude).",
			]
			type:    "bool"
			default: "no"
		}
		exclude_wpar_files: {
			description: [
				"Excludes WPAR files.",
			]
			type:    "bool"
			default: "no"
		}
		extended_attrs: {
			description: [
				"Backup extended attributes.",
			]
			type:    "bool"
			default: "yes"
		}
		name: {
			description: [
				"Backup name",
			]
			required: true
		}
		new_image_data: {
			description: [
				"Creates a new file data.",
			]
			type:    "bool"
			default: "yes"
		}
		software_packing: {
			description: [
				"Exclude files from packing option listed in C(/etc/exclude_packing.rootvg).",
			]

			type:    "bool"
			default: "no"
		}
		storage_path: {
			description: [
				"Storage path where the mksysb will stored.",
			]
			required: true
		}
		use_snapshot: {
			description: [
				"Creates backup using snapshots.",
			]
			type:    "bool"
			default: "no"
		}
	}
}
