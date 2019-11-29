package docker

docker_stack :: {
	register?: string
	vars?: {...}
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	docker_stack: {
		compose?: [...]
		name:                     string
		prune?:                   bool
		resolve_image?:           string
		state?:                   string
		with_registry_auth?:      bool
		absent_retries?:          int
		absent_retries_interval?: int
	}
}

docker_config :: {
	register?: string
	vars?: {...}
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	docker_config: {
		data?:        string
		data_is_b64?: bool
		force?:       bool
		labels?: {...}
		name:   string
		state?: string
	}
}

docker_container :: {
	register?: string
	vars?: {...}
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	docker_container: {
		user?:       string
		domainname?: string
		env_file?:   string
		exposed_ports?: [...string]
		links?: [...string]
		published_ports?: [...string]
		volumes_from?: [...string]
		device_write_bps?: [...{...}]
		devices?: [...string]
		memory_swap?: string
		pids_limit?:  int
		groups?: [...string]
		output_logs?: bool
		stop_signal?: string
		tmpfs?: [...string]
		capabilities?: [...string]
		cpuset_mems?: string
		init?:        bool
		cap_drop?: [...string]
		dns_opts?: [...string]
		dns_servers?: [...string]
		ulimits?: [...string]
		restart_policy?: string
		security_opts?: [...string]
		stop_timeout?: int
		detach?:       bool
		etc_hosts?: {...}
		hostname?: string
		mounts?: [...{...}]
		networks?: [...{...}]
		networks_cli_compatible?: bool
		oom_score_adj?:           int
		pid_mode?:                string
		cpuset_cpus?:             string
		healthcheck?: {...}
		ignore_image?: bool
		mac_address?:  string
		read_only?:    bool
		volumes?: [...string]
		entrypoint?: [...string]
		force_kill?:          bool
		volume_driver?:       string
		image?:               string
		kill_signal?:         string
		restart?:             bool
		trust_image_content?: bool
		keep_volumes?:        bool
		memory_reservation?:  string
		paused?:              bool
		restart_retries?:     int
		blkio_weight?:        int
		cleanup?:             bool
		cpu_period?:          int
		cpu_quota?:           int
		runtime?:             string
		tty?:                 bool
		memory?:              string
		purge_networks?:      bool
		sysctls?: {...}
		auto_remove?: bool
		device_read_iops?: [...{...}]
		ipc_mode?:                   string
		kernel_memory?:              string
		working_dir?:                string
		container_default_behavior?: string
		device_write_iops?: [...{...}]
		privileged?: bool
		recreate?:   bool
		shm_size?:   string
		state?:      string
		uts?:        string
		comparisons?: {...}
		cpu_shares?: int
		device_read_bps?: [...{...}]
		log_options?: {...}
		memory_swappiness?: int
		network_mode?:      string
		userns_mode?:       string
		dns_search_domains?: [...string]
		env?: {...}
		interactive?: bool
		log_driver?:  string
		pull?:        bool
		command?:     _
		labels?: {...}
		name:        string
		oom_killer?: bool
	}
}

docker_node_info :: {
	register?: string
	vars?: {...}
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	docker_node_info: {
		name?: [...string]
		self?: bool
	}
}

docker_secret :: {
	register?: string
	vars?: {...}
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	docker_secret: {
		data?:        string
		data_is_b64?: bool
		force?:       bool
		labels?: {...}
		name:   string
		state?: string
	}
}

docker_volume :: {
	register?: string
	vars?: {...}
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	docker_volume: {
		driver?: string
		driver_options?: {...}
		force?: bool
		labels?: {...}
		recreate?:   string
		state?:      string
		volume_name: string
	}
}

docker_volume_info :: {
	register?: string
	vars?: {...}
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	docker_volume_info: {
		name: string
	}
}

docker_container_info :: {
	register?: string
	vars?: {...}
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	docker_container_info: {
		name: string
	}
}

docker_image :: {
	register?: string
	vars?: {...}
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	docker_image: {
		build?: {...}
		dockerfile?:   string
		force_source?: bool
		use_tls?:      string
		archive_path?: string
		force_tag?:    bool
		name:          string
		state?:        string
		buildargs?: {...}
		force_absent?: bool
		http_timeout?: int
		pull?:         bool
		repository?:   string
		source?:       string
		tag?:          string
		container_limits?: {...}
		force?:     bool
		load_path?: string
		nocache?:   bool
		path?:      string
		push?:      bool
		rm?:        bool
	}
}

docker_node :: {
	register?: string
	vars?: {...}
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	docker_node: {
		hostname: string
		labels?: {...}
		labels_state?: string
		labels_to_remove?: [...string]
		role?:         string
		availability?: string
	}
}

docker_network_info :: {
	register?: string
	vars?: {...}
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	docker_network_info: {
		name: string
	}
}

docker_swarm :: {
	register?: string
	vars?: {...}
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	docker_swarm: {
		join_token?:                   string
		name?:                         string
		signing_ca_key?:               string
		state:                         string
		subnet_size?:                  int
		ca_force_rotate?:              int
		dispatcher_heartbeat_period?:  int
		heartbeat_tick?:               int
		listen_addr?:                  string
		node_id?:                      string
		task_history_retention_limit?: int
		autolock_managers?:            bool
		election_tick?:                int
		force?:                        bool
		node_cert_expiry?:             int
		remote_addrs?: [...string]
		rotate_worker_token?: bool
		signing_ca_cert?:     string
		advertise_addr?:      string
		labels?: {...}
		log_entries_for_slow_followers?: int
		snapshot_interval?:              int
		default_addr_pool?: [...string]
		keep_old_snapshots?:   int
		rotate_manager_token?: bool
	}
}

docker_swarm_info :: {
	register?: string
	vars?: {...}
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	docker_swarm_info: {
		unlock_key?:     bool
		verbose_output?: bool
		nodes?:          bool
		nodes_filters?: {...}
		services?: bool
		services_filters?: {...}
		tasks?: bool
		tasks_filters?: {...}
	}
}

docker_swarm_service :: {
	register?: string
	vars?: {...}
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	docker_swarm_service: {
		hosts?: {...}
		networks?: [...]
		state: string
		log_driver_options?: {...}
		publish?: [...{...}]
		restart_policy_attempts?: int
		healthcheck?: {...}
		hostname?:          string
		limit_cpu?:         float
		stop_grace_period?: string
		reserve_memory?:    string
		dns?: [...string]
		env?:         _
		reserve_cpu?: float
		stop_signal?: string
		replicas?:    int
		secrets?: [...{...}]
		update_order?: string
		force_update?: bool
		groups?: [...string]
		log_driver?:            string
		update_failure_action?: string
		dns_search?: [...string]
		user?:                  string
		endpoint_mode?:         string
		name:                   string
		restart_policy_window?: _
		rollback_config?: {...}
		labels?: {...}
		mode?: string
		placement?: {...}
		read_only?:      bool
		restart_policy?: string
		limit_memory?:   string
		env_files?: [...string]
		image: string
		restart_config?: {...}
		args?: [...string]
		configs?: [...{...}]
		restart_policy_delay?: _
		update_config?: {...}
		working_dir?: string
		dns_options?: [...string]
		mounts?: [...{...}]
		tty?:                bool
		update_parallelism?: int
		limits?: {...}
		update_delay?: _
		constraints?: [...string]
		resolve_image?:            bool
		update_max_failure_ratio?: float
		update_monitor?:           _
		command?:                  _
		container_labels?: {...}
		logging?: {...}
		reservations?: {...}
	}
}

docker_swarm_service_info :: {
	register?: string
	vars?: {...}
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	docker_swarm_service_info: {
		name: string
	}
}

docker_compose :: {
	register?: string
	vars?: {...}
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	docker_compose: {
		definition?: {...}
		files?: [...string]
		project_name?:   string
		pull?:           bool
		stopped?:        bool
		build?:          bool
		hostname_check?: bool
		project_src?:    string
		recreate?:       string
		remove_orphans?: bool
		services?: [...string]
		nocache?:        bool
		remove_volumes?: bool
		restarted?:      bool
		state?:          string
		dependencies?:   bool
		remove_images?:  string
		scale?: {...}
		timeout?: int
	}
}

docker_image_info :: {
	register?: string
	vars?: {...}
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	docker_image_info: {
		name: [...string]
	}
}

docker_network :: {
	register?: string
	vars?: {...}
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	docker_network: {
		internal?: bool
		name:      string
		scope?:    string
		ipam_config?: [...{...}]
		labels?: {...}
		state?:   string
		appends?: bool
		driver_options?: {...}
		force?:      bool
		attachable?: bool
		connected?: [...string]
		ipam_options?: {...}
		ipam_driver_options?: {...}
		driver?:      string
		enable_ipv6?: bool
		ipam_driver?: string
	}
}

docker_host_info :: {
	register?: string
	vars?: {...}
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	docker_host_info: {
		networks_filters?: {...}
		volumes?:    bool
		containers?: bool
		images?:     bool
		images_filters?: {...}
		networks?:       bool
		verbose_output?: bool
		volumes_filters?: {...}
		containers_filters?: {...}
		disk_usage?: bool
	}
}

docker_login :: {
	register?: string
	vars?: {...}
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	docker_login: {
		password:      string
		reauthorize?:  bool
		registry_url?: string
		state?:        string
		username:      string
		config_path?:  string
		email?:        string
	}
}

docker_prune :: {
	register?: string
	vars?: {...}
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	docker_prune: {
		images?: bool
		images_filters?: {...}
		networks_filters?: {...}
		volumes?:       bool
		builder_cache?: bool
		containers_filters?: {...}
		volumes_filters?: {...}
		containers?: bool
		networks?:   bool
	}
}
