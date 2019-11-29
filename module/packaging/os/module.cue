package os

yum :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	yum: {
		enablerepo?:        string
		install_weak_deps?: bool
		releasever?:        string
		security?:          bool
		state?:             string
		allow_downgrade?:   bool
		download_only?:     bool
		enable_plugin?:     string
		disablerepo?:       string
		download_dir?:      string
		exclude?:           string
		installroot?:       string
		lock_timeout?:      int
		bugfix?:            string
		disable_excludes?:  string
		disable_plugin?:    string
		skip_broken?:       bool
		list?:              string
		update_only?:       bool
		name?:              string
		update_cache?:      bool
		use_backend?:       string
		validate_certs?:    bool
		autoremove?:        bool
		conf_file?:         string
		disable_gpg_check?: bool
	}
}

apt_key :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	apt_key: {
		state?:          string
		url?:            string
		validate_certs?: bool
		data?:           string
		file?:           string
		id?:             string
		keyring?:        string
		keyserver?:      string
	}
}

installp :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	installp: {
		accept_license?: bool
		name: [...]
		repository_path?: string
		state?:           string
	}
}

macports :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	macports: {
		variant?: string
		name?: [...string]
		selfupdate?: bool
		state?:      string
		upgrade?:    bool
	}
}

opkg :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	opkg: {
		name:          string
		state?:        string
		update_cache?: bool
		force?:        string
	}
}

package_facts :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	package_facts: {
		manager?: [...]
		strategy?: string
	}
}

rhsm_repository :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	rhsm_repository: {
		name:   string
		purge?: bool
		state:  string
	}
}

xbps :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	xbps: {
		state?:        string
		update_cache?: bool
		upgrade?:      bool
		name?:         string
		recurse?:      bool
	}
}

dpkg_selections :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	dpkg_selections: {
		name:      string
		selection: string
	}
}

layman :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	layman: {
		list_url?:       string
		name:            string
		state?:          string
		validate_certs?: bool
	}
}

rhn_channel :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	rhn_channel: {
		url:      string
		user:     string
		name:     string
		password: string
		state?:   string
		sysname:  string
	}
}

zypper :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	zypper: {
		force?:                 bool
		name:                   string
		oldpackage?:            bool
		state?:                 string
		type?:                  string
		update_cache?:          bool
		disable_gpg_check?:     bool
		extra_args_precommand?: string
		force_resolution?:      bool
		disable_recommends?:    bool
		extra_args?:            string
	}
}

zypper_repository :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	zypper_repository: {
		enabled?:            bool
		description?:        string
		disable_gpg_check?:  bool
		name?:               string
		overwrite_multiple?: bool
		priority?:           string
		repo?:               string
		auto_import_keys?:   bool
		autorefresh?:        bool
		runrefresh?:         bool
		state?:              string
	}
}

pkgutil :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	pkgutil: {
		update_catalog?: bool
		name:            string
		site?:           string
		state:           string
	}
}

pulp_repo :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	pulp_repo: {
		name:                    string
		pulp_host?:              string
		relative_url:            string
		feed_ca_cert?:           string
		force_basic_auth?:       bool
		generate_sqlite?:        bool
		proxy_port?:             string
		proxy_username?:         string
		serve_https?:            bool
		add_export_distributor?: bool
		feed_client_key?:        string
		proxy_password?:         string
		serve_http?:             bool
		state?:                  string
		url_password?:           string
		url_username?:           string
		validate_certs?:         bool
		feed_client_cert?:       string
		proxy_host?:             string
		repo_type?:              string
		repoview?:               bool
		wait_for_completion?:    bool
		feed?:                   string
		publish_distributor?:    string
	}
}

rpm_key :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	rpm_key: {
		fingerprint?:    string
		key:             string
		state?:          string
		validate_certs?: bool
	}
}

snap :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	snap: {
		channel?: string
		classic?: bool
		name:     string
		state?:   string
	}
}

homebrew_cask :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	homebrew_cask: {
		accept_external_apps?: bool
		state?:                string
		upgrade?:              bool
		upgrade_all?:          bool
		greedy?:               bool
		install_options?:      string
		name:                  string
		path?:                 string
		sudo_password?:        string
		update_homebrew?:      bool
	}
}

pkgin :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	pkgin: {
		clean?:        bool
		force?:        bool
		full_upgrade?: bool
		name?:         string
		state?:        string
		update_cache?: bool
		upgrade?:      bool
	}
}

swdepot :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	swdepot: {
		depot?: string
		name:   string
		state:  string
	}
}

urpmi :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	urpmi: {
		force?:           bool
		name:             string
		`no-recommends`?: bool
		root?:            string
		state?:           string
		update_cache?:    bool
	}
}

slackpkg :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	slackpkg: {
		name:          string
		state?:        string
		update_cache?: bool
	}
}

apk :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	apk: {
		available?: bool
		name?: [...string]
		repository?:   string
		state?:        string
		update_cache?: bool
		upgrade?:      bool
	}
}

apt_repo :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	apt_repo: {
		repo:           string
		state?:         string
		update?:        bool
		remove_others?: bool
	}
}

apt_rpm :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	apt_rpm: {
		state?:        string
		update_cache?: bool
		pkg:           string
	}
}

dnf :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	dnf: {
		allow_downgrade?:   bool
		conf_file?:         string
		download_dir?:      string
		releasever?:        string
		enablerepo?:        string
		exclude?:           string
		security?:          bool
		skip_broken?:       bool
		bugfix?:            bool
		disable_excludes?:  string
		disable_gpg_check?: bool
		disable_plugin?:    string
		disablerepo?:       string
		enable_plugin?:     string
		install_repoquery?: bool
		install_weak_deps?: bool
		installroot?:       string
		list?:              string
		state?:             string
		update_cache?:      bool
		update_only?:       bool
		autoremove?:        bool
		download_only?:     bool
		lock_timeout?:      int
		name:               string
		validate_certs?:    bool
	}
}

flatpak :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	flatpak: {
		name:        string
		remote?:     string
		state?:      string
		executable?: string
		method?:     string
	}
}

homebrew_tap :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	homebrew_tap: {
		state?: string
		url?:   string
		name:   string
	}
}

rhn_register :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	rhn_register: {
		nopackages?: bool
		password?:   string
		username?:   string
		ca_cert?:    string
		channels?: [...]
		profilename?:   string
		server_url?:    string
		state?:         string
		systemorgid?:   string
		activationkey?: string
		enable_eus?:    bool
	}
}

yum_repository :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	yum_repository: {
		password?:                     string
		repo_gpgcheck?:                bool
		retries?:                      string
		skip_if_unavailable?:          bool
		baseurl?:                      string
		description?:                  string
		enabled?:                      bool
		includepkgs?:                  string
		state?:                        string
		timeout?:                      string
		bandwidth?:                    string
		protect?:                      bool
		proxy?:                        string
		sslclientkey?:                 string
		http_caching?:                 string
		include?:                      string
		ip_resolve?:                   string
		metadata_expire?:              string
		cost?:                         string
		deltarpm_percentage?:          string
		failovermethod?:               string
		gpgcheck?:                     bool
		proxy_password?:               string
		sslclientcert?:                string
		ui_repoid_vars?:               string
		ssl_check_cert_permissions?:   bool
		enablegroups?:                 bool
		keepcache?:                    string
		mirrorlist?:                   string
		mirrorlist_expire?:            string
		throttle?:                     string
		keepalive?:                    bool
		metalink?:                     string
		name:                          string
		s3_enabled?:                   bool
		deltarpm_metadata_percentage?: string
		proxy_username?:               string
		reposdir?:                     string
		sslverify?:                    bool
		async?:                        bool
		exclude?:                      string
		gpgkey?:                       string
		metadata_expire_filter?:       string
		username?:                     string
		file?:                         string
		gpgcakey?:                     string
		priority?:                     string
		sslcacert?:                    string
	}
}

homebrew :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	homebrew: {
		state?:           string
		update_homebrew?: bool
		upgrade_all?:     bool
		install_options?: string
		name?: [...string]
		path?: string
	}
}

pacman :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	pacman: {
		extra_args?: string
		force?:      bool
		name?: [...string]
		state?:                   string
		update_cache?:            bool
		update_cache_extra_args?: string
		upgrade?:                 bool
		upgrade_extra_args?:      string
	}
}

portage :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	portage: {
		verbose?:     bool
		changed_use?: bool
		getbinpkg?:   bool
		jobs?:        string
		package?: [...string]
		quietfail?:  bool
		state?:      string
		update?:     bool
		keepgoing?:  bool
		nodeps?:     bool
		noreplace?:  bool
		oneshot?:    bool
		onlydeps?:   bool
		usepkgonly?: bool
		depclean?:   bool
		loadavg?:    string
		quiet?:      bool
		deep?:       bool
		newuse?:     bool
		quietbuild?: bool
		sync?:       string
	}
}

rhsm_release :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	rhsm_release: {
		release: string
	}
}

svr4pkg :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	svr4pkg: {
		response_file?: string
		src?:           string
		state:          string
		zone?:          string
		category?:      bool
		name:           string
		proxy?:         string
	}
}

apt :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	apt: {
		autoclean?: bool
		deb?:       string
		name?: [...string]
		update_cache?:                 bool
		update_cache_retries?:         int
		allow_unauthenticated?:        bool
		cache_valid_time?:             string
		default_release?:              string
		install_recommends?:           bool
		policy_rc_d?:                  int
		state?:                        string
		autoremove?:                   bool
		dpkg_options?:                 string
		force?:                        bool
		force_apt_get?:                bool
		only_upgrade?:                 bool
		purge?:                        bool
		update_cache_retry_max_delay?: int
		upgrade?:                      string
	}
}

flatpak_remote :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	flatpak_remote: {
		executable?:      string
		flatpakrepo_url?: string
		method?:          string
		name:             string
		state?:           string
	}
}

openbsd_pkg :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	openbsd_pkg: {
		ports_dir?: string
		quick?:     bool
		state?:     string
		build?:     bool
		clean?:     bool
		name:       string
	}
}

package :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	package: {
		name:  string
		state: string
		use?:  string
	}
}

pkg5 :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	pkg5: {
		refresh?:         bool
		state?:           string
		accept_licenses?: bool
		be_name?:         string
		name:             string
	}
}

portinstall :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	portinstall: {
		use_packages?: bool
		name:          string
		state?:        string
	}
}

redhat_subscription :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	redhat_subscription: {
		consumer_type?:         string
		password?:              string
		rhsm_repo_ca_cert?:     string
		state?:                 string
		username?:              string
		activationkey?:         string
		environment?:           string
		org_id?:                string
		release?:               string
		rhsm_baseurl?:          string
		server_proxy_hostname?: string
		auto_attach?:           bool
		consumer_name?:         string
		pool?:                  string
		pool_ids?:              string
		server_hostname?:       string
		server_proxy_port?:     string
		consumer_id?:           string
		force_register?:        bool
		server_insecure?:       string
		server_proxy_password?: string
		server_proxy_user?:     string
		syspurpose?: {...}
	}
}

apt_repository :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	apt_repository: {
		mode?:                         string
		repo:                          string
		update_cache?:                 bool
		validate_certs?:               bool
		codename?:                     string
		filename?:                     string
		state?:                        string
		update_cache_retries?:         int
		update_cache_retry_max_delay?: int
	}
}

pkg5_publisher :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	pkg5_publisher: {
		sticky?:  bool
		enabled?: bool
		mirror?:  string
		name:     string
		origin?:  string
		state?:   string
	}
}

pkgng :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	pkgng: {
		rootdir?:    string
		autoremove?: bool
		cached?:     bool
		chroot?:     string
		jail?:       string
		pkgsite?:    string
		annotation?: string
		name:        string
		state?:      string
	}
}

sorcery :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	sorcery: {
		cache_valid_time?: string
		depends?:          string
		name?:             string
		state?:            string
		update?:           bool
		update_cache?:     bool
	}
}

swupd :: {
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	register?:   string
	tags?: [...string]
	become?: bool
	swupd: {
		contenturl?: string
		name?:       string
		state?:      string
		url?:        string
		versionurl?: string
		format?:     string
		manifest?:   string
		update?:     bool
		verify?:     bool
	}
}
