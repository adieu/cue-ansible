package ansible

module: na_ontap_flexcache: {
	short_description: "NetApp ONTAP FlexCache - create/delete relationship"
	author:            "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Create/Delete FlexCache volume relationships",
	]
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	module: "na_ontap_flexcache"
	options: {
		state: {
			choices: ["present", "absent"]
			description: [
				"Whether the specified relationship should exist or not.",
			]
			default: "present"
		}
		origin_volume: description: [
			"Name of the origin volume for the FlexCache.",
			"Required for creation.",
		]
		origin_vserver: description: [
			"Name of the origin vserver for the FlexCache.",
			"Required for creation.",
		]
		origin_cluster: description: [
			"Name of the origin cluster for the FlexCache.",
			"Defaults to cluster associated with target vserver if absent.",
			"Not used for creation.",
		]
		volume: {
			description: [
				"Name of the target volume for the FlexCache.",
			]
			required: true
		}
		junction_path: description: [
			"Junction path of the cache volume.",
		]
		auto_provision_as: description: [
			"Use this parameter to automatically select existing aggregates for volume provisioning.Eg flexgroup",
			"Note that the fastest aggregate type with at least one aggregate on each node of the cluster will be selected.",
		]
		size: description: [
			"Size of cache volume.",
		]
		size_unit: {
			description: [
				"The unit used to interpret the size parameter.",
			]
			choices: ["bytes", "b", "kb", "mb", "gb", "tb", "pb", "eb", "zb", "yb"]
			default: "gb"
		}
		vserver: {
			description: [
				"Name of the target vserver for the FlexCache.",
				"Note that hostname, username, password are intended for the target vserver.",
			]
			required: true
		}
		aggr_list: description: [
			"List of aggregates to host target FlexCache volume.",
		]
		aggr_list_multiplier: description: [
			"Aggregate list repeat count.",
		]
		force_unmount: {
			description: [
				"Unmount FlexCache volume. Delete the junction path at which the volume is mounted before deleting the FlexCache relationship.",
			]
			type:    "bool"
			default: false
		}
		force_offline: {
			description: [
				"Offline FlexCache volume before deleting the FlexCache relationship.",
				"The volume will be destroyed and data can be lost.",
			]
			type:    "bool"
			default: false
		}
		time_out: {
			description: [
				"time to wait for flexcache creation or deletion in seconds",
				"if 0, the request is asynchronous",
				"default is set to 3 minutes",
			]
			default: 180
		}
	}
	version_added: "2.8"
}
