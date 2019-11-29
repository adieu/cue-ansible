package zabbix

logentries :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	logentries: {
		logtype?: string
		name?:    string
		path:     string
		state?:   string
	}
}

newrelic_deployment :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	newrelic_deployment: {
		validate_certs?: bool
		changelog?:      string
		revision?:       string
		token:           string
		description?:    string
		environment?:    string
		user?:           string
		app_name?:       string
		application_id?: string
		appname?:        string
	}
}

rollbar_deployment :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	rollbar_deployment: {
		url?:            string
		user?:           string
		validate_certs?: bool
		comment?:        string
		environment:     string
		revision:        string
		rollbar_user?:   string
		token:           string
	}
}

spectrum_device :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	spectrum_device: {
		community?:      string
		state?:          string
		url:             string
		validate_certs?: bool
		url_username:    string
		use_proxy?:      bool
		agentport?:      string
		device:          string
		landscape:       string
		url_password:    string
	}
}

zabbix_screen :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	zabbix_screen: {
		screens: [...]
	}
}

bigpanda :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	bigpanda: {
		hosts?:          string
		url?:            string
		validate_certs?: bool
		state:           string
		token:           string
		version:         string
		component:       string
		description?:    string
		env?:            string
		owner?:          string
	}
}

librato_annotation :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	librato_annotation: {
		start_time?:  string
		title:        string
		api_key:      string
		description?: string
		end_time?:    string
		links:        string
		name?:        string
		source?:      string
		user:         string
	}
}

circonus_annotation :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	circonus_annotation: {
		stop?:       string
		title:       string
		api_key:     string
		category:    string
		description: string
		duration?:   string
		start?:      string
	}
}

zabbix_group :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	zabbix_group: {
		host_groups: string
		state?:      string
	}
}

zabbix_host :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	zabbix_host: {
		interfaces?: [...]
		ipmi_privilege?:   string
		state?:            string
		status?:           string
		ca_cert?:          string
		force?:            bool
		host_groups?:      string
		host_name:         string
		tls_accept?:       string
		tls_connect?:      string
		tls_psk_identity?: string
		description?:      string
		inventory_mode?:   string
		ipmi_authtype?:    string
		ipmi_password?:    string
		visible_name?:     string
		ipmi_username?:    string
		link_templates?:   string
		proxy?:            string
		tls_psk?:          string
		inventory_zabbix?: string
		tls_subject?:      string
	}
}

zabbix_user_info :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	zabbix_user_info: {
		alias: string
	}
}

icinga2_host :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	icinga2_host: {
		client_key?:       string
		display_name?:     string
		url_password?:     string
		zone?:             string
		client_cert?:      string
		state?:            string
		use_proxy?:        bool
		variables?:        string
		name:              string
		template?:         string
		url:               string
		url_username?:     string
		validate_certs?:   bool
		check_command?:    string
		force_basic_auth?: bool
		ip:                string
	}
}

pagerduty_alert :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	pagerduty_alert: {
		service_id:      string
		service_key?:    string
		client?:         string
		name?:           string
		desc?:           string
		incident_key?:   string
		integration_key: string
		state:           string
		api_key:         string
		client_url?:     string
	}
}

pagerduty :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	pagerduty: {
		requester_id?:   string
		service?:        string
		state:           string
		token:           string
		user?:           string
		desc?:           string
		hours?:          string
		validate_certs?: bool
		window_id?:      string
		minutes?:        string
		name?:           string
	}
}

zabbix_host_info :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	zabbix_host_info: {
		remove_duplicate?: bool
		exact_match?:      bool
		host_inventory?: [...]
		host_ip?:  string
		host_name: string
	}
}

zabbix_maintenance :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	zabbix_maintenance: {
		collect_data?: bool
		desc:          string
		host_groups?:  string
		host_names?:   string
		minutes?:      string
		name:          string
		state?:        string
	}
}

honeybadger_deployment :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	honeybadger_deployment: {
		token:           string
		url?:            string
		user?:           string
		validate_certs?: bool
		environment:     string
		repo?:           string
		revision?:       string
	}
}

logstash_plugin :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	logstash_plugin: {
		proxy_port?: string
		state?:      string
		version?:    string
		name:        string
		plugin_bin?: string
		proxy_host?: string
	}
}

nagios :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	nagios: {
		servicegroup?: string
		services:      string
		action:        string
		cmdfile?:      string
		comment?:      string
		minutes?:      int
		author?:       string
		command:       string
		host?:         string
	}
}

pingdom :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	pingdom: {
		checkid: string
		key:     string
		passwd:  string
		state:   string
		uid:     string
	}
}

stackdriver :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	stackdriver: {
		event_epoch?:  string
		key:           string
		msg?:          string
		repository?:   string
		deployed_by?:  string
		event?:        string
		instance_id?:  string
		level?:        string
		revision_id?:  string
		annotated_by?: string
		deployed_to?:  string
	}
}

zabbix_user :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	zabbix_user: {
		after_login_url?: string
		autologin?:       bool
		lang?:            string
		refresh?:         string
		surname?:         string
		usrgrps?: [...]
		override_passwd?: bool
		rows_per_page?:   string
		type?:            string
		name?:            string
		theme?:           string
		alias:            string
		autologout?:      string
		passwd:           string
		state?:           string
		user_medias?: [...]
	}
}

icinga2_feature :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	icinga2_feature: {
		name:   string
		state?: string
	}
}

logicmonitor_facts :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	logicmonitor_facts: {
		company:      string
		displayname?: string
		fullpath?:    string
		hostname?:    string
		password:     string
		target:       string
		user:         string
		collector?:   string
	}
}

zabbix_mediatype :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	zabbix_mediatype: {
		smtp_security?:       string
		smtp_server?:         string
		state:                string
		username?:            string
		gsm_modem?:           string
		smtp_authentication?: bool
		smtp_email?:          string
		smtp_verify_peer?:    bool
		type:                 string
		status?:              string
		attempt_interval?:    int
		password?:            string
		script_name?:         string
		script_params?: [...]
		smtp_server_port?:   int
		smtp_verify_host?:   bool
		max_attempts?:       int
		max_sessions?:       int
		message_text_limit?: string
		name:                string
		smtp_helo?:          string
	}
}

airbrake_deployment :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	airbrake_deployment: {
		token:           string
		url?:            string
		user?:           string
		validate_certs?: bool
		environment:     string
		repo?:           string
		revision?:       string
	}
}

uptimerobot :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	uptimerobot: {
		apikey:    string
		monitorid: string
		state:     string
	}
}

zabbix_group_info :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	zabbix_group_info: {
		hostgroup_name: string
	}
}

zabbix_hostmacro :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	zabbix_hostmacro: {
		macro_value: string
		state?:      string
		force?:      bool
		host_name:   string
		macro_name:  string
	}
}

zabbix_map :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	zabbix_map: {
		expand_problem?: bool
		highlight?:      bool
		name:            string
		state?:          string
		data?:           string
		default_image?:  string
		margin?:         string
		width?:          string
		height?:         string
		label_type?:     string
	}
}

zabbix_template :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	zabbix_template: {
		link_templates?: [...]
		macros?: [...]
		state?:        string
		template_xml?: string
		clear_templates?: [...]
		dump_format?: string
		template_groups?: [...]
		template_json?: string
		template_name?: string
	}
}

zabbix_valuemap :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	zabbix_valuemap: {
		mappings: [...]
		name:   string
		state?: string
	}
}

statusio_maintenance :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	statusio_maintenance: {
		maintenance_notify_72_hr?:    bool
		start_time?:                  string
		state?:                       string
		maintenance_notify_1_hr?:     bool
		desc?:                        string
		maintenance_id?:              string
		maintenance_notify_now?:      bool
		start_date?:                  string
		statuspage:                   string
		all_infrastructure_affected?: bool
		components?:                  string
		maintenance_notify_24_hr?:    bool
		minutes?:                     string
		title?:                       string
		url?:                         string
		api_key:                      string
		automation?:                  bool
		containers?:                  string
		api_id:                       string
	}
}

zabbix_action :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	zabbix_action: {
		eval_type?: string
		name:       string
		operations?: [...]
		recovery_default_subject?:    string
		acknowledge_default_subject?: string
		pause_in_maintenance?:        bool
		recovery_default_message?:    string
		recovery_operations?: [...]
		acknowledge_default_message?: string
		default_subject?:             string
		esc_period?:                  string
		state?:                       string
		status?:                      string
		default_message?:             string
		conditions?: [...]
		event_source?: string
		formula?:      string
		acknowledge_operations?: [...]
	}
}

zabbix_proxy :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	zabbix_proxy: {
		tls_subject?:      string
		description?:      string
		state?:            string
		tls_psk_identity?: string
		status?:           string
		tls_accept?:       string
		tls_connect?:      string
		tls_psk?:          string
		ca_cert?:          string
		interface?:        string
		proxy_name:        string
	}
}

logicmonitor :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	logicmonitor: {
		fullpath?:    string
		id?:          string
		company:      string
		displayname?: string
		properties?:  string
		starttime?:   string
		target:       string
		user:         string
		duration?:    string
		password:     string
		hostname?:    string
		alertenable?: bool
		collector?:   string
		groups?:      string
		action:       string
		description?: string
	}
}

monit :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	name?:     string
	register?: string
	tags?: [...string]
	connection?: string
	monit: {
		state:    string
		timeout?: string
		name:     string
	}
}
