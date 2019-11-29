package system

xfs_quota :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	xfs_quota: {
		rtbsoft?:   string
		state?:     string
		type:       string
		bhard?:     string
		bsoft?:     string
		isoft?:     int
		mountpoint: string
		ihard?:     int
		name?:      string
		rtbhard?:   string
	}
}

gather_facts :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	gather_facts: {
		parallel?: bool
	}
}

open_iscsi :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	open_iscsi: {
		auto_node_startup?: bool
		login?:             bool
		node_user?:         string
		target?:            string
		portal?:            string
		show_nodes?:        bool
		discover?:          bool
		node_auth?:         string
		node_pass?:         string
		port?:              string
	}
}

user :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	user: {
		hidden?:           bool
		name:              string
		profile?:          string
		shell?:            string
		state?:            string
		generate_ssh_key?: bool
		seuser?:           string
		ssh_key_file?:     string
		append?:           bool
		expires?:          float
		non_unique?:       bool
		authorization?:    string
		group?:            string
		groups?: [...]
		login_class?:        string
		create_home?:        bool
		move_home?:          bool
		password?:           string
		ssh_key_passphrase?: string
		update_password?:    string
		password_lock?:      bool
		ssh_key_comment?:    string
		comment?:            string
		home?:               string
		local?:              bool
		remove?:             bool
		system?:             bool
		force?:              bool
		role?:               string
		skeleton?:           string
		ssh_key_bits?:       int
		ssh_key_type?:       string
		uid?:                int
	}
}

syspatch :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	syspatch: {
		apply?:  string
		revert?: string
	}
}

filesystem :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	filesystem: {
		dev:       string
		force?:    bool
		fstype:    string
		opts?:     string
		resizefs?: bool
	}
}

pamd :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	pamd: {
		path?:   string
		type:    string
		name:    string
		control: string
		module_arguments?: [...]
		module_path:      string
		new_control?:     string
		new_module_path?: string
		new_type?:        string
		state?:           string
		backup?:          bool
	}
}

ping :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	ping: {
		data?: string
	}
}

crypttab :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	crypttab: {
		state:           string
		backing_device?: string
		name:            string
		opts?:           string
		password?:       string
		path?:           string
	}
}

puppet :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	puppet: {
		timeout?: string
		execute?: string
		facts?: {...}
		logdest?:         string
		puppetmaster?:    string
		summarize?:       bool
		use_srv_records?: bool
		certname?:        string
		manifest?:        string
		modulepath?:      string
		noop?:            bool
		tags?: [...]
		verbose?:         bool
		debug?:           bool
		environment?:     string
		facter_basename?: string
	}
}

setup :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	setup: {
		fact_path?:      string
		filter?:         string
		gather_subset?:  string
		gather_timeout?: string
	}
}

timezone :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	timezone: {
		hwclock?: string
		name?:    string
	}
}

getent :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	getent: {
		database:  string
		fail_key?: bool
		key?:      string
		service?:  string
		split?:    string
	}
}

lvg :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	lvg: {
		state?:      string
		vg:          string
		vg_options?: string
		force?:      bool
		pesize?:     string
		pv_options?: string
		pvs?: [...]
	}
}

selinux_permissive :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	selinux_permissive: {
		domain:     string
		no_reload?: bool
		permissive: bool
		store?:     string
	}
}

java_cert :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	java_cert: {
		cert_path?:       string
		keystore_create?: bool
		keystore_pass:    string
		pkcs12_path?:     string
		trust_cacert?:    bool
		executable?:      string
		keystore_path?:   string
		keystore_type?:   string
		pkcs12_alias?:    string
		cert_alias?:      string
		cert_port?:       int
		cert_url?:        string
		pkcs12_password?: string
		state?:           string
	}
}

modprobe :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	modprobe: {
		name:    string
		params?: string
		state?:  string
	}
}

pam_limits :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	pam_limits: {
		comment?:   string
		domain:     string
		limit_item: string
		limit_type: string
		use_min?:   bool
		value:      string
		backup?:    bool
		dest?:      string
		use_max?:   bool
	}
}

solaris_zone :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	solaris_zone: {
		path?:            string
		root_password?:   string
		sparse?:          bool
		create_options?:  string
		install_options?: string
		name:             string
		timeout?:         int
		attach_options?:  string
		config?:          string
		state:            string
	}
}

ufw :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	ufw: {
		from_ip?:            string
		from_port?:          string
		comment?:            string
		default?:            string
		to_ip?:              string
		to_port?:            string
		insert?:             int
		logging?:            string
		name?:               string
		rule?:               string
		log?:                bool
		proto?:              string
		route?:              bool
		state?:              string
		delete?:             bool
		direction?:          string
		insert_relative_to?: string
		interface?:          string
	}
}

dconf :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	dconf: {
		key:    string
		state?: string
		value?: string
	}
}

firewalld :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	firewalld: {
		immediate?:            bool
		masquerade?:           string
		interface?:            string
		offline?:              bool
		icmp_block_inversion?: string
		port?:                 string
		service?:              string
		state:                 string
		timeout?:              int
		zone?:                 string
		icmp_block?:           string
		permanent?:            bool
		rich_rule?:            string
		source?:               string
	}
}

gconftool2 :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	gconftool2: {
		state:          string
		value?:         string
		value_type?:    string
		config_source?: string
		direct?:        bool
		key:            string
	}
}

xfconf :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	xfconf: {
		state?:      string
		value?:      string
		value_type?: string
		channel:     string
		property:    string
	}
}

cronvar :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	cronvar: {
		user?:         string
		value?:        string
		backup?:       bool
		cron_file?:    string
		insertafter?:  string
		insertbefore?: string
		name:          string
		state?:        string
	}
}

lvol :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	lvol: {
		state?:    string
		thinpool?: string
		vg?:       string
		lv?:       string
		opts?:     string
		resizefs?: bool
		size?:     string
		snapshot?: string
		active?:   bool
		force?:    bool
		pvs?:      string
		shrink?:   bool
	}
}

sysctl :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	sysctl: {
		sysctl_set?:   bool
		value?:        string
		ignoreerrors?: bool
		name:          string
		reload?:       bool
		state?:        string
		sysctl_file?:  string
	}
}

parted :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	parted: {
		number?:     int
		part_start?: string
		part_type?:  string
		state?:      string
		align?:      string
		label?:      string
		name?:       string
		part_end?:   string
		unit?:       string
		device:      string
		flags?: [...]
	}
}

pids :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	pids: {
		name: string
	}
}

seboolean :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	seboolean: {
		ignore_selinux_state?: bool
		name:                  string
		persistent?:           bool
		state:                 bool
	}
}

selinux :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	selinux: {
		configfile?: string
		policy?:     string
		state:       string
	}
}

svc :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	svc: {
		service_dir?: string
		service_src?: string
		state?:       string
		downed?:      bool
		enabled?:     bool
		name:         string
	}
}

at :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	at: {
		units:        string
		command?:     string
		count:        int
		script_file?: string
		state?:       string
		unique?:      bool
	}
}

beadm :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	beadm: {
		state?:       string
		description?: string
		force?:       bool
		mountpoint?:  string
		name:         string
		options?:     string
		snapshot?:    string
	}
}

hostname :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	hostname: {
		name: string
		use?: string
	}
}

aix_lvg :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	aix_lvg: {
		state?:   string
		vg:       string
		vg_type?: string
		force?:   bool
		pp_size?: int
		pvs?: [...]
	}
}

openwrt_init :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	openwrt_init: {
		pattern?: string
		state?:   string
		enabled?: bool
		name:     string
	}
}

make :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	make: {
		file?: string
		params?: {...}
		target?: string
		chdir:   string
	}
}

reboot :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	reboot: {
		connect_timeout?:   int
		msg?:               string
		post_reboot_delay?: int
		pre_reboot_delay?:  int
		reboot_timeout?:    int
		search_paths?: [...]
		test_command?: string
	}
}

systemd :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	systemd: {
		scope?:         string
		daemon_reload?: bool
		enabled?:       bool
		force?:         bool
		name?:          string
		no_block?:      bool
		daemon_reexec?: bool
		masked?:        bool
		state?:         string
		user?:          bool
	}
}

authorized_key :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	authorized_key: {
		path?:           string
		user:            string
		comment?:        string
		key:             string
		manage_dir?:     bool
		state?:          string
		validate_certs?: bool
		exclusive?:      bool
		follow?:         bool
		key_options?:    string
	}
}

debconf :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	debconf: {
		question?: string
		unseen?:   bool
		value?:    string
		vtype?:    string
		name:      string
	}
}

interfaces_file :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	interfaces_file: {
		address_family?: string
		backup?:         bool
		dest?:           string
		iface?:          string
		option?:         string
		state?:          string
		value?:          string
	}
}

mksysb :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	mksysb: {
		exclude_files?:      bool
		exclude_wpar_files?: bool
		name:                string
		software_packing?:   bool
		backup_crypt_files?: bool
		create_map_files?:   bool
		extended_attrs?:     bool
		new_image_data?:     bool
		storage_path:        string
		use_snapshot?:       bool
		backup_dmapi_fs?:    bool
	}
}

python_requirements_info :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	python_requirements_info: {
		dependencies?: string
	}
}

sysvinit :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	sysvinit: {
		sleep?:     string
		state?:     string
		arguments?: string
		daemonize?: bool
		enabled?:   bool
		name:       string
		pattern?:   string
		runlevels?: string
	}
}

aix_devices :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	aix_devices: {
		attributes?: {...}
		device:     string
		force?:     bool
		recursive?: bool
		state?:     string
	}
}

aix_filesystem :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	aix_filesystem: {
		auto_mount?:        bool
		device?:            string
		fs_type?:           string
		mount_group?:       string
		permissions?:       string
		size?:              string
		account_subsystem?: bool
		attributes?: [...]
		rm_mount_point?: bool
		state:           string
		vg?:             string
		filesystem:      string
		nfs_server?:     string
	}
}

listen_ports_facts :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	listen_ports_facts: {
	}
}

mount :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	mount: {
		state:   string
		backup?: bool
		boot?:   bool
		dump?:   string
		fstab?:  string
		passno?: string
		fstype?: string
		opts?:   string
		path:    string
		src?:    string
	}
}

ohai :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	ohai: {
	}
}

vdo :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	vdo: {
		compression?:       string
		growphysical?:      bool
		indexmem?:          string
		logicalsize?:       string
		physicalthreads?:   string
		readcache?:         string
		running?:           bool
		slabsize?:          string
		state:              string
		ackthreads?:        string
		indexmode?:         string
		writepolicy?:       string
		biothreads?:        string
		device?:            string
		logicalthreads?:    string
		name:               string
		readcachesize?:     string
		activated?:         bool
		blockmapcachesize?: string
		cputhreads?:        string
		deduplication?:     string
		emulate512?:        bool
	}
}

facter :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	facter: {
	}
}

iptables :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	iptables: {
		log_level?:   string
		reject_with?: string
		state?:       string
		goto?:        string
		match?: [...]
		source?:        string
		to_ports?:      string
		uid_owner?:     string
		destination?:   string
		fragment?:      string
		gateway?:       string
		ip_version?:    string
		rule_num?:      string
		wait?:          string
		icmp_type?:     string
		jump?:          string
		source_port?:   string
		src_range?:     string
		syn?:           string
		dst_range?:     string
		flush?:         bool
		gid_owner?:     string
		set_dscp_mark?: string
		table?:         string
		tcp_flags?: {...}
		to_source?:           string
		action?:              string
		chain?:               string
		limit?:               string
		protocol?:            string
		to_destination?:      string
		limit_burst?:         string
		log_prefix?:          string
		policy?:              string
		set_counters?:        string
		set_dscp_mark_class?: string
		ctstate?: [...]
		destination_port?: string
		in_interface?:     string
		comment?:          string
		out_interface?:    string
	}
}

kernel_blacklist :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	kernel_blacklist: {
		name:            string
		state?:          string
		blacklist_file?: string
	}
}

capabilities :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	capabilities: {
		capability: string
		path:       string
		state?:     string
	}
}

service_facts :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	service_facts: {
	}
}

awall :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	awall: {
		activate?: bool
		name?: [...]
		state?: string
	}
}

cron :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	cron: {
		special_time?: string
		backup?:       bool
		insertbefore?: string
		insertafter?:  string
		job?:          string
		minute?:       string
		reboot?:       bool
		env?:          bool
		hour?:         string
		name?:         string
		user?:         string
		weekday?:      string
		day?:          string
		disabled?:     bool
		state?:        string
		cron_file?:    string
		month?:        string
	}
}

java_keystore :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	java_keystore: {
		force?:      bool
		group?:      string
		password:    string
		certificate: string
		mode?:       string
		name:        string
		owner?:      string
		private_key: string
		dest:        string
	}
}

known_hosts :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	known_hosts: {
		name:       string
		path?:      string
		state?:     string
		hash_host?: bool
		key?:       string
	}
}

runit :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	runit: {
		enabled?:     bool
		name:         string
		service_dir?: string
		service_src?: string
		state?:       string
	}
}

sefcontext :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	sefcontext: {
		seuser?:               string
		state?:                string
		target:                string
		ftype?:                string
		ignore_selinux_state?: bool
		reload?:               bool
		selevel?:              string
		setype:                string
	}
}

aix_inittab :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	aix_inittab: {
		action:       string
		command:      string
		insertafter?: string
		name:         string
		runlevel:     string
		state?:       string
	}
}

aix_lvol :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	aix_lvol: {
		vg:       string
		copies?:  int
		lv:       string
		lv_type?: string
		pvs?: [...]
		size?:   string
		state?:  string
		opts?:   string
		policy?: string
	}
}

alternatives :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	alternatives: {
		link?:     string
		name:      string
		path:      string
		priority?: int
	}
}

seport :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	seport: {
		state?:                string
		ignore_selinux_state?: bool
		ports: [...]
		proto:   string
		reload?: bool
		setype:  string
	}
}

service :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	service: {
		name:       string
		pattern?:   string
		runlevel?:  string
		sleep?:     int
		state?:     string
		use?:       string
		arguments?: string
		enabled?:   bool
	}
}

nosh :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	nosh: {
		user?:    bool
		enabled?: bool
		name:     string
		preset?:  bool
		state?:   string
	}
}

osx_defaults :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	osx_defaults: {
		domain?:    string
		host?:      string
		key:        string
		path?:      string
		state?:     string
		type?:      string
		value?:     _
		array_add?: bool
	}
}

selogin :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	selogin: {
		reload?:               string
		selevel?:              string
		seuser:                string
		state:                 string
		ignore_selinux_state?: bool
		login:                 string
	}
}

group :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	group: {
		state?:      string
		system?:     bool
		gid?:        int
		local?:      bool
		name:        string
		non_unique?: bool
	}
}

locale_gen :: {
	name?: string
	vars?: {...}
	when?:       string
	connection?: string
	register?:   string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	become?: bool
	locale_gen: {
		name:   string
		state?: string
	}
}
