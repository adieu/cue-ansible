package sophos_utm

deploy_helper :: {

	// the name of the folder that will hold the shared resources. This can be relative to C(path) or absolute. If this is set to an empty string, no shared folder will be created. Returned in the C(deploy_helper.shared_path) fact.

	shared_path?: string

	// Whether to run the clean procedure in case of C(state=finalize).

	clean?: bool

	// the name of the symlink that is created when the deploy is finalized. Used in C(finalize) and C(clean). Returned in the C(deploy_helper.current_path) fact.

	current_path?: string

	// the root path of the project. Alias I(dest). Returned in the C(deploy_helper.project_path) fact.

	path: string

	// the release version that is being deployed. Defaults to a timestamp format %Y%m%d%H%M%S (i.e. '20141119223359'). This parameter is optional during C(state=present), but needs to be set explicitly for C(state=finalize). You can use the generated fact C(release={{ deploy_helper.new_release }}).

	release?: string

	// the number of old releases to keep when cleaning. Used in C(finalize) and C(clean). Any unfinished builds will be deleted first, so only correct releases will count. The current version will not count.

	keep_releases?: string

	// the name of the folder that will hold the releases. This can be relative to C(path) or absolute. Returned in the C(deploy_helper.releases_path) fact.

	releases_path?: string

	// the state of the project. C(query) will only gather facts, C(present) will create the project I(root) folder, and in it the I(releases) and I(shared) folders, C(finalize) will remove the unfinished_filename file, create a symlink to the newly deployed release and optionally clean old releases, C(clean) will remove failed & old releases, C(absent) will remove the project folder (synonymous to the M(file) module with C(state=absent))

	state?: string

	// the name of the file that indicates a deploy has not finished. All folders in the releases_path that contain this file will be deleted on C(state=finalize) with clean=True, or C(state=clean). This file is automatically deleted from the I(new_release_path) during C(state=finalize).

	unfinished_filename?: string
}

jenkins_job_info :: {

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

	// API token used to authenticate with the Jenkins server.
	// This is a required parameter, if C(password) is not provided.

	token?: string

	// URL where the Jenkins server is accessible.

	url?: string
}

utm_aaa_group :: {

	// The name of the object. Will be used to identify the entry.

	name: string

	// Dictionary of group sids.

	adirectory_groups_sids?: {...}

	// Group type. Is static if none is selected.

	dynamic?: string

	// A list of user ref names (aaa/user).

	members?: [..._]

	// List of adirectory group strings.

	adirectory_groups?: [..._]

	// The backend for the group.

	backend_match?: string

	// The ipsec dn string.

	ipsec_dn?: string

	// The ldap attribute value to check against.

	ldap_attribute_value?: string

	// A list of radius group strings.

	radius_groups?: [..._]

	// A list of tacacs group strings.

	tacacs_groups?: [..._]

	// Comment that describes the AAA group.

	comment?: string

	// List of edirectory group strings.

	edirectory_groups?: [..._]

	// The ldap attribute to check against.

	ldap_attribute?: string

	// The network reference name. The objects contains the known ip addresses for the authentication object (network/aaa).

	network?: string
}

utm_proxy_frontend :: {

	// Whether to enable the compression

	disable_compression?: bool

	// A list of domain names for the frontend object

	domain?: string

	// A list of exception ref names (reverse_proxy/exception)

	exceptions?: string

	// Which loadbalancer method should be used

	lbmethod?: string

	// The name of the object. Will be used to identify the entry

	name: string

	// Whether to preserve host header

	preservehost?: bool

	// Which protocol should be used

	type?: string

	// The reference name of the network/interface_address object.

	address?: string

	// Whether to enable html rewrite or not

	htmlrewrite?: bool

	// The reference string of the reverse_proxy/profile

	profile?: string

	// A list of reference names for the allowed networks.

	allowed_networks?: string

	// Whether to enable html rewrite cookie or not

	htmlrewrite_cookies?: bool

	// A list of location ref names (reverse_proxy/location)

	locations?: string

	// Whether to pass the host header or not

	xheaders?: bool

	// The reference name of the ca/host_key_cert object.

	certificate?: string

	// An optional comment to add to the object

	comment?: string

	// Whether to enable implicit redirection or not

	implicitredirect?: bool

	// The frontend http port

	port?: string

	// Whether to activate the frontend entry or not

	status?: bool

	// Whether to add the content type header or not

	add_content_type_header?: bool
}

utm_proxy_frontend_info :: {

	// The name of the object. Will be used to identify the entry

	name: string
}

django_manage :: {

	// Clear the existing files before trying to copy or link the original file.
	// Used only with the 'collectstatic' command. The C(--noinput) argument will be added automatically.

	clear?: bool

	// A space-delimited list of fixture file names to load in the database. B(Required) by the 'loaddata' command.

	fixtures?: string

	// Will run out-of-order or missing migrations as they are not rollback migrations, you can only use this parameter with 'migrate' command

	merge?: bool

	// A directory to add to the Python path. Typically used to include the settings module if it is located external to the application directory.

	pythonpath?: string

	// The Python path to the application's settings module, such as 'myapp.settings'.

	settings?: string

	// A list of space-delimited apps to target. Used by the 'test' command.

	apps?: string

	// The name of the table used for database-backed caching. Used by the 'createcachetable' command.

	cache_table?: string

	// Will create links to the files instead of copying them, you can only use this parameter with 'collectstatic' command

	link?: bool

	// The path to the root of the Django application where B(manage.py) lives.

	app_path: string

	// The name of the Django management command to run. Built in commands are cleanup, collectstatic, flush, loaddata, migrate, runfcgi, syncdb, test, and validate.
	// Other commands can be entered, but will fail if they're unknown to Django.  Other commands that may prompt for user input should be run with the I(--noinput) flag.

	command: string

	// Will skip over out-of-order missing migrations, you can only use this parameter with I(migrate)

	skip?: bool

	// An optional path to a I(virtualenv) installation to use while running the manage application.

	virtualenv?: string

	// The database to target. Used by the 'createcachetable', 'flush', 'loaddata', and 'syncdb' commands.

	database?: string

	// Fail the command immediately if a test fails. Used by the 'test' command.

	failfast?: bool
}

utm_aaa_group_info :: {

	// The name of the object. Will be used to identify the entry

	name: string
}

utm_network_interface_address :: {

	// An optional comment to add to the object

	comment?: string

	// The name of the object. Will be used to identify the entry

	name: string

	// Whether or not the object is resolved

	resolved?: string

	// Whether or not the object is resolved

	resolved6?: string

	// The ip4 address of the network/interface_address object.

	address: string

	// The ip6 address of the network/interface_address object.

	address6?: string
}

utm_network_interface_address_info :: {

	// The name of the object. Will be used to identify the entry

	name: string
}

utm_proxy_auth_profile :: {

	// Frontend login name

	frontend_login?: string

	// Frontend authentication realm

	frontend_realm?: string

	// session timeout

	frontend_session_timeout: string

	// Specifies if the backend server needs authentication ([Basic|None])

	backend_mode?: string

	// Should the login data be stripped when proxying the request to the backend host

	backend_strip_basic_auth?: bool

	// The message in the basic authentication prompt

	basic_prompt: string

	// Optional comment string

	comment?: string

	// Frontend cookie secret

	frontend_cookie_secret?: string

	// Allow session persistency

	frontend_session_allow_persistency?: bool

	// session lifetime

	frontend_session_lifetime: string

	// Should a redirect to the requested URL be made

	redirect_to_requested_url?: bool

	// Suffix string to append to the username for backend authentication

	backend_user_suffix?: string

	// Frontend cookie name

	frontend_cookie?: string

	// Frontend authentication form name

	frontend_form?: string

	// Frontend authentication form template

	frontend_form_template?: string

	// Frontend authentication mode (Form|Basic)

	frontend_mode?: string

	// scope for frontend_session_timeout (days|hours|minutes)

	frontend_session_timeout_scope?: string

	// List of logout URLs that logouts are delegated to

	logout_delegation_urls?: string

	// List of references to utm_aaa objects (allowed users or groups)

	aaa: string

	// Frontend logout name

	frontend_logout?: string

	// Specifies if limitation of session lifetime is active

	frontend_session_lifetime_limited?: bool

	// scope for frontend_session_lifetime (days|hours|minutes)

	frontend_session_lifetime_scope?: string

	// Specifies if session timeout is active

	frontend_session_timeout_enabled?: bool

	// Prefix string to prepend to the username for backend authentication

	backend_user_prefix?: string

	// Mode of logout (None|Delegation)

	logout_mode?: string

	// The name of the object. Will be used to identify the entry

	name: string
}

apache2_mod_proxy :: {

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

jenkins_job :: {

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
}

nginx_status_facts :: {

	// HTTP connection timeout in seconds.

	timeout?: string

	// URL of the nginx status.

	url: string
}

utm_proxy_location :: {

	// Whether the location is active or not

	status?: bool

	// The reference name of the auth profile

	auth_profile?: string

	// The path of the backend

	be_path?: string

	// Activate hot standby mode

	hot_standby?: bool

	// Enable the websocket passthrough

	websocket_passthrough?: bool

	// whether to activate the access control for the location

	access_control?: string

	// A list of allowed networks

	allowed_networks?: [..._]

	// The optional comment string

	comment?: string

	// A list of denied network references

	denied_networks?: string

	// The path of the location

	path?: string

	// The stickysession id

	stickysession_id?: string

	// A list of backends that are connected with this location declaration

	backend?: string

	// The name of the object. Will be used to identify the entry

	name: string

	// Enable the stickysession

	stickysession_status?: bool
}

jboss :: {

	// The name of the deployment.

	deployment: string

	// The remote path of the application ear or war to deploy.
	// Required when I(state=present).
	// Ignored when I(state=absent).

	src?: string

	// Whether the application should be deployed or undeployed.

	state?: string

	// The location in the filesystem where the deployment scanner listens.

	deploy_path?: string
}

jenkins_script :: {

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

	// The jenkins server to execute the script against. The default is a local jenkins instance that is not being proxied through a webserver.

	url?: string
}

rundeck_project :: {

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

utm_ca_host_key_cert :: {

	// The name of the object. Will be used to identify the entry.

	name: string

	// A reference to an existing utm_ca_signing_ca or utm_ca_verification_ca object.

	ca: string

	// The certificate in PEM format.

	certificate: string

	// Optional comment string.

	comment?: string

	// Optionally enable encryption.

	encrypted?: bool

	// Optional private key in PEM format.

	key?: string

	// A reference to an existing utm_ca_meta_x509 object.

	meta: string
}

jenkins_plugin :: {

	// Plugin name.

	name: string

	// Name of the Jenkins user on the OS.

	owner?: string

	// Desired plugin state.
	// If the C(latest) is set, the check for new version will be performed every time. This is suitable to keep the plugin up-to-date.

	state?: string

	// Server connection timeout in secs.

	timeout?: string

	// Number of seconds after which a new copy of the I(update-center.json) file is downloaded. This is used to avoid the need to download the plugin to calculate its checksum when C(latest) is specified.
	// Set it to C(0) if no cache file should be used. In that case, the plugin file will always be downloaded to calculate its checksum when C(latest) is specified.

	updates_expiration?: string

	// URL of the Update Centre.
	// Used as the base URL to download the plugins and the I(update-center.json) JSON file.

	updates_url?: string

	// URL of the Jenkins server.

	url?: string

	// Home directory of the Jenkins user.

	jenkins_home?: string

	// File mode applied on versioned plugins.

	mode?: string

	// Plugin version number.
	// If this option is specified, all plugin dependencies must be installed manually.
	// It might take longer to verify that the correct version is installed. This is especially true if a specific version number is specified.
	// Quote the version to prevent the value to be interpreted as float. For example if C(1.20) would be unquoted, it would become C(1.2).

	version?: string

	// Defines whether to install plugin dependencies.
	// This option takes effect only if the I(version) is not defined.

	with_dependencies?: bool

	// Name of the Jenkins group on the OS.

	group?: string
}

jira :: {

	// This is a free-form data structure that can contain arbitrary data. This is passed directly to the JIRA REST API (possibly after merging with other required data, as when passed to create). See examples for more information, and the JIRA REST API for the structure required for various fields.

	fields?: string

	// Set issue from which link will be created.

	inwardissue?: string

	// An existing issue key to operate on.

	issue?: string

	// Set type of link, when action 'link' selected.

	linktype?: string

	// Require valid SSL certificates (set to `false` if you'd like to use self-signed certificates)

	validate_certs?: bool

	// Sets the assignee on create or transition operations. Note not all transitions will allow this.

	assignee?: string

	// The comment text to add.

	comment?: string

	// The issue description, where appropriate.

	description?: string

	// The issue type, for issue creation.

	issuetype?: string

	// Set issue to which link will be created.

	outwardissue?: string

	// The project for this operation. Required for issue creation.

	project?: string

	// The desired status; only relevant for the transition operation.

	status?: string

	// The issue summary, where appropriate.

	summary?: string

	// The username to log-in with.

	username: string

	// The operation to perform.

	operation: string

	// The password to log-in with.

	password: string

	// Set timeout, in seconds, on requests to JIRA API.

	timeout?: string

	// Base URI for the JIRA instance.

	uri: string
}

rundeck_acl_policy :: {

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

	// Sets the project which receive the ACL policy.
	// If unset, it's a system ACL policy.

	project?: string

	// Create or remove Rundeck project.

	state?: string

	// Sets the token to authenticate against Rundeck API.

	token: string
}

apache2_module :: {

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

utm_dns_host :: {

	// the timeout for the utm to resolve the ip address for the hostname again

	timeout?: string

	// The IPV4 Address of the entry. Can be left empty for automatic resolving.

	address?: string

	// The IPV6 Address of the entry. Can be left empty for automatic resolving.

	address6?: string

	// An optional comment to add to the dns host object

	comment?: string

	// The reference name of the interface to use. If not provided the default interface will be used

	interface?: string

	// The name of the object. Will be used to identify the entry

	name: string

	// whether the hostname's ipv6 address is already resolved or not

	resolved6?: bool

	// The hostname for the dns host object

	hostname?: string

	// whether the hostname's ipv4 address is already resolved or not

	resolved?: bool
}

utm_proxy_exception :: {

	// The name of the object. Will be used to identify the entry

	name: string

	// The operand to be used with the entries of the path parameter

	op?: string

	// Skip the Antivirus Scanning

	skipav?: bool

	// Enable form hardening with missing tokens

	skipform_missingtoken?: bool

	// Status of the exception rule set

	status?: bool

	// A list of threats to be skipped

	skip_custom_threats_filters?: [..._]

	// Enable static URL hardening

	skipurl?: bool

	// Define which categories of threats are skipped

	source?: [..._]

	// Block clients with bad reputation

	skipbadclients?: bool

	// Enable form hardening

	skipform?: bool

	// The paths the exception in the reverse proxy is defined for

	path?: [..._]

	// Define which categories of threats are skipped

	skip_threats_filter_categories?: [..._]

	// Skip the Cookie Signing check

	skipcookie?: bool

	// Protection against SQL

	skiphtmlrewrite?: bool

	// Enable true file type control

	skiptft?: bool
}

ejabberd_user :: {

	// the name of the user to manage

	username: string

	// the ejabberd host associated with this username

	host: string

	// enables or disables the local syslog facility for this module

	logging?: bool

	// the password to assign to the username

	password?: string

	// describe the desired state of the user to be managed

	state?: string
}

htpasswd :: {

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

	// Encryption scheme to be used.  As well as the four choices listed here, you can also use any other hash supported by passlib, such as md5_crypt and sha256_crypt, which are linux passwd hashes.  If you do so the password file will not be compatible with Apache or Nginx

	crypt_scheme?: string
}

nginx_status_info :: {

	// HTTP connection timeout in seconds.

	timeout?: int

	// URL of the nginx status.

	url: string
}

utm_proxy_location_info :: {

	// The name of the object. Will be used to identify the entry

	name: string
}

gunicorn :: {

	// Path to the virtualenv directory.

	venv?: string

	// The type of workers to use. The default class (sync) should handle most "normal" types of workloads.

	worker?: string

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
}

supervisorctl :: {

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

	// The name of the supervisord program or group to manage.
	// The name will be taken as group name when it ends with a colon I(:)
	// Group support is only available in Ansible version 1.6 or later.

	name: string

	// password to use for authentication

	password?: string

	// URL on which supervisord server is listening

	server_url?: string
}

taiga_issue :: {

	// The issue subject.

	subject: string

	// The hostname of the Taiga instance.

	taiga_host?: string

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

	// The issue status. Must exist previously.

	status?: string

	// A string describing the file to be attached to the issue.

	attachment_description?: string

	// The issue type. Must exist previously.

	issue_type: string

	// The issue priority. Must exist previously.

	priority?: string

	// A lists of tags to be assigned to the issue.

	tags?: string
}

utm_ca_host_key_cert_info :: {

	// The name of the object. Will be used to identify the entry

	name: string
}
