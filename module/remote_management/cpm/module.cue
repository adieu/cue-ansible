package cpm

cpm_plugconfig :: {
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	cpm_plugconfig: {
		cpm_url:            string
		cpm_username?:      string
		plug_bootdelay?:    string
		plug_bootpriority?: string
		plug_default?:      string
		plug_id:            string
		cpm_action:         string
		cpm_password?:      string
		validate_certs?:    bool
		plug_name?:         string
		use_https?:         bool
		use_proxy?:         bool
	}
}

cpm_plugcontrol :: {
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	cpm_plugcontrol: {
		use_https?:      bool
		cpm_action:      string
		cpm_password?:   string
		cpm_url:         string
		cpm_username?:   string
		plug_id:         string
		plug_state?:     string
		use_proxy?:      bool
		validate_certs?: bool
	}
}

cpm_serial_port_config :: {
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	cpm_serial_port_config: {
		cpm_password:    string
		cpm_url:         string
		seq?:            string
		use_https?:      bool
		parity?:         string
		tout?:           string
		baud?:           string
		break_allow?:    string
		echo?:           string
		handshake?:      string
		mode?:           string
		logoff?:         string
		port:            int
		portname?:       string
		stopbits?:       string
		cmd?:            string
		cpm_username:    string
		use_proxy?:      bool
		validate_certs?: bool
	}
}

cpm_serial_port_info :: {
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	cpm_serial_port_info: {
		cpm_password: string
		cpm_url:      string
		cpm_username: string
		port: [...]
		use_https?:      bool
		use_proxy?:      bool
		validate_certs?: bool
	}
}

cpm_user :: {
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	cpm_user: {
		cpm_action:           string
		cpm_password:         string
		user_accessoutbound?: string
		user_accessssh?:      string
		user_name:            string
		user_pass?:           string
		user_portaccess?:     string
		validate_certs?:      bool
		cpm_username:         string
		user_accessmonitor?:  string
		user_accessserial?:   string
		user_accessweb?:      string
		user_callbackphone?:  string
		user_groupaccess?:    string
		user_plugaccess?:     string
		cpm_url:              string
		use_https?:           bool
		use_proxy?:           bool
		user_accessapi?:      string
		user_accesslevel?:    string
	}
}

wakeonlan :: {
	register?: string
	vars?: {...}
	with_items?: [...string]
	connection?: string
	become?:     bool
	name?:       string
	when?:       string
	tags?: [...string]
	notify?: string | [...string]
	wakeonlan: {
		broadcast?: string
		mac:        string
		port?:      string
	}
}
