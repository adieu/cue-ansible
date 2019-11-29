package language

npm :: {
	tags?: [...string]
	notify?:   string | [...string]
	register?: string
	vars?: {...}
	when?:   string
	become?: bool
	name?:   string
	with_items?: [...string]
	connection?: string
	npm: {
		ci?:             bool
		global?:         bool
		name?:           string
		path?:           string
		state?:          string
		unsafe_perm?:    bool
		executable?:     string
		ignore_scripts?: bool
		production?:     bool
		registry?:       string
		version?:        string
	}
}

pear :: {
	tags?: [...string]
	notify?:   string | [...string]
	register?: string
	vars?: {...}
	when?:   string
	become?: bool
	name?:   string
	with_items?: [...string]
	connection?: string
	pear: {
		executable?: string
		name:        string
		state?:      string
	}
}

pip :: {
	tags?: [...string]
	notify?:   string | [...string]
	register?: string
	vars?: {...}
	when?:   string
	become?: bool
	name?:   string
	with_items?: [...string]
	connection?: string
	pip: {
		virtualenv_site_packages?: bool
		executable?:               string
		extra_args?:               string
		requirements?:             string
		state?:                    string
		virtualenv?:               string
		virtualenv_python?:        string
		chdir?:                    string
		editable?:                 bool
		name?: [...]
		umask?:              string
		version?:            string
		virtualenv_command?: string
	}
}

pip_package_info :: {
	tags?: [...string]
	notify?:   string | [...string]
	register?: string
	vars?: {...}
	when?:   string
	become?: bool
	name?:   string
	with_items?: [...string]
	connection?: string
	pip_package_info: {
		clients?: [...]
	}
}

yarn :: {
	tags?: [...string]
	notify?:   string | [...string]
	register?: string
	vars?: {...}
	when?:   string
	become?: bool
	name?:   string
	with_items?: [...string]
	connection?: string
	yarn: {
		global?:         bool
		production?:     bool
		registry?:       string
		state?:          string
		version?:        string
		executable?:     string
		ignore_scripts?: bool
		name?:           string
		path?:           string
	}
}

bundler :: {
	tags?: [...string]
	notify?:   string | [...string]
	register?: string
	vars?: {...}
	when?:   string
	become?: bool
	name?:   string
	with_items?: [...string]
	connection?: string
	bundler: {
		chdir?:             string
		clean?:             bool
		deployment_mode?:   bool
		exclude_groups?:    string
		extra_args?:        string
		gemfile?:           string
		binstub_directory?: string
		executable?:        string
		gem_path?:          string
		local?:             bool
		state?:             string
		user_install?:      bool
	}
}

easy_install :: {
	tags?: [...string]
	notify?:   string | [...string]
	register?: string
	vars?: {...}
	when?:   string
	become?: bool
	name?:   string
	with_items?: [...string]
	connection?: string
	easy_install: {
		virtualenv?:               string
		virtualenv_command?:       string
		virtualenv_site_packages?: bool
		executable?:               string
		name:                      string
		state?:                    string
	}
}

cpanm :: {
	tags?: [...string]
	notify?:   string | [...string]
	register?: string
	vars?: {...}
	when?:   string
	become?: bool
	name?:   string
	with_items?: [...string]
	connection?: string
	cpanm: {
		installdeps?: bool
		mirror?:      string
		name?:        string
		notest?:      bool
		executable?:  string
		from_path?:   string
		system_lib?:  bool
		version?:     string
		locallib?:    string
		mirror_only?: bool
	}
}

gem :: {
	tags?: [...string]
	notify?:   string | [...string]
	register?: string
	vars?: {...}
	when?:   string
	become?: bool
	name?:   string
	with_items?: [...string]
	connection?: string
	gem: {
		version?:              string
		gem_source?:           string
		repository?:           string
		state?:                string
		user_install?:         bool
		env_shebang?:          bool
		force?:                bool
		include_dependencies?: bool
		include_doc?:          bool
		install_dir?:          string
		name:                  string
		build_flags?:          string
		executable?:           string
		pre_release?:          bool
	}
}

maven_artifact :: {
	tags?: [...string]
	notify?:   string | [...string]
	register?: string
	vars?: {...}
	when?:   string
	become?: bool
	name?:   string
	with_items?: [...string]
	connection?: string
	maven_artifact: {
		artifact_id:      string
		classifier?:      string
		group_id:         string
		keep_name?:       bool
		validate_certs?:  bool
		version?:         string
		version_by_spec?: string
		repository_url?:  string
		state?:           string
		dest:             string
		timeout?:         string
		username?:        string
		verify_checksum?: string
		extension?:       string
		headers?: {...}
		password?: string
	}
}

bower :: {
	tags?: [...string]
	notify?:   string | [...string]
	register?: string
	vars?: {...}
	when?:   string
	become?: bool
	name?:   string
	with_items?: [...string]
	connection?: string
	bower: {
		version?:           string
		name?:              string
		offline?:           bool
		path:               string
		production?:        bool
		relative_execpath?: string
		state?:             string
	}
}

composer :: {
	tags?: [...string]
	notify?:   string | [...string]
	register?: string
	vars?: {...}
	when?:   string
	become?: bool
	name?:   string
	with_items?: [...string]
	connection?: string
	composer: {
		working_dir?:            string
		apcu_autoloader?:        bool
		command?:                string
		no_dev?:                 bool
		arguments?:              string
		classmap_authoritative?: bool
		no_scripts?:             bool
		optimize_autoloader?:    bool
		prefer_dist?:            bool
		no_plugins?:             bool
		prefer_source?:          bool
		executable?:             string
		global_command?:         bool
		ignore_platform_reqs?:   bool
	}
}
