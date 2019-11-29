package cyberark

cyberark_authentication :: {
	connection?: string
	name?:       string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	register?: string
	when?:     string
	tags?: [...string]
	become?: bool
	cyberark_authentication: {
		validate_certs?:                  bool
		cyberark_session?:                string
		password?:                        string
		state?:                           string
		use_shared_logon_authentication?: bool
		username?:                        string
		api_base_url?:                    string
		new_password?:                    string
		use_radius_authentication?:       bool
	}
}

cyberark_user :: {
	connection?: string
	name?:       string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	register?: string
	when?:     string
	tags?: [...string]
	become?: bool
	cyberark_user: {
		cyberark_session: {...}
		email?:                             string
		last_name?:                         string
		location?:                          string
		user_type_name?:                    string
		change_password_on_the_next_logon?: bool
		group_name?:                        string
		state?:                             string
		username:                           string
		disabled?:                          bool
		first_name?:                        string
		initial_password?:                  string
		new_password?:                      string
		expiry_date?:                       string
	}
}

onepassword_info :: {
	connection?: string
	name?:       string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	register?: string
	when?:     string
	tags?: [...string]
	become?: bool
	onepassword_info: {
		auto_login?: {...}
		cli_path?: string
		search_terms: [...]
	}
}
