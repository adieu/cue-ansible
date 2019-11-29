package centurylink

clc_loadbalancer :: {
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	clc_loadbalancer: {
		alias:        string
		name:         string
		nodes?:       string
		persistence?: string
		port?:        string
		description?: string
		location:     string
		method?:      string
		state?:       string
		status?:      string
	}
}

clc_server :: {
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	clc_server: {
		location?:                  string
		name?:                      string
		ttl?:                       string
		anti_affinity_policy_id?:   string
		exact_count?:               string
		source_server_password?:    string
		state?:                     string
		custom_fields?:             string
		ip_address?:                string
		memory?:                    string
		server_ids?:                string
		alert_policy_id?:           string
		count?:                     string
		cpu?:                       string
		managed_os?:                bool
		packages?:                  string
		secondary_dns?:             string
		add_public_ip?:             bool
		anti_affinity_policy_name?: string
		description?:               string
		public_ip_ports?:           string
		public_ip_protocol?:        string
		alert_policy_name?:         string
		group?:                     string
		password?:                  string
		cpu_autoscale_policy_id?:   string
		primary_dns?:               string
		wait?:                      bool
		additional_disks?:          string
		alias?:                     string
		configuration_id?:          string
		storage_type?:              string
		template?:                  string
		type?:                      string
		count_group?:               string
		network_id?:                string
		os_type?:                   string
	}
}

clc_server_snapshot :: {
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	clc_server_snapshot: {
		expiration_days?: string
		server_ids:       string
		state?:           string
		wait?:            bool
	}
}

clc_aa_policy :: {
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	clc_aa_policy: {
		location: string
		name:     string
		state?:   string
		wait?:    bool
	}
}

clc_firewall_policy :: {
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	clc_firewall_policy: {
		destination?:               string
		enabled?:                   string
		wait?:                      bool
		source_account_alias:       string
		state?:                     string
		destination_account_alias?: string
		firewall_policy_id?:        string
		location:                   string
		ports?:                     string
		source?:                    string
	}
}

clc_group :: {
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	clc_group: {
		description?: string
		location?:    string
		name:         string
		parent?:      string
		state?:       string
		wait?:        bool
	}
}

clc_modify_server :: {
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	clc_modify_server: {
		alert_policy_name?:         string
		anti_affinity_policy_id?:   string
		anti_affinity_policy_name?: string
		server_ids:                 string
		state?:                     string
		wait?:                      bool
		alert_policy_id?:           string
		cpu?:                       string
		memory?:                    string
	}
}

clc_publicip :: {
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	clc_publicip: {
		server_ids: string
		state?:     string
		wait?:      bool
		ports?:     string
		protocol?:  string
	}
}

clc_alert_policy :: {
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	clc_alert_policy: {
		alias:             string
		duration?:         string
		id?:               string
		metric?:           string
		name?:             string
		state?:            string
		threshold?:        string
		alert_recipients?: string
	}
}

clc_blueprint_package :: {
	when?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	clc_blueprint_package: {
		state?:          string
		wait?:           bool
		package_id:      string
		package_params?: string
		server_ids:      string
	}
}
