package ansible

module: zfs_delegate_admin: {
	module:            "zfs_delegate_admin"
	short_description: "Manage ZFS delegated administration (user admin privileges)"
	description: [
		"Manages ZFS file system delegated administration permissions, which allow unprivileged users to perform ZFS operations normally restricted to the superuser.",
		"See the C(zfs allow) section of C(zfs(1M)) for detailed explanations of options.",
		"This module attempts to adhere to the behavior of the command line tool as much as possible.",
	]
	requirements: [
		"A ZFS/OpenZFS implementation that supports delegation with `zfs allow`, including: Solaris >= 10, illumos (all versions), FreeBSD >= 8.0R, ZFS on Linux >= 0.7.0.",
	]

	version_added: "2.8"
	options: {
		name: {
			description: [
				"File system or volume name e.g. C(rpool/myfs).",
			]
			required: true
			type:     "str"
		}
		state: {
			description: [
				"Whether to allow (C(present)), or unallow (C(absent)) a permission.",
				"When set to C(present), at least one \"entity\" param of I(users), I(groups), or I(everyone) are required.",
				"When set to C(absent), removes permissions from the specified entities, or removes all permissions if no entity params are specified.",
			]
			required: true
			choices: ["absent", "present"]
			default: "present"
		}
		users: {
			description: [
				"List of users to whom permission(s) should be granted.",
			]
			type: "list"
		}
		groups: {
			description: [
				"List of groups to whom permission(s) should be granted.",
			]
			type: "list"
		}
		everyone: {
			description: [
				"Apply permissions to everyone.",
			]
			type:    "bool"
			default: false
		}
		permissions: {
			description: [
				"The list of permission(s) to delegate (required if C(state) is C(present)).",
			]
			type: "list"
			choices: ["allow", "clone", "create", "destroy", "mount", "promote", "readonly", "receive", "rename", "rollback", "send", "share", "snapshot", "unallow"]
		}
		local: {
			description: [
				"Apply permissions to C(name) locally (C(zfs allow -l)).",
			]
			type: "bool"
		}
		descendents: {
			description: [
				"Apply permissions to C(name)'s descendents (C(zfs allow -d)).",
			]
			type: "bool"
		}
		recursive: {
			description: [
				"Unallow permissions recursively (ignored when C(state) is C(present)).",
			]
			type:    "bool"
			default: false
		}
	}
	author: ["Nate Coraor (@natefoo)"]
}
