package net_tools

dnsimple :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	dnsimple: {
		type?:              string
		value?:             string
		solo?:              bool
		state?:             string
		account_api_token?: string
		account_email?:     string
		domain?:            string
		priority?:          int
		record?:            string
		record_ids?: [...]
		ttl?: int
	}
}

hetzner_failover_ip :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	hetzner_failover_ip: {
		failover_ip: string
		state?:      string
		timeout?:    int
		value?:      string
	}
}

ipinfoio_facts :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	ipinfoio_facts: {
		http_agent?: string
		timeout?:    string
	}
}

lldp :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	lldp: {
	}
}

nmcli :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	nmcli: {
		dns4_search?: [...]
		gw6?:              string
		ifname?:           string
		ip_tunnel_remote?: string
		mode?:             string
		path_cost?:        int
		vlandev?:          string
		flags?:            string
		ip6?:              string
		state:             string
		maxage?:           int
		autoconnect?:      bool
		conn_name:         string
		dhcp_client_id?:   string
		downdelay?:        int
		hairpin?:          bool
		hellotime?:        int
		ip_tunnel_dev?:    string
		gw4?:              string
		dns4?: [...]
		dns6_search?: [...]
		stp?:           bool
		vlanid?:        int
		vxlan_id?:      int
		vxlan_local?:   string
		ageingtime?:    int
		arp_ip_target?: string
		dns6?: [...]
		updelay?:         int
		slavepriority?:   int
		arp_interval?:    int
		egress?:          string
		ip_tunnel_local?: string
		mac?:             string
		miimon?:          int
		primary?:         string
		priority?:        int
		vxlan_remote?:    string
		forwarddelay?:    int
		ingress?:         string
		ip4?:             string
		master?:          string
		mtu?:             int
		type?:            string
	}
}

omapi_host :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	omapi_host: {
		ddns?:     bool
		hostname?: string
		key:       string
		key_name:  string
		macaddr:   string
		host?:     string
		ip?:       string
		port?:     int
		state:     string
		statements?: [...]
	}
}

snmp_facts :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	snmp_facts: {
		privkey?:   string
		username?:  string
		community?: string
		host:       string
		privacy?:   string
		version:    string
		authkey?:   string
		integrity?: string
		level?:     string
	}
}

cloudflare_dns :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	cloudflare_dns: {
		hash_type?:       int
		key_tag?:         int
		port?:            int
		proxied?:         bool
		state?:           string
		weight?:          int
		zone:             string
		account_api_key?: string
		algorithm?:       int
		api_token?:       string
		cert_usage?:      int
		timeout?:         int
		ttl?:             int
		value?:           string
		priority?:        string
		selector?:        int
		service?:         string
		solo?:            bool
		account_email?:   string
		proto?:           string
		record?:          string
		type?:            string
	}
}

haproxy :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	haproxy: {
		shutdown_sessions?: bool
		socket?:            string
		state:              string
		weight?:            string
		drain?:             bool
		host:               string
		wait?:              bool
		wait_interval?:     int
		wait_retries?:      int
		backend?:           string
		fail_on_not_found?: bool
	}
}

dnsmadeeasy :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	dnsmadeeasy: {
		contactList:       string
		domain:            string
		monitor?:          bool
		record_name?:      string
		ip3?:              string
		ip4?:              string
		port:              string
		validate_certs?:   bool
		account_secret:    string
		httpQueryString?:  string
		httpFile?:         string
		maxEmails:         string
		sandbox?:          bool
		failover?:         bool
		protocol:          string
		sensitivity:       string
		autoFailover?:     bool
		httpFqdn?:         string
		ip1?:              string
		ip2?:              string
		ip5?:              string
		record_ttl?:       string
		record_type?:      string
		account_key:       string
		record_value?:     string
		state:             string
		systemDescription: string
	}
}

netcup_dns :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	netcup_dns: {
		value:        string
		api_key:      string
		api_password: string
		state?:       string
		record?:      string
		solo?:        bool
		type:         string
		customer_id:  string
		domain:       string
		priority?:    string
	}
}

ipify_facts :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	ipify_facts: {
		api_url?:        string
		timeout?:        int
		validate_certs?: bool
	}
}

ip_netns :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	ip_netns: {
		name?:  string
		state?: string
	}
}

nsupdate :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	nsupdate: {
		value?:         string
		key_algorithm?: string
		key_secret?:    string
		port?:          string
		protocol?:      string
		server:         string
		ttl?:           string
		key_name?:      string
		record:         string
		state?:         string
		type?:          string
		zone?:          string
	}
}

hetzner_failover_ip_info :: {
	name?:     string
	register?: string
	when?:     string
	tags?: [...string]
	with_items?: [...string]
	vars?: {...}
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	hetzner_failover_ip_info: {
		failover_ip: string
	}
}
