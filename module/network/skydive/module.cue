package skydive

skydive_capture :: {
	name?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?:       string
	notify?:     string | [...string]
	connection?: string
	skydive_capture: {
		layer_key_mode?:   string
		query?:            string
		reassemble_tcp?:   bool
		state?:            string
		type?:             string
		description?:      string
		extra_tcp_metric?: bool
		interface_name?:   string
		ip_defrag?:        bool
		capture_name?:     string
	}
}

skydive_edge :: {
	name?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?:       string
	notify?:     string | [...string]
	connection?: string
	skydive_edge: {
		host?:         string
		metadata?:     string
		parent_node:   string
		relation_type: string
		state?:        string
		child_node:    string
	}
}

skydive_node :: {
	name?: string
	tags?: [...string]
	with_items?: [...string]
	become?:   bool
	register?: string
	vars?: {...}
	when?:       string
	notify?:     string | [...string]
	connection?: string
	skydive_node: {
		seed?:     string
		state?:    string
		host?:     string
		metadata?: string
		name:      string
		node_type: string
	}
}
