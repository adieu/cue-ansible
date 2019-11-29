package monitoring

logentries :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	connection?: string
	name?:       string
	when?:       string
	logentries: {
		name?:    string
		path:     string
		state?:   string
		logtype?: string
	}
}

pagerduty :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	connection?: string
	name?:       string
	when?:       string
	pagerduty: {
		requester_id?:   string
		state:           string
		validate_certs?: bool
		desc?:           string
		hours?:          string
		service?:        string
		token:           string
		user?:           string
		window_id?:      string
		minutes?:        string
		name?:           string
	}
}

pingdom :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	connection?: string
	name?:       string
	when?:       string
	pingdom: {
		uid:     string
		checkid: string
		key:     string
		passwd:  string
		state:   string
	}
}

icinga2_feature :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	connection?: string
	name?:       string
	when?:       string
	icinga2_feature: {
		name:   string
		state?: string
	}
}

icinga2_host :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	connection?: string
	name?:       string
	when?:       string
	icinga2_host: {
		url_username?:     string
		zone?:             string
		client_cert?:      string
		client_key?:       string
		state?:            string
		url_password?:     string
		ip:                string
		use_proxy?:        bool
		validate_certs?:   bool
		variables?:        string
		check_command?:    string
		display_name?:     string
		force_basic_auth?: bool
		url:               string
		name:              string
		template?:         string
	}
}

logicmonitor_facts :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	connection?: string
	name?:       string
	when?:       string
	logicmonitor_facts: {
		password:     string
		target:       string
		user:         string
		collector?:   string
		company:      string
		displayname?: string
		fullpath?:    string
		hostname?:    string
	}
}

monit :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	connection?: string
	name?:       string
	when?:       string
	monit: {
		name:     string
		state:    string
		timeout?: string
	}
}

nagios :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	connection?: string
	name?:       string
	when?:       string
	nagios: {
		author?:       string
		minutes?:      int
		servicegroup?: string
		services:      string
		action:        string
		cmdfile?:      string
		command:       string
		comment?:      string
		host?:         string
	}
}

pagerduty_alert :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	connection?: string
	name?:       string
	when?:       string
	pagerduty_alert: {
		client_url?:     string
		desc?:           string
		state:           string
		name?:           string
		service_id:      string
		service_key?:    string
		api_key:         string
		client?:         string
		incident_key?:   string
		integration_key: string
	}
}

stackdriver :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	connection?: string
	name?:       string
	when?:       string
	stackdriver: {
		deployed_to?:  string
		event?:        string
		instance_id?:  string
		key:           string
		repository?:   string
		annotated_by?: string
		deployed_by?:  string
		event_epoch?:  string
		level?:        string
		msg?:          string
		revision_id?:  string
	}
}

statusio_maintenance :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	connection?: string
	name?:       string
	when?:       string
	statusio_maintenance: {
		containers?:                  string
		maintenance_notify_72_hr?:    bool
		maintenance_notify_now?:      bool
		minutes?:                     string
		start_date?:                  string
		api_key:                      string
		automation?:                  bool
		components?:                  string
		state?:                       string
		desc?:                        string
		statuspage:                   string
		api_id:                       string
		url?:                         string
		maintenance_notify_24_hr?:    bool
		start_time?:                  string
		title?:                       string
		all_infrastructure_affected?: bool
		maintenance_id?:              string
		maintenance_notify_1_hr?:     bool
	}
}

airbrake_deployment :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	connection?: string
	name?:       string
	when?:       string
	airbrake_deployment: {
		environment:     string
		repo?:           string
		revision?:       string
		token:           string
		url?:            string
		user?:           string
		validate_certs?: bool
	}
}

circonus_annotation :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	connection?: string
	name?:       string
	when?:       string
	circonus_annotation: {
		duration?:   string
		start?:      string
		stop?:       string
		title:       string
		api_key:     string
		category:    string
		description: string
	}
}

honeybadger_deployment :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	connection?: string
	name?:       string
	when?:       string
	honeybadger_deployment: {
		revision?:       string
		token:           string
		url?:            string
		user?:           string
		validate_certs?: bool
		environment:     string
		repo?:           string
	}
}

logicmonitor :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	connection?: string
	name?:       string
	when?:       string
	logicmonitor: {
		properties?:  string
		starttime?:   string
		target:       string
		action:       string
		company:      string
		displayname?: string
		groups?:      string
		alertenable?: bool
		collector?:   string
		duration?:    string
		hostname?:    string
		fullpath?:    string
		id?:          string
		description?: string
		password:     string
		user:         string
	}
}

rollbar_deployment :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	connection?: string
	name?:       string
	when?:       string
	rollbar_deployment: {
		rollbar_user?:   string
		token:           string
		url?:            string
		user?:           string
		validate_certs?: bool
		comment?:        string
		environment:     string
		revision:        string
	}
}

bigpanda :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	connection?: string
	name?:       string
	when?:       string
	bigpanda: {
		description?:    string
		env?:            string
		hosts?:          string
		token:           string
		version:         string
		component:       string
		state:           string
		url?:            string
		validate_certs?: bool
		owner?:          string
	}
}

librato_annotation :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	connection?: string
	name?:       string
	when?:       string
	librato_annotation: {
		user:         string
		description?: string
		end_time?:    string
		links:        string
		name?:        string
		source?:      string
		start_time?:  string
		title:        string
		api_key:      string
	}
}

logstash_plugin :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	connection?: string
	name?:       string
	when?:       string
	logstash_plugin: {
		proxy_port?: string
		state?:      string
		version?:    string
		name:        string
		plugin_bin?: string
		proxy_host?: string
	}
}

newrelic_deployment :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	connection?: string
	name?:       string
	when?:       string
	newrelic_deployment: {
		application_id?: string
		description?:    string
		environment?:    string
		user?:           string
		validate_certs?: bool
		app_name?:       string
		appname?:        string
		changelog?:      string
		revision?:       string
		token:           string
	}
}

spectrum_device :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	connection?: string
	name?:       string
	when?:       string
	spectrum_device: {
		agentport?:      string
		community?:      string
		landscape:       string
		url:             string
		url_username:    string
		device:          string
		state?:          string
		url_password:    string
		use_proxy?:      bool
		validate_certs?: bool
	}
}

uptimerobot :: {
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	connection?: string
	name?:       string
	when?:       string
	uptimerobot: {
		apikey:    string
		monitorid: string
		state:     string
	}
}
