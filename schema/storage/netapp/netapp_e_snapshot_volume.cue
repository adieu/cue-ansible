package ansible

module: netapp_e_snapshot_volume: {
	module:            "netapp_e_snapshot_volume"
	short_description: "NetApp E-Series manage snapshot volumes."
	description: [
		"Create, update, remove snapshot volumes for NetApp E/EF-Series storage arrays.",
	]
	version_added: "2.2"
	author:        "Kevin Hulquest (@hulquest)"
	notes: [
		"Only I(full_threshold) is supported for update operations. If the snapshot volume already exists and the threshold matches, then an C(ok) status will be returned, no other changes can be made to a pre-existing snapshot volume.",
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
				"The url to the SANtricity WebServices Proxy or embedded REST API.",
			]
		}
		validate_certs: {
			required: false
			default:  true
			description: [
				"Should https certificates be validated?",
			]
			type: "bool"
		}
		ssid: {
			description: [
				"storage array ID",
			]
			required: true
		}
		snapshot_image_id: {
			required: true
			description: [
				"The identifier of the snapshot image used to create the new snapshot volume.",
				"Note: You'll likely want to use the M(netapp_e_facts) module to find the ID of the image you want.",
			]
		}
		full_threshold: {
			description: [
				"The repository utilization warning threshold percentage",
			]
			default: 85
		}
		name: {
			required: true
			description: [
				"The name you wish to give the snapshot volume",
			]
		}
		view_mode: {
			required: true
			description: [
				"The snapshot volume access mode",
			]
			choices: [
				"modeUnknown",
				"readWrite",
				"readOnly",
				"__UNDEFINED",
			]
		}
		repo_percentage: {
			description: [
				"The size of the view in relation to the size of the base volume",
			]
			default: 20
		}
		storage_pool_name: {
			description: [
				"Name of the storage pool on which to allocate the repository volume.",
			]
			required: true
		}
		state: {
			description: [
				"Whether to create or remove the snapshot volume",
			]
			required: true
			choices: [
				"absent",
				"present",
			]
		}
	}
}
