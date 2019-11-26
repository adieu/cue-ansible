package ansible

module: filesystem: {
	author: [
		"Alexander Bulimov (@abulimov)",
	]
	module:            "filesystem"
	short_description: "Makes a filesystem"
	description: [
		"This module creates a filesystem.",
	]
	version_added: "1.2"
	options: {
		fstype: {
			choices: ["btrfs", "ext2", "ext3", "ext4", "ext4dev", "f2fs", "lvm", "ocfs2", "reiserfs", "xfs", "vfat", "swap"]
			description: [
				"Filesystem type to be created.",
				"reiserfs support was added in 2.2.",
				"lvm support was added in 2.5.",
				"since 2.5, I(dev) can be an image file.",
				"vfat support was added in 2.5",
				"ocfs2 support was added in 2.6",
				"f2fs support was added in 2.7",
				"swap support was added in 2.8",
			]
			required: true
			aliases: ["type"]
		}
		dev: {
			description: [
				"Target path to device or image file.",
			]
			required: true
			aliases: ["device"]
		}
		force: {
			description: [
				"If C(yes), allows to create new filesystem on devices that already has filesystem.",
			]
			type:    "bool"
			default: "no"
		}
		resizefs: {
			description: [
				"If C(yes), if the block device and filesystem size differ, grow the filesystem into the space.",
				"Supported for C(ext2), C(ext3), C(ext4), C(ext4dev), C(f2fs), C(lvm), C(xfs), C(vfat), C(swap) filesystems.",
				"XFS Will only grow if mounted.",
				"vFAT will likely fail if fatresize < 1.04.",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.0"
		}
		opts: description: [
			"List of options to be passed to mkfs command.",
		]
	}
	requirements: [
		"Uses tools related to the I(fstype) (C(mkfs)) and C(blkid) command. When I(resizefs) is enabled, C(blockdev) command is required too.",
	]
	notes: [
		"Potential filesystem on I(dev) are checked using C(blkid), in case C(blkid) isn't able to detect an existing filesystem, this filesystem is overwritten even if I(force) is C(no).",
	]
}
