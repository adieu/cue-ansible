package rackspace

rax_cdb_database :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_cdb_database: {
		state?:         string
		cdb_id?:        string
		character_set?: string
		collate?:       string
		name?:          string
	}
}

rax_clb_nodes :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_clb_nodes: {
		condition?:       string
		type?:            string
		wait?:            bool
		port?:            string
		state?:           string
		wait_timeout?:    string
		weight?:          string
		address?:         string
		load_balancer_id: string
		node_id?:         string
	}
}

rax_files :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_files: {
		clear_meta?: bool
		public?:     bool
		region?:     string
		state?:      string
		ttl?:        string
		web_error?:  string
		container:   string
		meta?:       string
		private?:    bool
		type?:       string
		web_index?:  string
	}
}

rax_meta :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_meta: {
		address?: string
		id?:      string
		meta?:    string
		name?:    string
	}
}

rax_mon_entity :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_mon_entity: {
		agent_id?:           string
		label:               string
		metadata?:           string
		named_ip_addresses?: string
		state?:              string
	}
}

rax_mon_notification_plan :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_mon_notification_plan: {
		critical_state?: string
		label:           string
		ok_state?:       string
		state?:          string
		warning_state?:  string
	}
}

rax_network :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_network: {
		cidr?:  string
		label?: string
		state?: string
	}
}

rax_cbs :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_cbs: {
		snapshot_id?:  string
		wait_timeout?: string
		description?:  string
		meta?:         string
		name:          string
		volume_type:   string
		wait?:         bool
		image?:        string
		size:          string
		state:         string
	}
}

rax_queue :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_queue: {
		name?:  string
		state?: string
	}
}

rax_cdb_user :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_cdb_user: {
		cdb_id?:      string
		databases?:   string
		db_password?: string
		db_username?: string
		host?:        string
		state?:       string
	}
}

rax_identity :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_identity: {
		state?: string
	}
}

rax_mon_check :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_mon_check: {
		metadata?:              string
		period?:                string
		target_hostname?:       string
		timeout?:               string
		state?:                 string
		target_alias?:          string
		check_type:             string
		details?:               string
		disabled?:              bool
		entity_id:              string
		label:                  string
		monitoring_zones_poll?: string
	}
}

rax_mon_notification :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_mon_notification: {
		details:           string
		label:             string
		notification_type: string
		state?:            string
	}
}

rax_scaling_group :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_scaling_group: {
		flavor:         string
		name:           string
		config_drive?:  bool
		disk_config?:   string
		user_data?:     string
		wait?:          bool
		wait_timeout?:  string
		cooldown?:      string
		files?:         string
		image:          string
		loadbalancers?: string
		max_entities:   string
		meta?:          string
		key_name?:      string
		min_entities:   string
		networks?:      string
		server_name:    string
		state?:         string
	}
}

rax :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax: {
		count?:                 string
		count_offset?:          string
		disk_config?:           string
		extra_client_args?:     string
		auto_increment?:        bool
		config_drive?:          bool
		extra_create_args?:     string
		files?:                 string
		flavor?:                string
		group?:                 string
		instance_ids?:          string
		meta?:                  string
		boot_volume_size?:      string
		boot_volume_terminate?: bool
		name?:                  string
		exact_count?:           bool
		image?:                 string
		key_name?:              string
		boot_from_volume?:      bool
		boot_volume?:           string
		user_data?:             string
		wait?:                  bool
		wait_timeout?:          string
		networks?:              string
		state?:                 string
	}
}

rax_cdb :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_cdb: {
		cdb_type?:     string
		cdb_version?:  string
		flavor?:       string
		name?:         string
		state?:        string
		volume?:       string
		wait?:         bool
		wait_timeout?: string
	}
}

rax_clb_ssl :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_clb_ssl: {
		certificate?:              string
		enabled?:                  bool
		https_redirect?:           bool
		intermediate_certificate?: string
		secure_port?:              string
		secure_traffic_only?:      bool
		loadbalancer:              string
		private_key?:              string
		state?:                    string
		wait?:                     bool
		wait_timeout?:             string
	}
}

rax_dns :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_dns: {
		name?:    string
		state?:   string
		ttl?:     string
		comment?: string
		email?:   string
	}
}

rax_dns_record :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_dns_record: {
		data:          string
		domain?:       string
		name:          string
		overwrite?:    bool
		comment?:      string
		loadbalancer?: string
		priority?:     string
		server?:       string
		state?:        string
		ttl?:          string
		type:          string
	}
}

rax_keypair :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_keypair: {
		name:        string
		public_key?: string
		state?:      string
	}
}

rax_mon_alarm :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_mon_alarm: {
		disabled?:            bool
		entity_id:            string
		label:                string
		metadata?:            string
		notification_plan_id: string
		state?:               string
		check_id:             string
		criteria?:            string
	}
}

rax_cbs_attachments :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_cbs_attachments: {
		wait_timeout?: string
		device?:       string
		server:        string
		state:         string
		volume:        string
		wait?:         bool
	}
}

rax_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_facts: {
		address?: string
		id?:      string
		name?:    string
	}
}

rax_files_objects :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_files_objects: {
		clear_meta?: bool
		container:   string
		meta?:       string
		structure?:  bool
		type?:       string
		dest?:       string
		expires?:    string
		method?:     string
		src?:        string
		state?:      string
	}
}

rax_scaling_policy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_scaling_policy: {
		change?:           string
		cron?:             string
		desired_capacity?: string
		scaling_group:     string
		state?:            string
		at?:               string
		cooldown?:         string
		is_percent?:       bool
		name:              string
		policy_type:       string
	}
}

rax_clb :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rax_clb: {
		vip_id?:       string
		meta?:         string
		port?:         string
		timeout?:      string
		state?:        string
		type?:         string
		wait?:         bool
		wait_timeout?: string
		algorithm?:    string
		name?:         string
		protocol?:     string
	}
}
