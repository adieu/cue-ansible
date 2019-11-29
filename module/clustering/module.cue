package clustering

etcd3 :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	etcd3: {
		user?:        string
		client_cert?: string
		client_key?:  string
		host?:        string
		key:          string
		password?:    string
		port?:        string
		timeout?:     string
		value:        string
		ca_cert?:     string
		state:        string
	}
}

pacemaker_cluster :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	pacemaker_cluster: {
		timeout?: string
		force?:   bool
		node?:    string
		state:    string
	}
}

znode :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	register?: string
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
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
