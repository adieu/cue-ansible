package cloudvision

cv_server_provision :: {
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	name?:       string
	register?:   string
	vars?: {...}
	when?: string
	with_items?: [...string]
	become?: bool
	cv_server_provision: {
		username:    string
		action?:     string
		password:    string
		port?:       string
		switch_port: string
		template:    string
		switch_name: string
		auto_run?:   bool
		host:        string
		port_vlan?:  string
		protocol?:   string
		server_name: string
	}
}
