package ansible

module: zfs_facts: {
	module:            "zfs_facts"
	short_description: "Gather facts about ZFS datasets."
	description: [
		"Gather facts from ZFS dataset properties.",
	]
	version_added: "2.3"
	author:        "Adam Števko (@xen0l)"
	options: {
		name: {
			description: ["ZFS dataset name."]
			required: true
			aliases: ["ds", "dataset"]
		}
		recurse: {
			description: [
				"Specifies if properties for any children should be recursively displayed.",
			]

			type:    "bool"
			default: "no"
		}
		parsable: {
			description: [
				"Specifies if property values should be displayed in machine friendly format.",
			]

			type:    "bool"
			default: "no"
		}
		properties: {
			description: [
				"Specifies which dataset properties should be queried in comma-separated format. For more information about dataset properties, check zfs(1M) man page.",
			]

			default: "all"
			aliases: ["props"]
		}
		type: {
			description: [
				"Specifies which datasets types to display. Multiple values have to be provided in comma-separated form.",
			]

			choices: ["all", "filesystem", "volume", "snapshot", "bookmark"]
			default: "all"
		}
		depth: description: ["Specifies recursion depth."]
	}
}
