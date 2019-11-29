package keycloak

onepassword_info :: {
	name?:     string
	register?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	when?:       string
	tags?: [...string]
	become?: bool
	onepassword_info: {
		auto_login?: {...}
		cli_path?: string
		search_terms: [...]
	}
}

keycloak_client :: {
	name?:     string
	register?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	when?:       string
	tags?: [...string]
	become?: bool
	keycloak_client: {
		admin_url?:                      string
		frontchannel_logout?:            bool
		not_before?:                     string
		root_url?:                       string
		attributes?:                     string
		bearer_only?:                    bool
		description?:                    string
		protocol_mappers?:               string
		public_client?:                  bool
		state?:                          string
		base_url?:                       string
		client_id?:                      string
		enabled?:                        bool
		node_re_registration_timeout?:   string
		registration_access_token?:      string
		direct_access_grants_enabled?:   bool
		full_scope_allowed?:             bool
		protocol?:                       string
		registered_nodes?:               string
		standard_flow_enabled?:          bool
		use_template_mappers?:           bool
		web_origins?:                    string
		authorization_services_enabled?: bool
		consent_required?:               bool
		id?:                             string
		name?:                           string
		redirect_uris?:                  string
		secret?:                         string
		use_template_scope?:             bool
		realm?:                          string
		use_template_config?:            bool
		service_accounts_enabled?:       bool
		surrogate_auth_required?:        bool
		authorization_settings?:         string
		client_authenticator_type?:      string
		client_template?:                string
		default_roles?:                  string
		implicit_flow_enabled?:          bool
	}
}

keycloak_clienttemplate :: {
	name?:     string
	register?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	when?:       string
	tags?: [...string]
	become?: bool
	keycloak_clienttemplate: {
		attributes?:         string
		name?:               string
		description?:        string
		full_scope_allowed?: bool
		id?:                 string
		protocol?:           string
		protocol_mappers?:   string
		realm?:              string
		state?:              string
	}
}

keycloak_group :: {
	name?:     string
	register?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	when?:       string
	tags?: [...string]
	become?: bool
	keycloak_group: {
		attributes?: {...}
		id?:    string
		name?:  string
		realm?: string
		state:  string
	}
}
