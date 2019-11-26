package ansible

module: zfs: {
	module:            "zfs"
	short_description: "Manage zfs"
	description: [
		"Manages ZFS file systems, volumes, clones and snapshots",
	]
	version_added: "1.1"
	options: {
		name: {
			description: [
				"File system, snapshot or volume name e.g. C(rpool/myfs).",
			]
			required: true
		}
		state: {
			description: [
				"Whether to create (C(present)), or remove (C(absent)) a file system, snapshot or volume. All parents/children will be created/destroyed as needed to reach the desired state.",
			]

			choices: ["absent", "present"]
			required: true
		}
		origin: description: [
			"Snapshot from which to create a clone.",
		]
		extra_zfs_properties: {
			description: [
				"A dictionary of zfs properties to be set.",
				"See the zfs(8) man page for more information.",
			]
			version_added: "2.5"
		}
	}
	author: ["Johan Wiren (@johanwiren)"]
}
