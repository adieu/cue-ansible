package a10

a10_virtual_server :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	connection?: string
	become?:     bool
	a10_virtual_server: {
		virtual_server_status?: string
		partition?:             string
		state?:                 string
		validate_certs?:        bool
		virtual_server:         string
		virtual_server_ip?:     string
		virtual_server_ports?:  string
	}
}

a10_server :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	connection?: string
	become?:     bool
	a10_server: {
		server_name:     string
		server_ports?:   string
		server_status?:  string
		state?:          string
		validate_certs?: bool
		partition?:      string
		server_ip?:      string
	}
}

a10_server_axapi3 :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	connection?: string
	become?:     bool
	a10_server_axapi3: {
		server_status?:  string
		validate_certs?: bool
		operation?:      string
		server_ip:       string
		server_name:     string
		server_ports?:   string
	}
}

a10_service_group :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	name?: string
	vars?: {...}
	connection?: string
	become?:     bool
	a10_service_group: {
		service_group_protocol?: string
		state?:                  string
		validate_certs?:         bool
		partition?:              string
		servers?:                string
		service_group:           string
		service_group_method?:   string
	}
}
