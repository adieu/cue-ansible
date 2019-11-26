package ansible

module: utm_proxy_location: {
	module: "utm_proxy_location"

	author: [
		"Johannes Brunswicker (@MatrixCrawler)",
	]

	short_description: "create, update or destroy reverse_proxy location entry in Sophos UTM"

	description: [
		"Create, update or destroy a reverse_proxy location entry in SOPHOS UTM.",
		"This module needs to have the REST Ability of the UTM to be activated.",
	]

	version_added: "2.8"

	options: {
		name: {
			description: [
				"The name of the object. Will be used to identify the entry",
			]
			required: true
		}
		access_control: {
			description: [
				"whether to activate the access control for the location",
			]
			type:    "str"
			default: "0"
			choices: [
				"0",
				"1",
			]
		}
		allowed_networks: {
			description: [
				"A list of allowed networks",
			]
			type:    "list"
			default: "REF_NetworkAny"
		}
		auth_profile: description: [
			"The reference name of the auth profile",
		]
		backend: {
			description: [
				"A list of backends that are connected with this location declaration",
			]
			default: []
		}
		be_path: description: [
			"The path of the backend",
		]
		comment: description: [
			"The optional comment string",
		]
		denied_networks: {
			description: [
				"A list of denied network references",
			]
			default: []
		}
		hot_standby: {
			description: [
				"Activate hot standby mode",
			]
			type:    "bool"
			default: false
		}
		path: {
			description: [
				"The path of the location",
			]
			default: "/"
		}
		status: {
			description: [
				"Whether the location is active or not",
			]
			type:    "bool"
			default: true
		}
		stickysession_id: {
			description: [
				"The stickysession id",
			]
			default: "ROUTEID"
		}
		stickysession_status: {
			description: [
				"Enable the stickysession",
			]
			type:    "bool"
			default: false
		}
		websocket_passthrough: {
			description: [
				"Enable the websocket passthrough",
			]
			type:    "bool"
			default: false
		}
	}

	extends_documentation_fragment: ["utm"]
}
