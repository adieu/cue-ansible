package ftd

ftd_file_upload :: {
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	ftd_file_upload: {
		file_to_upload: string
		operation:      string
		register_as?:   string
	}
}

ftd_install :: {
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	ftd_install: {
		console_port:          string
		device_model?:         string
		device_new_password?:  string
		device_username?:      string
		device_ip?:            string
		device_password:       string
		dns_server?:           string
		force_install?:        bool
		rommon_file_location:  string
		search_domains?:       string
		console_username:      string
		device_gateway?:       string
		console_ip:            string
		console_password:      string
		device_hostname:       string
		device_netmask?:       string
		device_sudo_password?: string
		image_file_location:   string
		image_version:         string
	}
}

ftd_configuration :: {
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	ftd_configuration: {
		query_params?: {...}
		register_as?: string
		data?: {...}
		filters?: {...}
		operation: string
		path_params?: {...}
	}
}

ftd_file_download :: {
	become?:     bool
	name?:       string
	register?:   string
	when?:       string
	notify?:     string | [...string]
	connection?: string
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	ftd_file_download: {
		destination: string
		operation:   string
		path_params?: {...}
	}
}
