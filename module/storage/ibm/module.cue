package ibm

ibm_sa_pool :: {
	connection?: string
	vars?: {...}
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	ibm_sa_pool: {
		perf_class?:    string
		pool:           string
		size?:          string
		snapshot_size?: string
		state:          string
		domain?:        string
	}
}

ibm_sa_vol :: {
	connection?: string
	vars?: {...}
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	ibm_sa_vol: {
		pool?: string
		size?: string
		state: string
		vol:   string
	}
}

ibm_sa_vol_map :: {
	connection?: string
	vars?: {...}
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	ibm_sa_vol_map: {
		cluster?:  string
		host?:     string
		lun?:      string
		override?: string
		state:     string
		vol:       string
	}
}

ibm_sa_domain :: {
	connection?: string
	vars?: {...}
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	ibm_sa_domain: {
		max_dms?:       string
		max_pools?:     string
		max_volumes?:   string
		perf_class?:    string
		state:          string
		hard_capacity?: string
		ldap_id?:       string
		max_mirrors?:   string
		size?:          string
		soft_capacity?: string
		domain:         string
		max_cgs?:       string
	}
}

ibm_sa_host :: {
	connection?: string
	vars?: {...}
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	ibm_sa_host: {
		cluster?:           string
		domain?:            string
		host:               string
		iscsi_chap_name?:   string
		iscsi_chap_secret?: string
		state:              string
	}
}

ibm_sa_host_ports :: {
	connection?: string
	vars?: {...}
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	name?:   string
	ibm_sa_host_ports: {
		iscsi_name?:             string
		num_of_visible_targets?: string
		state:                   string
		fcaddress?:              string
		host:                    string
	}
}
