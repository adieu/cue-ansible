package ansible

module: na_cdot_license: {
	module: "na_cdot_license"

	short_description: "Manage NetApp cDOT protocol and feature licenses"
	extends_documentation_fragment: [
		"netapp.ontap",
	]
	version_added: "2.3"
	author:        "Sumit Kumar (@timuster) <sumit4@netapp.com>"

	deprecated: {
		removed_in:  "2.11"
		why:         "Updated modules released with increased functionality"
		alternative: "Use M(na_ontap_license) instead."
	}

	description: [
		"Add or remove licenses on NetApp ONTAP.",
	]

	options: {

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

		serial_number: description: [
			"Serial number of the node associated with the license.",
			"This parameter is used primarily when removing license for a specific service.",
			"If this parameter is not provided, the cluster serial number is used by default.",
		]

		licenses: {
			description: [
				"List of licenses to add or remove.",
				"Please note that trying to remove a non-existent license will throw an error.",
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
	}
}
