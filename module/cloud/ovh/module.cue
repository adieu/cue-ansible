package ovh

ovh_ip_failover :: {
	register?: string
	vars?: {...}
	when?:   string
	name?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	tags?: [...string]
	ovh_ip_failover: {
		application_key:       string
		name:                  string
		wait_task_completion?: string
		application_secret:    string
		consumer_key:          string
		endpoint:              string
		service:               string
		timeout?:              string
		wait_completion?:      bool
	}
}

ovh_ip_loadbalancing_backend :: {
	register?: string
	vars?: {...}
	when?:   string
	name?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	tags?: [...string]
	ovh_ip_loadbalancing_backend: {
		application_key:    string
		backend:            string
		name:               string
		state?:             string
		timeout?:           string
		application_secret: string
		consumer_key:       string
		endpoint:           string
		probe?:             string
		weight?:            string
	}
}
