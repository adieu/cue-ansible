package infinity

ipify_facts :: {
	name?:     string
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	ipify_facts: {
		api_url?:        string
		timeout?:        int
		validate_certs?: bool
	}
}

nsupdate :: {
	name?:     string
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	nsupdate: {
		key_algorithm?: string
		key_secret?:    string
		port?:          string
		record:         string
		state?:         string
		value?:         string
		zone?:          string
		key_name?:      string
		protocol?:      string
		server:         string
		ttl?:           string
		type?:          string
	}
}

omapi_host :: {
	name?:     string
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	omapi_host: {
		macaddr: string
		port?:   int
		state:   string
		statements?: [...]
		ddns?:     bool
		host?:     string
		hostname?: string
		ip?:       string
		key:       string
		key_name:  string
	}
}

snmp_facts :: {
	name?:     string
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	snmp_facts: {
		integrity?: string
		level?:     string
		privacy?:   string
		privkey?:   string
		username?:  string
		version:    string
		authkey?:   string
		community?: string
		host:       string
	}
}

cloudflare_dns :: {
	name?:     string
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	cloudflare_dns: {
		proxied?:         bool
		service?:         string
		solo?:            bool
		account_api_key?: string
		hash_type?:       int
		key_tag?:         int
		proto?:           string
		selector?:        int
		state?:           string
		timeout?:         int
		value?:           string
		account_email?:   string
		api_token?:       string
		cert_usage?:      int
		port?:            int
		priority?:        string
		type?:            string
		zone:             string
		algorithm?:       int
		ttl?:             int
		weight?:          int
		record?:          string
	}
}

dnsimple :: {
	name?:     string
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	dnsimple: {
		domain?:   string
		priority?: int
		record_ids?: [...]
		solo?:              bool
		ttl?:               int
		value?:             string
		account_api_token?: string
		account_email?:     string
		record?:            string
		state?:             string
		type?:              string
	}
}

dnsmadeeasy :: {
	name?:     string
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	dnsmadeeasy: {
		domain:            string
		monitor?:          bool
		record_name?:      string
		state:             string
		validate_certs?:   bool
		ip1?:              string
		port:              string
		sandbox?:          bool
		sensitivity:       string
		account_secret:    string
		failover?:         bool
		httpFile?:         string
		httpFqdn?:         string
		httpQueryString?:  string
		ip3?:              string
		maxEmails:         string
		account_key:       string
		autoFailover?:     bool
		contactList:       string
		systemDescription: string
		record_ttl?:       string
		record_type?:      string
		record_value?:     string
		ip2?:              string
		ip4?:              string
		ip5?:              string
		protocol:          string
	}
}

haproxy :: {
	name?:     string
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	haproxy: {
		host:               string
		shutdown_sessions?: bool
		socket?:            string
		wait?:              bool
		wait_retries?:      int
		weight?:            string
		backend?:           string
		drain?:             bool
		fail_on_not_found?: bool
		state:              string
		wait_interval?:     int
	}
}

ip_netns :: {
	name?:     string
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	ip_netns: {
		name?:  string
		state?: string
	}
}

lldp :: {
	name?:     string
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	lldp: {
	}
}

hetzner_failover_ip :: {
	name?:     string
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	hetzner_failover_ip: {
		state?:      string
		timeout?:    int
		value?:      string
		failover_ip: string
	}
}

hetzner_failover_ip_info :: {
	name?:     string
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	hetzner_failover_ip_info: {
		failover_ip: string
	}
}

infinity :: {
	name?:     string
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	infinity: {
		network_family?:   string
		network_location?: int
		network_size?:     string
		network_type?:     string
		password:          string
		username:          string
		action:            string
		ip_address?:       string
		network_address?:  string
		network_id?:       string
		network_name?:     string
		server_ip:         string
	}
}

ipinfoio_facts :: {
	name?:     string
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	ipinfoio_facts: {
		http_agent?: string
		timeout?:    string
	}
}

netcup_dns :: {
	name?:     string
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	netcup_dns: {
		solo?:        bool
		state?:       string
		api_key:      string
		record?:      string
		domain:       string
		priority?:    string
		type:         string
		value:        string
		api_password: string
		customer_id:  string
	}
}

nmcli :: {
	name?:     string
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	become?: bool
	nmcli: {
		slavepriority?: int
		stp?:           bool
		type?:          string
		ageingtime?:    int
		autoconnect?:   bool
		dns4?: [...]
		ingress?:          string
		ip4?:              string
		updelay?:          int
		vxlan_local?:      string
		vxlan_remote?:     string
		priority?:         int
		vlandev?:          string
		gw4?:              string
		ifname?:           string
		ip_tunnel_dev?:    string
		ip_tunnel_remote?: string
		master?:           string
		conn_name:         string
		flags?:            string
		maxage?:           int
		gw6?:              string
		path_cost?:        int
		vlanid?:           int
		vxlan_id?:         int
		primary?:          string
		egress?:           string
		forwarddelay?:     int
		ip6?:              string
		mac?:              string
		miimon?:           int
		mode?:             string
		mtu?:              int
		arp_ip_target?:    string
		dns6?: [...]
		downdelay?:       int
		hairpin?:         bool
		hellotime?:       int
		arp_interval?:    int
		ip_tunnel_local?: string
		state:            string
		dhcp_client_id?:  string
		dns4_search?: [...]
		dns6_search?: [...]
	}
}
