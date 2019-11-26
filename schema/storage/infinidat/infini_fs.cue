package ansible

module: infini_fs: {
	module:            "infini_fs"
	version_added:     2.3
	short_description: "Create, Delete or Modify filesystems on Infinibox"
	description: [
		"This module creates, deletes or modifies filesystems on Infinibox.",
	]
	author: "Gregory Shulov (@GR360RY)"
	options: {
		name: {
			description: [
				"File system name.",
			]
			required: true
		}
		state: {
			description: [
				"Creates/Modifies file system when present or removes when absent.",
			]
			required: false
			default:  "present"
			choices: ["present", "absent"]
		}
		size: {
			description: [
				"File system size in MB, GB or TB units. See examples.",
			]
			required: false
		}
		pool: {
			description: [
				"Pool that will host file system.",
			]
			required: true
		}
	}
	extends_documentation_fragment: [
		"infinibox",
	]
	requirements: ["capacity"]
}
