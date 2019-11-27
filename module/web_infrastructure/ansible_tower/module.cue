package ansible_tower

deploy_helper :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	deploy_helper: {

		// the number of old releases to keep when cleaning. Used in C(finalize) and C(clean). Any unfinished builds will be deleted first, so only correct releases will count. The current version will not count.

		keep_releases?: string

		// the name of the folder that will hold the releases. This can be relative to C(path) or absolute. Returned in the C(deploy_helper.releases_path) fact.

		releases_path?: string

		// the name of the folder that will hold the shared resources. This can be relative to C(path) or absolute. If this is set to an empty string, no shared folder will be created. Returned in the C(deploy_helper.shared_path) fact.

		shared_path?: string

		// the state of the project. C(query) will only gather facts, C(present) will create the project I(root) folder, and in it the I(releases) and I(shared) folders, C(finalize) will remove the unfinished_filename file, create a symlink to the newly deployed release and optionally clean old releases, C(clean) will remove failed & old releases, C(absent) will remove the project folder (synonymous to the M(file) module with C(state=absent))

		state?: string

		// the name of the file that indicates a deploy has not finished. All folders in the releases_path that contain this file will be deleted on C(state=finalize) with clean=True, or C(state=clean). This file is automatically deleted from the I(new_release_path) during C(state=finalize).

		unfinished_filename?: string

		// Whether to run the clean procedure in case of C(state=finalize).

		clean?: bool

		// the root path of the project. Alias I(dest). Returned in the C(deploy_helper.project_path) fact.

		path: string

		// the release version that is being deployed. Defaults to a timestamp format %Y%m%d%H%M%S (i.e. '20141119223359'). This parameter is optional during C(state=present), but needs to be set explicitly for C(state=finalize). You can use the generated fact C(release={{ deploy_helper.new_release }}).

		release?: string

		// the name of the symlink that is created when the deploy is finalized. Used in C(finalize) and C(clean). Returned in the C(deploy_helper.current_path) fact.

		current_path?: string
	}
}

tower_job_template :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_job_template: {

		// Activate privilege escalation.

		become_enabled?: bool

		// Path to the C(extra_vars) YAML file.

		extra_vars_path?: string

		// Desired state of the resource.

		state?: string

		// Name of the vault credential to use for the job template.

		vault_credential?: string

		// Prompt user to choose a verbosity level on launch.

		ask_verbosity?: bool

		// Allow simultaneous runs of the job template.

		concurrent_jobs_enabled?: bool

		// The job type to use for the job template.

		job_type: string

		// Enable a survey on the job template.

		survey_enabled?: bool

		// Prompt user for credential on launch.

		ask_credential?: bool

		// Name of the credential to use for the job template.

		credential?: string

		// Path to the playbook to use for the job template within the project provided.

		playbook: string

		// Start the playbook at the task matching this name.

		start_at_task?: string

		// Prompt user for inventory on launch.

		ask_inventory?: bool

		// Prompt user for job tags on launch.

		ask_tags?: bool

		// Enable use of fact caching for the job template.

		fact_caching_enabled?: bool

		// Comma separated list of the tags to use for the job template.

		job_tags?: string

		// Enable forcing playbook handlers to run even if a task fails.

		force_handlers_enabled?: bool

		// Name to use for the job template.

		name: string

		// Name of the project to use for the job template.

		project: string

		// Comma separated list of the tags to skip for the job template.

		skip_tags?: string

		// Prompt user for (extra_vars) on launch.

		ask_extra_vars?: bool

		// Prompt user for job type on launch.

		ask_job_type?: bool

		// Prompt user for job tags to skip on launch.

		ask_skip_tags?: bool

		// Enable diff mode for the job template.

		diff_mode_enabled?: bool

		// Name of the inventory to use for the job template.

		inventory?: string

		// A host pattern to further constrain the list of hosts managed or affected by the playbook

		limit?: string

		// Control the output level Ansible produces as the playbook runs. 0 - Normal, 1 - Verbose, 2 - More Verbose, 3 - Debug, 4 - Connection Debug.

		verbosity?: string

		// Prompt user to enable diff mode (show changes) to files when supported by modules.

		ask_diff_mode?: bool

		// Prompt user for a limit on launch.

		ask_limit?: bool

		// Description to use for the job template.

		description?: string

		// JSON/YAML dict formatted survey definition.

		survey_spec?: {...}

		// The number of parallel or simultaneous processes to use while executing the playbook.

		forks?: string

		// Allow provisioning callbacks using this host config key.

		host_config_key?: string
	}
}

tower_project :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_project: {

		// The server playbook directory for manual projects.

		local_path?: string

		// Before an update to the local repository before launching a job with this project.

		scm_update_on_launch?: bool

		// Type of SCM resource.

		scm_type?: string

		// Desired state of the resource.

		state?: string

		// Local absolute file path containing a custom Python virtualenv to use

		custom_virtualenv?: string

		// Name of the credential to use with this SCM resource.

		scm_credential?: string

		// Remove the repository completely before updating.

		scm_delete_on_update?: bool

		// Cache Timeout to cache prior project syncs for a certain number of seconds. Only valid if scm_update_on_launch is to True, otherwise ignored.

		scm_update_cache_timeout?: string

		// URL of SCM resource.

		scm_url?: string

		// Description to use for the project.

		description?: string

		// The branch to use for the SCM resource.

		scm_branch?: string

		// Remove local modifications before updating.

		scm_clean?: bool

		// The amount of time (in seconds) to run before the SCM Update is canceled. A value of 0 means no timeout.

		job_timeout?: string

		// Name to use for the project.

		name: string

		// Primary key of organization for project.

		organization?: string
	}
}

tower_team :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_team: {

		// Desired state of the resource.

		state?: string

		// Name to use for the team.

		name: string

		// Organization the team should be made a member of.

		organization: string
	}
}

tower_workflow_launch :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_workflow_launch: {

		// Any extra vars required to launch the job.

		extra_vars?: string

		// If waiting for the workflow to complete this will abort after this amount of seconds

		timeout?: string

		// Wait for the workflow to complete.

		wait?: bool

		// The name of the workflow template to run.

		workflow_template: string
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

gunicorn :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	gunicorn: {

		// The app module. A name refers to a WSGI callable that should be found in the specified module.

		app: string

		// Chdir to specified directory before apps loading.

		chdir?: string

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
	}
}

rundeck_project :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rundeck_project: {

		// Sets the project name.

		name: string

		// Create or remove Rundeck project.

		state?: string

		// Sets the token to authenticate against Rundeck API.

		token: string

		// Sets the rundeck instance URL.

		url: string

		// Sets the API version used by module.
		// API version must be at least 14.

		api_version?: string
	}
}

supervisorctl :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	supervisorctl: {

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

		// path to supervisorctl executable

		supervisorctl_path?: string

		// username to use for authentication

		username?: string

		// The supervisor configuration file path

		config?: string
	}
}

tower_inventory_source :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_inventory_source: {

		// Time in seconds to consider an inventory sync to be current. During job runs and callbacks the task system will evaluate the timestamp of the latest sync. If it is older than Cache Timeout, it is not considered current, and a new inventory sync will be performed.

		update_cache_timeout?: string

		// Each time a job runs using this inventory, refresh the inventory from the selected source before executing job tasks.

		update_on_launch?: bool

		// Credential to use to retrieve the inventory from.

		credential?: string

		// The source custom script to use to build the inventory. It needs to exist.

		source_script?: string

		// Number in seconds after which the Tower API methods will time out.

		timeout?: string

		// Desired state of the resource.

		state?: string

		// That parameter will sync the inventory when the project is synced. It can only be used with a SCM source.

		update_on_project_update?: bool

		// Tower option to avoid certificates check.

		validate_certs?: bool

		// The description to use for the inventory source.

		description?: string

		// Provide a comma-separated list of filter expressions. Hosts are imported when all of the filters match. Refer to Ansible Tower documentation for more detail.

		instance_filters?: string

		// The source_vars allow to Override variables found in the source config file. For example with Openstack, specifying *private: false* would change the output of the openstack.py script. It has to be YAML or JSON.

		source_vars?: string

		// If set, all variables for child groups and hosts will be removed and replaced by those found on the external source. When not checked, a merge will be performed, combining local variables with those found on the external source.

		overwrite_vars?: bool

		// Types of inventory source.

		source: string

		// List of regions for your cloud provider. You can include multiple all regions. Only Hosts associated with the selected regions will be updated. Refer to Ansible Tower documentation for more detail.

		source_regions?: string

		// Specify which groups to create automatically. Group names will be created similar to the options selected. If blank, all groups above are created. Refer to Ansible Tower documentation for more detail.

		group_by?: string

		// The inventory the source is linked to.

		inventory: string

		// If set, any hosts and groups that were previously present on the external source but are now removed will be removed from the Tower inventory. Hosts and groups that were not managed by the inventory source will be promoted to the next manually created group or if there is no manually created group to promote them into, they will be left in the "all" default group for the inventory. When not checked, local child hosts and groups not found on the external source will remain untouched by the inventory update process.

		overwrite?: bool

		// The name to use for the inventory source.

		name: string

		// Path to the file to use as a source in the selected *project*.

		source_path?: string

		// Use a *project* as a source for the *inventory*.

		source_project?: string
	}
}

ejabberd_user :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	ejabberd_user: {

		// the ejabberd host associated with this username

		host: string

		// enables or disables the local syslog facility for this module

		logging?: bool

		// the password to assign to the username

		password?: string

		// describe the desired state of the user to be managed

		state?: string

		// the name of the user to manage

		username: string
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

tower_credential_type :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_credential_type: {

		// Enter injectors using either JSON or YAML syntax. Refer to the Ansible Tower documentation for example syntax.

		injectors?: string

		// Enter inputs using either JSON or YAML syntax. Refer to the Ansible Tower documentation for example syntax.

		inputs?: string

		// The type of credential type being added. Note that only cloud and net can be used for creating credential types. Refer to the Ansible for more information.

		kind?: string

		// The name of the credential type.

		name: string

		// Desired state of the resource.

		state?: string

		// Tower option to avoid certificates check.

		validate_certs?: bool

		// The description of the credential type to give more detail about it.

		description?: string
	}
}

tower_send :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_send: {

		// The assets to import.
		// This can be the output of tower_receive or loaded from a file

		assets?: string

		// List of files to import.

		files?: string

		// The password management option to use.
		// The prompt option is not supported.

		password_management?: string

		// A list of asset types to prevent import for

		prevent?: string
	}
}

taiga_issue :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	taiga_issue: {

		// A lists of tags to be assigned to the issue.

		tags?: string

		// Path to a file to be attached to the issue.

		attachment?: string

		// The issue description.

		description?: string

		// Name of the project containing the issue. Must exist previously.

		project: string

		// The issue severity. Must exist previously.

		severity?: string

		// Whether the issue should be present or not.

		state?: string

		// The hostname of the Taiga instance.

		taiga_host?: string

		// A string describing the file to be attached to the issue.

		attachment_description?: string

		// The issue type. Must exist previously.

		issue_type: string

		// The issue priority. Must exist previously.

		priority?: string

		// The issue status. Must exist previously.

		status?: string

		// The issue subject.

		subject: string
	}
}

tower_workflow_template :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_workflow_template: {

		// Name of the inventory to use for the job template.

		inventory?: string

		// The name to use for the workflow.

		name: string

		// The organization the workflow is linked to.

		organization?: string

		// The schema is a JSON- or YAML-formatted string defining the hierarchy structure that connects the nodes. Refer to Tower documentation for more information.

		schema?: string

		// The definition of the survey associated to the workflow.

		survey?: string

		// If enabled, simultaneous runs of this job template will be allowed.

		allow_simultaneous?: bool

		// Prompt user for (extra_vars) on launch.

		ask_extra_vars?: bool

		// Prompt user for inventory on launch.

		ask_inventory?: bool

		// Setting that variable will prompt the user for job type on the workflow launch.

		survey_enabled?: bool

		// The description to use for the workflow.

		description?: string

		// Extra variables used by Ansible in YAML or key=value format.

		extra_vars?: string

		// Desired state of the resource.

		state?: string
	}
}

jira :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	jira: {

		// This is a free-form data structure that can contain arbitrary data. This is passed directly to the JIRA REST API (possibly after merging with other required data, as when passed to create). See examples for more information, and the JIRA REST API for the structure required for various fields.

		fields?: string

		// An existing issue key to operate on.

		issue?: string

		// The issue summary, where appropriate.

		summary?: string

		// The operation to perform.

		operation: string

		// The desired status; only relevant for the transition operation.

		status?: string

		// Sets the assignee on create or transition operations. Note not all transitions will allow this.

		assignee?: string

		// The comment text to add.

		comment?: string

		// Set issue to which link will be created.

		outwardissue?: string

		// The username to log-in with.

		username: string

		// The project for this operation. Required for issue creation.

		project?: string

		// Set timeout, in seconds, on requests to JIRA API.

		timeout?: string

		// Base URI for the JIRA instance.

		uri: string

		// The issue description, where appropriate.

		description?: string

		// Set issue from which link will be created.

		inwardissue?: string

		// The issue type, for issue creation.

		issuetype?: string

		// Set type of link, when action 'link' selected.

		linktype?: string

		// The password to log-in with.

		password: string

		// Require valid SSL certificates (set to `false` if you'd like to use self-signed certificates)

		validate_certs?: bool
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

rundeck_acl_policy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rundeck_acl_policy: {

		// Sets the ACL policy content.
		// ACL policy content is a YAML object as described in http://rundeck.org/docs/man5/aclpolicy.html.
		// It can be a YAML string or a pure Ansible inventory YAML object.

		policy?: string

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
	}
}

tower_job_launch :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_job_launch: {

		// Extra_vars to use for the job_template. Prepend C(@) if a file.

		extra_vars?: string

		// Inventory to use for the job, only used if prompt for inventory is set.

		inventory?: string

		// Job explanation field.

		job_explanation?: string

		// Name of the job template to use.

		job_template: string

		// Specific tags to use for from playbook.

		tags?: string

		// Disable launching jobs from job template.

		use_job_endpoint?: bool

		// Credential to use for job, only used if prompt for credential is set.

		credential?: string

		// Job_type to use for the job, only used if prompt for job_type is set.

		job_type?: string

		// Limit to use for the I(job_template).

		limit?: string
	}
}

tower_user :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_user: {

		// Last name of the user.

		last_name?: string

		// Password of the user.

		password?: string

		// Desired state of the resource.

		state?: string

		// User is a system wide administrator.

		superuser?: bool

		// The username of the user.

		username: string

		// User is a system wide auditor.

		auditor?: bool

		// Email address of the user.

		email: string

		// First name of the user.

		first_name?: string
	}
}

jenkins_job :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	jenkins_job: {

		// Whether the job should be enabled or disabled.
		// Mutually exclusive with C(config).
		// Considered if C(state=present).

		enabled?: bool

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
	}
}

jenkins_plugin :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	jenkins_plugin: {

		// Desired plugin state.
		// If the C(latest) is set, the check for new version will be performed every time. This is suitable to keep the plugin up-to-date.

		state?: string

		// Server connection timeout in secs.

		timeout?: string

		// Plugin version number.
		// If this option is specified, all plugin dependencies must be installed manually.
		// It might take longer to verify that the correct version is installed. This is especially true if a specific version number is specified.
		// Quote the version to prevent the value to be interpreted as float. For example if C(1.20) would be unquoted, it would become C(1.2).

		version?: string

		// Name of the Jenkins group on the OS.

		group?: string

		// Home directory of the Jenkins user.

		jenkins_home?: string

		// File mode applied on versioned plugins.

		mode?: string

		// Plugin name.

		name: string

		// Name of the Jenkins user on the OS.

		owner?: string

		// Defines whether to install plugin dependencies.
		// This option takes effect only if the I(version) is not defined.

		with_dependencies?: bool

		// Number of seconds after which a new copy of the I(update-center.json) file is downloaded. This is used to avoid the need to download the plugin to calculate its checksum when C(latest) is specified.
		// Set it to C(0) if no cache file should be used. In that case, the plugin file will always be downloaded to calculate its checksum when C(latest) is specified.

		updates_expiration?: string

		// URL of the Update Centre.
		// Used as the base URL to download the plugins and the I(update-center.json) JSON file.

		updates_url?: string

		// URL of the Jenkins server.

		url?: string
	}
}

tower_group :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_group: {

		// Variables to use for the group, use C(@) for a file.

		variables?: string

		// The description to use for the group.

		description?: string

		// Limit groups automatically created from inventory source.

		group_by?: string

		// Desired state of the resource.

		state?: string

		// Credential to use for the group.

		credential?: string

		// Override vars in child groups and hosts with those from external source.

		overwrite_vars?: string

		// Regions for cloud provider.

		source_regions?: string

		// Override variables from source with variables from this field.

		source_vars?: string

		// Comma-separated list of filter expressions for matching hosts.

		instance_filters?: string

		// Inventory the group should be made a member of.

		inventory: string

		// The name to use for the group.

		name: string

		// Refresh inventory data from its source each time a job is run.

		update_on_launch?: bool

		// Delete child groups and hosts not found in source.

		overwrite?: bool

		// The source to use for this group.

		source?: string

		// Inventory script to be used when group type is C(custom).

		source_script?: string
	}
}

tower_host :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_host: {

		// Variables to use for the host. Use C(@) for a file.

		variables?: string

		// The description to use for the host.

		description?: string

		// If the host should be enabled.

		enabled?: bool

		// Inventory the host should be made a member of.

		inventory: string

		// The name to use for the host.

		name: string

		// Desired state of the resource.

		state?: string
	}
}

tower_notification :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_notification: {

		// The Twillio account token. Required if I(notification_type=twillio).

		account_token?: string

		// The notify channel trigger. Required if I(notification_type=hipchat).

		notify?: bool

		// The organization the notification belongs to.

		organization?: string

		// The destination channels or users. Required if I(notification_type=irc).

		targets?: [...]

		// The HTTP headers as JSON string. Required if I(notification_type=webhook).

		headers?: string

		// The IRC nickname. Required if I(notification_type=irc).

		nickname?: string

		// The recipients email addresses. Required if I(notification_type=email).

		recipients?: string

		// The PagerDuty service/integration API key. Required if I(notification_type=pagerduty).

		service_key?: string

		// The mail server host. Required if I(notification_type=email).

		host?: string

		// The type of notification to be sent.

		notification_type: string

		// Desired state of the resource.

		state?: string

		// The HipChat API URL. Required if I(notification_type=hipchat).

		api_url?: string

		// The source phone number. Required if I(notification_type=twillio).

		from_number?: string

		// The label to be shown with the notification. Required if I(notification_type=hipchat).

		message_from?: string

		// The access token. Required if I(notification_type=slack), if I(notification_type=pagerduty) or if I(notification_type=hipchat).

		token?: string

		// The SSL trigger. Required if I(notification_type=email) or if I(notification_type=irc).

		use_ssl?: bool

		// The TLS trigger. Required if I(notification_type=email).

		use_tls?: bool

		// The name of the notification.

		name: string

		// The mail server password. Required if I(notification_type=email) or if I(notification_type=irc).

		password?: string

		// The notification color. Required if I(notification_type=hipchat).

		color?: string

		// The description of the notification.

		description?: string

		// The IRC server address. Required if I(notification_type=irc).

		server?: string

		// The PagerDuty subdomain. Required if I(notification_type=pagerduty).

		subdomain?: string

		// The destination phone numbers. Required if I(notification_type=twillio).

		to_numbers?: string

		// The mail server username. Required if I(notification_type=email).

		username?: string

		// The destination Slack channels. Required if I(notification_type=slack).

		channels?: [...]

		// The notification configuration file. Note providing this field would disable all notification-configuration-related fields.

		notification_configuration?: string

		// The mail server port. Required if I(notification_type=email) or if I(notification_type=irc).

		port?: string

		// The sender email address. Required if I(notification_type=email).

		sender?: string

		// The target URL. Required if I(notification_type=webhook).

		url?: string

		// The Twillio account SID. Required if I(notification_type=twillio).

		account_sid?: string

		// The PagerDuty client identifier. Required if I(notification_type=pagerduty).

		client_name?: string

		// HipChat rooms to send the notification to. Required if I(notification_type=hipchat).

		rooms?: [...]
	}
}

tower_role :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_role: {

		// Credential the role acts on.

		credential?: string

		// Team that the role acts on.

		target_team?: string

		// Team that receives the permissions specified by the role.

		team?: string

		// User that receives the permissions specified by the role.

		user?: string

		// Inventory the role acts on.

		inventory?: string

		// The job template the role acts on.

		job_template?: string

		// Organization the role acts on.

		organization?: string

		// Project the role acts on.

		project?: string

		// The role type to grant/revoke.

		role: string

		// Desired state of the resource.

		state?: string
	}
}

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

jenkins_script :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	jenkins_script: {

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

		// The groovy script to be executed. This gets passed as a string Template if args is defined.

		script: string

		// The request timeout in seconds

		timeout?: string
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

tower_credential :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_credential: {

		// Organization that should own the credential.

		organization: string

		// Tenant ID for azure_rm type.

		tenant?: string

		// Should use authorize for net type.

		authorize?: bool

		// Password for net credentials that require authorize.

		authorize_password?: string

		// Become password.
		// Use "ASK" and launch in Tower to be prompted.

		become_password?: string

		// Client or application ID for azure_rm type.

		client?: string

		// Desired state of the resource.

		state?: string

		// Team that should own this credential.

		team?: string

		// Become method to use for privilege escalation.

		become_method?: string

		// Type of credential being added.
		// The ssh choice refers to a Tower Machine credential.

		kind: string

		// Password for this credential. ``secret_key`` for AWS. ``api_key`` for RAX.
		// Use "ASK" and launch in Tower to be prompted.

		password?: string

		// SSH private key content. To extract the content from a file path, use the lookup function (see examples).

		ssh_key_data?: string

		// User that should own this credential.

		user?: string

		// Vault password.
		// Use "ASK" and launch in Tower to be prompted.

		vault_password?: string

		// The description to use for the credential.

		description?: string

		// Domain for openstack type.

		domain?: string

		// Host for this credential.

		host?: string

		// Secret token for azure_rm type.

		secret?: string

		// Unlock password for ssh_key.
		// Use "ASK" and launch in Tower to be prompted.

		ssh_key_unlock?: string

		// Subscription ID for azure_rm type.

		subscription?: string

		// Username for this credential. ``access_key`` for AWS.

		username?: string

		// Vault identifier.
		// This parameter is only valid if C(kind) is specified as C(vault).

		vault_id?: string

		// Become username.
		// Use "ASK" and launch in Tower to be prompted.

		become_username?: string

		// The name to use for the credential.

		name: string

		// Project that should for this credential.

		project?: string

		// STS token for aws type.

		security_token?: string
	}
}

tower_job_wait :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_job_wait: {

		// Maximum time in seconds to wait for a job to finish.

		timeout?: string

		// ID of the job to monitor.

		job_id: string

		// Maximum interval in seconds, to request an update from Tower.

		max_interval?: string

		// Minimum interval in seconds, to request an update from Tower.

		min_interval?: string
	}
}

tower_receive :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_receive: {

		// List of organization names to export

		organization?: string

		// List of project names to export

		project?: string

		// List of team names to export

		team?: string

		// List of workflow names to export

		workflow?: string

		// List of credential names to export

		credential?: string

		// List of inventory script names to export

		inventory_script?: string

		// List of inventory names to export

		inventory?: string

		// List of job template names to export

		job_template?: string

		// List of notification template names to export

		notification_template?: string

		// List of user names to export

		user?: string

		// Export all assets

		all?: bool

		// List of credential type names to export

		credential_type?: string
	}
}

tower_settings :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_settings: {

		// Value to be modified for given setting.

		value: string

		// Name of setting to modify

		name: string
	}
}

apache2_mod_proxy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	apache2_mod_proxy: {

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

		// Suffix of the balancer pool url required to access the balancer pool status page (e.g. balancer_vhost[:port]/balancer_url_suffix).

		balancer_url_suffix?: string
	}
}

django_manage :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	django_manage: {

		// The path to the root of the Django application where B(manage.py) lives.

		app_path: string

		// The name of the table used for database-backed caching. Used by the 'createcachetable' command.

		cache_table?: string

		// The database to target. Used by the 'createcachetable', 'flush', 'loaddata', and 'syncdb' commands.

		database?: string

		// Fail the command immediately if a test fails. Used by the 'test' command.

		failfast?: bool

		// Will run out-of-order or missing migrations as they are not rollback migrations, you can only use this parameter with 'migrate' command

		merge?: bool

		// A directory to add to the Python path. Typically used to include the settings module if it is located external to the application directory.

		pythonpath?: string

		// The Python path to the application's settings module, such as 'myapp.settings'.

		settings?: string

		// Will skip over out-of-order missing migrations, you can only use this parameter with I(migrate)

		skip?: bool

		// Clear the existing files before trying to copy or link the original file.
		// Used only with the 'collectstatic' command. The C(--noinput) argument will be added automatically.

		clear?: bool

		// Will create links to the files instead of copying them, you can only use this parameter with 'collectstatic' command

		link?: bool

		// A list of space-delimited apps to target. Used by the 'test' command.

		apps?: string

		// The name of the Django management command to run. Built in commands are cleanup, collectstatic, flush, loaddata, migrate, runfcgi, syncdb, test, and validate.
		// Other commands can be entered, but will fail if they're unknown to Django.  Other commands that may prompt for user input should be run with the I(--noinput) flag.

		command: string

		// A space-delimited list of fixture file names to load in the database. B(Required) by the 'loaddata' command.

		fixtures?: string

		// An optional path to a I(virtualenv) installation to use while running the manage application.

		virtualenv?: string
	}
}

tower_inventory :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_inventory: {

		// Organization the inventory belongs to.

		organization: string

		// Desired state of the resource.

		state?: string

		// Inventory variables. Use C(@) to get from file.

		variables?: string

		// The description to use for the inventory.

		description?: string

		// The host_filter field. Only useful when C(kind=smart).

		host_filter?: string

		// The kind field. Cannot be modified after created.

		kind?: string

		// The name to use for the inventory.

		name: string
	}
}

tower_job_cancel :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_job_cancel: {

		// Fail loudly if the I(job_id) does not reference a running job.

		fail_if_not_running?: bool

		// ID of the job to cancel

		job_id: string
	}
}

tower_job_list :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_job_list: {

		// Fetch all the pages and return a single result.

		all_pages?: bool

		// Page number of the results to fetch.

		page?: string

		// Query used to further filter the list of jobs. C({"foo":"bar"}) will be passed at C(?foo=bar)

		query?: string

		// Only list jobs with this status.

		status?: string
	}
}

tower_label :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_label: {

		// Name to use for the label.

		name: string

		// Organization the label should be applied to.

		organization: string

		// Desired state of the resource.

		state?: string
	}
}

tower_organization :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	tower_organization: {

		// Name to use for the organization.

		name: string

		// Desired state of the resource.

		state?: string

		// The description to use for the organization.

		description?: string
	}
}
