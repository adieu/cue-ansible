package nios

nios_dns_view :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	nios_dns_view: {
		comment?:     string
		extattrs?:    string
		name:         string
		network_view: string
		state?:       string
	}
}

lldp :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	lldp: {
	}
}

netcup_dns :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	netcup_dns: {
		value:        string
		domain:       string
		record?:      string
		state?:       string
		type:         string
		solo?:        bool
		api_key:      string
		api_password: string
		customer_id:  string
		priority?:    string
	}
}

nios_host_record :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	nios_host_record: {
		aliases?:           string
		configure_for_dns?: bool
		extattrs?:          string
		name:               string
		ttl?:               string
		comment?:           string
		ipv4addrs?:         string
		ipv6addrs?:         string
		state?:             string
		view:               string
	}
}

nios_network :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	nios_network: {
		state?:       string
		comment?:     string
		container?:   bool
		extattrs?:    string
		network:      string
		network_view: string
		options?:     string
	}
}

nios_srv_record :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	nios_srv_record: {
		target:    string
		weight:    string
		extattrs?: string
		name:      string
		port:      string
		priority:  string
		state?:    string
		ttl?:      string
		view:      string
		comment?:  string
	}
}

nsupdate :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	nsupdate: {
		server:         string
		type?:          string
		value?:         string
		zone?:          string
		key_algorithm?: string
		key_name?:      string
		key_secret?:    string
		protocol?:      string
		port?:          string
		record:         string
		state?:         string
		ttl?:           string
	}
}

ip_netns :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	ip_netns: {
		name?:  string
		state?: string
	}
}

hetzner_failover_ip :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	hetzner_failover_ip: {
		failover_ip: string
		state?:      string
		timeout?:    int
		value?:      string
	}
}

ipify_facts :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	ipify_facts: {
		timeout?:        int
		validate_certs?: bool
		api_url?:        string
	}
}

ipinfoio_facts :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	ipinfoio_facts: {
		http_agent?: string
		timeout?:    string
	}
}

nios_mx_record :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	nios_mx_record: {
		mail_exchanger: string
		name:           string
		preference:     string
		state?:         string
		ttl?:           string
		view:           string
		comment?:       string
		extattrs?:      string
	}
}

dnsimple :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	dnsimple: {
		priority?:          int
		ttl?:               int
		solo?:              bool
		state?:             string
		type?:              string
		account_api_token?: string
		account_email?:     string
		domain?:            string
		record?:            string
		record_ids?: [...]
		value?: string
	}
}

nios_fixed_address :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	nios_fixed_address: {
		network:       string
		options?:      string
		state?:        string
		comment?:      string
		extattrs?:     string
		ipaddr:        string
		mac:           string
		name?:         string
		network_view?: string
	}
}

nios_member :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	nios_member: {
		router_id?:                     string
		host_name:                      string
		lan2_enabled?:                  bool
		mgmt_port_setting?:             string
		vip_setting:                    string
		config_addr_type?:              string
		enable_ha?:                     bool
		external_syslog_server_enable?: bool
		lan2_port_setting?:             string
		node_info?:                     string
		platform?:                      string
		pre_provisioning?:              string
		syslog_servers?:                string
		comment?:                       string
		create_token?:                  bool
		upgrade_group?:                 string
		state?:                         string
		use_syslog_proxy_setting?:      bool
		extattrs?:                      string
		ipv6_setting:                   string
	}
}

nios_txt_record :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	nios_txt_record: {
		view:      string
		comment?:  string
		extattrs?: string
		name:      string
		state?:    string
		text?:     string
		ttl?:      string
	}
}

nios_cname_record :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	nios_cname_record: {
		name:      string
		state?:    string
		ttl?:      string
		view:      string
		canonical: string
		comment?:  string
		extattrs?: string
	}
}

haproxy :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	haproxy: {
		drain?:             bool
		shutdown_sessions?: bool
		socket?:            string
		wait?:              bool
		wait_interval?:     int
		wait_retries?:      int
		weight?:            string
		backend?:           string
		host:               string
		state:              string
		fail_on_not_found?: bool
	}
}

hetzner_failover_ip_info :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	hetzner_failover_ip_info: {
		failover_ip: string
	}
}

nios_zone :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	nios_zone: {
		grid_primary?:      string
		ns_group?:          string
		restart_if_needed?: bool
		state?:             string
		fqdn:               string
		extattrs?:          string
		grid_secondaries?:  string
		view:               string
		zone_format?:       string
		comment?:           string
	}
}

dnsmadeeasy :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	dnsmadeeasy: {
		autoFailover?:     bool
		httpFqdn?:         string
		state:             string
		systemDescription: string
		account_key:       string
		account_secret:    string
		sensitivity:       string
		httpQueryString?:  string
		maxEmails:         string
		ip3?:              string
		ip4?:              string
		ip5?:              string
		failover?:         bool
		httpFile?:         string
		monitor?:          bool
		port:              string
		record_name?:      string
		record_ttl?:       string
		contactList:       string
		domain:            string
		record_type?:      string
		record_value?:     string
		protocol:          string
		validate_certs?:   bool
		sandbox?:          bool
		ip1?:              string
		ip2?:              string
	}
}

nios_a_record :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	nios_a_record: {
		state?:    string
		ttl?:      string
		view:      string
		comment?:  string
		extattrs?: string
		ipv4addr:  string
		name:      string
	}
}

nios_aaaa_record :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	nios_aaaa_record: {
		state?:    string
		ttl?:      string
		view:      string
		comment?:  string
		extattrs?: string
		ipv6addr:  string
		name:      string
	}
}

nios_nsgroup :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	nios_nsgroup: {
		is_grid_default?:      bool
		name:                  string
		use_external_primary?: bool
		comment?:              string
		extattrs?:             string
		external_primaries?:   string
		external_secondaries?: string
		grid_secondaries?:     string
		grid_primary?:         string
		state?:                string
	}
}

omapi_host :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	omapi_host: {
		ip?:       string
		key_name:  string
		state:     string
		ddns?:     bool
		host?:     string
		hostname?: string
		key:       string
		macaddr:   string
		port?:     int
		statements?: [...]
	}
}

cloudflare_dns :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	cloudflare_dns: {
		algorithm?:       int
		record?:          string
		service?:         string
		value?:           string
		zone:             string
		account_email?:   string
		cert_usage?:      int
		priority?:        string
		proto?:           string
		selector?:        int
		type?:            string
		account_api_key?: string
		timeout?:         int
		weight?:          int
		hash_type?:       int
		key_tag?:         int
		port?:            int
		proxied?:         bool
		solo?:            bool
		state?:           string
		ttl?:             int
		api_token?:       string
	}
}

nios_network_view :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	nios_network_view: {
		comment?:  string
		extattrs?: string
		name:      string
		state?:    string
	}
}

nios_ptr_record :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	nios_ptr_record: {
		ttl?:      string
		view?:     string
		ipv4addr:  string
		state?:    string
		ipv6addr:  string
		name?:     string
		ptrdname:  string
		comment?:  string
		extattrs?: string
	}
}

nmcli :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	nmcli: {
		ageingtime?: int
		dns4_search?: [...]
		ingress?:          string
		state:             string
		flags?:            string
		forwarddelay?:     int
		ip_tunnel_remote?: string
		miimon?:           int
		mode?:             string
		vxlan_local?:      string
		vxlan_remote?:     string
		conn_name:         string
		egress?:           string
		gw6?:              string
		hairpin?:          bool
		priority?:         int
		updelay?:          int
		arp_ip_target?:    string
		autoconnect?:      bool
		dns6?: [...]
		downdelay?:      int
		slavepriority?:  int
		vlanid?:         int
		dhcp_client_id?: string
		dns6_search?: [...]
		ip_tunnel_dev?: string
		ip4?:           string
		path_cost?:     int
		type?:          string
		dns4?: [...]
		hellotime?:       int
		master?:          string
		mtu?:             int
		primary?:         string
		gw4?:             string
		ip_tunnel_local?: string
		mac?:             string
		vxlan_id?:        int
		arp_interval?:    int
		ifname?:          string
		ip6?:             string
		maxage?:          int
		stp?:             bool
		vlandev?:         string
	}
}

snmp_facts :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	snmp_facts: {
		community?: string
		integrity?: string
		privacy?:   string
		privkey?:   string
		authkey?:   string
		host:       string
		level?:     string
		username?:  string
		version:    string
	}
}

nios_naptr_record :: {
	when?: string
	tags?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	name?:       string
	notify?:     string | [...string]
	nios_naptr_record: {
		comment?:    string
		flags?:      string
		name:        string
		services?:   string
		replacement: string
		state?:      string
		ttl?:        string
		view:        string
		extattrs?:   string
		order:       string
		preference:  string
		regexp?:     string
	}
}
