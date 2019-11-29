package windows

win_package :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_package: {
		validate_certs?:  bool
		arguments?:       _
		chdir?:           string
		creates_service?: string
		log_path?:        string
		password?:        string
		path?:            string
		product_id?:      string
		state?:           string
		creates_path?:    string
		creates_version?: string
		expected_return_code?: [...]
		username?: string
	}
}

win_timezone :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_timezone: {
		timezone: string
	}
}

win_domain_group :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_domain_group: {
		protect?: bool
		state?:   string
		attributes?: {...}
		category?:            string
		managed_by?:          string
		organizational_unit?: string
		description?:         string
		domain_password?:     string
		domain_username?:     string
		scope?:               string
		display_name?:        string
		domain_server?:       string
		ignore_protection?:   bool
		name:                 string
	}
}

win_find :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_find: {
		use_regex?:          bool
		age?:                string
		checksum_algorithm?: string
		file_type?:          string
		follow?:             bool
		hidden?:             bool
		recurse?:            bool
		age_stamp?:          string
		get_checksum?:       bool
		paths: [...]
		patterns?: [...]
		size?: string
	}
}

win_lineinfile :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_lineinfile: {
		path:          string
		regex?:        string
		state?:        string
		backup?:       bool
		insertafter?:  string
		encoding?:     string
		insertbefore?: string
		line?:         string
		newline?:      string
		validate?:     string
		backrefs?:     bool
		create?:       bool
	}
}

win_webpicmd :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_webpicmd: {
		name: string
	}
}

win_reg_stat :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_reg_stat: {
		name?: string
		path:  string
	}
}

win_dns_client :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_dns_client: {
		adapter_names: [...]
		dns_servers: [...]
	}
}

win_domain_user :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_domain_user: {
		update_password?: string
		street?:          string
		domain_server?:   string
		email?:           string
		path?:            string
		description?:     string
		domain_username?: string
		enabled?:         bool
		identity?:        string
		name:             string
		city?:            string
		groups?: [...]
		state?:                       string
		country?:                     string
		attributes?:                  string
		company?:                     string
		firstname?:                   string
		password?:                    string
		postal_code?:                 string
		upn?:                         string
		account_locked?:              string
		state_province?:              string
		surname?:                     string
		password_never_expires?:      bool
		user_cannot_change_password?: bool
		password_expired?:            bool
		groups_action?:               string
		domain_password?:             string
	}
}

win_msg :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_msg: {
		display_seconds?: int
		msg?:             string
		to?:              string
		wait?:            bool
	}
}

win_certificate_store :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_certificate_store: {
		key_exportable?: bool
		password?:       string
		path?:           string
		store_location?: string
		thumbprint?:     string
		file_type?:      string
		key_storage?:    string
		state?:          string
		store_name?:     string
	}
}

win_optional_feature :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_optional_feature: {
		include_parent?: bool
		name: [...]
		source?: string
		state?:  string
	}
}

win_rds_settings :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_rds_settings: {
		ssl_bridging?:                          string
		certificate_hash?:                      string
		enable_only_messaging_capable_clients?: bool
		max_connections?:                       int
	}
}

win_robocopy :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_robocopy: {
		dest:     string
		flags?:   string
		purge?:   bool
		recurse?: bool
		src:      string
	}
}

win_whoami :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_whoami: {
	}
}

win_environment :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_environment: {
		level:  string
		name:   string
		state?: string
		value?: string
	}
}

win_netbios :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_netbios: {
		adapter_names?: [...]
		state: string
	}
}

win_unzip :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_unzip: {
		creates?:        string
		delete_archive?: bool
		dest:            string
		recurse?:        bool
		src:             string
	}
}

win_dns_record :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_dns_record: {
		computer_name?: string
		name:           string
		state?:         string
		ttl?:           int
		type:           string
		value?: [...]
		zone: string
	}
}

win_http_proxy :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_http_proxy: {
		bypass?: [...]
		proxy?:  string
		source?: string
	}
}

win_iis_website :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_iis_website: {
		ip?:               string
		port?:             int
		ssl?:              string
		application_pool?: string
		hostname?:         string
		physical_path?:    string
		site_id?:          string
		state?:            string
		name:              string
		parameters?:       string
	}
}

win_psrepository :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_psrepository: {
		installation_policy?: string
		name:                 string
		source?:              string
		state?:               string
	}
}

win_get_url :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_get_url: {
		proxy_password?:       string
		client_cert?:          string
		use_proxy?:            string
		checksum_algorithm?:   string
		dest:                  string
		follow_redirects?:     string
		force?:                bool
		checksum_url?:         string
		client_cert_password?: string
		headers?:              string
		maximum_redirection?:  string
		method?:               string
		proxy_url?:            string
		proxy_username?:       string
		url:                   string
		checksum?:             string
	}
}

win_pester :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_pester: {
		test_parameters?: {...}
		version?:       string
		output_file?:   string
		output_format?: string
		path:           string
		tags?: [...]
	}
}

win_power_plan :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_power_plan: {
		name: string
	}
}

win_rds_cap :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_rds_cap: {
		redirect_printers?: bool
		state?:             string
		user_groups?: [...]
		allow_only_sdrts_servers?: bool
		redirect_drives?:          bool
		redirect_pnp?:             bool
		order?:                    int
		redirect_serial?:          bool
		session_timeout_action?:   string
		auth_method?:              string
		computer_groups?: [...]
		name:                string
		redirect_clipboard?: bool
		session_timeout?:    int
		idle_timeout?:       int
	}
}

win_reboot :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_reboot: {
		test_command?:      string
		connect_timeout?:   int
		msg?:               string
		post_reboot_delay?: int
		pre_reboot_delay?:  int
		reboot_timeout?:    int
		shutdown_timeout?:  int
	}
}

win_region :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_region: {
		copy_settings?:    bool
		format?:           string
		location?:         string
		unicode_language?: string
	}
}

win_service :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_service: {
		path?:  string
		state?: string
		dependencies?: [...]
		description?:              string
		desktop_interact?:         bool
		display_name?:             string
		name:                      string
		password?:                 string
		username?:                 string
		dependency_action?:        string
		force_dependent_services?: bool
		start_mode?:               string
	}
}

win_eventlog_entry :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_eventlog_entry: {
		log:         string
		message:     string
		raw_data?:   string
		source:      string
		category?:   int
		entry_type?: string
		event_id:    int
	}
}

win_regedit :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_regedit: {
		type?:       string
		data?:       string
		delete_key?: bool
		hive?:       string
		name?:       string
		path:        string
		state?:      string
	}
}

win_snmp :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_snmp: {
		action?: string
		community_strings?: [...]
		permitted_managers?: [...]
	}
}

win_shortcut :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_shortcut: {
		arguments?:    string
		dest:          string
		icon?:         string
		run_as_admin?: bool
		src?:          string
		windowstyle?:  string
		description?:  string
		directory?:    string
		hotkey?:       string
		state?:        string
	}
}

win_owner :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_owner: {
		path:     string
		recurse?: bool
		user:     string
	}
}

win_rabbitmq_plugin :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_rabbitmq_plugin: {
		prefix?:   string
		state?:    string
		names:     string
		new_only?: bool
	}
}

win_route :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_route: {
		state?:      string
		destination: string
		gateway?:    string
		metric?:     int
	}
}

win_stat :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_stat: {
		get_checksum?:       bool
		get_md5?:            bool
		path:                string
		checksum_algorithm?: string
		follow?:             bool
	}
}

win_domain :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_domain: {
		create_dns_delegation?: bool
		dns_domain_name:        string
		domain_netbios_name?:   string
		safe_mode_password:     string
		sysvol_path?:           string
		database_path?:         string
		domain_mode?:           string
		forest_mode?:           string
		install_dns?:           bool
	}
}

win_psmodule :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_psmodule: {
		name:                  string
		required_version?:     string
		state?:                string
		allow_clobber?:        bool
		allow_prerelease?:     bool
		maximum_version?:      string
		minimum_version?:      string
		repository?:           string
		skip_publisher_check?: bool
		url?:                  string
	}
}

win_rds_rap :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_rds_rap: {
		computer_group_type?: string
		description?:         string
		name:                 string
		state?:               string
		user_groups?: [...]
		allowed_ports?: [...]
		computer_group?: string
	}
}

win_regmerge :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_regmerge: {
		compare_key?: string
		path:         string
	}
}

win_chocolatey_config :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_chocolatey_config: {
		name:   string
		state?: string
		value?: string
	}
}

win_domain_computer :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_domain_computer: {
		dns_hostname?:     string
		domain_server?:    string
		domain_username?:  string
		enabled?:          bool
		ou?:               string
		description?:      string
		domain_password?:  string
		name:              string
		sam_account_name?: string
		state?:            string
	}
}

win_group_membership :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_group_membership: {
		members: [...]
		name:   string
		state?: string
	}
}

win_user_profile :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_user_profile: {
		name?:            string
		remove_multiple?: bool
		state?:           string
		username?:        string
	}
}

win_domain_group_membership :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_domain_group_membership: {
		domain_username?: string
		members: [...]
		name:             string
		state?:           string
		domain_password?: string
		domain_server?:   string
	}
}

win_group :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_group: {
		description?: string
		name:         string
		state?:       string
	}
}

win_nssm :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_nssm: {
		description?:       string
		start_mode?:        string
		working_directory?: string
		state?:             string
		arguments?:         string
		dependencies?: [...]
		password?:       string
		stdout_file?:    string
		app_parameters?: string
		name:            string
		stderr_file?:    string
		user?:           string
		application?:    string
		display_name?:   string
		executable?:     string
	}
}

win_pagefile :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_pagefile: {
		initial_size?:   int
		override?:       bool
		state?:          string
		remove_all?:     bool
		system_managed?: bool
		test_path?:      bool
		automatic?:      bool
		drive?:          string
		maximum_size?:   int
	}
}

win_shell :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_shell: {
		free_form:                 string
		no_profile?:               bool
		output_encoding_override?: string
		removes?:                  string
		stdin?:                    string
		chdir?:                    string
		creates?:                  string
		executable?:               string
	}
}

win_uri :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_uri: {
		url_username?:     string
		follow_redirects?: string
		return_content?:   bool
		status_code?: [...]
		use_proxy?:            string
		proxy_password?:       string
		proxy_url?:            string
		removes?:              string
		dest?:                 string
		url:                   string
		body?:                 _
		content_type?:         string
		creates?:              string
		method?:               string
		proxy_username?:       string
		url_password?:         string
		client_cert?:          string
		client_cert_password?: string
		maximum_redirection?:  string
	}
}

win_firewall_rule :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_firewall_rule: {
		action?:      string
		description?: string
		enabled?:     bool
		icmp_type_code?: [...]
		localport?: string
		profiles?: [...]
		program?:    string
		group?:      string
		protocol?:   string
		service?:    string
		direction?:  string
		localip?:    string
		state?:      string
		name:        string
		remoteip?:   string
		remoteport?: string
	}
}

win_psexec :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_psexec: {
		noprofile?: bool
		wait?:      bool
		extra_opts?: [...]
		interactive?: bool
		limited?:     bool
		nobanner?:    bool
		username?:    string
		chdir?:       string
		command:      string
		executable?:  string
		priority?:    string
		hostnames?: [...]
		password?: string
		system?:   bool
		timeout?:  int
		elevated?: bool
		session?:  int
	}
}

win_wait_for :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_wait_for: {
		timeout?:         int
		connect_timeout?: int
		delay?:           int
		path?:            string
		regex?:           string
		sleep?:           int
		exclude_hosts?: [...]
		host?:  string
		port?:  int
		state?: string
	}
}

win_inet_proxy :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_inet_proxy: {
		auto_config_url?: string
		auto_detect?:     bool
		bypass?: [...]
		connection?: string
		proxy?:      string
	}
}

win_acl :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_acl: {
		propagation?: string
		rights:       string
		state?:       string
		type:         string
		user:         string
		inherit?:     string
		path:         string
	}
}

win_chocolatey_feature :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_chocolatey_feature: {
		name:   string
		state?: string
	}
}

win_firewall :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_firewall: {
		profiles?: [...]
		state?: string
	}
}

win_mapped_drive :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_mapped_drive: {
		letter:    string
		password?: string
		path?:     string
		state?:    string
		username?: string
	}
}

win_security_policy :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_security_policy: {
		section: string
		value:   string
		key:     string
	}
}

win_eventlog :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_eventlog: {
		name:             string
		overflow_action?: string
		parameter_file?:  string
		category_file?:   string
		maximum_size?:    string
		message_file?:    string
		retention_days?:  int
		sources?: [...]
		state?: string
	}
}

win_iis_webapplication :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_iis_webapplication: {
		password?:         string
		physical_path?:    string
		site:              string
		state?:            string
		username?:         string
		application_pool?: string
		connect_as?:       string
		name:              string
	}
}

win_product_facts :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_product_facts: {
	}
}

win_chocolatey_source :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_chocolatey_source: {
		name:                  string
		source_password?:      string
		source_username?:      string
		update_password?:      string
		admin_only?:           bool
		allow_self_service?:   bool
		certificate?:          string
		source?:               string
		state?:                string
		bypass_proxy?:         bool
		certificate_password?: string
		priority?:             int
	}
}

win_credential :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_credential: {
		alias?:         string
		comment?:       string
		secret?:        string
		secret_format?: string
		update_secret?: string
		username?:      string
		attributes?:    string
		name:           string
		persistence?:   string
		state?:         string
		type:           string
	}
}

win_domain_membership :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_domain_membership: {
		workgroup_name?:        string
		dns_domain_name?:       string
		domain_admin_password?: string
		domain_admin_user:      string
		domain_ou_path?:        string
		hostname?:              string
		state?:                 string
	}
}

win_ping :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_ping: {
		data?: string
	}
}

win_chocolatey :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_chocolatey: {
		skip_scripts?:     bool
		source_password?:  string
		timeout?:          int
		version?:          string
		allow_prerelease?: bool
		install_args?:     string
		proxy_url?:        string
		allow_multiple?:   bool
		name: [...]
		proxy_password?:        string
		source?:                string
		state?:                 string
		architecture?:          string
		pinned?:                bool
		proxy_username?:        string
		ignore_dependencies?:   bool
		package_params?:        string
		source_username?:       string
		validate_certs?:        bool
		allow_empty_checksums?: bool
		force?:                 bool
		ignore_checksums?:      bool
	}
}

win_file :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_file: {
		path:   string
		state?: string
	}
}

win_iis_webbinding :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_iis_webbinding: {
		ssl_flags?:              string
		certificate_store_name?: string
		name:                    string
		ip?:                     string
		port?:                   string
		protocol?:               string
		state?:                  string
		certificate_hash?:       string
		host_header?:            string
	}
}

win_partition :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_partition: {
		drive_letter?:     string
		offline?:          bool
		partition_number?: int
		partition_size?:   string
		read_only?:        bool
		active?:           bool
		disk_number?:      int
		gpt_type?:         string
		hidden?:           bool
		mbr_type?:         string
		state?:            string
	}
}

win_wait_for_process :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_wait_for_process: {
		process_min_count?: int
		process_name_exact?: [...]
		sleep?:                int
		state?:                string
		timeout?:              int
		owner?:                string
		post_wait_delay?:      int
		pre_wait_delay?:       int
		process_name_pattern?: string
		pid?:                  int
	}
}

win_copy :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_copy: {
		force?:        bool
		local_follow?: bool
		remote_src?:   bool
		src?:          string
		backup?:       bool
		content?:      string
		decrypt?:      bool
		dest:          string
	}
}

win_template :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_template: {
		backup?:           bool
		force?:            string
		newline_sequence?: string
	}
}

win_dotnet_ngen :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_dotnet_ngen: {
	}
}

win_scheduled_task :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_scheduled_task: {
		date?:                 string
		description?:          string
		logon_type?:           string
		restart_interval?:     string
		start_when_available?: bool
		actions?: [...]
		allow_hard_terminate?: bool
		compatibility?:        int
		triggers?: [...]
		update_password?:                bool
		source?:                         string
		disallow_start_if_on_batteries?: bool
		hidden?:                         bool
		password?:                       string
		stop_if_going_on_batteries?:     bool
		username?:                       string
		priority?:                       int
		restart_count?:                  int
		state?:                          string
		path?:                           string
		run_only_if_network_available?:  bool
		allow_demand_start?:             bool
		enabled?:                        bool
		multiple_instances?:             int
		group?:                          string
		name:                            string
		wake_to_run?:                    bool
		author?:                         string
		execution_time_limit?:           string
		run_level?:                      string
		version?:                        string
		delete_expired_task_after?:      string
		display_name?:                   string
		run_only_if_idle?:               bool
	}
}

win_user :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_user: {
		account_disabled?:            bool
		account_locked?:              string
		groups?:                      string
		groups_action?:               string
		name:                         string
		password_expired?:            bool
		password_never_expires?:      bool
		user_cannot_change_password?: bool
		description?:                 string
		fullname?:                    string
		password?:                    string
		state?:                       string
		update_password?:             string
	}
}

win_scheduled_task_stat :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_scheduled_task_stat: {
		name?: string
		path?: string
	}
}

win_audit_rule :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_audit_rule: {
		inheritance_flags?: [...]
		path:               string
		propagation_flags?: string
		rights: [...]
		state?: string
		user:   string
		audit_flags: [...]
	}
}

win_path :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_path: {
		elements: [...]
		name?:  string
		scope?: string
		state?: string
	}
}

win_user_right :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_user_right: {
		action?: string
		name:    string
		users: [...]
	}
}

win_hosts :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_hosts: {
		action?: string
		aliases?: [...]
		canonical_name?: string
		ip_address?:     string
		state?:          string
	}
}

win_xml :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_xml: {
		backup?:    bool
		count?:     bool
		fragment?:  string
		path:       string
		state?:     string
		type:       string
		xpath:      string
		attribute?: string
	}
}

win_command :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_command: {
		output_encoding_override?: string
		removes?:                  string
		stdin?:                    string
		chdir?:                    string
		creates?:                  string
		free_form:                 string
	}
}

win_domain_controller :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_domain_controller: {
		state?:                string
		safe_mode_password?:   string
		site_name?:            string
		domain_admin_password: string
		domain_admin_user:     string
		install_dns?:          bool
		local_admin_password?: string
		read_only?:            bool
		sysvol_path?:          string
		database_path?:        string
		dns_domain_name?:      string
	}
}

win_iis_webapppool :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_iis_webapppool: {
		attributes?: string
		name:        string
		state?:      string
	}
}

win_disk_image :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_disk_image: {
		image_path: string
		state?:     string
	}
}

win_format :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_format: {
		integrity_streams?:    bool
		large_frs?:            bool
		path?:                 string
		compress?:             bool
		drive_letter?:         string
		force?:                bool
		full?:                 bool
		label?:                string
		new_label?:            string
		allocation_unit_size?: int
		file_system?:          string
	}
}

win_iis_virtualdirectory :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_iis_virtualdirectory: {
		state?:         string
		application?:   string
		name:           string
		physical_path?: string
		site:           string
	}
}

win_share :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_share: {
		change?:       string
		deny?:         string
		description?:  string
		name:          string
		caching_mode?: string
		encrypt?:      bool
		full?:         string
		list?:         bool
		path:          string
		read?:         string
		state?:        string
	}
}

win_updates :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_updates: {
		reboot?:             bool
		reboot_timeout?:     string
		use_scheduled_task?: bool
		whitelist?: [...]
		blacklist?: [...]
		category_names?: [...]
		log_path?:         string
		server_selection?: string
		state?:            string
	}
}

win_say :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_say: {
		speech_speed?:     int
		start_sound_path?: string
		voice?:            string
		end_sound_path?:   string
		msg?:              string
		msg_file?:         string
	}
}

win_audit_policy_system :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_audit_policy_system: {
		audit_type: [...]
		category?:    string
		subcategory?: string
	}
}

win_feature :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_feature: {
		include_sub_features?: bool
		name: [...]
		source?:                   string
		state?:                    string
		include_management_tools?: bool
	}
}

win_file_version :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_file_version: {
		path: string
	}
}

win_tempfile :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_tempfile: {
		path?:   string
		prefix?: string
		state?:  string
		suffix?: string
	}
}

win_toast :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_toast: {
		expire?: int
		group?:  string
		msg?:    string
		popup?:  bool
		tag?:    string
		title?:  string
	}
}

win_acl_inheritance :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_acl_inheritance: {
		path:        string
		reorganize?: bool
		state?:      string
	}
}

win_disk_facts :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_disk_facts: {
	}
}

win_hotfix :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_hotfix: {
		state?:             string
		hotfix_identifier?: string
		hotfix_kb?:         string
		source?:            string
	}
}

win_chocolatey_facts :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_chocolatey_facts: {
	}
}

win_defrag :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_defrag: {
		parallel?: bool
		priority?: string
		exclude_volumes?: [...]
		freespace_consolidation?: bool
		include_volumes?: [...]
	}
}

win_hostname :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_hostname: {
		name: string
	}
}

win_dsc :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_dsc: {
		resource_name:   string
		free_form:       string
		module_version?: string
	}
}

win_wakeonlan :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	with_items?: [...string]
	connection?: string
	become?:     bool
	win_wakeonlan: {
		broadcast?: string
		mac:        string
		port?:      int
	}
}
