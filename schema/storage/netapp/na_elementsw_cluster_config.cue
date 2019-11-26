package ansible

module: na_elementsw_cluster_config: {
	module: "na_elementsw_cluster_config"

	short_description: "Configure Element SW Cluster"
	extends_documentation_fragment: [
		"netapp.solidfire",
	]
	version_added: "2.8"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Configure Element Software cluster.",
	]

	options: {
		modify_cluster_full_threshold: {
			description: [
				"The capacity level at which the cluster generates an event",
				"Requires a stage3_block_threshold_percent or",
				"max_metadata_over_provision_factor or",
				"stage2_aware_threshold",
			]
			suboptions: {
				stage3_block_threshold_percent: description: [
					"The percentage below the \"Error\" threshold that triggers a cluster \"Warning\" alert",
				]

				max_metadata_over_provision_factor: description: [
					"The number of times metadata space can be overprovisioned relative to the amount of space available",
				]

				stage2_aware_threshold: description: [
					"The number of nodes of capacity remaining in the cluster before the system triggers a notification",
				]
			}
		}

		encryption_at_rest: {
			description: [
				"enable or disable the Advanced Encryption Standard (AES) 256-bit encryption at rest on the cluster",
			]
			choices: ["present", "absent"]
		}

		set_ntp_info: {
			description: [
				"configure NTP on cluster node",
				"Requires a list of one or more ntp_servers",
			]
			suboptions: {
				ntp_servers: description: [
					"list of NTP servers to add to each nodes NTP configuration",
				]

				broadcastclient: {
					type:    "bool"
					default: false
					description: [
						"Enables every node in the cluster as a broadcast client",
					]
				}
			}
		}

		enable_virtual_volumes: {
			type:    "bool"
			default: true
			description: ["Enable the NetApp SolidFire VVols cluster feature"]
		}
	}
}
