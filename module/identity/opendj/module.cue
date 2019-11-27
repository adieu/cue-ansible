package opendj

onepassword_info :: {

	// A dictionary containing authentication details. If this is set, M(onepassword_info) will attempt to sign in to 1Password automatically.
	// Without this option, you must have already logged in via the 1Password CLI before running Ansible.
	// It is B(highly) recommended to store 1Password credentials in an Ansible Vault. Ensure that the key used to encrypt the Ansible Vault is equal to or greater in strength than the 1Password master password.

	auto_login?: {...}

	// Used to specify the exact path to the C(op) command line interface

	cli_path?: string

	// A list of one or more search terms.
	// Each search term can either be a simple string or it can be a dictionary for more control.
	// When passing a simple string, I(field) is assumed to be C(password).
	// When passing a dictionary, the following fields are available.

	search_terms: [..._]
}

opendj_backendprop :: {

	// The name of the backend on which the property needs to be updated.

	backend: string

	// The Admin port on which the OpenDJ instance is available.

	port: string

	// If configuration needs to be added/updated

	state?: string

	// The hostname of the OpenDJ server.

	hostname: string

	// The configuration setting to update.

	name: string

	// The path to the bin directory of OpenDJ.

	opendj_bindir?: string

	// The password for the cn=Directory Manager user.
	// Either password or passwordfile is needed.

	password?: string

	// Location to the password file which holds the password for the cn=Directory Manager user.
	// Either password or passwordfile is needed.

	passwordfile?: string

	// The username to connect to.

	username?: string

	// The value for the configuration item.

	value: string
}
