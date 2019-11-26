package cyberark

cyberark_authentication :: {

	// Whether or not Shared Logon Authentication will be used.

	use_shared_logon_authentication?: bool

	// Dictionary set by a CyberArk authentication containing the different values to perform actions on a logged-on CyberArk session.

	cyberark_session?: string

	// The new password of the user. This parameter is optional, and enables you to change a password.

	new_password?: string

	// Specifies if an authentication logon/logoff and a cyberark_session should be added/removed.

	state?: string

	// Whether or not users will be authenticated via a RADIUS server. Valid values are true/false.

	use_radius_authentication?: bool

	// A string containing the base URL of the server hosting CyberArk's Privileged Account Security Web Services SDK.

	api_base_url?: string

	// The password of the user.

	password?: string

	// The name of the user who will logon to the Vault.

	username?: string

	// If C(false), SSL certificates will not be validated.  This should only set to C(false) used on personally controlled sites using self-signed certificates.

	validate_certs?: bool
}

cyberark_user :: {

	// Whether or not the user will be disabled.

	disabled?: bool

	// The user email address.

	email?: string

	// The user first name.

	first_name?: string

	// Whether or not the user must change their password in their next logon.

	change_password_on_the_next_logon?: bool

	// Specifies the state needed for the user present for create user, absent for delete user.

	state?: string

	// The user last name.

	last_name?: string

	// The name of the user who will be queried (for details), added, updated or deleted.

	username: string

	// The type of user.
	// The parameter defaults to C(EPVUser).

	user_type_name?: string

	// The date and time when the user account will expire and become disabled.

	expiry_date?: string

	// The name of the group the user will be added to.

	group_name?: string

	// The password that the new user will use to log on the first time.
	// This password must meet the password policy requirements.
	// This parameter is required when state is present -- Add User.

	initial_password?: string

	// The Vault Location for the user.

	location?: string

	// The user updated password. Make sure that this password meets the password policy requirements.

	new_password?: string

	// Dictionary set by a CyberArk authentication containing the different values to perform actions on a logged-on CyberArk session, please see M(cyberark_authentication) module for an example of cyberark_session.

	cyberark_session: {...}
}

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
