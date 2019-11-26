package ansible

module: virt_pool: {
	module:            "virt_pool"
	author:            "Maciej Delmanowski (@drybjed)"
	version_added:     "2.0"
	short_description: "Manage libvirt storage pools"
	description: [
		"Manage I(libvirt) storage pools.",
	]
	options: {
		name: {
			required: false
			aliases: ["pool"]
			description: [
				"name of the storage pool being managed. Note that pool must be previously defined with xml.",
			]
		}

		state: {
			required: false
			choices: ["active", "inactive", "present", "absent", "undefined", "deleted"]
			description: [
				"specify which state you want a storage pool to be in. If 'active', pool will be started. If 'present', ensure that pool is present but do not change its state; if it's missing, you need to specify xml argument. If 'inactive', pool will be stopped. If 'undefined' or 'absent', pool will be removed from I(libvirt) configuration. If 'deleted', pool contents will be deleted and then pool undefined.",
			]
		}

		command: {
			required: false
			choices: [
				"define",
				"build",
				"create",
				"start",
				"stop",
				"destroy",
				"delete",
				"undefine",
				"get_xml",
				"list_pools",
				"facts",
				"info",
				"status",
			]
			description: [
				"in addition to state management, various non-idempotent commands are available. See examples.",
			]
		}

		autostart: {
			required: false
			type:     "bool"
			description: [
				"Specify if a given storage pool should be started automatically on system boot.",
			]
		}
		uri: {
			required: false
			default:  "qemu:///system"
			description: [
				"I(libvirt) connection uri.",
			]
		}
		xml: {
			required: false
			description: [
				"XML document used with the define command.",
			]
		}
		mode: {
			required: false
			choices: ["new", "repair", "resize", "no_overwrite", "overwrite", "normal", "zeroed"]
			description: [
				"Pass additional parameters to 'build' or 'delete' commands.",
			]
		}
	}
	requirements: [
		"python >= 2.6",
		"python-libvirt",
		"python-lxml",
	]
}
