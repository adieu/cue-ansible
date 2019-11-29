package radware

vdirect_commit :: {
	name?:     string
	register?: string
	when?:     string
	notify?:   string | [...string]
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vdirect_commit: {
		vdirect_timeout?:      string
		vdirect_http_port?:    string
		vdirect_use_ssl?:      bool
		vdirect_user:          string
		vdirect_wait?:         bool
		save?:                 bool
		validate_certs?:       bool
		sync?:                 bool
		devices:               string
		vdirect_https_port?:   string
		vdirect_ip:            string
		vdirect_password:      string
		vdirect_secondary_ip?: string
		apply?:                bool
	}
}

vdirect_file :: {
	name?:     string
	register?: string
	when?:     string
	notify?:   string | [...string]
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vdirect_file: {
		file_name:             string
		vdirect_https_port?:   string
		vdirect_ip:            string
		vdirect_password:      string
		vdirect_timeout?:      string
		vdirect_wait?:         bool
		validate_certs?:       bool
		vdirect_http_port?:    string
		vdirect_secondary_ip?: string
		vdirect_use_ssl?:      bool
		vdirect_user:          string
	}
}

vdirect_runnable :: {
	name?:     string
	register?: string
	when?:     string
	notify?:   string | [...string]
	vars?: {...}
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	vdirect_runnable: {
		validate_certs?:       bool
		vdirect_https_port?:   string
		vdirect_timeout?:      string
		vdirect_secondary_ip?: string
		vdirect_wait?:         bool
		runnable_name:         string
		runnable_type:         string
		vdirect_http_port?:    string
		vdirect_ip:            string
		vdirect_password:      string
		action_name?:          string
		parameters?:           string
		vdirect_use_ssl?:      bool
		vdirect_user:          string
	}
}
