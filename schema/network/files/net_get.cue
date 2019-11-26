package ansible

module: net_get: {
	module:            "net_get"
	version_added:     "2.6"
	author:            "Deepak Agrawal (@dagrawal)"
	short_description: "Copy a file from a network device to Ansible Controller"
	description: [
		"This module provides functionality to copy file from network device to ansible controller.",
	]

	extends_documentation_fragment: "network_agnostic"
	options: {
		src: {
			description: [
				"Specifies the source file. The path to the source file can either be the full path on the network device or a relative path as per path supported by destination network device.",
			]

			required: true
		}
		protocol: {
			description: [
				"Protocol used to transfer file.",
			]
			default: "scp"
			choices: ["scp", "sftp"]
		}
		dest: {
			description: [
				"Specifies the destination file. The path to the destination file can either be the full path on the Ansible control host or a relative path from the playbook or role root directory.",
			]

			default: [
				"Same filename as specified in I(src). The path will be playbook root or role root directory if playbook is part of a role.",
			]
		}
	}

	requirements: [
		"scp",
	]

	notes: [
		"Some devices need specific configurations to be enabled before scp can work These configuration should be pre-configured before using this module e.g ios - C(ip scp server enable).",
		"User privilege to do scp on network device should be pre-configured e.g. ios - need user privilege 15 by default for allowing scp.",
		"Default destination of source file.",
	]
}
