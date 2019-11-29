package ldap

ldap_attr :: {
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	ldap_attr: {
		params?: {...}
		state?: string
		values: _
		name:   string
	}
}

ldap_passwd :: {
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	ldap_passwd: {
		passwd: string
	}
}

nsupdate :: {
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	nsupdate: {
		server:         string
		state?:         string
		ttl?:           string
		type?:          string
		value?:         string
		key_name?:      string
		port?:          string
		protocol?:      string
		zone?:          string
		key_algorithm?: string
		key_secret?:    string
		record:         string
	}
}

cloudflare_dns :: {
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	cloudflare_dns: {
		cert_usage?:      int
		key_tag?:         int
		priority?:        string
		proxied?:         bool
		solo?:            bool
		timeout?:         int
		account_email?:   string
		api_token?:       string
		ttl?:             int
		zone:             string
		record?:          string
		port?:            int
		proto?:           string
		selector?:        int
		weight?:          int
		account_api_key?: string
		algorithm?:       int
		state?:           string
		type?:            string
		value?:           string
		hash_type?:       int
		service?:         string
	}
}

dnsimple :: {
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	dnsimple: {
		record_ids?: [...]
		ttl?:               int
		value?:             string
		account_api_token?: string
		account_email?:     string
		domain?:            string
		priority?:          int
		record?:            string
		solo?:              bool
		state?:             string
		type?:              string
	}
}

ip_netns :: {
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	ip_netns: {
		name?:  string
		state?: string
	}
}

ipify_facts :: {
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	ipify_facts: {
		api_url?:        string
		timeout?:        int
		validate_certs?: bool
	}
}

lldp :: {
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	lldp: {
	}
}

netcup_dns :: {
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	netcup_dns: {
		state?:       string
		type:         string
		value:        string
		api_password: string
		customer_id:  string
		priority?:    string
		record?:      string
		api_key:      string
		domain:       string
		solo?:        bool
	}
}

dnsmadeeasy :: {
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	dnsmadeeasy: {
		protocol:          string
		record_type?:      string
		validate_certs?:   bool
		monitor?:          bool
		contactList:       string
		httpFqdn?:         string
		ip4?:              string
		sandbox?:          bool
		httpFile?:         string
		record_name?:      string
		record_value?:     string
		sensitivity:       string
		failover?:         bool
		ip3?:              string
		ip5?:              string
		record_ttl?:       string
		httpQueryString?:  string
		domain:            string
		port:              string
		account_key:       string
		autoFailover?:     bool
		maxEmails:         string
		state:             string
		account_secret:    string
		ip2?:              string
		systemDescription: string
		ip1?:              string
	}
}

hetzner_failover_ip :: {
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	hetzner_failover_ip: {
		failover_ip: string
		state?:      string
		timeout?:    int
		value?:      string
	}
}

ldap_attrs :: {
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	ldap_attrs: {
		state?: string
		attributes: {...}
		ordered?: bool
	}
}

ldap_entry :: {
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	ldap_entry: {
		attributes?:  string
		objectClass?: string
		params?:      string
		state?:       string
	}
}

haproxy :: {
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	haproxy: {
		shutdown_sessions?: bool
		socket?:            string
		wait_interval?:     int
		weight?:            string
		drain?:             bool
		fail_on_not_found?: bool
		host:               string
		wait_retries?:      int
		backend?:           string
		state:              string
		wait?:              bool
	}
}

ipinfoio_facts :: {
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	ipinfoio_facts: {
		http_agent?: string
		timeout?:    string
	}
}

nmcli :: {
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	nmcli: {
		dns6?: [...]
		ip_tunnel_dev?:   string
		master?:          string
		mtu?:             int
		priority?:        int
		ageingtime?:      int
		dhcp_client_id?:  string
		downdelay?:       int
		ifname?:          string
		arp_interval?:    int
		egress?:          string
		ip_tunnel_local?: string
		path_cost?:       int
		stp?:             bool
		vxlan_remote?:    string
		arp_ip_target?:   string
		conn_name:        string
		mac?:             string
		mode?:            string
		vxlan_id?:        int
		autoconnect?:     bool
		flags?:           string
		gw4?:             string
		gw6?:             string
		updelay?:         int
		vlanid?:          int
		dns4?: [...]
		dns4_search?: [...]
		forwarddelay?: int
		hellotime?:    int
		ip4?:          string
		type?:         string
		primary?:      string
		state:         string
		dns6_search?: [...]
		ingress?:          string
		ip_tunnel_remote?: string
		ip6?:              string
		maxage?:           int
		miimon?:           int
		vxlan_local?:      string
		hairpin?:          bool
		slavepriority?:    int
		vlandev?:          string
	}
}

omapi_host :: {
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	omapi_host: {
		ip?:      string
		key:      string
		key_name: string
		statements?: [...]
		ddns?:     bool
		host?:     string
		hostname?: string
		macaddr:   string
		port?:     int
		state:     string
	}
}

hetzner_failover_ip_info :: {
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	hetzner_failover_ip_info: {
		failover_ip: string
	}
}

snmp_facts :: {
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	snmp_facts: {
		privacy?:   string
		integrity?: string
		level?:     string
		privkey?:   string
		username?:  string
		version:    string
		authkey?:   string
		community?: string
		host:       string
	}
}
