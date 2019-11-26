package ansible

module: sf_volume_access_group_manager: {
	module: "sf_volume_access_group_manager"
	deprecated: {
		removed_in:  "2.11"
		why:         "This Module has been replaced"
		alternative: "please use M(na_elementsw_access_group)"
	}
	short_description: "Manage SolidFire Volume Access Groups"
	extends_documentation_fragment: [
		"netapp.solidfire",
	]
	version_added: "2.3"
	author:        "Sumit Kumar (@timuster) <sumit4@netapp.com>"
	description: [
		"Create, destroy, or update volume access groups on SolidFire",
	]

	options: {

		state: {
			description: [
				"Whether the specified volume access group should exist or not.",
			]
			required: true
			choices: ["present", "absent"]
		}

		name: {
			description: [
				"Name of the volume access group. It is not required to be unique, but recommended.",
			]
			required: true
		}

		initiators: description: [
			"List of initiators to include in the volume access group. If unspecified, the access group will start out without configured initiators.",
		]

		volumes: description: [
			"List of volumes to initially include in the volume access group. If unspecified, the access group will start without any volumes.",
		]

		virtual_network_id: description: [
			"The ID of the SolidFire Virtual Network ID to associate the volume access group with.",
		]

		virtual_network_tags: description: [
			"The ID of the VLAN Virtual Network Tag to associate the volume access group with.",
		]

		attributes: description: "List of Name/Value pairs in JSON object format."

		volume_access_group_id: description: [
			"The ID of the volume access group to modify or delete.",
		]
	}
}
