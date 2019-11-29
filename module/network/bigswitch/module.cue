package bigswitch

bigmon_chain :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	bigmon_chain: {
		validate_certs?: bool
		access_token?:   string
		controller:      string
		name:            string
		state?:          string
	}
}

bigmon_policy :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	bigmon_policy: {
		action?:                string
		duration?:              string
		name:                   string
		policy_description?:    string
		state?:                 string
		access_token?:          string
		controller:             string
		delivery_packet_count?: string
		priority?:              string
		start_time?:            string
		validate_certs?:        bool
	}
}

bcf_switch :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	when?:   string
	tags?: [...string]
	connection?: string
	register?:   string
	vars?: {...}
	notify?: string | [...string]
	bcf_switch: {
		leaf_group?:     string
		mac:             string
		name:            string
		state?:          string
		validate_certs?: bool
		access_token?:   string
		controller:      string
		fabric_role:     string
	}
}
