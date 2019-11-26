package grafana

bigpanda :: {

	// State of the deployment.

	state: string

	// Base URL of the API server.

	url?: string

	// If C(no), SSL certificates for the target url will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool

	// The name of the component being deployed. Ex: billing

	component: string

	// Free text description of the deployment.

	description?: string

	// The person responsible for the deployment.

	owner?: string

	// The deployment version.

	version: string

	// The environment name, typically 'production', 'staging', etc.

	env?: string

	// Name of affected host name. Can be a list.

	hosts?: string

	// API token.

	token: string
}

logstash_plugin :: {

	// Proxy host to use during plugin installation.

	proxy_host?: string

	// Proxy port to use during plugin installation.

	proxy_port?: string

	// Apply plugin state.

	state?: string

	// Specify plugin Version of the plugin to install. If plugin exists with previous version, it will NOT be updated.

	version?: string

	// Install plugin with that name.

	name: string

	// Specify logstash-plugin to use for plugin management.

	plugin_bin?: string
}

monit :: {

	// The name of the I(monit) program/process to manage

	name: string

	// The state of service

	state: string

	// If there are pending actions for the service monitored by monit, then Ansible will check for up to this many seconds to verify the requested action has been performed. Ansible will sleep for five seconds between each check.

	timeout?: string
}

nagios :: {

	// The raw command to send to nagios, which should not include the submitted time header or the line-feed B(Required) option when using the C(command) action.

	command: string

	// Minutes to schedule downtime for.
	// Only usable with the C(downtime) action.

	minutes?: int

	// Action to take.
	// servicegroup options were added in 2.0.
	// delete_downtime options were added in 2.2.

	action: string

	// Author to leave downtime comments as. Only usable with the C(downtime) action.

	author?: string

	// Path to the nagios I(command file) (FIFO pipe). Only required if auto-detection fails.

	cmdfile?: string

	// Comment for C(downtime) action.

	comment?: string

	// Host to operate on in Nagios.

	host?: string

	// The Servicegroup we want to set downtimes/alerts for. B(Required) option when using the C(servicegroup_service_downtime) amd C(servicegroup_host_downtime).

	servicegroup?: string

	// What to manage downtime/alerts for. Separate multiple services with commas. C(service) is an alias for C(services). B(Required) option when using the C(downtime), C(enable_alerts), and C(disable_alerts) actions.

	services: string
}

rollbar_deployment :: {

	// Optional URL to submit the notification to.

	url?: string

	// User who deployed.

	user?: string

	// If C(no), SSL certificates for the target url will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool

	// Deploy comment (e.g. what is being deployed).

	comment?: string

	// Name of the environment being deployed, e.g. 'production'.

	environment: string

	// Revision number/sha being deployed.

	revision: string

	// Rollbar username of the user who deployed.

	rollbar_user?: string

	// Your project access token.

	token: string
}

airbrake_deployment :: {

	// The username of the person doing the deployment

	user?: string

	// If C(no), SSL certificates for the target url will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool

	// The airbrake environment name, typically 'production', 'staging', etc.

	environment: string

	// URL of the project repository

	repo?: string

	// A hash, number, tag, or other identifier showing what revision was deployed

	revision?: string

	// API token.

	token: string

	// Optional URL to submit the notification to. Use to send notifications to Airbrake-compliant tools like Errbit.

	url?: string
}

grafana_dashboard :: {

	// The Grafana API key.
	// If set, I(grafana_user) and I(grafana_password) will be ignored.

	grafana_api_key?: string

	// The Grafana Organisation ID where the dashboard will be imported / exported.
	// Not used when I(grafana_api_key) is set, because the grafana_api_key only belongs to one organisation..

	org_id?: string

	// State of the dashboard.

	state: string

	// The Grafana API password.

	url_password?: string

	// The Grafana API user.

	url_username?: string

	// PEM formatted certificate chain file to be used for SSL client authentication.
	// This file can also include the key as well, and if the key is included, client_key is not required

	client_cert?: string

	// PEM formatted file that contains your private key to be used for SSL client
	// authentication. If client_cert contains both the certificate and key, this option is not required

	client_key?: string

	// The path to the json file containing the Grafana dashboard to import or export.

	path?: string

	// uid of the dashboard to export when C(state) is C(export) or C(absent).

	uid?: string

	// Set a commit message for the version history.
	// Only used when C(state) is C(present).

	message?: string

	// Override existing dashboard when state is present.

	overwrite?: bool

	// Deprecated since Grafana 5. Use grafana dashboard uid instead.
	// slug of the dashboard. It's the friendly url name of the dashboard.
	// When C(state) is C(present), this parameter can override the slug in the meta section of the json file.
	// If you want to import a json dashboard exported directly from the interface (not from the api), you have to specify the slug parameter because there is no meta section in the exported json.

	slug?: string

	// The Grafana folder where this dashboard will be imported to.

	folder?: string

	// The Grafana URL.

	url: string

	// Boolean of whether or not to use proxy.

	use_proxy?: bool

	// If C(no), SSL certificates will not be validated.
	// This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool
}

grafana_plugin :: {

	// Full URL to the plugin zip file instead of downloading the file from U(https://grafana.com/api/plugins).
	// Requires grafana 4.6.x or later.

	grafana_plugin_url?: string

	// Directory where the Grafana plugin will be installed.
	// If omitted, defaults to C(/var/lib/grafana/plugins).

	grafana_plugins_dir?: string

	// URL to the Grafana plugin repository.
	// If omitted, grafana-cli will use the default value: U(https://grafana.com/api/plugins).

	grafana_repo?: string

	// Name of the plugin.

	name: string

	// Whether the plugin should be installed.

	state?: string

	// Version of the plugin to install.
	// Defaults to C(latest).

	version?: string
}

honeybadger_deployment :: {

	// A hash, number, tag, or other identifier showing what revision was deployed

	revision?: string

	// API token.

	token: string

	// Optional URL to submit the notification to.

	url?: string

	// The username of the person doing the deployment

	user?: string

	// If C(no), SSL certificates for the target url will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool

	// The environment name, typically 'production', 'staging', etc.

	environment: string

	// URL of the project repository

	repo?: string
}

icinga2_feature :: {

	// This is the feature name to enable or disable.

	name: string

	// If set to C(present) and feature is disabled, then feature is enabled.
	// If set to C(present) and feature is already enabled, then nothing is changed.
	// If set to C(absent) and feature is enabled, then feature is disabled.
	// If set to C(absent) and feature is already disabled, then nothing is changed.

	state?: string
}

newrelic_deployment :: {

	// API token, to place in the x-api-key header.

	token: string

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool

	// Name of the application

	appname?: string

	// A list of changes for this deployment

	changelog?: string

	// The environment for this deployment

	environment?: string

	// A revision number (e.g., git commit SHA)

	revision?: string

	// The name of the user/process that triggered this deployment

	user?: string

	// (one of app_name or application_id are required) The value of app_name in the newrelic.yml file used by the application

	app_name?: string

	// (one of app_name or application_id are required) The application id, found in the URL when viewing the application in RPM

	application_id?: string

	// Text annotation for the deployment - notes for you

	description?: string
}

spectrum_device :: {

	// Landscape handle of the SpectroServer to which add or remove the device.

	landscape: string

	// HTTP, HTTPS URL of the Oneclick server in the form (http|https)://host.domain[:port]

	url: string

	// if C(no), it will not use a proxy, even if one is defined in an environment variable on the target hosts.

	use_proxy?: bool

	// UDP port used for SNMP discovery.

	agentport?: string

	// SNMP community used for device discovery.
	// Required when C(state=present).

	community?: string

	// IP address of the device.
	// If a hostname is given, it will be resolved to the IP address.

	device: string

	// On C(present) creates the device when it does not exist.
	// On C(absent) removes the device when it exists.

	state?: string

	// Oneclick user password.

	url_password: string

	// Oneclick user name.

	url_username: string

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool
}

circonus_annotation :: {

	// Description of annotation

	description: string

	// Duration in seconds of annotation

	duration?: string

	// Unix timestamp of event start

	start?: string

	// Unix timestamp of event end

	stop?: string

	// Title of annotation

	title: string

	// Circonus API key

	api_key: string

	// Annotation Category

	category: string
}

icinga2_host :: {

	// List of variables.

	variables?: string

	// The command used to check if the host is alive.

	check_command?: string

	// PEM formatted certificate chain file to be used for SSL client authentication. This file can also include the key as well, and if the key is included, C(client_key) is not required.

	client_cert?: string

	// The template used to define the host.
	// Template cannot be modified after object creation.

	template?: string

	// If C(no), it will not use a proxy, even if one is defined in an environment variable on the target hosts.

	use_proxy?: bool

	// PEM formatted file that contains your private key to be used for SSL client authentication. If C(client_cert) contains both the certificate and key, this option is not required.

	client_key?: string

	// The name used to display the host.

	display_name?: string

	// HTTP, HTTPS, or FTP URL in the form (http|https|ftp)://[user[:pass]]@host.domain[:port]/path

	url: string

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool

	// httplib2, the library used by the uri module only sends authentication information when a webservice responds to an initial request with a 401 status. Since some basic auth services do not properly send a 401, logins will fail. This option forces the sending of the Basic authentication header upon initial request.

	force_basic_auth?: bool

	// The IP address of the host.

	ip: string

	// Apply feature state.

	state?: string

	// The zone from where this host should be polled.

	zone?: string

	// Name used to create / delete the host. This does not need to be the FQDN, but does needs to be unique.

	name: string

	// The password for use in HTTP basic authentication.
	// If the C(url_username) parameter is not specified, the C(url_password) parameter will not be used.

	url_password?: string

	// The username for use in HTTP basic authentication.
	// This parameter can be used without C(url_password) for sites that allow empty passwords.

	url_username?: string
}

logentries :: {

	// type of the log

	logtype?: string

	// name of the log

	name?: string

	// path to a log file

	path: string

	// following state of the log

	state?: string
}

statusio_maintenance :: {

	// The length of time in UTC that the maintenance will run             (starting from playbook runtime)

	minutes?: string

	// A descriptive title for the maintenance window

	title?: string

	// If it affects all components and containers

	all_infrastructure_affected?: bool

	// Notify subscribers now

	maintenance_notify_now?: bool

	// Message describing the maintenance window

	desc?: string

	// Time maintenance is expected to start (Hour:Minutes) (UTC)
	// End Time is worked out from start_time + minutes

	start_time?: string

	// Your unique API ID from status.io

	api_id: string

	// The given name of your component (server name)

	components?: string

	// Notify subscribers 24 hours before maintenance start time

	maintenance_notify_24_hr?: bool

	// Notify subscribers 72 hours before maintenance start time

	maintenance_notify_72_hr?: bool

	// Status.io API URL. A private apiary can be used instead.

	url?: string

	// The given name of your container (data center)

	containers?: string

	// Notify subscribers 1 hour before maintenance start time

	maintenance_notify_1_hr?: bool

	// The maintenance id number when deleting a maintenance window

	maintenance_id?: string

	// Date maintenance is expected to start (Month/Day/Year) (UTC)
	// End Date is worked out from start_date + minutes

	start_date?: string

	// Desired state of the package.

	state?: string

	// Your unique StatusPage ID from status.io

	statuspage: string

	// Your unique API Key from status.io

	api_key: string

	// Automatically start and end the maintenance window

	automation?: bool
}

uptimerobot :: {

	// Define whether or not the monitor should be running or paused.

	state: string

	// Uptime Robot API key.

	apikey: string

	// ID of the monitor to check.

	monitorid: string
}

grafana_datasource :: {

	// The opentsdb time resolution.

	tsdb_resolution?: string

	// The datasource login user for influxdb datasources.

	user?: string

	// Type for AWS authentication for CloudWatch datasource type (authType of grafana api)

	aws_auth_type?: string

	// Make this datasource the default one.

	is_default?: bool

	// The client TLS private key
	// Starts with ----- BEGIN RSA PRIVATE KEY -----

	tls_client_key?: string

	// The access mode for this datasource.

	access?: string

	// AWS secret key for CloudWatch datasource type when C(aws_auth_type) is C(keys)

	aws_secret_key?: string

	// TLS certificate path used by ansible to query grafana api

	client_cert?: string

	// TLS private key path used by ansible to query grafana api

	client_key?: string

	// Grafana Organisation ID in which the datasource should be created.
	// Not used when C(grafana_api_key) is set, because the C(grafana_api_key) only belong to one organisation.

	org_id?: string

	// The opentsdb version.
	// Use C(1) for <=2.1, C(2) for ==2.2, C(3) for ==2.3.

	tsdb_version?: string

	// AWS access key for CloudWatch datasource type when C(aws_auth_type) is C(keys)

	aws_access_key?: string

	// Elasticsearch version (for C(ds_type = elasticsearch) only)
	// Version 56 is for elasticsearch 5.6+ where you can specify the C(max_concurrent_shard_requests) option.

	es_version?: string

	// The Grafana URL.

	grafana_url: string

	// The datasource password

	password?: string

	// Status of the datasource

	state?: string

	// Boolean of whether or not to use proxy.

	use_proxy?: bool

	// Name of the database for the datasource.
	// This options is required when the C(ds_type) is C(influxdb), C(elasticsearch) (index name), C(mysql) or C(postgres).

	database?: string

	// Namespaces of Custom Metrics for CloudWatch datasource type

	aws_custom_metrics_namespaces?: string

	// For elasticsearch C(ds_type), this is the index pattern used.

	interval?: string

	// Name of the time field in elasticsearch ds.
	// For example C(@timestamp)

	time_field?: string

	// Whether credentials such as cookies or auth headers should be sent with cross-site requests.

	with_credentials?: bool

	// Profile for AWS credentials for CloudWatch datasource type when C(aws_auth_type) is C(credentials)

	aws_credentials_profile?: string

	// AWS default region for CloudWatch datasource type

	aws_default_region?: string

	// The datasource basic auth user.
	// Setting this option with basic_auth_password will enable basic auth.

	basic_auth_user?: string

	// Starting with elasticsearch 5.6, you can specify the max concurrent shard per requests.

	max_concurrent_shard_requests?: string

	// SSL mode for C(postgres) datasource type.

	sslmode?: string

	// The TLS CA certificate for self signed certificates.
	// Only used when C(tls_client_cert) and C(tls_client_key) are set.

	tls_ca_cert?: string

	// The client TLS certificate.
	// If C(tls_client_cert) and C(tls_client_key) are set, this will enable TLS authentication.
	// Starts with ----- BEGIN CERTIFICATE -----

	tls_client_cert?: string

	// The Grafana API password.

	url_password?: string

	// AWS IAM role arn to assume for CloudWatch datasource type when C(aws_auth_type) is C(arn)

	aws_assume_role_arn?: string

	// Whether to validate the Grafana certificate.

	validate_certs?: bool

	// The Grafana API user.

	url_username?: string

	// The name of the datasource.

	name: string

	// The URL of the datasource.

	url: string

	// The type of the datasource.

	ds_type: string

	// The Grafana API key.
	// If set, C(grafana_user) and C(grafana_password) will be ignored.

	grafana_api_key?: string

	// Minimum group by interval for C(influxdb) or C(elasticsearch) datasources.
	// for example C(>10s)

	time_interval?: string

	// Skip the TLS datasource certificate verification.

	tls_skip_verify?: bool

	// Use trends or not for zabbix datasource type

	trends?: bool

	// The datasource basic auth password, when C(basic auth) is C(yes).

	basic_auth_password?: string
}

librato_annotation :: {

	// The annotation stream name
	// If the annotation stream does not exist, it will be created automatically

	name?: string

	// The description contains extra metadata about a particular annotation
	// The description should contain specifics on the individual annotation e.g. Deployed 9b562b2 shipped new feature foo!

	description?: string

	// The unix timestamp indicating the time at which the event referenced by this annotation ended
	// For events that have a duration, this is a useful way to annotate the duration of the event

	end_time?: string

	// See examples

	links: string

	// The title of an annotation is a string and may contain spaces
	// The title should be a short, high-level summary of the annotation e.g. v45 Deployment

	title: string

	// Librato account username

	user: string

	// Librato account api key

	api_key: string

	// A string which describes the originating source of an annotation when that annotation is tracked across multiple members of a population

	source?: string

	// The unix timestamp indicating the time at which the event referenced by this annotation started

	start_time?: string
}

logicmonitor :: {

	// The type of LogicMonitor object you wish to manage.
	// Collector: Perform actions on a LogicMonitor collector.
	// NOTE You should use Ansible service modules such as M(service) or M(supervisorctl) for managing the Collector 'logicmonitor-agent' and 'logicmonitor-watchdog' services. Specifically, you'll probably want to start these services after a Collector add and stop these services before a Collector remove.
	// Host: Perform actions on a host device.
	// Hostgroup: Perform actions on a LogicMonitor host group.
	// NOTE Host and Hostgroup tasks should always be performed via delegate_to: localhost. There are no benefits to running these tasks on the remote host and doing so will typically cause problems.


	target: string

	// The LogicMonitor account company name. If you would log in to your account at "superheroes.logicmonitor.com" you would use "superheroes."

	company: string

	// The long text description of the object in your LogicMonitor account.
	// Optional for managing hosts and host groups (target=host or target=hostgroup; action=add or action=update).

	description?: string

	// The duration (minutes) of the Scheduled Down Time (SDT).
	// Optional for putting an object into SDT (action=sdt).

	duration?: string

	// A dictionary of properties to set on the LogicMonitor host or host group.
	// Optional for managing hosts and host groups (target=host or target=hostgroup; action=add or action=update).
	// This parameter will add or update existing properties in your LogicMonitor account.

	properties?: string

	// The action you wish to perform on target.
	// Add: Add an object to your LogicMonitor account.
	// Remove: Remove an object from your LogicMonitor account.
	// Update: Update properties, description, or groups (target=host) for an object in your LogicMonitor account.
	// SDT: Schedule downtime for an object in your LogicMonitor account.

	action: string

	// The display name of a host in your LogicMonitor account or the desired display name of a device to manage.
	// Optional for managing hosts (target=host).

	displayname?: string

	// A list of groups that the host should be a member of.
	// Optional for managing hosts (target=host; action=add or action=update).

	groups?: string

	// The hostname of a host in your LogicMonitor account, or the desired hostname of a device to manage.
	// Optional for managing hosts (target=host).

	hostname?: string

	// The time that the Scheduled Down Time (SDT) should begin.
	// Optional for managing SDT (action=sdt).
	// Y-m-d H:M

	starttime?: string

	// The fully qualified domain name of a collector in your LogicMonitor account.
	// This is required for the creation of a LogicMonitor host (target=host action=add).
	// This is required for updating, removing or scheduling downtime for hosts if 'displayname' isn't specified (target=host action=update action=remove action=sdt).

	collector?: string

	// The fullpath of the host group object you would like to manage.
	// Recommend running on a single Ansible host.
	// Required for management of LogicMonitor host groups (target=hostgroup).

	fullpath?: string

	// ID of the datasource to target.
	// Required for management of LogicMonitor datasources (target=datasource).

	id?: string

	// The password of the specified LogicMonitor user

	password: string

	// A boolean flag to turn alerting on or off for an object.
	// Optional for managing all hosts (action=add or action=update).

	alertenable?: bool

	// A LogicMonitor user name. The module will authenticate and perform actions on behalf of this user.

	user: string
}

logicmonitor_facts :: {

	// The fully qualified domain name of a collector in your LogicMonitor account.
	// This is optional for querying a LogicMonitor host when a displayname is specified.
	// This is required for querying a LogicMonitor host when a displayname is not specified.

	collector?: string

	// The LogicMonitor account company name. If you would log in to your account at "superheroes.logicmonitor.com" you would use "superheroes".

	company: string

	// The display name of a host in your LogicMonitor account or the desired display name of a device to add into monitoring.

	displayname?: string

	// The fullpath of the hostgroup object you would like to manage.
	// Recommend running on a single ansible host.
	// Required for management of LogicMonitor host groups (target=hostgroup).

	fullpath?: string

	// The hostname of a host in your LogicMonitor account, or the desired hostname of a device to add into monitoring.
	// Required for managing hosts (target=host).

	hostname?: string

	// The password for the chosen LogicMonitor User.
	// If an md5 hash is used, the digest flag must be set to true.

	password: string

	// The LogicMonitor object you wish to manage.

	target: string

	// A LogicMonitor user name. The module will authenticate and perform actions on behalf of this user.

	user: string
}

pagerduty :: {

	// Short description of maintenance window.

	desc?: string

	// Length of maintenance window in hours.

	hours?: string

	// Maintenance window in minutes (this is added to the hours).

	minutes?: string

	// A comma separated list of PagerDuty service IDs.

	service?: string

	// ID of maintenance window. Only needed when absent a maintenance_window.

	window_id?: string

	// PagerDuty unique subdomain. Obsolete. It is not used with PagerDuty REST v2 API.

	name?: string

	// ID of user making the request. Only needed when creating a maintenance_window.

	requester_id?: string

	// Create a maintenance window or get a list of ongoing windows.

	state: string

	// A pagerduty token, generated on the pagerduty site. It is used for authorization.

	token: string

	// PagerDuty user ID. Obsolete. Please, use I(token) for authorization.

	user?: string

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool
}

pagerduty_alert :: {

	// The GUID of one of your "Generic API" services. Obsolete. Please use I(integration_key).

	service_key?: string

	// Type of event to be sent.

	state: string

	// The pagerduty API key (readonly access), generated on the pagerduty site.

	api_key: string

	// For C(triggered) I(state) - Required. Short description of the problem that led to this trigger. This field (or a truncated version) will be used when generating phone calls, SMS messages and alert emails. It will also appear on the incidents tables in the PagerDuty UI. The maximum length is 1024 characters.
	// For C(acknowledged) or C(resolved) I(state) - Text that will appear in the incident's log associated with this event.

	desc?: string

	// Identifies the incident to which this I(state) should be applied.
	// For C(triggered) I(state) - If there's no open (i.e. unresolved) incident with this key, a new one will be created. If there's already an open incident with a matching key, this event will be appended to that incident's log. The event key provides an easy way to "de-dup" problem reports.
	// For C(acknowledged) or C(resolved) I(state) - This should be the incident_key you received back when the incident was first opened by a trigger event. Acknowledge events referencing resolved or nonexistent incidents will be discarded.

	incident_key?: string

	// ID of PagerDuty service when incidents will be triggered, acknowledged or resolved.

	service_id: string

	// The name of the monitoring client that is triggering this event.

	client?: string

	// The URL of the monitoring client that is triggering this event.

	client_url?: string

	// The GUID of one of your "Generic API" services.
	// This is the "integration key" listed on a "Integrations" tab of PagerDuty service.

	integration_key: string

	// PagerDuty unique subdomain. Obsolete. It is not used with PagerDuty REST v2 API.

	name?: string
}

pingdom :: {

	// Pingdom API key.

	key: string

	// Pingdom user password.

	passwd: string

	// Define whether or not the check should be running or paused.

	state: string

	// Pingdom user ID.

	uid: string

	// Pingdom ID of the check.

	checkid: string
}

stackdriver :: {

	// The type of event to send, either annotation or deploy

	event?: string

	// API key.

	key: string

	// one of INFO/WARN/ERROR, defaults to INFO if not supplied.  May affect display.

	level?: string

	// The contents of the annotation message, in plain text.  Limited to 256 characters. Required for annotation.

	msg?: string

	// The revision of the code that was deployed. Required for deploy events

	revision_id?: string

	// The person or robot who the annotation should be attributed to.

	annotated_by?: string

	// The environment code was deployed to. (ie: development, staging, production)

	deployed_to?: string

	// Unix timestamp of where the event should appear in the timeline, defaults to now. Be careful with this.

	event_epoch?: string

	// id of an EC2 instance that this event should be attached to, which will limit the contexts where this event is shown

	instance_id?: string

	// The repository (or project) deployed

	repository?: string

	// The person or robot responsible for deploying the code

	deployed_by?: string
}
