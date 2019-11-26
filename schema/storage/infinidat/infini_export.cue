package ansible

module: infini_export: {
	module:            "infini_export"
	version_added:     2.3
	short_description: "Create, Delete or Modify NFS Exports on Infinibox"
	description: [
		"This module creates, deletes or modifies NFS exports on Infinibox.",
	]
	author: "Gregory Shulov (@GR360RY)"
	options: {
		name: {
			description: [
				"Export name. Should always start with C(/). (ex. name=/data)",
			]
			aliases: ["export", "path"]
			required: true
		}
		state: {
			description: [
				"Creates/Modifies export when present and removes when absent.",
			]
			required: false
			default:  "present"
			choices: ["present", "absent"]
		}
		inner_path: {
			description: [
				"Internal path of the export.",
			]
			default: "/"
		}
		client_list: {
			description: [
				"List of dictionaries with client entries. See examples. Check infini_export_client module to modify individual NFS client entries for export.",
			]

			default:  "All Hosts(*), RW, no_root_squash: True"
			required: false
		}
		filesystem: {
			description: [
				"Name of exported file system.",
			]
			required: true
		}
	}
	extends_documentation_fragment: [
		"infinibox",
	]
	requirements: ["munch"]
}
