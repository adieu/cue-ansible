package datadog

honeybadger_deployment :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	honeybadger_deployment: {
		validate_certs?: bool
		environment:     string
		repo?:           string
		revision?:       string
		token:           string
		url?:            string
		user?:           string
	}
}

icinga2_host :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	icinga2_host: {
		ip:                string
		client_cert?:      string
		client_key?:       string
		force_basic_auth?: bool
		variables?:        string
		zone?:             string
		check_command?:    string
		state?:            string
		url_password?:     string
		name:              string
		url:               string
		use_proxy?:        bool
		validate_certs?:   bool
		display_name?:     string
		template?:         string
		url_username?:     string
	}
}

logicmonitor_facts :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	logicmonitor_facts: {
		hostname?:    string
		password:     string
		target:       string
		user:         string
		collector?:   string
		company:      string
		displayname?: string
		fullpath?:    string
	}
}

pingdom :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	pingdom: {
		key:     string
		passwd:  string
		state:   string
		uid:     string
		checkid: string
	}
}

spectrum_device :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	spectrum_device: {
		agentport?:      string
		community?:      string
		device:          string
		landscape:       string
		state?:          string
		use_proxy?:      bool
		url:             string
		url_password:    string
		url_username:    string
		validate_certs?: bool
	}
}

airbrake_deployment :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	airbrake_deployment: {
		url?:            string
		user?:           string
		validate_certs?: bool
		environment:     string
		repo?:           string
		revision?:       string
		token:           string
	}
}

circonus_annotation :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	circonus_annotation: {
		description: string
		duration?:   string
		start?:      string
		stop?:       string
		title:       string
		api_key:     string
		category:    string
	}
}

datadog_event :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	datadog_event: {
		validate_certs?:  bool
		app_key:          string
		priority?:        string
		title:            string
		date_happened?:   string
		host?:            string
		tags?:            string
		text:             string
		aggregation_key?: string
		alert_type?:      string
		api_key:          string
	}
}

icinga2_feature :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	icinga2_feature: {
		name:   string
		state?: string
	}
}

librato_annotation :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	librato_annotation: {
		user:         string
		links:        string
		name?:        string
		source?:      string
		start_time?:  string
		title:        string
		api_key:      string
		description?: string
		end_time?:    string
	}
}

logicmonitor :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	logicmonitor: {
		duration?:    string
		fullpath?:    string
		hostname?:    string
		id?:          string
		password:     string
		user:         string
		company:      string
		description?: string
		displayname?: string
		groups?:      string
		target:       string
		action:       string
		alertenable?: bool
		starttime?:   string
		collector?:   string
		properties?:  string
	}
}

logstash_plugin :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	logstash_plugin: {
		state?:      string
		version?:    string
		name:        string
		plugin_bin?: string
		proxy_host?: string
		proxy_port?: string
	}
}

statusio_maintenance :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	statusio_maintenance: {
		maintenance_notify_24_hr?:    bool
		api_key:                      string
		desc?:                        string
		maintenance_notify_1_hr?:     bool
		containers?:                  string
		maintenance_id?:              string
		state?:                       string
		title?:                       string
		api_id:                       string
		automation?:                  bool
		components?:                  string
		maintenance_notify_now?:      bool
		minutes?:                     string
		url?:                         string
		start_time?:                  string
		statuspage:                   string
		all_infrastructure_affected?: bool
		maintenance_notify_72_hr?:    bool
		start_date?:                  string
	}
}

uptimerobot :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	uptimerobot: {
		apikey:    string
		monitorid: string
		state:     string
	}
}

stackdriver :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	stackdriver: {
		event_epoch?:  string
		instance_id?:  string
		level?:        string
		repository?:   string
		deployed_by?:  string
		event?:        string
		key:           string
		msg?:          string
		revision_id?:  string
		annotated_by?: string
		deployed_to?:  string
	}
}

pagerduty_alert :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	pagerduty_alert: {
		api_key:         string
		client_url?:     string
		desc?:           string
		name?:           string
		service_key?:    string
		state:           string
		client?:         string
		incident_key?:   string
		integration_key: string
		service_id:      string
	}
}

bigpanda :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	bigpanda: {
		hosts?:          string
		owner?:          string
		state:           string
		token:           string
		url?:            string
		component:       string
		description?:    string
		env?:            string
		validate_certs?: bool
		version:         string
	}
}

datadog_monitor :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	datadog_monitor: {
		notify_no_data?:      bool
		state:                string
		thresholds?:          string
		api_host?:            string
		api_key:              string
		app_key:              string
		escalation_message?:  string
		id?:                  string
		name:                 string
		new_host_delay?:      string
		timeout_h?:           string
		evaluation_delay?:    string
		locked?:              bool
		no_data_timeframe?:   string
		query?:               string
		renotify_interval?:   string
		require_full_window?: bool
		silenced?:            string
		tags?: [...]
		message?:      string
		notify_audit?: bool
		type?:         string
	}
}

logentries :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	logentries: {
		state?:   string
		logtype?: string
		name?:    string
		path:     string
	}
}

monit :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	monit: {
		name:     string
		state:    string
		timeout?: string
	}
}

nagios :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	nagios: {
		comment?:      string
		host?:         string
		servicegroup?: string
		action:        string
		author?:       string
		cmdfile?:      string
		command:       string
		minutes?:      int
		services:      string
	}
}

newrelic_deployment :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	newrelic_deployment: {
		changelog?:      string
		environment?:    string
		user?:           string
		application_id?: string
		appname?:        string
		description?:    string
		revision?:       string
		token:           string
		validate_certs?: bool
		app_name?:       string
	}
}

pagerduty :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	pagerduty: {
		hours?:          string
		minutes?:        string
		name?:           string
		window_id?:      string
		desc?:           string
		service?:        string
		state:           string
		token:           string
		user?:           string
		validate_certs?: bool
		requester_id?:   string
	}
}

rollbar_deployment :: {
	register?: string
	when?:     string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
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
