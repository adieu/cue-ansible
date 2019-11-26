package ansible

module: netapp_e_amg_sync: {
	module:            "netapp_e_amg_sync"
	short_description: "NetApp E-Series conduct synchronization actions on asynchronous mirror groups."
	description: [
		"Allows for the initialization, suspension and resumption of an asynchronous mirror group's synchronization for NetApp E-series storage arrays.",
	]
	version_added: "2.2"
	author:        "Kevin Hulquest (@hulquest)"
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
		ssid: description: [
			"The ID of the storage array containing the AMG you wish to target",
		]
		name: {
			description: [
				"The name of the async mirror group you wish to target",
			]
			required: true
		}
		state: {
			description: [
				"The synchronization action you'd like to take.",
				"If C(running) then it will begin syncing if there is no active sync or will resume a suspended sync. If there is already a sync in progress, it will return with an OK status.",
				"If C(suspended) it will suspend any ongoing sync action, but return OK if there is no active sync or if the sync is already suspended",
			]
			choices: [
				"running",
				"suspended",
			]
			required: true
		}
		delete_recovery_point: {
			description: [
				"Indicates whether the failures point can be deleted on the secondary if necessary to achieve the synchronization.",
				"If true, and if the amount of unsynchronized data exceeds the CoW repository capacity on the secondary for any member volume, the last failures point will be deleted and synchronization will continue.",
				"If false, the synchronization will be suspended if the amount of unsynchronized data exceeds the CoW Repository capacity on the secondary and the failures point will be preserved.",
				"NOTE: This only has impact for newly launched syncs.",
			]
			type:    "bool"
			default: false
		}
	}
}
