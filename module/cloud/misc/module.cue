package misc

proxmox :: {
	become?: bool
	name?:   string
	tags?: [...string]
	with_items?: [...string]
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	proxmox: {
		api_password?:   string
		hostname?:       string
		node?:           string
		ostemplate?:     string
		storage?:        string
		nameserver?:     string
		netif?:          string
		api_host:        string
		ip_address?:     string
		mounts?:         string
		password?:       string
		timeout?:        string
		force?:          bool
		cpus?:           string
		disk?:           string
		state?:          string
		unprivileged?:   bool
		vmid?:           string
		api_user:        string
		memory?:         string
		pubkey?:         string
		validate_certs?: bool
		cores?:          string
		cpuunits?:       string
		onboot?:         bool
		pool?:           string
		searchdomain?:   string
		swap?:           string
	}
}

proxmox_template :: {
	become?: bool
	name?:   string
	tags?: [...string]
	with_items?: [...string]
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	proxmox_template: {
		api_password?:   string
		api_user:        string
		content_type?:   string
		state?:          string
		template?:       string
		timeout?:        string
		api_host:        string
		force?:          bool
		node:            string
		src?:            string
		storage?:        string
		validate_certs?: bool
	}
}

rhevm :: {
	become?: bool
	name?:   string
	tags?: [...string]
	with_items?: [...string]
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	rhevm: {
		cd_drive?: string
		ifaces?: [...]
		image?:     string
		type?:      string
		cluster?:   string
		cpu_share?: int
		osver?:     string
		password?:  string
		timeout?:   int
		vm_ha?:     bool
		vmmem?:     int
		del_prot?:  bool
		disks?: [...]
		vmhost?: string
		boot_order?: [...]
		datacenter?:   string
		insecure_api?: bool
		mempol?:       int
		name?:         string
		port?:         int
		server?:       string
		state?:        string
		user?:         string
		vmcpu?:        int
	}
}

terraform :: {
	become?: bool
	name?:   string
	tags?: [...string]
	with_items?: [...string]
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	terraform: {
		lock?:            bool
		targets?:         string
		variables_file?:  string
		backend_config?:  string
		project_path:     string
		purge_workspace?: bool
		variables?:       string
		binary_path?:     string
		lock_timeout?:    string
		plan_file?:       string
		state?:           string
		state_file?:      string
		workspace?:       string
		force_init?:      bool
	}
}

virt_pool :: {
	become?: bool
	name?:   string
	tags?: [...string]
	with_items?: [...string]
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	virt_pool: {
		autostart?: bool
		command?:   string
		mode?:      string
		name?:      string
		state?:     string
		uri?:       string
		xml?:       string
	}
}

xenserver_facts :: {
	become?: bool
	name?:   string
	tags?: [...string]
	with_items?: [...string]
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	xenserver_facts: {
	}
}

helm :: {
	become?: bool
	name?:   string
	tags?: [...string]
	with_items?: [...string]
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	helm: {
		values?:        string
		chart?:         string
		disable_hooks?: bool
		host?:          string
		name?:          string
		namespace?:     string
		port?:          string
		state?:         string
	}
}

ovirt :: {
	become?: bool
	name?:   string
	tags?: [...string]
	with_items?: [...string]
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	ovirt: {
		instance_disksize?: string
		region?:            string
		state?:             string
		instance_domain?:   string
		instance_name:      string
		instance_os?:       string
		user:               string
		instance_cores?:    string
		instance_netmask?:  string
		instance_network?:  string
		instance_nic?:      string
		zone?:              string
		instance_ip?:       string
		instance_mem?:      string
		resource_type?:     string
		image?:             string
		instance_key?:      string
		instance_rootpw?:   string
		sdomain?:           string
		instance_cpus?:     string
		password:           string
		url:                string
		disk_alloc?:        string
		disk_int?:          string
		instance_dns?:      string
		instance_hostname?: string
		instance_type?:     string
	}
}

serverless :: {
	become?: bool
	name?:   string
	tags?: [...string]
	with_items?: [...string]
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	serverless: {
		functions?: [...]
		serverless_bin_path?: string
		service_path:         string
		state?:               string
		verbose?:             bool
		deploy?:              bool
		force?:               bool
		region?:              string
		stage?:               string
	}
}

virt :: {
	become?: bool
	name?:   string
	tags?: [...string]
	with_items?: [...string]
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	virt: {
		name?:      string
		state?:     string
		uri?:       string
		xml?:       string
		autostart?: bool
		command?:   string
	}
}

virt_net :: {
	become?: bool
	name?:   string
	tags?: [...string]
	with_items?: [...string]
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	virt_net: {
		autostart?: bool
		command?:   string
		name:       string
		state?:     string
		uri?:       string
		xml?:       string
	}
}

cloud_init_data_facts :: {
	become?: bool
	name?:   string
	tags?: [...string]
	with_items?: [...string]
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	cloud_init_data_facts: {
		filter?: string
	}
}

proxmox_kvm :: {
	become?: bool
	name?:   string
	tags?: [...string]
	with_items?: [...string]
	notify?:     string | [...string]
	connection?: string
	register?:   string
	vars?: {...}
	when?: string
	proxmox_kvm: {
		cores?:            string
		protection?:       bool
		tdf?:              bool
		bootdisk?:         string
		keyboard?:         string
		node?:             string
		serial?:           string
		acpi?:             bool
		freeze?:           bool
		hugepages?:        string
		scsihw?:           string
		tablet?:           bool
		digest?:           string
		migrate_speed?:    string
		update?:           bool
		args?:             string
		balloon?:          string
		boot?:             string
		hostpci?:          string
		kvm?:              bool
		parallel?:         string
		reboot?:           bool
		full?:             bool
		newid?:            string
		smbios?:           string
		state?:            string
		api_host:          string
		description?:      string
		startup?:          string
		timeout?:          string
		vcpus?:            string
		startdate?:        string
		target?:           string
		template?:         bool
		virtio?:           string
		vmid?:             string
		agent?:            bool
		sata?:             string
		skiplock?:         string
		pool?:             string
		revert?:           string
		autostart?:        bool
		lock?:             string
		migrate_downtime?: string
		snapname?:         string
		storage?:          string
		api_user:          string
		format?:           string
		net?:              string
		ostype?:           string
		bios?:             string
		cpuunits?:         string
		localtime?:        bool
		name?:             string
		scsi?:             string
		shares?:           string
		vga?:              string
		clone?:            string
		delete?:           string
		hotplug?:          string
		ide?:              string
		numa?:             string
		force?:            bool
		machine?:          string
		memory?:           string
		onboot?:           bool
		api_password?:     string
		cpu?:              string
		cpulimit?:         string
		sockets?:          string
		validate_certs?:   bool
		watchdog?:         string
	}
}
