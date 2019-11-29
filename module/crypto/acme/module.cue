package acme

openssl_certificate :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	become?: bool
	openssl_certificate: {
		acme_accountkey_path?:           string
		acme_chain?:                     bool
		selfsigned_not_after?:           string
		ownca_version?:                  int
		privatekey_passphrase?:          string
		entrust_requester_email?:        string
		entrust_requester_name?:         string
		key_usage_strict?:               bool
		ownca_privatekey_path?:          string
		entrust_api_specification_path?: string
		path:                            string
		ownca_digest?:                   string
		csr_path?:                       string
		selfsigned_not_before?:          string
		selfsigned_version?:             int
		entrust_cert_type?:              string
		extended_key_usage?: [...string]
		ownca_create_subject_key_identifier?: string
		provider:                             string
		select_crypto_backend?:               string
		state?:                               string
		entrust_api_client_cert_path?:        string
		key_usage?: [...string]
		issuer?: {...}
		not_after?:                             string
		subject_alt_name_strict?:               bool
		entrust_requester_phone?:               string
		extended_key_usage_strict?:             bool
		subject_strict?:                        bool
		backup?:                                bool
		entrust_api_key?:                       string
		ownca_path?:                            string
		entrust_api_user?:                      string
		invalid_at?:                            string
		acme_challenge_path?:                   string
		valid_at?:                              string
		ownca_not_before?:                      string
		issuer_strict?:                         bool
		ownca_create_authority_key_identifier?: bool
		ownca_not_after?:                       string
		ownca_privatekey_passphrase?:           string
		privatekey_path?:                       string
		signature_algorithms?: [...string]
		subject_alt_name?: [...string]
		subject?: {...}
		version?:                                  int
		entrust_not_after?:                        string
		selfsigned_digest?:                        string
		valid_in?:                                 string
		entrust_api_client_cert_key_path?:         string
		selfsigned_create_subject_key_identifier?: string
		not_before?:                               string
		force?:                                    bool
		has_expired?:                              bool
	}
}

openssl_certificate_info :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	become?: bool
	openssl_certificate_info: {
		path:                   string
		select_crypto_backend?: string
		valid_at?: {...}
	}
}

acme_account_info :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	become?: bool
	acme_account_info: {
		retrieve_orders?: string
	}
}

acme_certificate_revoke :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	become?: bool
	acme_certificate_revoke: {
		private_key_content?: string
		private_key_src?:     string
		revoke_reason?:       int
		account_key_content?: string
		account_key_src?:     string
		certificate:          string
	}
}

luks_device :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	become?: bool
	luks_device: {
		type?:                  string
		uuid?:                  string
		keysize?:               int
		label?:                 string
		remove_keyfile?:        string
		state?:                 string
		new_keyfile?:           string
		device?:                string
		force_remove_last_key?: bool
		keyfile?:               string
		name?:                  string
	}
}

openssl_csr :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	become?: bool
	openssl_csr: {
		digest?:           string
		email_address?:    string
		ocsp_must_staple?: bool
		privatekey_path:   string
		version?:          int
		authority_cert_issuer?: [...string]
		basic_constraints?: [...string]
		country_name?:                  string
		state_or_province_name?:        string
		use_common_name_for_san?:       bool
		authority_key_identifier?:      string
		locality_name?:                 string
		ocsp_must_staple_critical?:     bool
		key_usage_critical?:            bool
		backup?:                        bool
		organizational_unit_name?:      string
		subject_alt_name_critical?:     bool
		force?:                         bool
		organization_name?:             string
		select_crypto_backend?:         string
		create_subject_key_identifier?: bool
		extended_key_usage?: [...string]
		path:                   string
		privatekey_passphrase?: string
		subject_alt_name?: [...string]
		authority_cert_serial_number?: int
		common_name?:                  string
		extended_key_usage_critical?:  bool
		subject?: {...}
		subject_key_identifier?:     string
		basic_constraints_critical?: bool
		key_usage?: [...string]
		state?: string
	}
}

openssl_privatekey_info :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	become?: bool
	openssl_privatekey_info: {
		passphrase?:              string
		path:                     string
		return_private_key_data?: bool
		select_crypto_backend?:   string
	}
}

openssl_pkcs12 :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	become?: bool
	openssl_pkcs12: {
		backup?:       bool
		iter_size?:    int
		maciter_size?: int
		other_certificates?: [...string]
		passphrase?:            string
		path:                   string
		privatekey_passphrase?: string
		action?:                string
		force?:                 bool
		state?:                 string
		certificate_path?:      string
		friendly_name?:         string
		privatekey_path?:       string
		src?:                   string
	}
}

openssl_privatekey :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	become?: bool
	openssl_privatekey: {
		path:                   string
		select_crypto_backend?: string
		size?:                  int
		type?:                  string
		cipher?:                string
		curve?:                 string
		force?:                 bool
		passphrase?:            string
		state?:                 string
		backup?:                bool
		format?:                string
		format_mismatch?:       string
	}
}

openssl_publickey :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	become?: bool
	openssl_publickey: {
		backup?:                bool
		force?:                 bool
		format?:                string
		path:                   string
		privatekey_passphrase?: string
		privatekey_path:        string
		select_crypto_backend?: string
		state?:                 string
	}
}

acme_certificate :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	become?: bool
	acme_certificate: {
		modify_account?: bool
		terms_agreed?:   bool
		account_email?:  string
		data?: {...}
		deactivate_authzs?:       bool
		dest?:                    string
		agreement?:               string
		chain_dest?:              string
		csr:                      string
		retrieve_all_alternates?: bool
		challenge?:               string
		force?:                   bool
		fullchain_dest?:          string
		select_chain?: [...]
		remaining_days?: int
	}
}

acme_challenge_cert_helper :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	become?: bool
	acme_challenge_cert_helper: {
		private_key_content?: string
		private_key_src?:     string
		challenge:            string
		challenge_data: {...}
	}
}

get_certificate :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	become?: bool
	get_certificate: {
		select_crypto_backend?: string
		timeout?:               int
		ca_cert?:               string
		host:                   string
		port:                   int
		proxy_host?:            string
		proxy_port?:            int
	}
}

openssh_keypair :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	become?: bool
	openssh_keypair: {
		state?:   string
		type?:    string
		comment?: string
		force?:   bool
		path:     string
		size?:    int
	}
}

openssl_dhparam :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	become?: bool
	openssl_dhparam: {
		path:                   string
		select_crypto_backend?: string
		size?:                  int
		state?:                 string
		backup?:                bool
		force?:                 bool
	}
}

acme_account :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	become?: bool
	acme_account: {
		terms_agreed?:   bool
		allow_creation?: bool
		contact?: [...string]
		new_account_key_content?: string
		new_account_key_src?:     string
		state:                    string
	}
}

acme_inspect :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	become?: bool
	acme_inspect: {
		content?:            string
		fail_on_acme_error?: bool
		method?:             string
		url?:                string
	}
}

certificate_complete_chain :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	become?: bool
	certificate_complete_chain: {
		input_chain: string
		intermediate_certificates?: [...string]
		root_certificates: [...string]
	}
}

openssh_cert :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	become?: bool
	openssh_cert: {
		path:        string
		public_key:  string
		signing_key: string
		state?:      string
		type:        string
		valid_at?:   string
		identifier?: string
		options?: [...string]
		principals?: [...string]
		serial_number?: int
		valid_from:     string
		valid_to:       string
		force?:         bool
	}
}

openssl_csr_info :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	become?: bool
	openssl_csr_info: {
		path:                   string
		select_crypto_backend?: string
	}
}
