package consul

etcd3 :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	etcd3: {
		ca_cert?:     string
		password?:    string
		port?:        string
		state:        string
		timeout?:     string
		user?:        string
		value:        string
		client_cert?: string
		client_key?:  string
		host?:        string
		key:          string
	}
}

pacemaker_cluster :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	pacemaker_cluster: {
		timeout?: string
		force?:   bool
		node?:    string
		state:    string
	}
}

znode :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	znode: {
		recursive?: bool
		state?:     string
		timeout?:   string
		value?:     string
		hosts:      string
		name:       string
		op?:        string
	}
}

consul :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	consul: {
		check_id?:        string
		check_name?:      string
		host?:            string
		interval?:        string
		validate_certs?:  bool
		script?:          string
		service_id?:      string
		state?:           string
		http?:            string
		scheme?:          string
		service_address?: string
		service_port?:    int
		tags?: [...]
		timeout?:      string
		token?:        string
		notes?:        string
		port?:         int
		service_name?: string
		ttl?:          string
	}
}

consul_acl :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	consul_acl: {
		token_type?:     string
		mgmt_token?:     string
		port?:           int
		state?:          string
		token?:          string
		validate_certs?: bool
		host?:           string
		name?:           string
		rules?: [...]
		scheme?: string
	}
}

consul_kv :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	consul_kv: {
		port?:           int
		recurse?:        bool
		retrieve?:       bool
		session?:        string
		value:           string
		cas?:            string
		flags?:          string
		key:             string
		token?:          string
		validate_certs?: bool
		host?:           string
		scheme?:         string
		state?:          string
	}
}

consul_session :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	register?:   string
	consul_session: {
		checks?: [...]
		delay?:          int
		id?:             string
		node?:           string
		port?:           int
		state?:          string
		validate_certs?: bool
		behavior?:       string
		host?:           string
		name?:           string
		scheme?:         string
		datacenter?:     string
	}
}
