package web_infrastructure

jboss :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	jboss: {

		// The location in the filesystem where the deployment scanner listens.

		deploy_path?: string

		// The name of the deployment.

		deployment: string

		// The remote path of the application ear or war to deploy.
		// Required when I(state=present).
		// Ignored when I(state=absent).

		src?: string

		// Whether the application should be deployed or undeployed.

		state?: string
	}
}

django_manage :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	django_manage: {

		// Clear the existing files before trying to copy or link the original file.
		// Used only with the 'collectstatic' command. The C(--noinput) argument will be added automatically.

		clear?: bool

		// The name of the Django management command to run. Built in commands are cleanup, collectstatic, flush, loaddata, migrate, runfcgi, syncdb, test, and validate.
		// Other commands can be entered, but will fail if they're unknown to Django.  Other commands that may prompt for user input should be run with the I(--noinput) flag.

		command: string

		// Will skip over out-of-order missing migrations, you can only use this parameter with I(migrate)

		skip?: bool

		// An optional path to a I(virtualenv) installation to use while running the manage application.

		virtualenv?: string

		// A list of space-delimited apps to target. Used by the 'test' command.

		apps?: string

		// A space-delimited list of fixture file names to load in the database. B(Required) by the 'loaddata' command.

		fixtures?: string

		// Will create links to the files instead of copying them, you can only use this parameter with 'collectstatic' command

		link?: bool

		// Will run out-of-order or missing migrations as they are not rollback migrations, you can only use this parameter with 'migrate' command

		merge?: bool

		// The path to the root of the Django application where B(manage.py) lives.

		app_path: string

		// Fail the command immediately if a test fails. Used by the 'test' command.

		failfast?: bool

		// The name of the table used for database-backed caching. Used by the 'createcachetable' command.

		cache_table?: string

		// The database to target. Used by the 'createcachetable', 'flush', 'loaddata', and 'syncdb' commands.

		database?: string

		// A directory to add to the Python path. Typically used to include the settings module if it is located external to the application directory.

		pythonpath?: string

		// The Python path to the application's settings module, such as 'myapp.settings'.

		settings?: string
	}
}

jenkins_job_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	jenkins_job_info: {

		// API token used to authenticate with the Jenkins server.
		// This is a required parameter, if C(password) is not provided.

		token?: string

		// URL where the Jenkins server is accessible.

		url?: string

		// User to authenticate with the Jenkins server.

		user?: string

		// If set to C(False), the SSL certificates will not be validated.
		// This should only set to C(False) used on personally controlled sites using self-signed certificates.

		validate_certs?: bool

		// Only fetch jobs with the given status color.

		color?: string

		// A shell glob of Jenkins job names to fetch information about.

		glob?: string

		// Exact name of the Jenkins job to fetch information about.

		name?: string

		// Password to authenticate with the Jenkins server.
		// This is a required parameter, if C(token) is not provided.

		password?: string
	}
}

jenkins_plugin :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	jenkins_plugin: {

		// URL of the Jenkins server.

		url?: string

		// Home directory of the Jenkins user.

		jenkins_home?: string

		// File mode applied on versioned plugins.

		mode?: string

		// Plugin name.

		name: string

		// Desired plugin state.
		// If the C(latest) is set, the check for new version will be performed every time. This is suitable to keep the plugin up-to-date.

		state?: string

		// URL of the Update Centre.
		// Used as the base URL to download the plugins and the I(update-center.json) JSON file.

		updates_url?: string

		// Defines whether to install plugin dependencies.
		// This option takes effect only if the I(version) is not defined.

		with_dependencies?: bool

		// Name of the Jenkins group on the OS.

		group?: string

		// Name of the Jenkins user on the OS.

		owner?: string

		// Server connection timeout in secs.

		timeout?: string

		// Number of seconds after which a new copy of the I(update-center.json) file is downloaded. This is used to avoid the need to download the plugin to calculate its checksum when C(latest) is specified.
		// Set it to C(0) if no cache file should be used. In that case, the plugin file will always be downloaded to calculate its checksum when C(latest) is specified.

		updates_expiration?: string

		// Plugin version number.
		// If this option is specified, all plugin dependencies must be installed manually.
		// It might take longer to verify that the correct version is installed. This is especially true if a specific version number is specified.
		// Quote the version to prevent the value to be interpreted as float. For example if C(1.20) would be unquoted, it would become C(1.2).

		version?: string
	}
}

jenkins_script :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	jenkins_script: {

		// The groovy script to be executed. This gets passed as a string Template if args is defined.

		script: string

		// The request timeout in seconds

		timeout?: string

		// The jenkins server to execute the script against. The default is a local jenkins instance that is not being proxied through a webserver.

		url?: string

		// The username to connect to the jenkins server with.

		user?: string

		// If set to C(no), the SSL certificates will not be validated. This should only set to C(no) used on personally controlled sites using self-signed certificates as it avoids verifying the source site.

		validate_certs?: bool

		// A dict of key-value pairs used in formatting the script using string.Template (see https://docs.python.org/2/library/string.html#template-strings).

		args?: string

		// The password to connect to the jenkins server with.

		password?: string
	}
}

nginx_status_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nginx_status_facts: {

		// HTTP connection timeout in seconds.

		timeout?: string

		// URL of the nginx status.

		url: string
	}
}

nginx_status_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nginx_status_info: {

		// HTTP connection timeout in seconds.

		timeout?: int

		// URL of the nginx status.

		url: string
	}
}

supervisorctl :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	supervisorctl: {

		// path to supervisorctl executable

		supervisorctl_path?: string

		// username to use for authentication

		username?: string

		// The supervisor configuration file path

		config?: string

		// The name of the supervisord program or group to manage.
		// The name will be taken as group name when it ends with a colon I(:)
		// Group support is only available in Ansible version 1.6 or later.

		name: string

		// password to use for authentication

		password?: string

		// URL on which supervisord server is listening

		server_url?: string

		// The signal to send to the program/group, when combined with the 'signalled' state. Required when l(state=signalled).

		signal?: string

		// The desired state of program/group.

		state: string
	}
}

apache2_module :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	apache2_module: {

		// Force disabling of default modules and override Debian warnings.

		force?: bool

		// Identifier of the module as listed by C(apache2ctl -M). This is optional and usually determined automatically by the common convention of appending C(_module) to I(name) as well as custom exception for popular modules.

		identifier?: string

		// Ignore configuration checks about inconsistent module configuration. Especially for mpm_* modules.

		ignore_configcheck?: bool

		// Name of the module to enable/disable as given to C(a2enmod/a2dismod).

		name: string

		// Desired state of the module.

		state?: string
	}
}

ejabberd_user :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	ejabberd_user: {

		// enables or disables the local syslog facility for this module

		logging?: bool

		// the password to assign to the username

		password?: string

		// describe the desired state of the user to be managed

		state?: string

		// the name of the user to manage

		username: string

		// the ejabberd host associated with this username

		host: string
	}
}

jenkins_job :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	jenkins_job: {

		// Name of the Jenkins job.

		name: string

		// Password to authenticate with the Jenkins server.

		password?: string

		// Attribute that specifies if the job has to be created or deleted.

		state?: string

		// API token used to authenticate alternatively to password.

		token?: string

		// URL where the Jenkins server is accessible.

		url?: string

		// User to authenticate with the Jenkins server.

		user?: string

		// config in XML format.
		// Required if job does not yet exist.
		// Mutually exclusive with C(enabled).
		// Considered if C(state=present).

		config?: string

		// Whether the job should be enabled or disabled.
		// Mutually exclusive with C(config).
		// Considered if C(state=present).

		enabled?: bool
	}
}

deploy_helper :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	deploy_helper: {

		// the name of the symlink that is created when the deploy is finalized. Used in C(finalize) and C(clean). Returned in the C(deploy_helper.current_path) fact.

		current_path?: string

		// the root path of the project. Alias I(dest). Returned in the C(deploy_helper.project_path) fact.

		path: string

		// the release version that is being deployed. Defaults to a timestamp format %Y%m%d%H%M%S (i.e. '20141119223359'). This parameter is optional during C(state=present), but needs to be set explicitly for C(state=finalize). You can use the generated fact C(release={{ deploy_helper.new_release }}).

		release?: string

		// the name of the folder that will hold the releases. This can be relative to C(path) or absolute. Returned in the C(deploy_helper.releases_path) fact.

		releases_path?: string

		// the name of the file that indicates a deploy has not finished. All folders in the releases_path that contain this file will be deleted on C(state=finalize) with clean=True, or C(state=clean). This file is automatically deleted from the I(new_release_path) during C(state=finalize).

		unfinished_filename?: string

		// Whether to run the clean procedure in case of C(state=finalize).

		clean?: bool

		// the number of old releases to keep when cleaning. Used in C(finalize) and C(clean). Any unfinished builds will be deleted first, so only correct releases will count. The current version will not count.

		keep_releases?: string

		// the name of the folder that will hold the shared resources. This can be relative to C(path) or absolute. If this is set to an empty string, no shared folder will be created. Returned in the C(deploy_helper.shared_path) fact.

		shared_path?: string

		// the state of the project. C(query) will only gather facts, C(present) will create the project I(root) folder, and in it the I(releases) and I(shared) folders, C(finalize) will remove the unfinished_filename file, create a symlink to the newly deployed release and optionally clean old releases, C(clean) will remove failed & old releases, C(absent) will remove the project folder (synonymous to the M(file) module with C(state=absent))

		state?: string
	}
}

gunicorn :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gunicorn: {

		// Path to the gunicorn configuration file.

		config?: string

		// A filename to use for the PID file. If not set and not found on the configuration file a tmp pid file will be created to check a successful run of gunicorn.

		pid?: string

		// Switch worker processes to run as this user.

		user?: string

		// Path to the virtualenv directory.

		venv?: string

		// The type of workers to use. The default class (sync) should handle most "normal" types of workloads.

		worker?: string

		// The app module. A name refers to a WSGI callable that should be found in the specified module.

		app: string

		// Chdir to specified directory before apps loading.

		chdir?: string
	}
}

htpasswd :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	htpasswd: {

		// Encryption scheme to be used.  As well as the four choices listed here, you can also use any other hash supported by passlib, such as md5_crypt and sha256_crypt, which are linux passwd hashes.  If you do so the password file will not be compatible with Apache or Nginx

		crypt_scheme?: string

		// User name to add or remove

		name: string

		// Password associated with user.
		// Must be specified if user does not exist yet.

		password?: string

		// Path to the file that contains the usernames and passwords

		path: string

		// Whether the user entry should be present or not

		state?: string

		// Used with C(state=present). If specified, the file will be created if it does not already exist. If set to "no", will fail if the file does not exist

		create?: bool
	}
}

jira :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	jira: {

		// Require valid SSL certificates (set to `false` if you'd like to use self-signed certificates)

		validate_certs?: bool

		// The issue description, where appropriate.

		description?: string

		// An existing issue key to operate on.

		issue?: string

		// Set type of link, when action 'link' selected.

		linktype?: string

		// Set issue to which link will be created.

		outwardissue?: string

		// This is a free-form data structure that can contain arbitrary data. This is passed directly to the JIRA REST API (possibly after merging with other required data, as when passed to create). See examples for more information, and the JIRA REST API for the structure required for various fields.

		fields?: string

		// The password to log-in with.

		password: string

		// Base URI for the JIRA instance.

		uri: string

		// The username to log-in with.

		username: string

		// Sets the assignee on create or transition operations. Note not all transitions will allow this.

		assignee?: string

		// The comment text to add.

		comment?: string

		// The operation to perform.

		operation: string

		// The project for this operation. Required for issue creation.

		project?: string

		// The desired status; only relevant for the transition operation.

		status?: string

		// The issue summary, where appropriate.

		summary?: string

		// Set timeout, in seconds, on requests to JIRA API.

		timeout?: string

		// Set issue from which link will be created.

		inwardissue?: string

		// The issue type, for issue creation.

		issuetype?: string
	}
}

rundeck_acl_policy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rundeck_acl_policy: {

		// Sets the project which receive the ACL policy.
		// If unset, it's a system ACL policy.

		project?: string

		// Create or remove Rundeck project.

		state?: string

		// Sets the token to authenticate against Rundeck API.

		token: string

		// Sets the rundeck instance URL.

		url: string

		// Sets the API version used by module.
		// API version must be at least 14.

		api_version?: string

		// Sets the project name.

		name: string

		// Sets the ACL policy content.
		// ACL policy content is a YAML object as described in http://rundeck.org/docs/man5/aclpolicy.html.
		// It can be a YAML string or a pure Ansible inventory YAML object.

		policy?: string
	}
}

rundeck_project :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rundeck_project: {

		// Sets the token to authenticate against Rundeck API.

		token: string

		// Sets the rundeck instance URL.

		url: string

		// Sets the API version used by module.
		// API version must be at least 14.

		api_version?: string

		// Sets the project name.

		name: string

		// Create or remove Rundeck project.

		state?: string
	}
}

taiga_issue :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	taiga_issue: {

		// The issue status. Must exist previously.

		status?: string

		// The hostname of the Taiga instance.

		taiga_host?: string

		// Path to a file to be attached to the issue.

		attachment?: string

		// A string describing the file to be attached to the issue.

		attachment_description?: string

		// The issue description.

		description?: string

		// The issue type. Must exist previously.

		issue_type: string

		// The issue priority. Must exist previously.

		priority?: string

		// Name of the project containing the issue. Must exist previously.

		project: string

		// The issue severity. Must exist previously.

		severity?: string

		// Whether the issue should be present or not.

		state?: string

		// The issue subject.

		subject: string

		// A lists of tags to be assigned to the issue.

		tags?: string
	}
}

apache2_mod_proxy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	apache2_mod_proxy: {

		// Suffix of the balancer pool url required to access the balancer pool status page (e.g. balancer_vhost[:port]/balancer_url_suffix).

		balancer_url_suffix?: string

		// (ipv4|ipv6|fqdn):port of the Apache httpd 2.4 mod_proxy balancer pool.

		balancer_vhost: string

		// (ipv4|ipv6|fqdn) of the balancer member to get or to set attributes to. Port number is autodetected and should not be specified here. If undefined, apache2_mod_proxy module will return a members list of dictionaries of all the current balancer pool members' attributes.

		member_host?: string

		// Desired state of the member host. (absent|disabled),drained,hot_standby,ignore_errors can be simultaneously invoked by separating them with a comma (e.g. state=drained,ignore_errors).

		state?: string

		// Use https to access balancer management page.

		tls?: bool

		// Validate ssl/tls certificates.

		validate_certs?: bool
	}
}
