package identity

onepassword_info :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	onepassword_info: {

		// A list of one or more search terms.
		// Each search term can either be a simple string or it can be a dictionary for more control.
		// When passing a simple string, I(field) is assumed to be C(password).
		// When passing a dictionary, the following fields are available.

		search_terms: [...]

		// A dictionary containing authentication details. If this is set, M(onepassword_info) will attempt to sign in to 1Password automatically.
		// Without this option, you must have already logged in via the 1Password CLI before running Ansible.
		// It is B(highly) recommended to store 1Password credentials in an Ansible Vault. Ensure that the key used to encrypt the Ansible Vault is equal to or greater in strength than the 1Password master password.

		auto_login?: {...}

		// Used to specify the exact path to the C(op) command line interface

		cli_path?: string
	}
}
