package purestorage

purefa_facts :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_facts: {
		gather_subset?: [...]
	}
}

purefa_snmp :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_snmp: {
		auth_passphrase?:    string
		community?:          string
		host:                string
		privacy_protocol?:   string
		state?:              string
		user?:               string
		version?:            string
		auth_protocol?:      string
		name:                string
		notification?:       string
		privacy_passphrase?: string
	}
}

purefa_alert :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_alert: {
		address:  string
		enabled?: bool
		state?:   string
	}
}

purefa_pgsnap :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_pgsnap: {
		apply_retention?: bool
		eradicate?:       bool
		name:             string
		now?:             bool
		state?:           string
		overwrite?:       bool
		remote?:          bool
		restore?:         string
		suffix?:          string
		target?:          string
	}
}

purefb_fs :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefb_fs: {
		nfsv3?:       bool
		group_quota?: string
		nfs_rules?:   string
		size?:        string
		snapshot?:    bool
		state?:       string
		user_quota?:  string
		fastremove?:  bool
		http?:        bool
		nfs?:         bool
		name:         string
		nfsv4?:       bool
		smb?:         bool
		eradicate?:   bool
		hard_limit?:  bool
	}
}

purefa_dns :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_dns: {
		nameservers?: [...]
		state?:  string
		domain?: string
	}
}

purefa_dsrole :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_dsrole: {
		group?:      string
		group_base?: string
		role?:       string
		state?:      string
	}
}

purefa_hg :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_hg: {
		volume?: [...]
		host?: [...]
		hostgroup: string
		state?:    string
	}
}

purefa_ntp :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_ntp: {
		ntp_servers?: [...]
		state?: string
	}
}

purefa_phonehome :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_phonehome: {
		state?: string
	}
}

purefb_ds :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefb_ds: {
		state?: string
		uri?: [...]
		bind_password?: string
		dstype?:        string
		join_ou?:       string
		nis_domain?:    string
		nis_servers?: [...]
		base_dn:    string
		bind_user?: string
		enable?:    bool
	}
}

purefb_dsrole :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefb_dsrole: {
		role?:       string
		state?:      string
		group?:      string
		group_base?: string
	}
}

purefb_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefb_info: {
		gather_subset?: [...]
	}
}

purefa_arrayname :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_arrayname: {
		name:   string
		state?: string
	}
}

purefb_s3acc :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefb_s3acc: {
		name?:  string
		state?: string
	}
}

purefb_subnet :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefb_subnet: {
		vlan?:    int
		gateway?: string
		mtu?:     int
		name:     string
		prefix?:  string
		state?:   string
	}
}

purefb_ra :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefb_ra: {
		state?: string
	}
}

purefa_ra :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_ra: {
		state?: string
	}
}

purefa_smtp :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_smtp: {
		sender_domain?: string
		state?:         string
		user?:          string
		password?:      string
		relay_host?:    string
	}
}

purefb_facts :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefb_facts: {
		gather_subset?: [...]
	}
}

purefb_network :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefb_network: {
		itype?:    string
		name:      string
		services?: string
		state?:    string
		address?:  string
	}
}

purefb_smtp :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefb_smtp: {
		domain: string
		host?:  string
	}
}

purefa_ds :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_ds: {
		enable?:     bool
		group_base?: string
		ro_group?:   string
		sa_group?:   string
		state?:      string
		uri?: [...]
		aa_group?:      string
		bind_password?: string
		bind_user?:     string
		base_dn:        string
	}
}

purefb_snap :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefb_snap: {
		suffix?:    string
		eradicate?: bool
		name:       string
		state?:     string
	}
}

purefa_volume :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_volume: {
		iops_qos?:  string
		name:       string
		overwrite?: bool
		size?:      string
		state?:     string
		target?:    string
		bw_qos?:    string
		eradicate?: bool
	}
}

purefa_pg :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_pg: {
		target?: [...]
		volume?: [...]
		enabled?:   bool
		eradicate?: bool
		host?: [...]
		hostgroup?: [...]
		pgroup: string
		state?: string
	}
}

purefa_syslog :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_syslog: {
		address:  string
		port?:    string
		protocol: string
		state?:   string
	}
}

purefa_host :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_host: {
		wwns?: [...]
		personality?: string
		protocol?:    string
		state?:       string
		volume?:      string
		preferred_array?: [...]
		host: string
		iqn?: [...]
		lun?: int
		nqn?: [...]
	}
}

purefa_connect :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_connect: {
		connection?: string
		state?:      string
		target_api?: string
		target_url:  string
	}
}

purefa_info :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_info: {
		gather_subset?: [...]
	}
}

purefa_user :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_user: {
		role?:         string
		state?:        string
		api?:          bool
		name?:         string
		old_password?: string
		password?:     string
	}
}

purefb_bucket :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefb_bucket: {
		account:    string
		eradicate?: bool
		name:       string
		state?:     string
	}
}

purefa_banner :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_banner: {
		banner?: string
		state?:  string
	}
}

purefa_snap :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_snap: {
		name:       string
		overwrite?: bool
		state?:     string
		suffix?:    string
		target?:    string
		eradicate?: bool
	}
}

purefa_vg :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_vg: {
		eradicate?: bool
		state?:     string
		vgroup:     string
	}
}

purefb_s3user :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefb_s3user: {
		access_key?: bool
		account?:    string
		name?:       string
		state?:      string
	}
}

purefa_offload :: {
	notify?: string | [...string]
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	become?:     bool
	purefa_offload: {
		access_key?: string
		bucket?:     string
		initialize?: bool
		name:        string
		options?:    string
		protocol?:   string
		secret?:     string
		share?:      string
		address?:    string
		state?:      string
	}
}
