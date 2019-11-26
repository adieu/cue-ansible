package ansible

module: netapp_e_volume: {
	module:            "netapp_e_volume"
	version_added:     "2.2"
	short_description: "NetApp E-Series manage storage volumes (standard and thin)"
	description: [
		"Create or remove volumes (standard and thin) for NetApp E/EF-series storage arrays.",
	]
	author: [
		"Kevin Hulquest (@hulquest)",
		"Nathan Swartz (@ndswartz)",
	]
	extends_documentation_fragment: [
		"netapp.eseries",
	]
	options: {
		state: {
			description: [
				"Whether the specified volume should exist",
			]
			required: true
			choices: ["present", "absent"]
		}
		name: {
			description: [
				"The name of the volume to manage.",
			]
			required: true
		}
		storage_pool_name: {
			description: [
				"Required only when requested I(state=='present').",
				"Name of the storage pool wherein the volume should reside.",
			]
			required: false
		}
		size_unit: {
			description: [
				"The unit used to interpret the size parameter",
			]
			choices: ["bytes", "b", "kb", "mb", "gb", "tb", "pb", "eb", "zb", "yb"]
			default: "gb"
		}
		size: {
			description: [
				"Required only when I(state=='present').",
				"Size of the volume in I(size_unit).",
				"Size of the virtual volume in the case of a thin volume in I(size_unit).",
				"Maximum virtual volume size of a thin provisioned volume is 256tb; however other OS-level restrictions may exist.",
			]

			required: true
		}
		segment_size_kb: {
			description: [
				"Segment size of the volume",
				"All values are in kibibytes.",
				"Some common choices include '8', '16', '32', '64', '128', '256', and '512' but options are system dependent.",
				"Retrieve the definitive system list from M(netapp_e_facts) under segment_sizes.",
				"When the storage pool is a raidDiskPool then the segment size must be 128kb.",
				"Segment size migrations are not allowed in this module",
			]
			default: "128"
		}
		thin_provision: {
			description: [
				"Whether the volume should be thin provisioned.",
				"Thin volumes can only be created when I(raid_level==\"raidDiskPool\").",
				"Generally, use of thin-provisioning is not recommended due to performance impacts.",
			]
			type:    "bool"
			default: false
		}
		thin_volume_repo_size: {
			description: [
				"This value (in size_unit) sets the allocated space for the thin provisioned repository.",
				"Initial value must between or equal to 4gb and 256gb in increments of 4gb.",
				"During expansion operations the increase must be between or equal to 4gb and 256gb in increments of 4gb.",
				"This option has no effect during expansion if I(thin_volume_expansion_policy==\"automatic\").",
				"Generally speaking you should almost always use I(thin_volume_expansion_policy==\"automatic).",
			]
			required: false
		}
		thin_volume_max_repo_size: {
			description: [
				"This is the maximum amount the thin volume repository will be allowed to grow.",
				"Only has significance when I(thin_volume_expansion_policy==\"automatic\").",
				"When the percentage I(thin_volume_repo_size) of I(thin_volume_max_repo_size) exceeds I(thin_volume_growth_alert_threshold) then a warning will be issued and the storage array will execute the I(thin_volume_expansion_policy) policy.",
				"Expansion operations when I(thin_volume_expansion_policy==\"automatic\") will increase the maximum repository size.",
			]

			default: "same as size (in size_unit)"
		}
		thin_volume_expansion_policy: {
			description: [
				"This is the thin volume expansion policy.",
				"When I(thin_volume_expansion_policy==\"automatic\") and I(thin_volume_growth_alert_threshold) is exceed the I(thin_volume_max_repo_size) will be automatically expanded.",
				"When I(thin_volume_expansion_policy==\"manual\") and I(thin_volume_growth_alert_threshold) is exceeded the storage system will wait for manual intervention.",
				"The thin volume_expansion policy can not be modified on existing thin volumes in this module.",
				"Generally speaking you should almost always use I(thin_volume_expansion_policy==\"automatic).",
			]
			choices: ["automatic", "manual"]
			default:       "automatic"
			version_added: 2.8
		}
		thin_volume_growth_alert_threshold: {
			description: [
				"This is the thin provision repository utilization threshold (in percent).",
				"When the percentage of used storage of the maximum repository size exceeds this value then a alert will be issued and the I(thin_volume_expansion_policy) will be executed.",
				"Values must be between or equal to 10 and 99.",
			]
			default:       95
			version_added: 2.8
		}
		owning_controller: {
			description: [
				"Specifies which controller will be the primary owner of the volume",
				"Not specifying will allow the controller to choose ownership.",
			]
			required: false
			choices: ["A", "B"]
			version_added: 2.9
		}
		ssd_cache_enabled: {
			description: [
				"Whether an existing SSD cache should be enabled on the volume (fails if no SSD cache defined)",
				"The default value is to ignore existing SSD cache setting.",
			]
			type:    "bool"
			default: false
		}
		data_assurance_enabled: {
			description: [
				"Determines whether data assurance (DA) should be enabled for the volume",
				"Only available when creating a new volume and on a storage pool with drives supporting the DA capability.",
			]
			type:    "bool"
			default: false
		}
		read_cache_enable: {
			description: [
				"Indicates whether read caching should be enabled for the volume.",
			]
			type:          "bool"
			default:       true
			version_added: 2.8
		}
		read_ahead_enable: {
			description: [
				"Indicates whether or not automatic cache read-ahead is enabled.",
				"This option has no effect on thinly provisioned volumes since the architecture for thin volumes cannot benefit from read ahead caching.",
			]

			type:          "bool"
			default:       true
			version_added: 2.8
		}
		write_cache_enable: {
			description: [
				"Indicates whether write-back caching should be enabled for the volume.",
			]
			type:          "bool"
			default:       true
			version_added: 2.8
		}
		cache_without_batteries: {
			description: [
				"Indicates whether caching should be used without battery backup.",
				"Warning, M(cache_without_batteries==true) and the storage system looses power and there is no battery backup, data will be lost!",
			]
			type:          "bool"
			default:       false
			version_added: 2.9
		}
		workload_name: {
			description: [
				"Label for the workload defined by the metadata.",
				"When I(workload_name) and I(metadata) are specified then the defined workload will be added to the storage array.",
				"When I(workload_name) exists on the storage array but the metadata is different then the workload definition will be updated. (Changes will update all associated volumes!)",
				"Existing workloads can be retrieved using M(netapp_e_facts).",
			]
			required:      false
			version_added: 2.8
		}
		metadata: {
			description: [
				"Dictionary containing meta data for the use, user, location, etc of the volume (dictionary is arbitrarily defined for whatever the user deems useful)",
				"When I(workload_name) exists on the storage array but the metadata is different then the workload definition will be updated. (Changes will update all associated volumes!)",
				"I(workload_name) must be specified when I(metadata) are defined.",
			]
			type:          "dict"
			required:      false
			version_added: 2.8
		}
		wait_for_initialization: {
			description: [
				"Forces the module to wait for expansion operations to complete before continuing.",
			]
			type:          "bool"
			default:       false
			version_added: 2.8
		}
		initialization_timeout: {
			description: [
				"Duration in seconds before the wait_for_initialization operation will terminate.",
				"M(wait_for_initialization==True) to have any effect on module's operations.",
			]
			type:          "int"
			required:      false
			version_added: 2.9
		}
	}
}
