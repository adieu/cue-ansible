package gitlab

bzr :: {
	when?:   string
	become?: bool
	vars?: {...}
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	bzr: {
		dest:        string
		executable?: string
		force?:      bool
		name:        string
		version?:    string
	}
}

git_config :: {
	when?:   string
	become?: bool
	vars?: {...}
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	git_config: {
		list_all?: bool
		name?:     string
		repo?:     string
		scope?:    string
		state?:    string
		value?:    string
	}
}

gitlab_group :: {
	when?:   string
	become?: bool
	vars?: {...}
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	gitlab_group: {
		name:         string
		parent?:      string
		path?:        string
		state?:       string
		visibility?:  string
		api_token?:   string
		description?: string
	}
}

gitlab_hook :: {
	when?:   string
	become?: bool
	vars?: {...}
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	gitlab_hook: {
		hook_url:               string
		issues_events?:         bool
		note_events?:           bool
		api_token?:             string
		push_events?:           bool
		state:                  string
		token?:                 string
		wiki_page_events?:      bool
		project:                string
		pipeline_events?:       bool
		job_events?:            bool
		merge_requests_events?: bool
		tag_push_events?:       bool
		hook_validate_certs?:   bool
	}
}

gitlab_user :: {
	when?:   string
	become?: bool
	vars?: {...}
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	gitlab_user: {
		state?:        string
		username:      string
		access_level?: string
		api_token?:    string
		external?:     bool
		group?:        string
		sshkey_file?:  string
		sshkey_name?:  string
		confirm?:      bool
		email?:        string
		isadmin?:      bool
		name?:         string
		password?:     string
	}
}

hg :: {
	when?:   string
	become?: bool
	vars?: {...}
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
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

git :: {
	when?:   string
	become?: bool
	vars?: {...}
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	git: {
		separate_git_dir?: string
		ssh_opts?:         string
		verify_commit?:    bool
		recursive?:        bool
		refspec?:          string
		remote?:           string
		archive?:          string
		clone?:            bool
		dest:              string
		force?:            bool
		gpg_whitelist?: [...]
		repo:              string
		track_submodules?: bool
		umask?:            string
		depth?:            string
		executable?:       string
		reference?:        string
		version?:          string
		accept_hostkey?:   bool
		bare?:             bool
		key_file?:         string
		update?:           bool
	}
}

gitlab_deploy_key :: {
	when?:   string
	become?: bool
	vars?: {...}
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	gitlab_deploy_key: {
		api_token?: string
		can_push?:  bool
		key:        string
		project:    string
		state:      string
		title:      string
	}
}

gitlab_project :: {
	when?:   string
	become?: bool
	vars?: {...}
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	gitlab_project: {
		visibility?:             string
		wiki_enabled?:           bool
		api_token?:              string
		issues_enabled?:         bool
		name:                    string
		state?:                  string
		path?:                   string
		snippets_enabled?:       bool
		description?:            string
		group?:                  string
		import_url?:             string
		merge_requests_enabled?: bool
	}
}

gitlab_project_variable :: {
	when?:   string
	become?: bool
	vars?: {...}
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	gitlab_project_variable: {
		api_token: string
		project:   string
		purge?:    bool
		state?:    string
		vars?: {...}
	}
}

gitlab_runner :: {
	when?:   string
	become?: bool
	vars?: {...}
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	gitlab_runner: {
		access_level?:    string
		active?:          bool
		description:      string
		locked?:          bool
		maximum_timeout?: int
		tag_list?: [...]
		api_token:          string
		registration_token: string
		run_untagged?:      bool
		state?:             string
	}
}

subversion :: {
	when?:   string
	become?: bool
	vars?: {...}
	register?: string
	tags?: [...string]
	notify?: string | [...string]
	with_items?: [...string]
	connection?: string
	name?:       string
	subversion: {
		dest:        string
		export?:     bool
		revision?:   string
		switch?:     bool
		username?:   string
		checkout?:   bool
		executable?: string
		force?:      bool
		in_place?:   bool
		password?:   string
		repo:        string
		update?:     bool
	}
}
