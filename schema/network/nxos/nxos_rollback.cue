package ansible

module: nxos_rollback: {
	module:                         "nxos_rollback"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Set a checkpoint or rollback to a checkpoint."
	description: [
		"This module offers the ability to set a configuration checkpoint file or rollback to a configuration checkpoint file on Cisco NXOS switches.",
	]

	author: [
		"Jason Edelman (@jedelman8)",
		"Gabriele Gerbino (@GGabriele)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"Sometimes C(transport=nxapi) may cause a timeout error.",
	]
	options: {
		checkpoint_file: description: [
			"Name of checkpoint file to create. Mutually exclusive with rollback_to.",
		]

		rollback_to: description: [
			"Name of checkpoint file to rollback to. Mutually exclusive with checkpoint_file.",
		]
	}
}
