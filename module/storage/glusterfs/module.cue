package glusterfs

gluster_heal_info :: {
	when?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	gluster_heal_info: {
		name:           string
		status_filter?: string
	}
}

gluster_peer :: {
	when?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	gluster_peer: {
		force?: bool
		nodes:  string
		state:  string
	}
}

gluster_volume :: {
	when?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	become?: bool
	gluster_volume: {
		force?:           bool
		name:             string
		options?:         string
		arbiters?:        string
		directory?:       string
		host?:            string
		quota?:           string
		transport?:       string
		cluster?:         string
		disperses?:       string
		redundancies?:    string
		replicas?:        string
		state:            string
		bricks?:          string
		rebalance?:       bool
		start_on_create?: bool
		stripes?:         string
	}
}
