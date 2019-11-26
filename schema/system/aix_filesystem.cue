package ansible

module: aix_filesystem: {
	author: [
		"Kairo Araujo (@kairoaraujo)",
	]
	module:            "aix_filesystem"
	short_description: "Configure LVM and NFS file systems for AIX"
	description: [
		"This module creates, removes, mount and unmount LVM and NFS file system for AIX using C(/etc/filesystems).",
		"For LVM file systems is possible to resize a file system.",
	]
	version_added: "2.8"
	options: {
		account_subsystem: {
			description: [
				"Specifies whether the file system is to be processed by the accounting subsystem.",
			]
			type:    "bool"
			default: false
		}
		attributes: {
			description: [
				"Specifies attributes for files system separated by comma.",
			]
			type:    "list"
			default: "agblksize='4096',isnapshot='no'"
		}
		auto_mount: {
			description: [
				"File system is automatically mounted at system restart.",
			]
			type:    "bool"
			default: true
		}
		device: {
			description: [
				"Logical volume (LV) device name or remote export device to create a NFS file system.",
				"It is used to create a file system on an already existing logical volume or the exported NFS file system.",
				"If not mentioned a new logical volume name will be created following AIX standards (LVM).",
			]
			type: "str"
		}
		fs_type: {
			description: [
				"Specifies the virtual file system type.",
			]
			type:    "str"
			default: "jfs2"
		}
		permissions: {
			description: [
				"Set file system permissions. C(rw) (read-write) or C(ro) (read-only).",
			]
			type: "str"
			choices: ["ro", "rw"]
			default: "rw"
		}
		mount_group: {
			description: [
				"Specifies the mount group.",
			]
			type: "str"
		}
		filesystem: {
			description: [
				"Specifies the mount point, which is the directory where the file system will be mounted.",
			]
			type:     "str"
			required: true
		}
		nfs_server: {
			description: [
				"Specifies a Network File System (NFS) server.",
			]
			type: "str"
		}
		rm_mount_point: {
			description: [
				"Removes the mount point directory when used with state C(absent).",
			]
			type:    "bool"
			default: false
		}
		size: {
			description: [
				"Specifies the file system size.",
				"For already C(present) it will be resized.",
				"512-byte blocks, Megabytes or Gigabytes. If the value has M specified it will be in Megabytes. If the value has G specified it will be in Gigabytes.",
				"If no M or G the value will be 512-byte blocks.",
				"If \"+\" is specified in begin of value, the value will be added.",
				"If \"-\" is specified in begin of value, the value will be removed.",
				"If \"+\" or \"-\" is not specified, the total value will be the specified.",
				"Size will respects the LVM AIX standards.",
			]
			type: "str"
		}
		state: {
			description: [
				"Controls the file system state.",
				"C(present) check if file system exists, creates or resize.",
				"C(absent) removes existing file system if already C(unmounted).",
				"C(mounted) checks if the file system is mounted or mount the file system.",
				"C(unmounted) check if the file system is unmounted or unmount the file system.",
			]
			type:     "str"
			required: true
			choices: ["absent", "mounted", "present", "unmounted"]
			default: "present"
		}
		vg: {
			description: [
				"Specifies an existing volume group (VG).",
			]
			type: "str"
		}
	}
	notes: ["For more C(attributes), please check \"crfs\" AIX manual."]
}
