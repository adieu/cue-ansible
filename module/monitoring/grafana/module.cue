package grafana

bigpanda :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	bigpanda: {
		description?:    string
		hosts?:          string
		owner?:          string
		version:         string
		component:       string
		env?:            string
		state:           string
		token:           string
		url?:            string
		validate_certs?: bool
	}
}

grafana_dashboard :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	grafana_dashboard: {
		state:            string
		url_password?:    string
		validate_certs?:  bool
		client_key?:      string
		message?:         string
		overwrite?:       bool
		slug?:            string
		client_cert?:     string
		folder?:          string
		org_id?:          string
		url_username?:    string
		grafana_api_key?: string
		path?:            string
		uid?:             string
		use_proxy?:       bool
		url:              string
	}
}

grafana_plugin :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	grafana_plugin: {
		grafana_repo?:        string
		name:                 string
		state?:               string
		version?:             string
		grafana_plugin_url?:  string
		grafana_plugins_dir?: string
	}
}

airbrake_deployment :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	airbrake_deployment: {
		revision?:       string
		token:           string
		url?:            string
		user?:           string
		validate_certs?: bool
		environment:     string
		repo?:           string
	}
}

icinga2_feature :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	icinga2_feature: {
		name:   string
		state?: string
	}
}

logentries :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	logentries: {
		logtype?: string
		name?:    string
		path:     string
		state?:   string
	}
}

logicmonitor :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	logicmonitor: {
		groups?:      string
		password:     string
		starttime?:   string
		duration?:    string
		fullpath?:    string
		displayname?: string
		properties?:  string
		alertenable?: bool
		company:      string
		action:       string
		description?: string
		id?:          string
		target:       string
		user:         string
		collector?:   string
		hostname?:    string
	}
}

newrelic_deployment :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	newrelic_deployment: {
		app_name?:       string
		application_id?: string
		changelog?:      string
		description?:    string
		token:           string
		validate_certs?: bool
		appname?:        string
		environment?:    string
		revision?:       string
		user?:           string
	}
}

pagerduty :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	pagerduty: {
		hours?:          string
		name?:           string
		requester_id?:   string
		token:           string
		user?:           string
		desc?:           string
		minutes?:        string
		service?:        string
		state:           string
		validate_certs?: bool
		window_id?:      string
	}
}

pagerduty_alert :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	pagerduty_alert: {
		client?:         string
		name?:           string
		service_id:      string
		state:           string
		api_key:         string
		client_url?:     string
		desc?:           string
		incident_key?:   string
		integration_key: string
		service_key?:    string
	}
}

stackdriver :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	stackdriver: {
		event?:        string
		event_epoch?:  string
		key:           string
		msg?:          string
		annotated_by?: string
		deployed_by?:  string
		deployed_to?:  string
		instance_id?:  string
		level?:        string
		repository?:   string
		revision_id?:  string
	}
}

circonus_annotation :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	circonus_annotation: {
		title:       string
		api_key:     string
		category:    string
		description: string
		duration?:   string
		start?:      string
		stop?:       string
	}
}

icinga2_host :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	icinga2_host: {
		name:              string
		state?:            string
		url_password?:     string
		display_name?:     string
		client_key?:       string
		url:               string
		use_proxy?:        bool
		validate_certs?:   bool
		check_command?:    string
		force_basic_auth?: bool
		ip:                string
		template?:         string
		url_username?:     string
		variables?:        string
		zone?:             string
		client_cert?:      string
	}
}

logicmonitor_facts :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
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

logstash_plugin :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	logstash_plugin: {
		proxy_port?: string
		state?:      string
		version?:    string
		name:        string
		plugin_bin?: string
		proxy_host?: string
	}
}

monit :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	monit: {
		name:     string
		state:    string
		timeout?: string
	}
}

nagios :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	nagios: {
		author?:       string
		comment?:      string
		host?:         string
		servicegroup?: string
		action:        string
		cmdfile?:      string
		command:       string
		minutes?:      int
		services:      string
	}
}

honeybadger_deployment :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	honeybadger_deployment: {
		url?:            string
		user?:           string
		validate_certs?: bool
		environment:     string
		repo?:           string
		revision?:       string
		token:           string
	}
}

librato_annotation :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	librato_annotation: {
		title:        string
		user:         string
		api_key:      string
		description?: string
		end_time?:    string
		start_time?:  string
		links:        string
		name?:        string
		source?:      string
	}
}

pingdom :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	pingdom: {
		checkid: string
		key:     string
		passwd:  string
		state:   string
		uid:     string
	}
}

rollbar_deployment :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	rollbar_deployment: {
		environment:     string
		revision:        string
		rollbar_user?:   string
		token:           string
		url?:            string
		user?:           string
		validate_certs?: bool
		comment?:        string
	}
}

spectrum_device :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	spectrum_device: {
		agentport?:      string
		community?:      string
		url:             string
		url_password:    string
		url_username:    string
		device:          string
		landscape:       string
		state?:          string
		use_proxy?:      bool
		validate_certs?: bool
	}
}

statusio_maintenance :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	statusio_maintenance: {
		maintenance_notify_now?:      bool
		statuspage:                   string
		all_infrastructure_affected?: bool
		automation?:                  bool
		maintenance_id?:              string
		maintenance_notify_72_hr?:    bool
		minutes?:                     string
		title?:                       string
		components?:                  string
		desc?:                        string
		api_id:                       string
		start_date?:                  string
		maintenance_notify_1_hr?:     bool
		maintenance_notify_24_hr?:    bool
		start_time?:                  string
		state?:                       string
		url?:                         string
		api_key:                      string
		containers?:                  string
	}
}

uptimerobot :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	uptimerobot: {
		apikey:    string
		monitorid: string
		state:     string
	}
}

grafana_datasource :: {
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	grafana_datasource: {
		aws_secret_key?:                string
		state?:                         string
		aws_credentials_profile?:       string
		interval?:                      string
		trends?:                        bool
		user?:                          string
		validate_certs?:                bool
		grafana_api_key?:               string
		org_id?:                        string
		tls_client_cert?:               string
		access?:                        string
		aws_auth_type?:                 string
		database?:                      string
		name:                           string
		password?:                      string
		sslmode?:                       string
		tls_ca_cert?:                   string
		tsdb_version?:                  string
		url:                            string
		url_password?:                  string
		aws_custom_metrics_namespaces?: string
		aws_default_region?:            string
		client_cert?:                   string
		client_key?:                    string
		es_version?:                    string
		tls_skip_verify?:               bool
		tsdb_resolution?:               string
		basic_auth_password?:           string
		basic_auth_user?:               string
		grafana_url:                    string
		is_default?:                    bool
		time_field?:                    string
		tls_client_key?:                string
		with_credentials?:              bool
		aws_access_key?:                string
		aws_assume_role_arn?:           string
		ds_type:                        string
		max_concurrent_shard_requests?: string
		time_interval?:                 string
		url_username?:                  string
		use_proxy?:                     bool
	}
}
