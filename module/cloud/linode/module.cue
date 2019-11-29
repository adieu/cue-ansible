package linode

linode :: {
	when?: string
	tags?: [...string]
	become?:   bool
	name?:     string
	register?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	linode: {
		plan?:                    string
		state?:                   string
		swap?:                    string
		alert_cpu_enabled?:       bool
		name:                     string
		wait_timeout?:            string
		alert_bwout_threshold?:   string
		backupweeklyday?:         string
		watchdog?:                bool
		alert_bwout_enabled?:     bool
		alert_diskio_enabled?:    bool
		distribution?:            string
		kernel_id?:               string
		alert_bwquota_threshold?: string
		alert_cpu_threshold?:     string
		additional_disks?:        string
		alert_bwin_enabled?:      bool
		private_ip?:              bool
		password?:                string
		payment_term?:            string
		ssh_pub_key?:             string
		wait?:                    bool
		alert_bwin_threshold?:    string
		api_key?:                 string
		datacenter?:              string
		displaygroup?:            string
		alert_bwquota_enabled?:   bool
		alert_diskio_threshold?:  string
		linode_id?:               string
	}
}

linode_v4 :: {
	when?: string
	tags?: [...string]
	become?:   bool
	name?:     string
	register?: string
	vars?: {...}
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	linode_v4: {
		state: string
		authorized_keys?: [...]
		group?:       string
		region?:      string
		root_pass?:   string
		type?:        string
		access_token: string
		image?:       string
		label:        string
		tags?: [...]
	}
}
