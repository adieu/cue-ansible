package github

hg :: {
	register?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	become?: bool
	hg: {
		executable?: string
		force?:      bool
		purge?:      bool
		repo:        string
		revision?:   string
		update?:     bool
		clone?:      bool
		dest:        string
	}
}

subversion :: {
	register?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	become?: bool
	subversion: {
		dest:        string
		executable?: string
		export?:     bool
		password?:   string
		update?:     bool
		username?:   string
		checkout?:   bool
		force?:      bool
		in_place?:   bool
		repo:        string
		revision?:   string
		switch?:     bool
	}
}

bzr :: {
	register?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	become?: bool
	bzr: {
		dest:        string
		executable?: string
		force?:      bool
		name:        string
		version?:    string
	}
}

git :: {
	register?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	become?: bool
	git: {
		archive?:          string
		bare?:             bool
		depth?:            string
		dest:              string
		force?:            bool
		recursive?:        bool
		repo:              string
		separate_git_dir?: string
		ssh_opts?:         string
		version?:          string
		clone?:            bool
		key_file?:         string
		remote?:           string
		verify_commit?:    bool
		executable?:       string
		track_submodules?: bool
		umask?:            string
		update?:           bool
		accept_hostkey?:   bool
		gpg_whitelist?: [...]
		reference?: string
		refspec?:   string
	}
}

github_issue :: {
	register?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	become?: bool
	github_issue: {
		action?:      string
		issue:        string
		organization: string
		repo:         string
	}
}

github_key :: {
	register?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	become?: bool
	github_key: {
		state?:  string
		token:   string
		force?:  bool
		name:    string
		pubkey?: string
	}
}

github_webhook_info :: {
	register?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	become?: bool
	github_webhook_info: {
		user:        string
		github_url?: string
		password?:   string
		repository:  string
		token?:      string
	}
}

git_config :: {
	register?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	become?: bool
	git_config: {
		value?:    string
		list_all?: bool
		name?:     string
		repo?:     string
		scope?:    string
		state?:    string
	}
}

github_deploy_key :: {
	register?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	become?: bool
	github_deploy_key: {
		force?:     bool
		otp?:       string
		owner:      string
		token?:     string
		username?:  string
		key:        string
		name:       string
		password?:  string
		read_only?: bool
		repo:       string
		state?:     string
	}
}

github_hooks :: {
	register?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	become?: bool
	github_hooks: {
		validate_certs?: bool
		action:          string
		content_type?:   string
		hookurl?:        string
		oauthkey:        string
		repo:            string
		user:            string
	}
}

github_release :: {
	register?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	become?: bool
	github_release: {
		body?:       string
		password?:   string
		prerelease?: bool
		repo:        string
		user:        string
		action:      string
		name?:       string
		tag?:        string
		target?:     string
		token?:      string
		draft?:      bool
	}
}

github_webhook :: {
	register?: string
	tags?: [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	vars?: {...}
	when?:   string
	notify?: string | [...string]
	become?: bool
	github_webhook: {
		content_type?: string
		github_url?:   string
		insecure_ssl?: bool
		state?:        string
		token?:        string
		user:          string
		active?:       bool
		events?:       string
		password?:     string
		repository:    string
		secret?:       string
		url:           string
	}
}
