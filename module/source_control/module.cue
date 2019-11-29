package source_control

bzr :: {
	name?: string
	vars?: {...}
	with_items?: [...string]
	register?: string
	when?:     string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	bzr: {
		dest:        string
		executable?: string
		force?:      bool
		name:        string
		version?:    string
	}
}

git :: {
	name?: string
	vars?: {...}
	with_items?: [...string]
	register?: string
	when?:     string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	git: {
		track_submodules?: bool
		verify_commit?:    bool
		clone?:            bool
		dest:              string
		gpg_whitelist?: [...]
		key_file?:         string
		repo:              string
		remote?:           string
		ssh_opts?:         string
		version?:          string
		accept_hostkey?:   bool
		executable?:       string
		force?:            bool
		reference?:        string
		refspec?:          string
		bare?:             bool
		depth?:            string
		archive?:          string
		recursive?:        bool
		separate_git_dir?: string
		umask?:            string
		update?:           bool
	}
}

git_config :: {
	name?: string
	vars?: {...}
	with_items?: [...string]
	register?: string
	when?:     string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	git_config: {
		list_all?: bool
		name?:     string
		repo?:     string
		scope?:    string
		state?:    string
		value?:    string
	}
}

hg :: {
	name?: string
	vars?: {...}
	with_items?: [...string]
	register?: string
	when?:     string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
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
	name?: string
	vars?: {...}
	with_items?: [...string]
	register?: string
	when?:     string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	become?:     bool
	subversion: {
		revision?:   string
		switch?:     bool
		update?:     bool
		username?:   string
		checkout?:   bool
		export?:     bool
		force?:      bool
		password?:   string
		dest:        string
		executable?: string
		in_place?:   bool
		repo:        string
	}
}
