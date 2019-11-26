package ansible

module: purefa_host: {
	module:            "purefa_host"
	version_added:     "2.4"
	short_description: "Manage hosts on Pure Storage FlashArrays"
	description: [
		"Create, delete or modify hosts on Pure Storage FlashArrays.",
	]
	author: [
		"Pure Storage Ansible Team (@sdodsley) <pure-ansible-team@purestorage.com>",
	]
	notes: [
		"If specifying C(lun) option ensure host support requested value",
	]
	options: {
		host: {
			description: [
				"The name of the host.",
			]
			type:     "str"
			required: true
		}
		state: {
			description: [
				"Define whether the host should exist or not.",
				"When removing host all connected volumes will be disconnected.",
			]
			type:    "str"
			default: "present"
			choices: ["absent", "present"]
		}
		protocol: {
			description: [
				"Defines the host connection protocol for volumes.",
			]
			type:    "str"
			default: "iscsi"
			choices: ["fc", "iscsi", "nvme", "mixed"]
		}
		wwns: {
			type: "list"
			description: [
				"List of wwns of the host if protocol is fc or mixed.",
			]
		}
		iqn: {
			type: "list"
			description: [
				"List of IQNs of the host if protocol is iscsi or mixed.",
			]
		}
		nqn: {
			type: "list"
			description: [
				"List of NQNs of the host if protocol is nvme or mixed.",
			]
			version_added: "2.8"
		}
		volume: {
			type: "str"
			description: [
				"Volume name to map to the host.",
			]
		}
		lun: {
			description: [
				"LUN ID to assign to volume for host. Must be unique.",
				"If not provided the ID will be automatically assigned.",
				"Range for LUN ID is 1 to 4095.",
			]
			type:          "int"
			version_added: "2.8"
		}
		personality: {
			type: "str"
			description: [
				"Define which operating system the host is. Recommended for ActiveCluster integration.",
			]

			default: ""
			choices: ["hpux", "vms", "aix", "esxi", "solaris", "hitachi-vsp", "oracle-vm-server", "delete", ""]
			version_added: "2.7"
		}
		preferred_array: {
			type: "list"
			description: [
				"List of preferred arrays in an ActiveCluster environment.",
				"To remove existing preferred arrays from the host, specify I(delete).",
			]
			version_added: "2.9"
		}
	}
	extends_documentation_fragment: ["purestorage.fa"]
}
