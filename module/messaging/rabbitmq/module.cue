package rabbitmq

rabbitmq_parameter :: {
	become?: bool
	name?:   string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	rabbitmq_parameter: {
		state?:    string
		value?:    string
		vhost?:    string
		component: string
		name:      string
		node?:     string
	}
}

rabbitmq_queue :: {
	become?: bool
	name?:   string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	rabbitmq_queue: {
		dead_letter_exchange?:    string
		durable?:                 bool
		message_ttl?:             string
		auto_delete?:             bool
		auto_expires?:            string
		dead_letter_routing_key?: string
		max_length?:              string
		max_priority?:            string
		name:                     string
		state?:                   string
		arguments?:               string
	}
}

rabbitmq_user :: {
	become?: bool
	name?:   string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	rabbitmq_user: {
		password?:        string
		permissions?:     string
		state?:           string
		vhost?:           string
		force?:           bool
		node?:            string
		read_priv?:       string
		tags?:            string
		update_password?: string
		user:             string
		write_priv?:      string
		configure_priv?:  string
	}
}

rabbitmq_vhost_limits :: {
	become?: bool
	name?:   string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	rabbitmq_vhost_limits: {
		max_queues?:      string
		node?:            string
		state?:           string
		vhost?:           string
		max_connections?: string
	}
}

rabbitmq_exchange :: {
	become?: bool
	name?:   string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	rabbitmq_exchange: {
		exchange_type?: string
		internal?:      bool
		name:           string
		state?:         string
		arguments?:     string
		auto_delete?:   bool
		durable?:       bool
	}
}

rabbitmq_global_parameter :: {
	become?: bool
	name?:   string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	rabbitmq_global_parameter: {
		name:   string
		node?:  string
		state?: string
		value?: string
	}
}

rabbitmq_policy :: {
	become?: bool
	name?:   string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	rabbitmq_policy: {
		state?:    string
		tags?:     string
		vhost?:    string
		apply_to?: string
		name:      string
		node?:     string
		pattern?:  string
		priority?: string
	}
}

rabbitmq_vhost :: {
	become?: bool
	name?:   string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	rabbitmq_vhost: {
		name:     string
		node?:    string
		state?:   string
		tracing?: bool
	}
}

rabbitmq_binding :: {
	become?: bool
	name?:   string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	rabbitmq_binding: {
		routing_key?:     string
		state?:           string
		arguments?:       string
		destination:      string
		destination_type: string
		name:             string
	}
}

rabbitmq_plugin :: {
	become?: bool
	name?:   string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	register?:   string
	when?:       string
	tags?: [...string]
	rabbitmq_plugin: {
		names:     string
		new_only?: bool
		prefix?:   string
		state?:    string
	}
}
