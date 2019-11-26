package ansible

module: clc_blueprint_package: {
	module:            "clc_blueprint_package"
	short_description: "deploys a blue print package on a set of servers in CenturyLink Cloud."
	description: [
		"An Ansible module to deploy blue print package on a set of servers in CenturyLink Cloud.",
	]
	version_added: "2.0"
	options: {
		server_ids: {
			description: [
				"A list of server Ids to deploy the blue print package.",
			]
			required: true
		}
		package_id: {
			description: [
				"The package id of the blue print.",
			]
			required: true
		}
		package_params: {
			description: [
				"The dictionary of arguments required to deploy the blue print.",
			]
			default: {}
			required: false
		}
		state: {
			description: [
				"Whether to install or uninstall the package. Currently it supports only \"present\" for install action.",
			]
			required: false
			default:  "present"
			choices: ["present"]
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
