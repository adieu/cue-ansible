package ansible

module: clc_group: {
	module:            "clc_group"
	short_description: "Create/delete Server Groups at Centurylink Cloud"
	description: [
		"Create or delete Server Groups at Centurylink Centurylink Cloud",
	]
	version_added: "2.0"
	options: {
		name: {
			description: [
				"The name of the Server Group",
			]
			required: true
		}
		description: {
			description: [
				"A description of the Server Group",
			]
			required: false
		}
		parent: {
			description: [
				"The parent group of the server group. If parent is not provided, it creates the group at top level.",
			]
			required: false
		}
		location: {
			description: [
				"Datacenter to create the group in. If location is not provided, the group gets created in the default datacenter associated with the account",
			]

			required: false
		}
		state: {
			description: [
				"Whether to create or delete the group",
			]
			default: "present"
			choices: ["present", "absent"]
		}
		wait: {
			description: [
				"Whether to wait for the tasks to finish before returning.",
			]
			type:     "bool"
			default:  true
			required: false
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
