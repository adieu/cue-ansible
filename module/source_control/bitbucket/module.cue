package bitbucket

subversion :: {
	with_items?: [...string]
	become?: bool
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	subversion: {
		export?:     bool
		update?:     bool
		username?:   string
		revision?:   string
		checkout?:   bool
		dest:        string
		executable?: string
		force?:      bool
		in_place?:   bool
		password?:   string
		repo:        string
		switch?:     bool
	}
}

bitbucket_access_key :: {
	with_items?: [...string]
	become?: bool
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	bitbucket_access_key: {
		client_secret?: string
		key?:           string
		label:          string
		repository:     string
		state:          string
		username:       string
		client_id?:     string
	}
}

bitbucket_pipeline_known_host :: {
	with_items?: [...string]
	become?: bool
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	bitbucket_pipeline_known_host: {
		state:          string
		username:       string
		client_id?:     string
		client_secret?: string
		key?:           string
		name:           string
		repository:     string
	}
}

bitbucket_pipeline_variable :: {
	with_items?: [...string]
	become?: bool
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	bitbucket_pipeline_variable: {
		name:           string
		repository:     string
		secured?:       bool
		state:          string
		username:       string
		value?:         string
		client_id?:     string
		client_secret?: string
	}
}

bzr :: {
	with_items?: [...string]
	become?: bool
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	bzr: {
		executable?: string
		force?:      bool
		name:        string
		version?:    string
		dest:        string
	}
}

git :: {
	with_items?: [...string]
	become?: bool
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	git: {
		bare?:             bool
		depth?:            string
		executable?:       string
		key_file?:         string
		ssh_opts?:         string
		umask?:            string
		accept_hostkey?:   bool
		force?:            bool
		recursive?:        bool
		reference?:        string
		remote?:           string
		track_submodules?: bool
		clone?:            bool
		gpg_whitelist?: [...]
		refspec?:          string
		repo:              string
		separate_git_dir?: string
		verify_commit?:    bool
		archive?:          string
		dest:              string
		update?:           bool
		version?:          string
	}
}

hg :: {
	with_items?: [...string]
	become?: bool
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	hg: {
		update?:     bool
		clone?:      bool
		dest:        string
		executable?: string
		force?:      bool
		purge?:      bool
		repo:        string
		revision?:   string
	}
}

bitbucket_pipeline_key_pair :: {
	with_items?: [...string]
	become?: bool
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	bitbucket_pipeline_key_pair: {
		private_key?:   string
		public_key?:    string
		repository:     string
		state:          string
		username:       string
		client_id?:     string
		client_secret?: string
	}
}

git_config :: {
	with_items?: [...string]
	become?: bool
	vars?: {...}
	when?: string
	tags?: [...string]
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	git_config: {
		state?:    string
		value?:    string
		list_all?: bool
		name?:     string
		repo?:     string
		scope?:    string
	}
}
