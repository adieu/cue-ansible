package entrust

certificate_complete_chain :: {
	name?: string
	vars?: {...}
	when?:     string
	become?:   bool
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	certificate_complete_chain: {
		input_chain: string
		intermediate_certificates?: [...string]
		root_certificates: [...string]
	}
}

ecs_domain :: {
	name?: string
	vars?: {...}
	when?:     string
	become?:   bool
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	ecs_domain: {
		client_id?:          int
		domain_name:         string
		verification_email?: string
		verification_method: string
	}
}

luks_device :: {
	name?: string
	vars?: {...}
	when?:     string
	become?:   bool
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	luks_device: {
		keysize?:               int
		new_keyfile?:           string
		type?:                  string
		uuid?:                  string
		device?:                string
		force_remove_last_key?: bool
		keyfile?:               string
		label?:                 string
		name?:                  string
		remove_keyfile?:        string
		state?:                 string
	}
}

openssl_certificate :: {
	name?: string
	vars?: {...}
	when?:     string
	become?:   bool
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	openssl_certificate: {
		entrust_requester_phone?: string
		csr_path?:                string
		subject?: {...}
		signature_algorithms?: [...string]
		subject_alt_name_strict?:               bool
		ownca_not_after?:                       string
		provider:                               string
		ownca_not_before?:                      string
		ownca_path?:                            string
		not_after?:                             string
		ownca_create_subject_key_identifier?:   string
		valid_at?:                              string
		entrust_api_specification_path?:        string
		key_usage_strict?:                      bool
		ownca_privatekey_path?:                 string
		select_crypto_backend?:                 string
		acme_accountkey_path?:                  string
		entrust_api_user?:                      string
		ownca_create_authority_key_identifier?: bool
		privatekey_passphrase?:                 string
		state?:                                 string
		acme_chain?:                            bool
		not_before?:                            string
		selfsigned_not_before?:                 string
		subject_strict?:                        bool
		extended_key_usage_strict?:             bool
		selfsigned_digest?:                     string
		subject_alt_name?: [...string]
		entrust_api_client_cert_path?:     string
		entrust_api_client_cert_key_path?: string
		issuer?: {...}
		entrust_api_key?:             string
		selfsigned_not_after?:        string
		entrust_requester_email?:     string
		entrust_requester_name?:      string
		has_expired?:                 bool
		ownca_privatekey_passphrase?: string
		ownca_version?:               int
		privatekey_path?:             string
		acme_challenge_path?:         string
		entrust_cert_type?:           string
		version?:                     int
		extended_key_usage?: [...string]
		path:                                      string
		force?:                                    bool
		invalid_at?:                               string
		issuer_strict?:                            bool
		ownca_digest?:                             string
		selfsigned_create_subject_key_identifier?: string
		key_usage?: [...string]
		selfsigned_version?: int
		valid_in?:           string
		backup?:             bool
		entrust_not_after?:  string
	}
}

openssl_publickey :: {
	name?: string
	vars?: {...}
	when?:     string
	become?:   bool
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	openssl_publickey: {
		state?:                 string
		backup?:                bool
		force?:                 bool
		format?:                string
		path:                   string
		privatekey_passphrase?: string
		privatekey_path:        string
		select_crypto_backend?: string
	}
}

ecs_certificate :: {
	name?: string
	vars?: {...}
	when?:     string
	become?:   bool
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	ecs_certificate: {
		request_type?:  string
		tracking_id?:   int
		tracking_info?: string
		additional_emails?: [...string]
		backup?:          bool
		cert_expiry?:     string
		cert_lifetime?:   string
		full_chain_path?: string
		cert_type?:       string
		custom_fields?: {...}
		force?: bool
		ou?: [...string]
		org?:            string
		path:            string
		remaining_days?: int
		requester_email: string
		requester_name:  string
		requester_phone: string
		subject_alt_name?: [...string]
		client_id?:                      int
		csr?:                            string
		ct_log?:                         bool
		eku?:                            string
		end_user_key_storage_agreement?: bool
	}
}

openssl_certificate_info :: {
	name?: string
	vars?: {...}
	when?:     string
	become?:   bool
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	openssl_certificate_info: {
		valid_at?: {...}
		path:                   string
		select_crypto_backend?: string
	}
}

openssl_privatekey :: {
	name?: string
	vars?: {...}
	when?:     string
	become?:   bool
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	openssl_privatekey: {
		force?:                 bool
		format_mismatch?:       string
		passphrase?:            string
		path:                   string
		state?:                 string
		backup?:                bool
		cipher?:                string
		select_crypto_backend?: string
		size?:                  int
		type?:                  string
		curve?:                 string
		format?:                string
	}
}

get_certificate :: {
	name?: string
	vars?: {...}
	when?:     string
	become?:   bool
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	get_certificate: {
		host:                   string
		port:                   int
		proxy_host?:            string
		proxy_port?:            int
		select_crypto_backend?: string
		timeout?:               int
		ca_cert?:               string
	}
}

openssh_cert :: {
	name?: string
	vars?: {...}
	when?:     string
	become?:   bool
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	openssh_cert: {
		principals?: [...string]
		state?:     string
		valid_at?:  string
		valid_from: string
		force?:     bool
		options?: [...string]
		path:           string
		signing_key:    string
		type:           string
		valid_to:       string
		identifier?:    string
		public_key:     string
		serial_number?: int
	}
}

openssh_keypair :: {
	name?: string
	vars?: {...}
	when?:     string
	become?:   bool
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	openssh_keypair: {
		comment?: string
		force?:   bool
		path:     string
		size?:    int
		state?:   string
		type?:    string
	}
}

openssl_csr_info :: {
	name?: string
	vars?: {...}
	when?:     string
	become?:   bool
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	openssl_csr_info: {
		path:                   string
		select_crypto_backend?: string
	}
}

openssl_dhparam :: {
	name?: string
	vars?: {...}
	when?:     string
	become?:   bool
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	openssl_dhparam: {
		size?:                  int
		state?:                 string
		backup?:                bool
		force?:                 bool
		path:                   string
		select_crypto_backend?: string
	}
}

openssl_privatekey_info :: {
	name?: string
	vars?: {...}
	when?:     string
	become?:   bool
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	openssl_privatekey_info: {
		passphrase?:              string
		path:                     string
		return_private_key_data?: bool
		select_crypto_backend?:   string
	}
}

openssl_csr :: {
	name?: string
	vars?: {...}
	when?:     string
	become?:   bool
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	openssl_csr: {
		state?:   string
		version?: int
		authority_cert_issuer?: [...string]
		extended_key_usage_critical?: bool
		key_usage?: [...string]
		key_usage_critical?:         bool
		force?:                      bool
		privatekey_path:             string
		state_or_province_name?:     string
		subject_key_identifier?:     string
		basic_constraints_critical?: bool
		extended_key_usage?: [...string]
		organization_name?:            string
		path:                          string
		select_crypto_backend?:        string
		subject_alt_name_critical?:    bool
		authority_cert_serial_number?: int
		country_name?:                 string
		email_address?:                string
		locality_name?:                string
		backup?:                       bool
		ocsp_must_staple?:             bool
		authority_key_identifier?:     string
		privatekey_passphrase?:        string
		subject_alt_name?: [...string]
		common_name?:                   string
		create_subject_key_identifier?: bool
		digest?:                        string
		organizational_unit_name?:      string
		basic_constraints?: [...string]
		ocsp_must_staple_critical?: bool
		subject?: {...}
		use_common_name_for_san?: bool
	}
}

openssl_pkcs12 :: {
	name?: string
	vars?: {...}
	when?:     string
	become?:   bool
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	openssl_pkcs12: {
		friendly_name?: string
		other_certificates?: [...string]
		privatekey_path?:       string
		path:                   string
		privatekey_passphrase?: string
		src?:                   string
		force?:                 bool
		iter_size?:             int
		maciter_size?:          int
		passphrase?:            string
		action?:                string
		backup?:                bool
		certificate_path?:      string
		state?:                 string
	}
}
