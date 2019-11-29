package exoscale

lldp :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	lldp: {
	}
}

netcup_dns :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	netcup_dns: {
		api_password: string
		domain:       string
		solo?:        bool
		api_key:      string
		customer_id:  string
		priority?:    string
		record?:      string
		state?:       string
		type:         string
		value:        string
	}
}

snmp_facts :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	snmp_facts: {
		level?:     string
		privacy?:   string
		authkey?:   string
		host:       string
		integrity?: string
		privkey?:   string
		username?:  string
		version:    string
		community?: string
	}
}

dnsmadeeasy :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	dnsmadeeasy: {
		contactList:       string
		httpFqdn?:         string
		account_secret:    string
		ip2?:              string
		ip3?:              string
		record_ttl?:       string
		state:             string
		httpQueryString?:  string
		record_name?:      string
		sandbox?:          bool
		account_key:       string
		httpFile?:         string
		ip4?:              string
		validate_certs?:   bool
		maxEmails:         string
		port:              string
		protocol:          string
		record_value?:     string
		ip1?:              string
		ip5?:              string
		monitor?:          bool
		failover?:         bool
		systemDescription: string
		autoFailover?:     bool
		domain:            string
		record_type?:      string
		sensitivity:       string
	}
}

haproxy :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	haproxy: {
		socket?:            string
		wait?:              bool
		wait_retries?:      int
		weight?:            string
		backend?:           string
		drain?:             bool
		fail_on_not_found?: bool
		shutdown_sessions?: bool
		host:               string
		state:              string
		wait_interval?:     int
	}
}

hetzner_failover_ip_info :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	hetzner_failover_ip_info: {
		failover_ip: string
	}
}

ip_netns :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	ip_netns: {
		name?:  string
		state?: string
	}
}

ipify_facts :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	ipify_facts: {
		api_url?:        string
		timeout?:        int
		validate_certs?: bool
	}
}

exo_dns_domain :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	exo_dns_domain: {
		name:   string
		state?: string
	}
}

ipinfoio_facts :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	ipinfoio_facts: {
		http_agent?: string
		timeout?:    string
	}
}

dnsimple :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	dnsimple: {
		priority?: int
		record_ids?: [...]
		solo?:              bool
		state?:             string
		type?:              string
		account_api_token?: string
		account_email?:     string
		domain?:            string
		value?:             string
		record?:            string
		ttl?:               int
	}
}

exo_dns_record :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	exo_dns_record: {
		ttl?:         int
		content?:     string
		domain:       string
		multiple?:    bool
		name?:        string
		prio?:        int
		record_type?: string
		state?:       string
	}
}

omapi_host :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	omapi_host: {
		hostname?: string
		ip?:       string
		port?:     int
		state:     string
		statements?: [...]
		ddns?:    bool
		host?:    string
		key:      string
		key_name: string
		macaddr:  string
	}
}

cloudflare_dns :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	cloudflare_dns: {
		value?:           string
		algorithm?:       int
		hash_type?:       int
		proto?:           string
		proxied?:         bool
		record?:          string
		ttl?:             int
		state?:           string
		account_email?:   string
		key_tag?:         int
		priority?:        string
		selector?:        int
		service?:         string
		solo?:            bool
		cert_usage?:      int
		port?:            int
		timeout?:         int
		type?:            string
		account_api_key?: string
		api_token?:       string
		weight?:          int
		zone:             string
	}
}

hetzner_failover_ip :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	hetzner_failover_ip: {
		timeout?:    int
		value?:      string
		failover_ip: string
		state?:      string
	}
}

nmcli :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	nmcli: {
		ip6?:        string
		path_cost?:  int
		ageingtime?: int
		dns6?: [...]
		downdelay?: int
		ifname?:    string
		maxage?:    int
		vlanid?:    int
		egress?:    string
		hairpin?:   bool
		ingress?:   string
		ip4?:       string
		stp?:       bool
		dns4?: [...]
		gw6?:              string
		ip_tunnel_dev?:    string
		master?:           string
		flags?:            string
		forwarddelay?:     int
		hellotime?:        int
		miimon?:           int
		ip_tunnel_remote?: string
		mtu?:              int
		priority?:         int
		slavepriority?:    int
		arp_ip_target?:    string
		autoconnect?:      bool
		dns6_search?: [...]
		ip_tunnel_local?: string
		vlandev?:         string
		arp_interval?:    int
		conn_name:        string
		dns4_search?: [...]
		state:           string
		vxlan_local?:    string
		vxlan_remote?:   string
		dhcp_client_id?: string
		mac?:            string
		mode?:           string
		updelay?:        int
		gw4?:            string
		primary?:        string
		type?:           string
		vxlan_id?:       int
	}
}

nsupdate :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	nsupdate: {
		key_algorithm?: string
		key_name?:      string
		key_secret?:    string
		port?:          string
		state?:         string
		value?:         string
		protocol?:      string
		record:         string
		server:         string
		ttl?:           string
		type?:          string
		zone?:          string
	}
}
