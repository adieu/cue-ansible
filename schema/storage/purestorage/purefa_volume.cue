package ansible

module: purefa_volume: {
	module:            "purefa_volume"
	version_added:     "2.4"
	short_description: "Manage volumes on Pure Storage FlashArrays"
	description: [
		"Create, delete or extend the capacity of a volume on Pure Storage FlashArray.",
	]
	author: [
		"Pure Storage Ansible Team (@sdodsley) <pure-ansible-team@purestorage.com>",
	]
	options: {
		name: {
			description: [
				"The name of the volume.",
			]
			type:     "str"
			required: true
		}
		target: {
			description: [
				"The name of the target volume, if copying.",
			]
			type: "str"
		}
		state: {
			description: [
				"Define whether the volume should exist or not.",
			]
			default: "present"
			choices: ["absent", "present"]
			type: "str"
		}
		eradicate: {
			description: [
				"Define whether to eradicate the volume on delete or leave in trash.",
			]
			type:    "bool"
			default: "no"
		}
		overwrite: {
			description: [
				"Define whether to overwrite a target volume if it already exists.",
			]
			type:    "bool"
			default: "no"
		}
		size: {
			description: [
				"Volume size in M, G, T or P units.",
			]
			type: "str"
		}
		bw_qos: {
			description: [
				"Bandwidth limit for volume in M or G units. M will set MB/s G will set GB/s To clear an existing QoS setting use 0 (zero)",
			]

			version_added: "2.8"
			type:          "str"
			aliases: ["qos"]
		}
		iops_qos: {
			description: [
				"IOPs limit for volume - use value or K or M K will mean 1000 M will mean 1000000 To clear an existing IOPs setting use 0 (zero)",
			]

			version_added: "2.10"
			type:          "str"
		}
	}
	extends_documentation_fragment: ["purestorage.fa"]
}
