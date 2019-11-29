package oneandone

oneandone_server :: {
	vars?: {...}
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	tags?: [...string]
	with_items?: [...string]
	oneandone_server: {
		auth_token:           string
		private_network?:     string
		ram?:                 string
		ssh_key?:             string
		wait?:                bool
		wait_timeout?:        string
		auto_increment?:      bool
		cores_per_processor?: string
		count?:               string
		fixed_instance_size:  string
		hostname?:            string
		monitoring_policy?:   string
		server?:              string
		state?:               string
		wait_interval?:       string
		appliance?:           string
		datacenter?:          string
		load_balancer?:       string
		api_url?:             string
		description?:         string
		firewall_policy?:     string
		hdds?:                string
		server_type?:         string
		vcore?:               string
	}
}

oneandone_firewall_policy :: {
	vars?: {...}
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	tags?: [...string]
	with_items?: [...string]
	oneandone_firewall_policy: {
		wait_timeout?:      string
		add_rules?:         string
		add_server_ips?:    string
		firewall_policy:    string
		state?:             string
		api_url?:           string
		remove_rules?:      string
		rules?:             string
		wait?:              bool
		wait_interval?:     string
		remove_server_ips?: string
		auth_token:         string
		description?:       string
		name:               string
	}
}

oneandone_load_balancer :: {
	vars?: {...}
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	tags?: [...string]
	with_items?: [...string]
	oneandone_load_balancer: {
		add_rules?:            string
		datacenter?:           string
		description?:          string
		health_check_test:     string
		method:                string
		remove_server_ips?:    string
		api_url?:              string
		auth_token:            string
		health_check_parse?:   string
		name:                  string
		persistence:           bool
		wait_interval?:        string
		wait_timeout?:         string
		add_server_ips?:       string
		health_check_interval: string
		load_balancer:         string
		persistence_time:      string
		remove_rules?:         string
		rules:                 string
		state?:                string
		health_check_path?:    string
		wait?:                 bool
	}
}

oneandone_monitoring_policy :: {
	vars?: {...}
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	tags?: [...string]
	with_items?: [...string]
	oneandone_monitoring_policy: {
		monitoring_policy: string
		remove_processes?: string
		wait_timeout?:     string
		remove_ports?:     string
		thresholds:        string
		update_ports?:     string
		update_processes?: string
		wait_interval?:    string
		add_ports?:        string
		add_processes?:    string
		agent:             string
		auth_token:        string
		description?:      string
		state?:            string
		wait?:             bool
		add_servers?:      string
		api_url?:          string
		email:             string
		name:              string
		ports:             string
		processes:         string
		remove_servers?:   string
	}
}

oneandone_private_network :: {
	vars?: {...}
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	tags?: [...string]
	with_items?: [...string]
	oneandone_private_network: {
		network_address?: string
		subnet_mask?:     string
		wait_interval?:   string
		api_url?:         string
		name:             string
		remove_members?:  string
		state?:           string
		description?:     string
		private_network:  string
		datacenter?:      string
		wait_timeout?:    string
		wait?:            bool
		add_members?:     string
		auth_token:       string
	}
}

oneandone_public_ip :: {
	vars?: {...}
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	tags?: [...string]
	with_items?: [...string]
	oneandone_public_ip: {
		wait_timeout?:  string
		auth_token:     string
		state?:         string
		type?:          string
		wait?:          bool
		wait_interval?: string
		api_url?:       string
		datacenter?:    string
		public_ip_id:   string
		reverse_dns?:   string
	}
}
