package basics

hetzner_failover_ip_info :: {
	register?: string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	tags?: [...string]
	become?: bool
	hetzner_failover_ip_info: {
		failover_ip: string
	}
}

slurp :: {
	register?: string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	tags?: [...string]
	become?: bool
	slurp: {
		src: string
	}
}

get_url :: {
	register?: string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	tags?: [...string]
	become?: bool
	get_url: {
		checksum?:         string
		headers?:          _
		sha256sum?:        string
		backup?:           bool
		client_cert?:      string
		dest:              string
		validate_certs?:   bool
		client_key?:       string
		force?:            bool
		timeout?:          int
		url:               string
		url_username?:     string
		force_basic_auth?: bool
		http_agent?:       string
		tmp_dest?:         string
		url_password?:     string
		use_proxy?:        bool
	}
}

ip_netns :: {
	register?: string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	tags?: [...string]
	become?: bool
	ip_netns: {
		name?:  string
		state?: string
	}
}

ipify_facts :: {
	register?: string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	tags?: [...string]
	become?: bool
	ipify_facts: {
		api_url?:        string
		timeout?:        int
		validate_certs?: bool
	}
}

nsupdate :: {
	register?: string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	tags?: [...string]
	become?: bool
	nsupdate: {
		key_name?:      string
		state?:         string
		ttl?:           string
		type?:          string
		value?:         string
		key_algorithm?: string
		port?:          string
		protocol?:      string
		record:         string
		server:         string
		zone?:          string
		key_secret?:    string
	}
}

uri :: {
	register?: string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	tags?: [...string]
	become?: bool
	uri: {
		url_username?:     string
		use_proxy?:        bool
		body?:             _
		body_format?:      string
		client_key?:       string
		creates?:          string
		follow_redirects?: string
		http_agent?:       string
		return_content?:   bool
		status_code?: [...]
		timeout?:        int
		unix_socket?:    string
		url_password?:   string
		validate_certs?: bool
		dest?:           string
		force?:          bool
		headers?: {...}
		removes?:          string
		url:               string
		client_cert?:      string
		force_basic_auth?: bool
		method?:           string
		remote_src?:       bool
		src?:              string
	}
}

omapi_host :: {
	register?: string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	tags?: [...string]
	become?: bool
	omapi_host: {
		port?:   int
		host?:   string
		ip?:     string
		key:     string
		macaddr: string
		state:   string
		statements?: [...]
		ddns?:     bool
		hostname?: string
		key_name:  string
	}
}

snmp_facts :: {
	register?: string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	tags?: [...string]
	become?: bool
	snmp_facts: {
		authkey?:   string
		level?:     string
		privacy?:   string
		username?:  string
		community?: string
		host:       string
		integrity?: string
		privkey?:   string
		version:    string
	}
}

cloudflare_dns :: {
	register?: string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	tags?: [...string]
	become?: bool
	cloudflare_dns: {
		weight?:          int
		zone:             string
		hash_type?:       int
		port?:            int
		priority?:        string
		service?:         string
		ttl?:             int
		value?:           string
		state?:           string
		timeout?:         int
		api_token?:       string
		cert_usage?:      int
		key_tag?:         int
		proxied?:         bool
		selector?:        int
		solo?:            bool
		account_api_key?: string
		algorithm?:       int
		account_email?:   string
		proto?:           string
		record?:          string
		type?:            string
	}
}

haproxy :: {
	register?: string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	tags?: [...string]
	become?: bool
	haproxy: {
		host:               string
		socket?:            string
		wait_interval?:     int
		wait_retries?:      int
		backend?:           string
		drain?:             bool
		fail_on_not_found?: bool
		shutdown_sessions?: bool
		state:              string
		wait?:              bool
		weight?:            string
	}
}

hetzner_failover_ip :: {
	register?: string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	tags?: [...string]
	become?: bool
	hetzner_failover_ip: {
		state?:      string
		timeout?:    int
		value?:      string
		failover_ip: string
	}
}

ipinfoio_facts :: {
	register?: string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	tags?: [...string]
	become?: bool
	ipinfoio_facts: {
		http_agent?: string
		timeout?:    string
	}
}

netcup_dns :: {
	register?: string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	tags?: [...string]
	become?: bool
	netcup_dns: {
		api_key:      string
		api_password: string
		record?:      string
		value:        string
		customer_id:  string
		domain:       string
		priority?:    string
		solo?:        bool
		state?:       string
		type:         string
	}
}

dnsimple :: {
	register?: string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	tags?: [...string]
	become?: bool
	dnsimple: {
		account_email?:     string
		domain?:            string
		priority?:          int
		record?:            string
		ttl?:               int
		account_api_token?: string
		record_ids?: [...]
		solo?:  bool
		state?: string
		type?:  string
		value?: string
	}
}

dnsmadeeasy :: {
	register?: string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	tags?: [...string]
	become?: bool
	dnsmadeeasy: {
		record_name?:      string
		sensitivity:       string
		contactList:       string
		autoFailover?:     bool
		maxEmails:         string
		record_ttl?:       string
		account_key:       string
		httpQueryString?:  string
		httpFile?:         string
		ip2?:              string
		port:              string
		sandbox?:          bool
		state:             string
		systemDescription: string
		validate_certs?:   bool
		domain:            string
		record_value?:     string
		ip1?:              string
		failover?:         bool
		httpFqdn?:         string
		ip4?:              string
		ip5?:              string
		ip3?:              string
		protocol:          string
		monitor?:          bool
		record_type?:      string
		account_secret:    string
	}
}

lldp :: {
	register?: string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	tags?: [...string]
	become?: bool
	lldp: {
	}
}

nmcli :: {
	register?: string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	tags?: [...string]
	become?: bool
	nmcli: {
		downdelay?:     int
		flags?:         string
		forwarddelay?:  int
		gw4?:           string
		hellotime?:     int
		arp_interval?:  int
		arp_ip_target?: string
		autoconnect?:   bool
		primary?:       string
		vlandev?:       string
		vxlan_local?:   string
		dns4_search?: [...]
		egress?:          string
		miimon?:          int
		ip_tunnel_dev?:   string
		ip_tunnel_local?: string
		master?:          string
		type?:            string
		dns6?: [...]
		dns6_search?: [...]
		ingress?:          string
		ifname?:           string
		ip_tunnel_remote?: string
		ip4?:              string
		maxage?:           int
		state:             string
		conn_name:         string
		dns4?: [...]
		hairpin?:        bool
		vlanid?:         int
		updelay?:        int
		vxlan_remote?:   string
		mac?:            string
		mtu?:            int
		slavepriority?:  int
		ip6?:            string
		mode?:           string
		stp?:            bool
		dhcp_client_id?: string
		priority?:       int
		vxlan_id?:       int
		ageingtime?:     int
		gw6?:            string
		path_cost?:      int
	}
}
