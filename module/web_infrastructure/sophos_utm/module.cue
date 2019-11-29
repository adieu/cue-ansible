package sophos_utm

utm_network_interface_address_info :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	utm_network_interface_address_info: {
		name: string
	}
}

jenkins_job :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	jenkins_job: {
		token?:    string
		url?:      string
		user?:     string
		config?:   string
		enabled?:  bool
		name:      string
		password?: string
		state?:    string
	}
}

taiga_issue :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	taiga_issue: {
		severity?:               string
		state?:                  string
		tags?:                   string
		attachment?:             string
		description?:            string
		issue_type:              string
		status?:                 string
		subject:                 string
		taiga_host?:             string
		attachment_description?: string
		priority?:               string
		project:                 string
	}
}

utm_ca_host_key_cert_info :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	utm_ca_host_key_cert_info: {
		name: string
	}
}

apache2_module :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	apache2_module: {
		force?:              bool
		identifier?:         string
		ignore_configcheck?: bool
		name:                string
		state?:              string
	}
}

ejabberd_user :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	ejabberd_user: {
		host:      string
		logging?:  bool
		password?: string
		state?:    string
		username:  string
	}
}

utm_proxy_frontend_info :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	utm_proxy_frontend_info: {
		name: string
	}
}

apache2_mod_proxy :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	apache2_mod_proxy: {
		tls?:                 bool
		validate_certs?:      bool
		balancer_url_suffix?: string
		balancer_vhost:       string
		member_host?:         string
		state?:               string
	}
}

gunicorn :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	gunicorn: {
		user?:   string
		venv?:   string
		worker?: string
		app:     string
		chdir?:  string
		config?: string
		pid?:    string
	}
}

rundeck_acl_policy :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	rundeck_acl_policy: {
		token:        string
		url:          string
		api_version?: string
		name:         string
		policy?:      string
		project?:     string
		state?:       string
	}
}

rundeck_project :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	rundeck_project: {
		api_version?: string
		name:         string
		state?:       string
		token:        string
		url:          string
	}
}

utm_ca_host_key_cert :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	utm_ca_host_key_cert: {
		meta:        string
		name:        string
		ca:          string
		certificate: string
		comment?:    string
		encrypted?:  bool
		key?:        string
	}
}

utm_proxy_exception :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	utm_proxy_exception: {
		skip_threats_filter_categories?: [...]
		skipbadclients?:        bool
		skipform_missingtoken?: bool
		source?: [...]
		skiptft?:         bool
		op?:              string
		skipcookie?:      bool
		skiphtmlrewrite?: bool
		skipurl?:         bool
		skipform?:        bool
		status?:          bool
		name:             string
		path?: [...]
		skip_custom_threats_filters?: [...]
		skipav?: bool
	}
}

deploy_helper :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	deploy_helper: {
		current_path?:        string
		releases_path?:       string
		state?:               string
		unfinished_filename?: string
		clean?:               bool
		keep_releases?:       string
		path:                 string
		release?:             string
		shared_path?:         string
	}
}

jenkins_job_info :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	jenkins_job_info: {
		name?:           string
		password?:       string
		token?:          string
		url?:            string
		user?:           string
		validate_certs?: bool
		color?:          string
		glob?:           string
	}
}

nginx_status_info :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	nginx_status_info: {
		timeout?: int
		url:      string
	}
}

utm_proxy_auth_profile :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	utm_proxy_auth_profile: {
		frontend_session_lifetime_scope?:    string
		frontend_session_timeout:            string
		frontend_session_timeout_enabled?:   bool
		logout_delegation_urls?:             string
		backend_mode?:                       string
		frontend_form?:                      string
		frontend_realm?:                     string
		frontend_session_lifetime_limited?:  bool
		frontend_cookie?:                    string
		frontend_session_lifetime:           string
		logout_mode?:                        string
		frontend_login?:                     string
		frontend_logout?:                    string
		frontend_session_allow_persistency?: bool
		name:                                string
		aaa:                                 string
		backend_user_suffix?:                string
		comment?:                            string
		frontend_form_template?:             string
		frontend_mode?:                      string
		frontend_session_timeout_scope?:     string
		redirect_to_requested_url?:          bool
		backend_strip_basic_auth?:           bool
		backend_user_prefix?:                string
		basic_prompt:                        string
		frontend_cookie_secret?:             string
	}
}

django_manage :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	django_manage: {
		cache_table?: string
		pythonpath?:  string
		app_path:     string
		database?:    string
		failfast?:    bool
		skip?:        bool
		virtualenv?:  string
		apps?:        string
		command:      string
		settings?:    string
		merge?:       bool
		clear?:       bool
		fixtures?:    string
		link?:        bool
	}
}

utm_aaa_group :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	utm_aaa_group: {
		tacacs_groups?: [...]
		adirectory_groups_sids?: {...}
		network?: string
		dynamic?: string
		edirectory_groups?: [...]
		ipsec_dn?: string
		members?: [...]
		name: string
		adirectory_groups?: [...]
		backend_match?:  string
		ldap_attribute?: string
		radius_groups?: [...]
		comment?:              string
		ldap_attribute_value?: string
	}
}

utm_network_interface_address :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	utm_network_interface_address: {
		address:    string
		address6?:  string
		comment?:   string
		name:       string
		resolved?:  string
		resolved6?: string
	}
}

jira :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	jira: {
		comment?:        string
		inwardissue?:    string
		issuetype?:      string
		status?:         string
		uri:             string
		fields?:         string
		issue?:          string
		outwardissue?:   string
		password:        string
		project?:        string
		username:        string
		validate_certs?: bool
		timeout?:        string
		assignee?:       string
		description?:    string
		linktype?:       string
		operation:       string
		summary?:        string
	}
}

jenkins_plugin :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	jenkins_plugin: {
		with_dependencies?:  bool
		jenkins_home?:       string
		mode?:               string
		state?:              string
		timeout?:            string
		updates_url?:        string
		url?:                string
		group?:              string
		name:                string
		owner?:              string
		updates_expiration?: string
		version?:            string
	}
}

jenkins_script :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	jenkins_script: {
		validate_certs?: bool
		args?:           string
		password?:       string
		script:          string
		timeout?:        string
		url?:            string
		user?:           string
	}
}

nginx_status_facts :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	nginx_status_facts: {
		timeout?: string
		url:      string
	}
}

supervisorctl :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	supervisorctl: {
		password?:           string
		server_url?:         string
		signal?:             string
		state:               string
		supervisorctl_path?: string
		username?:           string
		config?:             string
		name:                string
	}
}

utm_aaa_group_info :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	utm_aaa_group_info: {
		name: string
	}
}

utm_dns_host :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	utm_dns_host: {
		address?:   string
		hostname?:  string
		name:       string
		resolved?:  bool
		resolved6?: bool
		timeout?:   string
		address6?:  string
		comment?:   string
		interface?: string
	}
}

utm_proxy_frontend :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	utm_proxy_frontend: {
		exceptions?:              string
		htmlrewrite?:             bool
		htmlrewrite_cookies?:     bool
		locations?:               string
		name:                     string
		port?:                    string
		profile?:                 string
		allowed_networks?:        string
		implicitredirect?:        bool
		preservehost?:            bool
		type?:                    string
		xheaders?:                bool
		add_content_type_header?: bool
		certificate?:             string
		comment?:                 string
		disable_compression?:     bool
		domain?:                  string
		status?:                  bool
		address?:                 string
		lbmethod?:                string
	}
}

jboss :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	jboss: {
		state?:       string
		deploy_path?: string
		deployment:   string
		src?:         string
	}
}

utm_proxy_location :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	utm_proxy_location: {
		hot_standby?:           bool
		stickysession_id?:      string
		stickysession_status?:  bool
		backend?:               string
		denied_networks?:       string
		status?:                bool
		websocket_passthrough?: bool
		auth_profile?:          string
		be_path?:               string
		comment?:               string
		path?:                  string
		access_control?:        string
		allowed_networks?: [...]
		name: string
	}
}

utm_proxy_location_info :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	utm_proxy_location_info: {
		name: string
	}
}

htpasswd :: {
	name?:   string
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	tags?: [...string]
	htpasswd: {
		create?:       bool
		crypt_scheme?: string
		name:          string
		password?:     string
		path:          string
		state?:        string
	}
}
