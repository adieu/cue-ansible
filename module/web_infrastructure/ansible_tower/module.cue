package ansible_tower

jboss :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	jboss: {
		deploy_path?: string
		deployment:   string
		src?:         string
		state?:       string
	}
}

jenkins_job :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	jenkins_job: {
		url?:      string
		user?:     string
		config?:   string
		enabled?:  bool
		name:      string
		password?: string
		state?:    string
		token?:    string
	}
}

tower_credential :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_credential: {
		become_username?:    string
		client?:             string
		kind:                string
		user?:               string
		ssh_key_unlock?:     string
		state?:              string
		subscription?:       string
		authorize?:          bool
		description?:        string
		domain?:             string
		organization:        string
		project?:            string
		team?:               string
		tenant?:             string
		vault_password?:     string
		authorize_password?: string
		password?:           string
		secret?:             string
		security_token?:     string
		vault_id?:           string
		username?:           string
		become_method?:      string
		become_password?:    string
		host?:               string
		name:                string
		ssh_key_data?:       string
	}
}

tower_inventory :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_inventory: {
		kind?:        string
		name:         string
		organization: string
		state?:       string
		variables?:   string
		description?: string
		host_filter?: string
	}
}

tower_job_list :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_job_list: {
		page?:      string
		query?:     string
		status?:    string
		all_pages?: bool
	}
}

tower_send :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_send: {
		password_management?: string
		prevent?:             string
		assets?:              string
		files?:               string
	}
}

tower_workflow_launch :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_workflow_launch: {
		extra_vars?:       string
		timeout?:          string
		wait?:             bool
		workflow_template: string
	}
}

apache2_module :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	apache2_module: {
		force?:              bool
		identifier?:         string
		ignore_configcheck?: bool
		name:                string
		state?:              string
	}
}

ejabberd_user :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	ejabberd_user: {
		logging?:  bool
		password?: string
		state?:    string
		username:  string
		host:      string
	}
}

jenkins_script :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	jenkins_script: {
		validate_certs?: bool
		args?:           string
		password?:       string
		script:          string
		timeout?:        string
		url?:            string
		user?:           string
	}
}

tower_job_cancel :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_job_cancel: {
		fail_if_not_running?: bool
		job_id:               string
	}
}

tower_role :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_role: {
		inventory?:    string
		job_template?: string
		state?:        string
		target_team?:  string
		user?:         string
		credential?:   string
		organization?: string
		project?:      string
		role:          string
		team?:         string
	}
}

jenkins_job_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	jenkins_job_info: {
		url?:            string
		user?:           string
		validate_certs?: bool
		color?:          string
		glob?:           string
		name?:           string
		password?:       string
		token?:          string
	}
}

tower_job_launch :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_job_launch: {
		credential?:       string
		job_template:      string
		tags?:             string
		job_type?:         string
		limit?:            string
		use_job_endpoint?: bool
		extra_vars?:       string
		inventory?:        string
		job_explanation?:  string
	}
}

tower_receive :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_receive: {
		job_template?:          string
		notification_template?: string
		organization?:          string
		project?:               string
		credential?:            string
		credential_type?:       string
		inventory_script?:      string
		user?:                  string
		workflow?:              string
		all?:                   bool
		inventory?:             string
		team?:                  string
	}
}

tower_user :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_user: {
		username:    string
		auditor?:    bool
		email:       string
		first_name?: string
		last_name?:  string
		password?:   string
		state?:      string
		superuser?:  bool
	}
}

deploy_helper :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	deploy_helper: {
		clean?:               bool
		keep_releases?:       string
		path:                 string
		release?:             string
		unfinished_filename?: string
		current_path?:        string
		releases_path?:       string
		shared_path?:         string
		state?:               string
	}
}

rundeck_acl_policy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rundeck_acl_policy: {
		name:         string
		policy?:      string
		project?:     string
		state?:       string
		token:        string
		url:          string
		api_version?: string
	}
}

tower_notification :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_notification: {
		account_sid?:      string
		message_from?:     string
		notification_type: string
		rooms?: [...]
		service_key?: string
		use_tls?:     bool
		password?:    string
		port?:        string
		recipients?:  string
		name:         string
		subdomain?:   string
		targets?: [...]
		url?:           string
		username?:      string
		account_token?: string
		api_url?:       string
		description?:   string
		token?:         string
		use_ssl?:       bool
		from_number?:   string
		notify?:        bool
		server?:        string
		nickname?:      string
		sender?:        string
		channels?: [...]
		headers?:                    string
		host?:                       string
		client_name?:                string
		color?:                      string
		to_numbers?:                 string
		notification_configuration?: string
		organization?:               string
		state?:                      string
	}
}

tower_organization :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_organization: {
		state?:       string
		description?: string
		name:         string
	}
}

tower_project :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_project: {
		organization?:             string
		scm_credential?:           string
		scm_update_on_launch?:     bool
		name:                      string
		scm_type?:                 string
		scm_update_cache_timeout?: string
		custom_virtualenv?:        string
		description?:              string
		job_timeout?:              string
		scm_branch?:               string
		scm_delete_on_update?:     bool
		local_path?:               string
		scm_clean?:                bool
		scm_url?:                  string
		state?:                    string
	}
}

tower_settings :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_settings: {
		name:  string
		value: string
	}
}

django_manage :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	django_manage: {
		cache_table?: string
		command:      string
		link?:        bool
		settings?:    string
		app_path:     string
		clear?:       bool
		failfast?:    bool
		fixtures?:    string
		merge?:       bool
		pythonpath?:  string
		apps?:        string
		database?:    string
		skip?:        bool
		virtualenv?:  string
	}
}

nginx_status_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	nginx_status_facts: {
		url:      string
		timeout?: string
	}
}

supervisorctl :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	supervisorctl: {
		supervisorctl_path?: string
		username?:           string
		config?:             string
		name:                string
		password?:           string
		server_url?:         string
		signal?:             string
		state:               string
	}
}

tower_host :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_host: {
		name:         string
		state?:       string
		variables?:   string
		description?: string
		enabled?:     bool
		inventory:    string
	}
}

tower_inventory_source :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_inventory_source: {
		source_project?:           string
		update_cache_timeout?:     string
		credential?:               string
		inventory:                 string
		overwrite?:                bool
		source_regions?:           string
		source_script?:            string
		validate_certs?:           bool
		timeout?:                  string
		name:                      string
		source:                    string
		source_path?:              string
		overwrite_vars?:           bool
		source_vars?:              string
		state?:                    string
		update_on_launch?:         bool
		update_on_project_update?: bool
		description?:              string
		group_by?:                 string
		instance_filters?:         string
	}
}

tower_job_wait :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_job_wait: {
		job_id:        string
		max_interval?: string
		min_interval?: string
		timeout?:      string
	}
}

gunicorn :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	gunicorn: {
		user?:   string
		venv?:   string
		worker?: string
		app:     string
		chdir?:  string
		config?: string
		pid?:    string
	}
}

htpasswd :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	htpasswd: {
		name:          string
		password?:     string
		path:          string
		state?:        string
		create?:       bool
		crypt_scheme?: string
	}
}

jenkins_plugin :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	jenkins_plugin: {
		with_dependencies?:  bool
		jenkins_home?:       string
		mode?:               string
		name:                string
		owner?:              string
		updates_expiration?: string
		updates_url?:        string
		group?:              string
		state?:              string
		timeout?:            string
		url?:                string
		version?:            string
	}
}

tower_label :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_label: {
		state?:       string
		name:         string
		organization: string
	}
}

tower_team :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_team: {
		name:         string
		organization: string
		state?:       string
	}
}

tower_workflow_template :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_workflow_template: {
		allow_simultaneous?: bool
		description?:        string
		extra_vars?:         string
		inventory?:          string
		name:                string
		organization?:       string
		schema?:             string
		state?:              string
		ask_extra_vars?:     bool
		ask_inventory?:      bool
		survey?:             string
		survey_enabled?:     bool
	}
}

tower_job_template :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_job_template: {
		description?:     string
		forks?:           string
		host_config_key?: string
		job_type:         string
		project:          string
		survey_spec?: {...}
		ask_inventory?:           bool
		force_handlers_enabled?:  bool
		limit?:                   string
		name:                     string
		diff_mode_enabled?:       bool
		playbook:                 string
		survey_enabled?:          bool
		extra_vars_path?:         string
		fact_caching_enabled?:    bool
		skip_tags?:               string
		verbosity?:               string
		ask_credential?:          bool
		ask_diff_mode?:           bool
		ask_extra_vars?:          bool
		concurrent_jobs_enabled?: bool
		state?:                   string
		ask_limit?:               bool
		inventory?:               string
		job_tags?:                string
		start_at_task?:           string
		ask_job_type?:            bool
		vault_credential?:        string
		ask_verbosity?:           bool
		become_enabled?:          bool
		credential?:              string
		ask_skip_tags?:           bool
		ask_tags?:                bool
	}
}

apache2_mod_proxy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	apache2_mod_proxy: {
		validate_certs?:      bool
		balancer_url_suffix?: string
		balancer_vhost:       string
		member_host?:         string
		state?:               string
		tls?:                 bool
	}
}

jira :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	jira: {
		issue?:          string
		operation:       string
		summary?:        string
		timeout?:        string
		uri:             string
		username:        string
		fields?:         string
		comment?:        string
		inwardissue?:    string
		issuetype?:      string
		project?:        string
		status?:         string
		assignee?:       string
		outwardissue?:   string
		linktype?:       string
		password:        string
		validate_certs?: bool
		description?:    string
	}
}

nginx_status_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	nginx_status_info: {
		timeout?: int
		url:      string
	}
}

rundeck_project :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	rundeck_project: {
		name:         string
		state?:       string
		token:        string
		url:          string
		api_version?: string
	}
}

taiga_issue :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	taiga_issue: {
		state?:                  string
		tags?:                   string
		attachment?:             string
		attachment_description?: string
		priority?:               string
		severity?:               string
		status?:                 string
		subject:                 string
		taiga_host?:             string
		description?:            string
		issue_type:              string
		project:                 string
	}
}

tower_credential_type :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_credential_type: {
		kind?:           string
		name:            string
		state?:          string
		validate_certs?: bool
		description?:    string
		injectors?:      string
		inputs?:         string
	}
}

tower_group :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	become?:     bool
	connection?: string
	name?:       string
	register?:   string
	notify?:     string | [...string]
	with_items?: [...string]
	tower_group: {
		instance_filters?: string
		inventory:         string
		source?:           string
		update_on_launch?: bool
		overwrite_vars?:   string
		source_vars?:      string
		state?:            string
		variables?:        string
		credential?:       string
		description?:      string
		group_by?:         string
		name:              string
		overwrite?:        bool
		source_regions?:   string
		source_script?:    string
	}
}
