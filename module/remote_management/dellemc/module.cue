package dellemc

idrac_firmware :: {
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	idrac_firmware: {
		idrac_user:         string
		reboot?:            bool
		share_name:         string
		share_password?:    string
		idrac_ip:           string
		idrac_password:     string
		idrac_port?:        int
		job_wait?:          bool
		share_mnt:          string
		share_user?:        string
		catalog_file_name?: string
	}
}

idrac_server_config_profile :: {
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	idrac_server_config_profile: {
		idrac_ip:              string
		share_name:            string
		shutdown_type?:        string
		end_host_power_state?: string
		export_use?:           string
		job_wait:              bool
		scp_components?:       string
		share_user?:           string
		export_format?:        string
		idrac_user:            string
		idrac_port?:           int
		scp_file?:             string
		share_password?:       string
		command?:              string
		idrac_password:        string
	}
}

ome_device_info :: {
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	ome_device_info: {
		username:     string
		fact_subset?: string
		hostname:     string
		password:     string
		port?:        int
		system_query_options?: {...}
	}
}

wakeonlan :: {
	with_items?: [...string]
	name?:     string
	register?: string
	vars?: {...}
	tags?: [...string]
	when?:       string
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	wakeonlan: {
		broadcast?: string
		mac:        string
		port?:      string
	}
}
