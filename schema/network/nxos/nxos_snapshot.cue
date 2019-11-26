package ansible

module: nxos_snapshot: {
	module:                         "nxos_snapshot"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manage snapshots of the running states of selected features."
	description: [
		"Create snapshots of the running states of selected features, add new show commands for snapshot creation, delete and compare existing snapshots.",
	]

	author: [
		"Gabriele Gerbino (@GGabriele)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"C(transport=cli) may cause timeout errors.",
		"The C(element_key1) and C(element_key2) parameter specify the tags used to distinguish among row entries. In most cases, only the element_key1 parameter needs to specified to be able to distinguish among row entries.",
		"C(action=compare) will always store a comparison report on a local file.",
	]
	options: {
		action: {
			description: [
				"Define what snapshot action the module would perform.",
			]
			required: true
			choices: ["add", "compare", "create", "delete", "delete_all"]
		}
		snapshot_name: description: [
			"Snapshot name, to be used when C(action=create) or C(action=delete).",
		]

		description: description: [
			"Snapshot description to be used when C(action=create).",
		]
		snapshot1: description: [
			"First snapshot to be used when C(action=compare).",
		]
		snapshot2: description: [
			"Second snapshot to be used when C(action=compare).",
		]
		comparison_results_file: description: [
			"Name of the file where snapshots comparison will be stored when C(action=compare).",
		]
		compare_option: {
			description: [
				"Snapshot options to be used when C(action=compare).",
			]
			choices: ["summary", "ipv4routes", "ipv6routes"]
		}
		section: description: [
			"Used to name the show command output, to be used when C(action=add).",
		]

		show_command: description: [
			"Specify a new show command, to be used when C(action=add).",
		]
		row_id: description: [
			"Specifies the tag of each row entry of the show command's XML output, to be used when C(action=add).",
		]

		element_key1: description: [
			"Specify the tags used to distinguish among row entries, to be used when C(action=add).",
		]

		element_key2: description: [
			"Specify the tags used to distinguish among row entries, to be used when C(action=add).",
		]

		save_snapshot_locally: {
			description: [
				"Specify to locally store a new created snapshot, to be used when C(action=create).",
			]

			type:    "bool"
			default: "no"
		}
		path: {
			description: [
				"Specify the path of the file where new created snapshot or snapshots comparison will be stored, to be used when C(action=create) and C(save_snapshot_locally=true) or C(action=compare).",
			]

			default: "./"
		}
	}
}
