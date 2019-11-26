package ansible

module: onepassword_info: {
	module: "onepassword_info"
	author: [
		"Ryan Conway (@Rylon)",
	]
	version_added: "2.7"
	requirements: [
		"C(op) 1Password command line utility. See U(https://support.1password.com/command-line/)",
	]
	notes: [
		"Tested with C(op) version 0.5.5",
		"Based on the C(onepassword) lookup plugin by Scott Buchanan <sbuchanan@ri.pn>.",
		"When this module is called with the deprecated C(onepassword_facts) name, potentially sensitive data from 1Password is returned as Ansible facts. Facts are subject to caching if enabled, which means this data could be stored in clear text on disk or in a database.",
	]

	short_description: "Gather items from 1Password"
	description: [
		"M(onepassword_info) wraps the C(op) command line utility to fetch data about one or more 1Password items.",
		"A fatal error occurs if any of the items being searched for can not be found.",
		"Recommend using with the C(no_log) option to avoid logging the values of the secrets being retrieved.",
		"This module was called C(onepassword_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(onepassword_info) module no longer returns C(ansible_facts)! You must now use the C(register) option to use the facts in other tasks.",
	]

	options: {
		search_terms: {
			type: "list"
			description: [
				"A list of one or more search terms.",
				"Each search term can either be a simple string or it can be a dictionary for more control.",
				"When passing a simple string, I(field) is assumed to be C(password).",
				"When passing a dictionary, the following fields are available.",
			]
			suboptions: {
				name: {
					type: "str"
					description: [
						"The name of the 1Password item to search for (required).",
					]
				}
				field: {
					type: "str"
					description: [
						"The name of the field to search for within this item (optional, defaults to \"password\" (or \"document\" if the item has an attachment).",
					]
				}
				section: {
					type: "str"
					description: [
						"The name of a section within this item containing the specified field (optional, will search all sections if not specified).",
					]
				}
				vault: {
					type: "str"
					description: [
						"The name of the particular 1Password vault to search, useful if your 1Password user has access to multiple vaults (optional).",
					]
				}
			}
			required: true
		}
		auto_login: {
			type: "dict"
			description: [
				"A dictionary containing authentication details. If this is set, M(onepassword_info) will attempt to sign in to 1Password automatically.",
				"Without this option, you must have already logged in via the 1Password CLI before running Ansible.",
				"It is B(highly) recommended to store 1Password credentials in an Ansible Vault. Ensure that the key used to encrypt the Ansible Vault is equal to or greater in strength than the 1Password master password.",
			]

			suboptions: {
				subdomain: {
					type: "str"
					description: [
						"1Password subdomain name (<subdomain>.1password.com).",
						"If this is not specified, the most recent subdomain will be used.",
					]
				}
				username: {
					type: "str"
					description: [
						"1Password username.",
						"Only required for initial sign in.",
					]
				}
				master_password: {
					type: "str"
					description: [
						"The master password for your subdomain.",
						"This is always required when specifying C(auto_login).",
					]
					required: true
				}
				secret_key: {
					type: "str"
					description: [
						"The secret key for your subdomain.",
						"Only required for initial sign in.",
					]
				}
			}
			default: {}
			required: false
		}
		cli_path: {
			type:        "path"
			description: "Used to specify the exact path to the C(op) command line interface"
			required:    false
			default:     "op"
		}
	}
}
