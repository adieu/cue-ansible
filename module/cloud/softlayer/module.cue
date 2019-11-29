package softlayer

sl_vm :: {
	vars?: {...}
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?:     bool
	register?:   string
	when?:       string
	connection?: string
	name?:       string
	sl_vm: {
		local_disk?:   bool
		post_uri?:     string
		state?:        string
		wait?:         bool
		private?:      bool
		public_vlan?:  string
		tags?:         string
		cpus:          string
		domain?:       string
		hostname?:     string
		instance_id?:  string
		nic_speed?:    string
		datacenter?:   string
		flavor?:       string
		hourly?:       bool
		os_code?:      string
		private_vlan?: string
		wait_time?:    string
		dedicated?:    bool
		disks:         string
		image_id?:     string
		memory:        string
		ssh_keys?:     string
	}
}
