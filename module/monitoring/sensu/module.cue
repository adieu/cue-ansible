package sensu

pingdom :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pingdom: {
		checkid: string
		key:     string
		passwd:  string
		state:   string
		uid:     string
	}
}

sensu_client :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	sensu_client: {
		keepalive?:      string
		servicenow?:     string
		socket?:         string
		chef?:           string
		ec2?:            string
		name?:           string
		puppet?:         string
		safe_mode?:      bool
		state?:          string
		deregister?:     bool
		address?:        string
		deregistration?: string
		keepalives?:     bool
		redact?:         string
		registration?:   string
		subscriptions:   string
	}
}

sensu_silence :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	sensu_silence: {
		url?:               string
		check?:             string
		creator?:           string
		expire?:            string
		expire_on_resolve?: bool
		reason?:            string
		state:              string
		subscription:       string
	}
}

librato_annotation :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	librato_annotation: {
		end_time?:    string
		name?:        string
		start_time?:  string
		api_key:      string
		description?: string
		links:        string
		source?:      string
		title:        string
		user:         string
	}
}

logicmonitor_facts :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	logicmonitor_facts: {
		fullpath?:    string
		hostname?:    string
		password:     string
		target:       string
		user:         string
		collector?:   string
		company:      string
		displayname?: string
	}
}

honeybadger_deployment :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
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

statusio_maintenance :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	statusio_maintenance: {
		maintenance_notify_1_hr?:     bool
		minutes?:                     string
		start_date?:                  string
		api_key:                      string
		maintenance_notify_24_hr?:    bool
		state?:                       string
		url?:                         string
		api_id:                       string
		automation?:                  bool
		components?:                  string
		desc?:                        string
		maintenance_id?:              string
		statuspage:                   string
		all_infrastructure_affected?: bool
		containers?:                  string
		maintenance_notify_72_hr?:    bool
		maintenance_notify_now?:      bool
		start_time?:                  string
		title?:                       string
	}
}

airbrake_deployment :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
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

circonus_annotation :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	circonus_annotation: {
		category:    string
		description: string
		duration?:   string
		start?:      string
		stop?:       string
		title:       string
		api_key:     string
	}
}

stackdriver :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	stackdriver: {
		annotated_by?: string
		instance_id?:  string
		key:           string
		level?:        string
		msg?:          string
		revision_id?:  string
		deployed_by?:  string
		deployed_to?:  string
		event?:        string
		event_epoch?:  string
		repository?:   string
	}
}

uptimerobot :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	uptimerobot: {
		apikey:    string
		monitorid: string
		state:     string
	}
}

pagerduty :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pagerduty: {
		desc?:           string
		token:           string
		window_id?:      string
		requester_id?:   string
		service?:        string
		state:           string
		user?:           string
		validate_certs?: bool
		hours?:          string
		minutes?:        string
		name?:           string
	}
}

pagerduty_alert :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	pagerduty_alert: {
		service_id:      string
		service_key?:    string
		api_key:         string
		client?:         string
		client_url?:     string
		desc?:           string
		incident_key?:   string
		integration_key: string
		name?:           string
		state:           string
	}
}

bigpanda :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	bigpanda: {
		description?:    string
		env?:            string
		hosts?:          string
		validate_certs?: bool
		component:       string
		state:           string
		token:           string
		url?:            string
		version:         string
		owner?:          string
	}
}

icinga2_feature :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	icinga2_feature: {
		name:   string
		state?: string
	}
}

logicmonitor :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	logicmonitor: {
		action:       string
		collector?:   string
		properties?:  string
		target:       string
		company:      string
		description?: string
		displayname?: string
		groups?:      string
		password:     string
		starttime?:   string
		alertenable?: bool
		fullpath?:    string
		hostname?:    string
		id?:          string
		user:         string
		duration?:    string
	}
}

newrelic_deployment :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	newrelic_deployment: {
		validate_certs?: bool
		app_name?:       string
		application_id?: string
		description?:    string
		token:           string
		user?:           string
		appname?:        string
		changelog?:      string
		environment?:    string
		revision?:       string
	}
}

sensu_check :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	sensu_check: {
		aggregate?:           bool
		backup?:              bool
		custom?:              string
		occurrences?:         string
		source?:              string
		command:              string
		handlers?:            string
		name:                 string
		refresh?:             string
		subscribers?:         string
		timeout?:             string
		ttl?:                 string
		handle?:              bool
		high_flap_threshold?: string
		low_flap_threshold?:  string
		metric?:              bool
		standalone?:          bool
		state?:               string
		subdue_begin?:        string
		dependencies?:        string
		interval?:            string
		path?:                string
		publish?:             bool
		subdue_end?:          string
	}
}

sensu_subscription :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	sensu_subscription: {
		backup?: bool
		name:    string
		path?:   string
		state?:  string
	}
}

rollbar_deployment :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
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

sensu_handler :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	sensu_handler: {
		type:             string
		filter?:          string
		handlers?:        string
		timeout?:         string
		socket?:          string
		state?:           string
		filters?:         string
		handle_flapping?: bool
		name:             string
		severities?:      string
		handle_silenced?: bool
		mutator?:         string
		pipe?:            string
		command?:         string
	}
}

icinga2_host :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	icinga2_host: {
		url_password?:     string
		zone?:             string
		url:               string
		url_username?:     string
		display_name?:     string
		client_key?:       string
		force_basic_auth?: bool
		ip:                string
		name:              string
		state?:            string
		template?:         string
		validate_certs?:   bool
		check_command?:    string
		variables?:        string
		use_proxy?:        bool
		client_cert?:      string
	}
}

logentries :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	logentries: {
		logtype?: string
		name?:    string
		path:     string
		state?:   string
	}
}

logstash_plugin :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	logstash_plugin: {
		name:        string
		plugin_bin?: string
		proxy_host?: string
		proxy_port?: string
		state?:      string
		version?:    string
	}
}

monit :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	monit: {
		state:    string
		timeout?: string
		name:     string
	}
}

nagios :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nagios: {
		cmdfile?:      string
		comment?:      string
		servicegroup?: string
		services:      string
		action:        string
		author?:       string
		minutes?:      int
		command:       string
		host?:         string
	}
}

spectrum_device :: {
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	spectrum_device: {
		agentport?:      string
		landscape:       string
		url_username:    string
		validate_certs?: bool
		community?:      string
		device:          string
		state?:          string
		url:             string
		url_password:    string
		use_proxy?:      bool
	}
}
