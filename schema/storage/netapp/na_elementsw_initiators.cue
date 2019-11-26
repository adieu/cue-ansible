package ansible

module: na_elementsw_initiators: {
	module: "na_elementsw_initiators"

	short_description: "Manage Element SW initiators"
	extends_documentation_fragment: [
		"netapp.solidfire",
	]
	version_added: "2.8"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Manage Element Software initiators that allow external clients access to volumes.",
	]

	options: {
		initiators: {
			description: "A list of objects containing characteristics of each initiator."
			suboptions: {
				name: description: "The name of the initiator."

				alias: description: "The friendly name assigned to this initiator."

				initiator_id: description: "The numeric ID of the initiator."

				volume_access_groups: description: "A list of volumeAccessGroupIDs to which this initiator belongs."

				attributes: description: "A set of JSON attributes to assign to this initiator."
			}
		}

		state: {
			description: [
				"Whether the specified initiator should exist or not.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
	}
}
