package ansible

module: cloudscale_volume: {
	module:            "cloudscale_volume"
	short_description: "Manages volumes on the cloudscale.ch IaaS service."
	description: [
		"Create, attach/detach, update and delete volumes on the cloudscale.ch IaaS service.",
	]
	notes: [
		"To create a new volume at least the I(name) and I(size_gb) options are required.",
		"A volume can be created and attached to a server in the same task.",
	]
	version_added: "2.8"
	author: [
		"Gaudenz Steinlin (@gaudenz)",
		"René Moser (@resmo)",
	]
	options: {
		state: {
			description: ["State of the volume."]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
		name: {
			description: [
				"Name of the volume. Either name or UUID must be present to change an existing volume.",
			]

			type: "str"
		}
		uuid: {
			description: [
				"UUID of the volume. Either name or UUID must be present to change an existing volume.",
			]

			type: "str"
		}
		size_gb: {
			description: ["Size of the volume in GB."]
			type: "int"
		}
		type: {
			description: [
				"Type of the volume. Cannot be changed after creating the volume. Defaults to C(ssd) on volume creation.",
			]

			choices: ["ssd", "bulk"]
			type: "str"
		}
		server_uuids: {
			description: [
				"UUIDs of the servers this volume is attached to. Set this to C([]) to detach the volume. Currently a volume can only be attached to a single server.",
			]

			aliases: ["server_uuid"]
			type: "list"
		}
		tags: {
			description: ["Tags associated with the volume. Set this to C({}) to clear any tags."]
			type:          "dict"
			version_added: "2.9"
		}
	}
	extends_documentation_fragment: "cloudscale"
}
