package ansible

module: infini_export_client: {
	module:            "infini_export_client"
	version_added:     2.3
	short_description: "Create, Delete or Modify NFS Client(s) for existing exports on Infinibox"
	description: [
		"This module creates, deletes or modifys NFS client(s) for existing exports on Infinibox.",
	]
	author: "Gregory Shulov (@GR360RY)"
	options: {
		client: {
			description: [
				"Client IP or Range. Ranges can be defined as follows 192.168.0.1-192.168.0.254.",
			]

			aliases: ["name"]
			required: true
		}
		state: {
			description: [
				"Creates/Modifies client when present and removes when absent.",
			]
			required: false
			default:  "present"
			choices: ["present", "absent"]
		}
		access_mode: {
			description: [
				"Read Write or Read Only Access.",
			]
			choices: ["RW", "RO"]
			default:  "RW"
			required: false
		}
		no_root_squash: {
			description: [
				"Don't squash root user to anonymous. Will be set to \"no\" on creation if not specified explicitly.",
			]
			type:     "bool"
			default:  false
			required: false
		}
		export: {
			description: [
				"Name of the export.",
			]
			required: true
		}
	}
	extends_documentation_fragment: [
		"infinibox",
	]
	requirements: ["munch"]
}
