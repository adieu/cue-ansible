package ansible

module: na_ontap_license: {
	module: "na_ontap_license"

	short_description: "NetApp ONTAP protocol and feature licenses"
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.6"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"

	description: [
		"Add or remove licenses on NetApp ONTAP.",
	]

	options: {
		state: {
			description: [
				"Whether the specified license should exist or not.",
			]
			choices: ["present", "absent"]
			default: "present"
		}

		remove_unused: {
			description: [
				"Remove licenses that have no controller affiliation in the cluster.",
			]
			type: "bool"
		}

		remove_expired: {
			description: [
				"Remove licenses that have expired in the cluster.",
			]
			type: "bool"
		}

		serial_number: description:
			"Serial number of the node associated with the license. This parameter is used primarily when removing license for a specific service."

		license_names: {
			description: [
				"List of license-names to delete.",
			]
			suboptions: {
				base: description: [
					"Cluster Base License",
				]
				nfs: description: [
					"NFS License",
				]
				cifs: description: [
					"CIFS License",
				]
				iscsi: description: [
					"iSCSI License",
				]
				fcp: description: [
					"FCP License",
				]
				cdmi: description: [
					"CDMI License",
				]
				snaprestore: description: [
					"SnapRestore License",
				]
				snapmirror: description: [
					"SnapMirror License",
				]
				flexclone: description: [
					"FlexClone License",
				]
				snapvault: description: [
					"SnapVault License",
				]
				snaplock: description: [
					"SnapLock License",
				]
				snapmanagersuite: description: [
					"SnapManagerSuite License",
				]
				snapprotectapps: description: [
					"SnapProtectApp License",
				]
				v_storageattach: description: [
					"Virtual Attached Storage License",
				]
			}
		}

		license_codes: description: [
			"List of license codes to be added.",
		]
	}
}
