package ansible

module: netapp_e_amg_role: {
	module:            "netapp_e_amg_role"
	short_description: "NetApp E-Series update the role of a storage array within an Asynchronous Mirror Group (AMG)."
	description: [
		"Update a storage array to become the primary or secondary instance in an asynchronous mirror group",
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
		ssid: {
			description: [
				"The ID of the primary storage array for the async mirror action",
			]
			required: true
		}
		role: {
			description: [
				"Whether the array should be the primary or secondary array for the AMG",
			]
			required: true
			choices: ["primary", "secondary"]
		}
		noSync: {
			description: [
				"Whether to avoid synchronization prior to role reversal",
			]
			required: false
			default:  false
			type:     "bool"
		}
		force: {
			description: [
				"Whether to force the role reversal regardless of the online-state of the primary",
			]
			required: false
			default:  false
			type:     "bool"
		}
	}
}
