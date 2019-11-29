package crypto

openssl_privatekey :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	openssl_privatekey: {
		format_mismatch?:       string
		path:                   string
		backup?:                bool
		cipher?:                string
		force?:                 bool
		select_crypto_backend?: string
		size?:                  int
		state?:                 string
		type?:                  string
		curve?:                 string
		format?:                string
		passphrase?:            string
	}
}

openssl_publickey :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	openssl_publickey: {
		path:                   string
		privatekey_passphrase?: string
		privatekey_path:        string
		select_crypto_backend?: string
		state?:                 string
		backup?:                bool
		force?:                 bool
		format?:                string
	}
}

certificate_complete_chain :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	certificate_complete_chain: {
		input_chain: string
		intermediate_certificates?: [...string]
		root_certificates: [...string]
	}
}

luks_device :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	luks_device: {
		uuid?:                  string
		device?:                string
		force_remove_last_key?: bool
		new_keyfile?:           string
		remove_keyfile?:        string
		state?:                 string
		type?:                  string
		keyfile?:               string
		keysize?:               int
		label?:                 string
		name?:                  string
	}
}

openssl_certificate :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	openssl_certificate: {
		key_usage?: [...string]
		privatekey_path?:                          string
		selfsigned_not_after?:                     string
		entrust_api_client_cert_key_path?:         string
		acme_accountkey_path?:                     string
		entrust_requester_phone?:                  string
		ownca_digest?:                             string
		entrust_not_after?:                        string
		force?:                                    bool
		has_expired?:                              bool
		not_before?:                               string
		ownca_not_after?:                          string
		version?:                                  int
		ownca_privatekey_path?:                    string
		selfsigned_create_subject_key_identifier?: string
		entrust_api_client_cert_path?:             string
		extended_key_usage?: [...string]
		privatekey_passphrase?: string
		selfsigned_not_before?: string
		subject_alt_name?: [...string]
		csr_path?:                string
		entrust_api_user?:        string
		entrust_requester_email?: string
		invalid_at?:              string
		key_usage_strict?:        bool
		ownca_path?:              string
		selfsigned_digest?:       string
		signature_algorithms?: [...string]
		issuer?: {...}
		selfsigned_version?:                    int
		subject_alt_name_strict?:               bool
		entrust_cert_type?:                     string
		issuer_strict?:                         bool
		acme_challenge_path?:                   string
		extended_key_usage_strict?:             bool
		ownca_create_authority_key_identifier?: bool
		subject_strict?:                        bool
		path:                                   string
		select_crypto_backend?:                 string
		provider:                               string
		acme_chain?:                            bool
		entrust_api_key?:                       string
		entrust_requester_name?:                string
		backup?:                                bool
		entrust_api_specification_path?:        string
		not_after?:                             string
		ownca_create_subject_key_identifier?:   string
		ownca_privatekey_passphrase?:           string
		ownca_version?:                         int
		valid_in?:                              string
		ownca_not_before?:                      string
		state?:                                 string
		subject?: {...}
		valid_at?: string
	}
}

openssl_csr :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	openssl_csr: {
		select_crypto_backend?:   string
		use_common_name_for_san?: bool
		authority_cert_issuer?: [...string]
		authority_cert_serial_number?: int
		authority_key_identifier?:     string
		key_usage_critical?:           bool
		common_name?:                  string
		key_usage?: [...string]
		state?:                       string
		subject_alt_name_critical?:   bool
		extended_key_usage_critical?: bool
		locality_name?:               string
		subject_alt_name?: [...string]
		email_address?:                 string
		ocsp_must_staple?:              bool
		privatekey_passphrase?:         string
		backup?:                        bool
		basic_constraints_critical?:    bool
		organizational_unit_name?:      string
		organization_name?:             string
		state_or_province_name?:        string
		version?:                       int
		create_subject_key_identifier?: bool
		extended_key_usage?: [...string]
		force?:                     bool
		ocsp_must_staple_critical?: bool
		country_name?:              string
		path:                       string
		privatekey_path:            string
		basic_constraints?: [...string]
		digest?: string
		subject?: {...}
		subject_key_identifier?: string
	}
}

openssl_pkcs12 :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	openssl_pkcs12: {
		maciter_size?:     int
		passphrase?:       string
		path:              string
		privatekey_path?:  string
		src?:              string
		backup?:           bool
		certificate_path?: string
		force?:            bool
		other_certificates?: [...string]
		state?:                 string
		action?:                string
		friendly_name?:         string
		iter_size?:             int
		privatekey_passphrase?: string
	}
}

openssh_cert :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	openssh_cert: {
		identifier?: string
		options?: [...string]
		public_key:  string
		signing_key: string
		state?:      string
		type:        string
		valid_from:  string
		force?:      bool
		path:        string
		principals?: [...string]
		serial_number?: int
		valid_at?:      string
		valid_to:       string
	}
}

openssh_keypair :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	openssh_keypair: {
		size?:    int
		state?:   string
		type?:    string
		comment?: string
		force?:   bool
		path:     string
	}
}

openssl_privatekey_info :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	openssl_privatekey_info: {
		passphrase?:              string
		path:                     string
		return_private_key_data?: bool
		select_crypto_backend?:   string
	}
}

get_certificate :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	get_certificate: {
		proxy_host?:            string
		proxy_port?:            int
		select_crypto_backend?: string
		timeout?:               int
		ca_cert?:               string
		host:                   string
		port:                   int
	}
}

openssl_csr_info :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	openssl_csr_info: {
		select_crypto_backend?: string
		path:                   string
	}
}

openssl_certificate_info :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	openssl_certificate_info: {
		select_crypto_backend?: string
		valid_at?: {...}
		path: string
	}
}

openssl_dhparam :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	openssl_dhparam: {
		select_crypto_backend?: string
		size?:                  int
		state?:                 string
		backup?:                bool
		force?:                 bool
		path:                   string
	}
}
