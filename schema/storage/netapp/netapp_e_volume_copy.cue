package ansible

module: netapp_e_volume_copy: {
	module:            "netapp_e_volume_copy"
	short_description: "NetApp E-Series create volume copy pairs"
	description: [
		"Create and delete snapshots images on volume groups for NetApp E-series storage arrays.",
	]
	version_added: "2.2"
	author:        "Kevin Hulquest (@hulquest)"
	extends_documentation_fragment: [
		"netapp.eseries",
	]
	options: {
		api_username: {
			required: true
			description: [
				"The username to authenticate with the SANtricity WebServices Proxy or embedded REST API.",
			]
		}
		api_password: {
			required: true
			description: [
				"The password to authenticate with the SANtricity WebServices Proxy or embedded REST API.",
			]
		}
		api_url: {
			required: true
			description: [
				"The url to the SANtricity WebServices Proxy or embedded REST API, for example C(https://prod-1.wahoo.acme.com/devmgr/v2).",
			]
		}
		validate_certs: {
			required: false
			default:  true
			description: [
				"Should https certificates be validated?",
			]
		}
		source_volume_id: description: [
			"The id of the volume copy source.",
			"If used, must be paired with destination_volume_id",
			"Mutually exclusive with volume_copy_pair_id, and search_volume_id",
		]
		destination_volume_id: description: [
			"The id of the volume copy destination.",
			"If used, must be paired with source_volume_id",
			"Mutually exclusive with volume_copy_pair_id, and search_volume_id",
		]
		volume_copy_pair_id: description: [
			"The id of a given volume copy pair",
			"Mutually exclusive with destination_volume_id, source_volume_id, and search_volume_id",
			"Can use to delete or check presence of volume pairs",
			"Must specify this or (destination_volume_id and source_volume_id)",
		]
		state: {
			description: [
				"Whether the specified volume copy pair should exist or not.",
			]
			required: true
			choices: ["present", "absent"]
		}
		create_copy_pair_if_does_not_exist: {
			description: [
				"Defines if a copy pair will be created if it does not exist.",
				"If set to True destination_volume_id and source_volume_id are required.",
			]
			type:    "bool"
			default: true
		}
		start_stop_copy: description: [
			"starts a re-copy or stops a copy in progress",
			"Note: If you stop the initial file copy before it it done the copy pair will be destroyed",
			"Requires volume_copy_pair_id",
		]
		search_volume_id: description: [
			"Searches for all valid potential target and source volumes that could be used in a copy_pair",
			"Mutually exclusive with volume_copy_pair_id, destination_volume_id and source_volume_id",
		]
	}
}
