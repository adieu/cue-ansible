package k8s

k8s_auth :: {
	name?: string
	vars?: {...}
	with_items?: [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	k8s_auth: {
		state?:          string
		username?:       string
		validate_certs?: bool
		api_key?:        string
		ca_cert?:        string
		host:            string
		password?:       string
	}
}

k8s_info :: {
	name?: string
	vars?: {...}
	with_items?: [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	k8s_info: {
		name?:            string
		namespace?:       string
		api_version?:     string
		field_selectors?: string
		kind:             string
		label_selectors?: string
	}
}

k8s_scale :: {
	name?: string
	vars?: {...}
	with_items?: [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	k8s_scale: {
	}
}

k8s_service :: {
	name?: string
	vars?: {...}
	with_items?: [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	k8s_service: {
		resource_definition?: {...}
		state?: string
		merge_type?: [...]
		namespace: string
		ports?: [...]
		selector?: {...}
		type?:  string
		force?: bool
		name:   string
	}
}

pacemaker_cluster :: {
	name?: string
	vars?: {...}
	with_items?: [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	pacemaker_cluster: {
		force?:   bool
		node?:    string
		state:    string
		timeout?: string
	}
}

znode :: {
	name?: string
	vars?: {...}
	with_items?: [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
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

etcd3 :: {
	name?: string
	vars?: {...}
	with_items?: [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	etcd3: {
		host?:        string
		password?:    string
		timeout?:     string
		ca_cert?:     string
		client_key?:  string
		key:          string
		port?:        string
		state:        string
		user?:        string
		value:        string
		client_cert?: string
	}
}

k8s :: {
	name?: string
	vars?: {...}
	with_items?: [...string]
	become?:   bool
	register?: string
	when?:     string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	k8s: {
		validate?:       string
		wait?:           bool
		wait_condition?: string
		wait_sleep?:     string
		wait_timeout?:   string
		append_hash?:    bool
		apply?:          bool
		merge_type?: [...]
	}
}
