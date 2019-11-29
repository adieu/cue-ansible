package smartos

vmadm :: {
	name?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	when?: string
	vmadm: {
		dns_domain?:                  string
		nic_driver?:                  string
		tmpfs?:                       string
		internal_metadata_namespace?: string
		qemu_extra_opts?:             string
		resolvers?:                   string
		cpu_type?:                    string
		maintain_resolvers?:          string
		zfs_snapshot_limit?:          string
		indestructible_delegated?:    string
		name?:                        string
		qemu_opts?:                   string
		routes?:                      string
		zpool?:                       string
		max_swap?:                    string
		spice_opts?:                  string
		archive_on_delete?:           string
		ram?:                         string
		zfs_io_priority?:             string
		disks?:                       string
		firewall_enabled?:            string
		internal_metadata?:           string
		vga?:                         string
		zfs_data_recsize?:            string
		boot?:                        string
		mdata_exec_timeout?:          string
		nics?:                        string
		virtio_txtimer?:              string
		zfs_data_compression?:        string
		fs_allowed?:                  string
		spice_password?:              string
		virtio_txburst?:              string
		disk_driver?:                 string
		indestructible_zoneroot?:     string
		vnc_password?:                string
		zfs_filesystem_limit?:        string
		zfs_root_compression?:        string
		autoboot?:                    string
		image_uuid?:                  string
		nowait?:                      string
		zfs_root_recsize?:            string
		delegate_dataset?:            string
		max_lwps?:                    string
		max_physical_memory?:         string
		vnc_port?:                    string
		force?:                       string
		kernel_version?:              string
		quota?:                       string
		hostname?:                    string
		docker?:                      string
		state:                        string
		max_locked_memory?:           string
		uuid?:                        string
		brand:                        string
		cpu_cap?:                     string
		cpu_shares?:                  string
		customer_metadata?:           string
		filesystems?:                 string
		limit_priv?:                  string
		vcpus?:                       string
	}
}

imgadm :: {
	name?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	when?: string
	imgadm: {
		type?:   string
		uuid?:   string
		force?:  bool
		pool?:   string
		source?: string
		state:   string
	}
}

nictagadm :: {
	name?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	when?: string
	nictagadm: {
		mtu?:       int
		name:       string
		state?:     string
		etherstub?: bool
		force?:     bool
		mac?:       string
	}
}

smartos_image_info :: {
	name?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	become?:     bool
	register?:   string
	vars?: {...}
	when?: string
	smartos_image_info: {
		filters?: string
	}
}
