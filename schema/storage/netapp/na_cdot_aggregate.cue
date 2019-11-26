package ansible

module: na_cdot_aggregate: {
	module: "na_cdot_aggregate"

	short_description: "Manage NetApp cDOT aggregates."
	extends_documentation_fragment: [
		"netapp.ontap",
	]
	version_added: "2.3"
	author:        "Sumit Kumar (@timuster) <sumit4@netapp.com>"

	deprecated: {
		removed_in:  "2.11"
		why:         "Updated modules released with increased functionality"
		alternative: "Use M(na_ontap_aggregate) instead."
	}

	description: [
		"Create or destroy aggregates on NetApp cDOT.",
	]

	options: {

		state: {
			required: true
			description: [
				"Whether the specified aggregate should exist or not.",
			]
			choices: ["present", "absent"]
		}

		name: {
			required: true
			description: [
				"The name of the aggregate to manage.",
			]
		}

		disk_count: description: [
			"Number of disks to place into the aggregate, including parity disks.",
			"The disks in this newly-created aggregate come from the spare disk pool.",
			"The smallest disks in this pool join the aggregate first, unless the C(disk-size) argument is provided.",
			"Either C(disk-count) or C(disks) must be supplied. Range [0..2^31-1].",
			"Required when C(state=present).",
		]
	}
}
