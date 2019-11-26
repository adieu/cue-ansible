package ansible

module: clc_aa_policy: {
	module:            "clc_aa_policy"
	short_description: "Create or Delete Anti Affinity Policies at CenturyLink Cloud."
	description: [
		"An Ansible module to Create or Delete Anti Affinity Policies at CenturyLink Cloud.",
	]
	version_added: "2.0"
	options: {
		name: {
			description: [
				"The name of the Anti Affinity Policy.",
			]
			required: true
		}
		location: {
			description: [
				"Datacenter in which the policy lives/should live.",
			]
			required: true
		}
		state: {
			description: [
				"Whether to create or delete the policy.",
			]
			required: false
			default:  "present"
			choices: ["present", "absent"]
		}
		wait: {
			description: [
				"Whether to wait for the tasks to finish before returning.",
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
