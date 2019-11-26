package ansible

module: virt_net: {
	module:            "virt_net"
	author:            "Maciej Delmanowski (@drybjed)"
	version_added:     "2.0"
	short_description: "Manage libvirt network configuration"
	description: [
		"Manage I(libvirt) networks.",
	]
	options: {
		name: {
			required: true
			aliases: ["network"]
			description: [
				"name of the network being managed. Note that network must be previously defined with xml.",
			]
		}

		state: {
			required: false
			choices: ["active", "inactive", "present", "absent"]
			description: [
				"specify which state you want a network to be in. If 'active', network will be started. If 'present', ensure that network is present but do not change its state; if it's missing, you need to specify xml argument. If 'inactive', network will be stopped. If 'undefined' or 'absent', network will be removed from I(libvirt) configuration.",
			]
		}

		command: {
			required: false
			choices: [
				"define",
				"create",
				"start",
				"stop",
				"destroy",
				"undefine",
				"get_xml",
				"list_nets",
				"facts",
				"info",
				"status",
				"modify",
			]
			description: [
				"in addition to state management, various non-idempotent commands are available. See examples. Modify was added in version 2.1",
			]
		}

		autostart: {
			required: false
			type:     "bool"
			description: [
				"Specify if a given network should be started automatically on system boot.",
			]
		}
		uri: {
			required: false
			default:  "qemu:///system"
			description: [
				"libvirt connection uri.",
			]
		}
		xml: {
			required: false
			description: [
				"XML document used with the define command.",
			]
		}
	}
	requirements: [
		"python >= 2.6",
		"python-libvirt",
		"python-lxml",
	]
}
