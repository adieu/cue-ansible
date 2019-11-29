package web_infrastructure

django_manage :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	register?:   string
	notify?:     string | [...string]
	connection?: string
	django_manage: {
		link?:        bool
		settings?:    string
		skip?:        bool
		clear?:       bool
		database?:    string
		fixtures?:    string
		merge?:       bool
		apps?:        string
		failfast?:    bool
		virtualenv?:  string
		app_path:     string
		cache_table?: string
		command:      string
		pythonpath?:  string
	}
}

nginx_status_facts :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	register?:   string
	notify?:     string | [...string]
	connection?: string
	nginx_status_facts: {
		timeout?: string
		url:      string
	}
}

rundeck_acl_policy :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	register?:   string
	notify?:     string | [...string]
	connection?: string
	rundeck_acl_policy: {
		api_version?: string
		name:         string
		policy?:      string
		project?:     string
		state?:       string
		token:        string
		url:          string
	}
}

jenkins_script :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	register?:   string
	notify?:     string | [...string]
	connection?: string
	jenkins_script: {
		args?:           string
		password?:       string
		script:          string
		timeout?:        string
		url?:            string
		user?:           string
		validate_certs?: bool
	}
}

nginx_status_info :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	register?:   string
	notify?:     string | [...string]
	connection?: string
	nginx_status_info: {
		timeout?: int
		url:      string
	}
}

supervisorctl :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	register?:   string
	notify?:     string | [...string]
	connection?: string
	supervisorctl: {
		signal?:             string
		state:               string
		supervisorctl_path?: string
		username?:           string
		config?:             string
		name:                string
		password?:           string
		server_url?:         string
	}
}

taiga_issue :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	register?:   string
	notify?:     string | [...string]
	connection?: string
	taiga_issue: {
		taiga_host?:             string
		attachment?:             string
		attachment_description?: string
		description?:            string
		issue_type:              string
		project:                 string
		state?:                  string
		subject:                 string
		priority?:               string
		severity?:               string
		status?:                 string
		tags?:                   string
	}
}

apache2_mod_proxy :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	register?:   string
	notify?:     string | [...string]
	connection?: string
	apache2_mod_proxy: {
		balancer_url_suffix?: string
		balancer_vhost:       string
		member_host?:         string
		state?:               string
		tls?:                 bool
		validate_certs?:      bool
	}
}

apache2_module :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	register?:   string
	notify?:     string | [...string]
	connection?: string
	apache2_module: {
		ignore_configcheck?: bool
		name:                string
		state?:              string
		force?:              bool
		identifier?:         string
	}
}

deploy_helper :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	register?:   string
	notify?:     string | [...string]
	connection?: string
	deploy_helper: {
		clean?:               bool
		path:                 string
		state?:               string
		current_path?:        string
		keep_releases?:       string
		release?:             string
		releases_path?:       string
		shared_path?:         string
		unfinished_filename?: string
	}
}

jenkins_plugin :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	register?:   string
	notify?:     string | [...string]
	connection?: string
	jenkins_plugin: {
		name:                string
		timeout?:            string
		updates_url?:        string
		url?:                string
		version?:            string
		mode?:               string
		jenkins_home?:       string
		owner?:              string
		state?:              string
		updates_expiration?: string
		with_dependencies?:  bool
		group?:              string
	}
}

jira :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	register?:   string
	notify?:     string | [...string]
	connection?: string
	jira: {
		description?:    string
		operation:       string
		outwardissue?:   string
		password:        string
		status?:         string
		assignee?:       string
		timeout?:        string
		username:        string
		validate_certs?: bool
		linktype?:       string
		fields?:         string
		inwardissue?:    string
		issue?:          string
		project?:        string
		summary?:        string
		uri:             string
		comment?:        string
		issuetype?:      string
	}
}

jenkins_job :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	register?:   string
	notify?:     string | [...string]
	connection?: string
	jenkins_job: {
		token?:    string
		url?:      string
		user?:     string
		config?:   string
		enabled?:  bool
		name:      string
		password?: string
		state?:    string
	}
}

jenkins_job_info :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	register?:   string
	notify?:     string | [...string]
	connection?: string
	jenkins_job_info: {
		name?:           string
		password?:       string
		token?:          string
		url?:            string
		user?:           string
		validate_certs?: bool
		color?:          string
		glob?:           string
	}
}

rundeck_project :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	register?:   string
	notify?:     string | [...string]
	connection?: string
	rundeck_project: {
		api_version?: string
		name:         string
		state?:       string
		token:        string
		url:          string
	}
}

ejabberd_user :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	register?:   string
	notify?:     string | [...string]
	connection?: string
	ejabberd_user: {
		host:      string
		logging?:  bool
		password?: string
		state?:    string
		username:  string
	}
}

gunicorn :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	register?:   string
	notify?:     string | [...string]
	connection?: string
	gunicorn: {
		worker?: string
		app:     string
		chdir?:  string
		config?: string
		pid?:    string
		user?:   string
		venv?:   string
	}
}

htpasswd :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	register?:   string
	notify?:     string | [...string]
	connection?: string
	htpasswd: {
		name:          string
		password?:     string
		path:          string
		state?:        string
		create?:       bool
		crypt_scheme?: string
	}
}

jboss :: {
	with_items?: [...string]
	become?: bool
	name?:   string
	vars?: {...}
	when?: string
	tags?: [...string]
	register?:   string
	notify?:     string | [...string]
	connection?: string
	jboss: {
		deploy_path?: string
		deployment:   string
		src?:         string
		state?:       string
	}
}
