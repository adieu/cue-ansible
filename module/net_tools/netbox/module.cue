package netbox

hetzner_failover_ip_info :: {
	name?: string
	vars?: {...}
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	hetzner_failover_ip_info: {
		failover_ip: string
	}
}

ipify_facts :: {
	name?: string
	vars?: {...}
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	ipify_facts: {
		api_url?:        string
		timeout?:        int
		validate_certs?: bool
	}
}

lldp :: {
	name?: string
	vars?: {...}
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	lldp: {
	}
}

netbox_device :: {
	name?: string
	vars?: {...}
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	netbox_device: {
		data:            string
		netbox_token:    string
		netbox_url:      string
		state?:          string
		validate_certs?: bool
	}
}

netbox_interface :: {
	name?: string
	vars?: {...}
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	netbox_interface: {
		state?:          string
		validate_certs?: bool
		data:            string
		netbox_token:    string
		netbox_url:      string
	}
}

netbox_site :: {
	name?: string
	vars?: {...}
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	netbox_site: {
		data:            string
		netbox_token:    string
		netbox_url:      string
		state?:          string
		validate_certs?: bool
	}
}

nsupdate :: {
	name?: string
	vars?: {...}
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	nsupdate: {
		key_secret?:    string
		port?:          string
		record:         string
		type?:          string
		value?:         string
		key_algorithm?: string
		key_name?:      string
		protocol?:      string
		server:         string
		state?:         string
		ttl?:           string
		zone?:          string
	}
}

dnsmadeeasy :: {
	name?: string
	vars?: {...}
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	dnsmadeeasy: {
		record_name?:      string
		record_ttl?:       string
		validate_certs?:   bool
		ip1?:              string
		port:              string
		systemDescription: string
		httpFile?:         string
		httpQueryString?:  string
		sandbox?:          bool
		ip5?:              string
		maxEmails:         string
		protocol:          string
		sensitivity:       string
		contactList:       string
		ip4?:              string
		record_type?:      string
		ip3?:              string
		autoFailover?:     bool
		failover?:         bool
		ip2?:              string
		monitor?:          bool
		account_secret:    string
		domain:            string
		httpFqdn?:         string
		record_value?:     string
		account_key:       string
		state:             string
	}
}

hetzner_failover_ip :: {
	name?: string
	vars?: {...}
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	hetzner_failover_ip: {
		failover_ip: string
		state?:      string
		timeout?:    int
		value?:      string
	}
}

omapi_host :: {
	name?: string
	vars?: {...}
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	omapi_host: {
		host?:     string
		hostname?: string
		ip?:       string
		key:       string
		macaddr:   string
		statements?: [...]
		ddns?:    bool
		key_name: string
		port?:    int
		state:    string
	}
}

cloudflare_dns :: {
	name?: string
	vars?: {...}
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	cloudflare_dns: {
		type?:            string
		algorithm?:       int
		key_tag?:         int
		port?:            int
		selector?:        int
		value?:           string
		zone:             string
		account_email?:   string
		cert_usage?:      int
		proto?:           string
		ttl?:             int
		state?:           string
		timeout?:         int
		weight?:          int
		account_api_key?: string
		proxied?:         bool
		record?:          string
		service?:         string
		api_token?:       string
		hash_type?:       int
		priority?:        string
		solo?:            bool
	}
}

dnsimple :: {
	name?: string
	vars?: {...}
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	dnsimple: {
		record?: string
		record_ids?: [...]
		state?:             string
		priority?:          int
		account_email?:     string
		domain?:            string
		solo?:              bool
		ttl?:               int
		type?:              string
		value?:             string
		account_api_token?: string
	}
}

ip_netns :: {
	name?: string
	vars?: {...}
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	ip_netns: {
		name?:  string
		state?: string
	}
}

netbox_ip_address :: {
	name?: string
	vars?: {...}
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	netbox_ip_address: {
		data:            string
		netbox_token:    string
		netbox_url:      string
		state?:          string
		validate_certs?: bool
	}
}

netcup_dns :: {
	name?: string
	vars?: {...}
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	netcup_dns: {
		priority?:    string
		state?:       string
		value:        string
		customer_id:  string
		domain:       string
		record?:      string
		solo?:        bool
		type:         string
		api_key:      string
		api_password: string
	}
}

nmcli :: {
	name?: string
	vars?: {...}
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	nmcli: {
		arp_ip_target?:  string
		hellotime?:      int
		mtu?:            int
		vxlan_remote?:   string
		dhcp_client_id?: string
		maxage?:         int
		miimon?:         int
		conn_name:       string
		dns4_search?: [...]
		egress?:           string
		ifname?:           string
		master?:           string
		primary?:          string
		ingress?:          string
		ip_tunnel_remote?: string
		mac?:              string
		vlanid?:           int
		dns4?: [...]
		downdelay?:     int
		flags?:         string
		gw6?:           string
		slavepriority?: int
		vxlan_id?:      int
		autoconnect?:   bool
		dns6_search?: [...]
		hairpin?:      bool
		mode?:         string
		state:         string
		stp?:          bool
		ageingtime?:   int
		forwarddelay?: int
		priority?:     int
		type?:         string
		vlandev?:      string
		arp_interval?: int
		dns6?: [...]
		gw4?:             string
		ip_tunnel_dev?:   string
		ip_tunnel_local?: string
		ip4?:             string
		ip6?:             string
		path_cost?:       int
		updelay?:         int
		vxlan_local?:     string
	}
}

haproxy :: {
	name?: string
	vars?: {...}
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	haproxy: {
		wait?:              bool
		wait_retries?:      int
		shutdown_sessions?: bool
		drain?:             bool
		fail_on_not_found?: bool
		host:               string
		socket?:            string
		state:              string
		wait_interval?:     int
		weight?:            string
		backend?:           string
	}
}

ipinfoio_facts :: {
	name?: string
	vars?: {...}
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	ipinfoio_facts: {
		http_agent?: string
		timeout?:    string
	}
}

netbox_prefix :: {
	name?: string
	vars?: {...}
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	netbox_prefix: {
		netbox_url:       string
		state?:           string
		validate_certs?:  bool
		data:             string
		first_available?: bool
		netbox_token:     string
	}
}

snmp_facts :: {
	name?: string
	vars?: {...}
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	snmp_facts: {
		host:       string
		integrity?: string
		privacy?:   string
		privkey?:   string
		authkey?:   string
		community?: string
		level?:     string
		username?:  string
		version:    string
	}
}
