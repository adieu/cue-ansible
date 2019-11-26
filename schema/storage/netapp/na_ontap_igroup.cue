package ansible

module: na_ontap_igroup: {
	module:            "na_ontap_igroup"
	short_description: "NetApp ONTAP iSCSI or FC igroup configuration"
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.6"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"

	description: [
		"Create/Delete/Rename Igroups and Modify initiators belonging to an igroup",
	]

	options: {
		state: {
			description: [
				"Whether the specified Igroup should exist or not.",
			]
			choices: ["present", "absent"]
			default: "present"
		}

		name: {
			description: [
				"The name of the igroup to manage.",
			]
			required: true
		}

		initiator_group_type: {
			description: [
				"Type of the initiator group.",
				"Required when C(state=present).",
			]
			choices: ["fcp", "iscsi", "mixed"]
		}

		from_name: {
			description: [
				"Name of igroup to rename to name.",
			]
			version_added: "2.7"
		}

		ostype: description: [
			"OS type of the initiators within the group.",
		]

		initiators: {
			description: [
				"List of initiators to be mapped to the igroup.",
				"WWPN, WWPN Alias, or iSCSI name of Initiator to add or remove.",
				"For a modify operation, this list replaces the existing initiators",
				"This module does not add or remove specific initiator(s) in an igroup",
			]
			aliases: [
				"initiator",
			]
		}

		bind_portset: description: [
			"Name of a current portset to bind to the newly created igroup.",
		]

		force_remove_initiator: {
			description: [
				"Forcibly remove the initiator even if there are existing LUNs mapped to this initiator group.",
			]
			type: "bool"
		}

		vserver: {
			description: [
				"The name of the vserver to use.",
			]
			required: true
		}
	}
}
