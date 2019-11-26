package ansible

module: clc_server_snapshot: {
	module:            "clc_server_snapshot"
	short_description: "Create, Delete and Restore server snapshots in CenturyLink Cloud."
	description: [
		"An Ansible module to Create, Delete and Restore server snapshots in CenturyLink Cloud.",
	]
	version_added: "2.0"
	options: {
		server_ids: {
			description: [
				"The list of CLC server Ids.",
			]
			required: true
		}
		expiration_days: {
			description: [
				"The number of days to keep the server snapshot before it expires.",
			]
			default:  7
			required: false
		}
		state: {
			description: [
				"The state to insure that the provided resources are in.",
			]
			default:  "present"
			required: false
			choices: ["present", "absent", "restore"]
		}
		wait: {
			description: [
				"Whether to wait for the provisioning tasks to finish before returning.",
			]
			default:  true
			required: false
			type:     "bool"
		}
	}
	requirements: [
		"python = 2.7",
		"requests >= 2.5.0",
		"clc-sdk",
	]
	author: "CLC Runner (@clc-runner)"
	notes: [
		"To use this module, it is required to set the below environment variables which enables access to the Centurylink Cloud - CLC_V2_API_USERNAME, the account login id for the centurylink cloud - CLC_V2_API_PASSWORD, the account password for the centurylink cloud",
		"Alternatively, the module accepts the API token and account alias. The API token can be generated using the CLC account login and password via the HTTP api call @ https://api.ctl.io/v2/authentication/login - CLC_V2_API_TOKEN, the API token generated from https://api.ctl.io/v2/authentication/login - CLC_ACCT_ALIAS, the account alias associated with the centurylink cloud",
		"Users can set CLC_V2_API_URL to specify an endpoint for pointing to a different CLC environment.",
	]
}
