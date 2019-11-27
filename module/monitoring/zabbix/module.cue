package zabbix

icinga2_host :: {

	// The template used to define the host.
	// Template cannot be modified after object creation.

	template?: string

	// If C(no), it will not use a proxy, even if one is defined in an environment variable on the target hosts.

	use_proxy?: bool

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool

	// PEM formatted certificate chain file to be used for SSL client authentication. This file can also include the key as well, and if the key is included, C(client_key) is not required.

	client_cert?: string

	// PEM formatted file that contains your private key to be used for SSL client authentication. If C(client_cert) contains both the certificate and key, this option is not required.

	client_key?: string

	// The name used to display the host.

	display_name?: string

	// Name used to create / delete the host. This does not need to be the FQDN, but does needs to be unique.

	name: string

	// HTTP, HTTPS, or FTP URL in the form (http|https|ftp)://[user[:pass]]@host.domain[:port]/path

	url: string

	// List of variables.

	variables?: string

	// The command used to check if the host is alive.

	check_command?: string

	// Apply feature state.

	state?: string

	// The password for use in HTTP basic authentication.
	// If the C(url_username) parameter is not specified, the C(url_password) parameter will not be used.

	url_password?: string

	// The username for use in HTTP basic authentication.
	// This parameter can be used without C(url_password) for sites that allow empty passwords.

	url_username?: string

	// httplib2, the library used by the uri module only sends authentication information when a webservice responds to an initial request with a 401 status. Since some basic auth services do not properly send a 401, logins will fail. This option forces the sending of the Basic authentication header upon initial request.

	force_basic_auth?: bool

	// The IP address of the host.

	ip: string

	// The zone from where this host should be polled.

	zone?: string
}

nagios :: {

	// The Servicegroup we want to set downtimes/alerts for. B(Required) option when using the C(servicegroup_service_downtime) amd C(servicegroup_host_downtime).

	servicegroup?: string

	// Action to take.
	// servicegroup options were added in 2.0.
	// delete_downtime options were added in 2.2.

	action: string

	// Author to leave downtime comments as. Only usable with the C(downtime) action.

	author?: string

	// Path to the nagios I(command file) (FIFO pipe). Only required if auto-detection fails.

	cmdfile?: string

	// Host to operate on in Nagios.

	host?: string

	// The raw command to send to nagios, which should not include the submitted time header or the line-feed B(Required) option when using the C(command) action.

	command: string

	// Comment for C(downtime) action.

	comment?: string

	// Minutes to schedule downtime for.
	// Only usable with the C(downtime) action.

	minutes?: int

	// What to manage downtime/alerts for. Separate multiple services with commas. C(service) is an alias for C(services). B(Required) option when using the C(downtime), C(enable_alerts), and C(disable_alerts) actions.

	services: string
}

zabbix_proxy :: {

	// The preshared key, at least 32 hex digits. Required if either I(tls_connect) or I(tls_accept) has PSK enabled.

	tls_psk?: string

	// PSK identity. Required if either I(tls_connect) or I(tls_accept) has PSK enabled.

	tls_psk_identity?: string

	// Certificate subject.

	tls_subject?: string

	// Certificate issuer.

	ca_cert?: string

	// Description of the proxy.

	description?: string

	// Name of the proxy in Zabbix.

	proxy_name: string

	// Type of proxy. (4 - active, 5 - passive)

	status?: string

	// Dictionary with params for the interface when proxy is in passive mode
	// Available values are: dns, ip, main, port, type and useip.
	// Please review the interface documentation for more information on the supported properties
	// U(https://www.zabbix.com/documentation/3.2/manual/api/reference/proxy/object#proxy_interface)

	interface?: string

	// State of the proxy.
	// On C(present), it will create if proxy does not exist or update the proxy if the associated data is different.
	// On C(absent) will remove a proxy if it exists.

	state?: string

	// Connections from proxy.

	tls_accept?: string

	// Connections to proxy.

	tls_connect?: string
}

zabbix_template :: {

	// List of user macros to create for the template.
	// Macros that are not specified and are present on the existing template will be replaced.
	// See examples on how to pass macros.

	macros?: [..._]

	// List of host groups to add template to when template is created.
	// Replaces the current host groups the template belongs to if the template is already present.
	// Required when creating a new template with C(state=present) and I(template_name) is used. Not required when updating an existing template.

	template_groups?: [..._]

	// JSON dump of templates to import.
	// Multiple templates can be imported this way.
	// Mutually exclusive with I(template_name) and I(template_xml).

	template_json?: string

	// XML dump of templates to import.
	// Multiple templates can be imported this way.
	// You are advised to pass XML structure matching the structure used by your version of Zabbix server.
	// Custom XML structure can be imported as long as it is valid, but may not yield consistent idempotent results on subsequent runs.
	// Mutually exclusive with I(template_name) and I(template_json).

	template_xml?: string

	// List of template names to be unlinked and cleared from the template.
	// This option is ignored if template is being created for the first time.

	clear_templates?: [..._]

	// List of template names to be linked to the template.
	// Templates that are not specified and are linked to the existing template will be only unlinked and not cleared from the template.

	link_templates?: [..._]

	// Name of Zabbix template.
	// Required when I(template_json) or I(template_xml) are not used.
	// Mutually exclusive with I(template_json) and I(template_xml).

	template_name?: string

	// Format to use when dumping template with C(state=dump).

	dump_format?: string

	// Required state of the template.
	// On C(state=present) template will be created/imported or updated depending if it is already present.
	// On C(state=dump) template content will get dumped into required format specified in I(dump_format).
	// On C(state=absent) template will be deleted.

	state?: string
}

pagerduty_alert :: {

	// ID of PagerDuty service when incidents will be triggered, acknowledged or resolved.

	service_id: string

	// The pagerduty API key (readonly access), generated on the pagerduty site.

	api_key: string

	// The URL of the monitoring client that is triggering this event.

	client_url?: string

	// PagerDuty unique subdomain. Obsolete. It is not used with PagerDuty REST v2 API.

	name?: string

	// The GUID of one of your "Generic API" services.
	// This is the "integration key" listed on a "Integrations" tab of PagerDuty service.

	integration_key: string

	// The GUID of one of your "Generic API" services. Obsolete. Please use I(integration_key).

	service_key?: string

	// Type of event to be sent.

	state: string

	// The name of the monitoring client that is triggering this event.

	client?: string

	// For C(triggered) I(state) - Required. Short description of the problem that led to this trigger. This field (or a truncated version) will be used when generating phone calls, SMS messages and alert emails. It will also appear on the incidents tables in the PagerDuty UI. The maximum length is 1024 characters.
	// For C(acknowledged) or C(resolved) I(state) - Text that will appear in the incident's log associated with this event.

	desc?: string

	// Identifies the incident to which this I(state) should be applied.
	// For C(triggered) I(state) - If there's no open (i.e. unresolved) incident with this key, a new one will be created. If there's already an open incident with a matching key, this event will be appended to that incident's log. The event key provides an easy way to "de-dup" problem reports.
	// For C(acknowledged) or C(resolved) I(state) - This should be the incident_key you received back when the incident was first opened by a trigger event. Acknowledge events referencing resolved or nonexistent incidents will be discarded.

	incident_key?: string
}

zabbix_maintenance :: {

	// Create or remove a maintenance window. Maintenance window to remove is identified by name.

	state?: string

	// Type of maintenance. With data collection, or without.

	collect_data?: bool

	// Short description of maintenance window.

	desc: string

	// Host groups to manage maintenance window for. Separate multiple groups with commas. C(host_group) is an alias for C(host_groups). B(Required) option when C(state) is I(present) and no C(host_names) specified.

	host_groups?: string

	// Hosts to manage maintenance window for. Separate multiple hosts with commas. C(host_name) is an alias for C(host_names). B(Required) option when C(state) is I(present) and no C(host_groups) specified.

	host_names?: string

	// Length of maintenance window in minutes.

	minutes?: string

	// Unique name of maintenance window.

	name: string
}

bigpanda :: {

	// Name of affected host name. Can be a list.

	hosts?: string

	// API token.

	token: string

	// Base URL of the API server.

	url?: string

	// The deployment version.

	version: string

	// The name of the component being deployed. Ex: billing

	component: string

	// Free text description of the deployment.

	description?: string

	// The environment name, typically 'production', 'staging', etc.

	env?: string

	// The person responsible for the deployment.

	owner?: string

	// State of the deployment.

	state: string

	// If C(no), SSL certificates for the target url will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool
}

circonus_annotation :: {

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

	// Description of annotation

	description: string
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

logstash_plugin :: {

	// Install plugin with that name.

	name: string

	// Specify logstash-plugin to use for plugin management.

	plugin_bin?: string

	// Proxy host to use during plugin installation.

	proxy_host?: string

	// Proxy port to use during plugin installation.

	proxy_port?: string

	// Apply plugin state.

	state?: string

	// Specify plugin Version of the plugin to install. If plugin exists with previous version, it will NOT be updated.

	version?: string
}

pagerduty :: {

	// PagerDuty user ID. Obsolete. Please, use I(token) for authorization.

	user?: string

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool

	// Short description of maintenance window.

	desc?: string

	// Length of maintenance window in hours.

	hours?: string

	// ID of user making the request. Only needed when creating a maintenance_window.

	requester_id?: string

	// Create a maintenance window or get a list of ongoing windows.

	state: string

	// A pagerduty token, generated on the pagerduty site. It is used for authorization.

	token: string

	// Maintenance window in minutes (this is added to the hours).

	minutes?: string

	// PagerDuty unique subdomain. Obsolete. It is not used with PagerDuty REST v2 API.

	name?: string

	// A comma separated list of PagerDuty service IDs.

	service?: string

	// ID of maintenance window. Only needed when absent a maintenance_window.

	window_id?: string
}

librato_annotation :: {

	// The annotation stream name
	// If the annotation stream does not exist, it will be created automatically

	name?: string

	// The unix timestamp indicating the time at which the event referenced by this annotation started

	start_time?: string

	// Librato account api key

	api_key: string

	// The description contains extra metadata about a particular annotation
	// The description should contain specifics on the individual annotation e.g. Deployed 9b562b2 shipped new feature foo!

	description?: string

	// The unix timestamp indicating the time at which the event referenced by this annotation ended
	// For events that have a duration, this is a useful way to annotate the duration of the event

	end_time?: string

	// Librato account username

	user: string

	// See examples

	links: string

	// A string which describes the originating source of an annotation when that annotation is tracked across multiple members of a population

	source?: string

	// The title of an annotation is a string and may contain spaces
	// The title should be a short, high-level summary of the annotation e.g. v45 Deployment

	title: string
}

zabbix_host :: {

	// IPMI privilege level.
	// Please review the Host object documentation for more information on the supported properties
	// https://www.zabbix.com/documentation/3.4/manual/api/reference/host/object
	// Possible values are C(1) (callback), C(2) (user), C(3) (operator), C(4) (admin), C(5) (OEM), with C(2) being the API default.
	// also see the last note in the I(ipmi_authtype) documentation

	ipmi_privilege?: string

	// State of the host.
	// On C(present), it will create if host does not exist or update the host if the associated data is different.
	// On C(absent) will remove a host if it exists.

	state?: string

	// List of interfaces to be created for the host (see example below).
	// For more information, review host interface documentation at
	// U(https://www.zabbix.com/documentation/4.0/manual/api/reference/hostinterface/object)

	interfaces?: [..._]

	// Add Facts for a zabbix inventory (e.g. Tag) (see example below).
	// Please review the interface documentation for more information on the supported properties
	// U(https://www.zabbix.com/documentation/3.2/manual/api/reference/host/object#host_inventory)

	inventory_zabbix?: string

	// IPMI password.
	// also see the last note in the I(ipmi_authtype) documentation

	ipmi_password?: string

	// Specifies what types of connections are allowed for incoming connections.
	// The tls_accept parameter accepts values of 1 to 7
	// Possible values, 1 (no encryption), 2 (PSK), 4 (certificate).
	// Values can be combined.
	// Works only with >= Zabbix 3.0

	tls_accept?: string

	// Specifies what encryption to use for outgoing connections.
	// Possible values, 1 (no encryption), 2 (PSK), 4 (certificate).
	// Works only with >= Zabbix 3.0

	tls_connect?: string

	// Overwrite the host configuration, even if already present.

	force?: bool

	// Configure the inventory mode.

	inventory_mode?: string

	// IPMI authentication algorithm.
	// Please review the Host object documentation for more information on the supported properties
	// https://www.zabbix.com/documentation/3.4/manual/api/reference/host/object
	// Possible values are, C(0) (none), C(1) (MD2), C(2) (MD5), C(4) (straight), C(5) (OEM), C(6) (RMCP+), with -1 being the API default.
	// Please note that the Zabbix API will treat absent settings as default when updating any of the I(ipmi_)-options; this means that if you attempt to set any of the four options individually, the rest will be reset to default values.

	ipmi_authtype?: string

	// List of templates linked to the host.

	link_templates?: string

	// Monitoring status of the host.

	status?: string

	// Required certificate subject.
	// Works only with >= Zabbix 3.0

	tls_subject?: string

	// Required certificate issuer.
	// Works only with >= Zabbix 3.0

	ca_cert?: string

	// List of host groups the host is part of.

	host_groups?: string

	// IPMI username.
	// also see the last note in the I(ipmi_authtype) documentation

	ipmi_username?: string

	// PSK value is a hard to guess string of hexadecimal digits.
	// The preshared key, at least 32 hex digits. Required if either I(tls_connect) or I(tls_accept) has PSK enabled.
	// Works only with >= Zabbix 3.0

	tls_psk?: string

	// It is a unique name by which this specific PSK is referred to by Zabbix components
	// Do not put sensitive information in the PSK identity string, it is transmitted over the network unencrypted.
	// Works only with >= Zabbix 3.0

	tls_psk_identity?: string

	// Visible name of the host in Zabbix.

	visible_name?: string

	// Description of the host in Zabbix.

	description?: string

	// Name of the host in Zabbix.
	// I(host_name) is the unique identifier used and cannot be updated using this module.

	host_name: string

	// The name of the Zabbix proxy to be used.

	proxy?: string
}

zabbix_action :: {

	// Recovery message subject.
	// Works only with >= Zabbix 3.2

	recovery_default_subject?: string

	// Update operation (known as "Acknowledge operation" before Zabbix 4.0) message subject.
	// Works only with >= Zabbix 3.4

	acknowledge_default_subject?: string

	// Whether to pause escalation during maintenance periods or not.
	// Can be used when I(event_source=trigger).

	pause_in_maintenance?: bool

	// List of recovery operations.
	// C(Suboptions) are the same as for I(operations).
	// Works only with >= Zabbix 3.2

	recovery_operations?: [..._]

	// Problem message default text.

	default_message?: string

	// Recovery message text.
	// Works only with >= Zabbix 3.2

	recovery_default_message?: string

	// Type of events that the action will handle.
	// Required when C(state=present).

	event_source?: string

	// User-defined expression to be used for evaluating conditions of filters with a custom expression.
	// The expression must contain IDs that reference specific filter conditions by its formulaid.
	// The IDs used in the expression must exactly match the ones defined in the filter conditions. No condition can remain unused or omitted.
	// Required for custom expression filters.
	// Use sequential IDs that start at "A". If non-sequential IDs are used, Zabbix re-indexes them. This makes each module run notice the difference in IDs and update the action.

	formula?: string

	// Name of the action

	name: string

	// List of action operations

	operations?: [..._]

	// Update operation (known as "Acknowledge operation" before Zabbix 4.0) message text.
	// Works only with >= Zabbix 3.4

	acknowledge_default_message?: string

	// List of dictionaries of conditions to evaluate.
	// For more information about suboptions of this option please check out Zabbix API documentation U(https://www.zabbix.com/documentation/3.4/manual/api/reference/action/object#action_filter_condition)

	conditions?: [..._]

	// Default operation step duration. Must be greater than 60 seconds. Accepts seconds, time unit with suffix and user macro.
	// Required when C(state=present).

	esc_period?: string

	// Filter condition evaluation method.
	// Defaults to C(andor) if conditions are less then 2 or if I(formula) is not specified.
	// Defaults to C(custom_expression) when formula is specified.

	eval_type?: string

	// State of the action.
	// On C(present), it will create an action if it does not exist or update the action if the associated data is different.
	// On C(absent), it will remove the action if it exists.

	state?: string

	// Status of the action.

	status?: string

	// List of acknowledge operations.
	// C(Suboptions) are the same as for I(operations).
	// Works only with >= Zabbix 3.4

	acknowledge_operations?: [..._]

	// Problem message default subject.

	default_subject?: string
}

zabbix_user_info :: {

	// Name of the user alias in Zabbix.

	alias: string
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

rollbar_deployment :: {

	// Your project access token.

	token: string

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
}

stackdriver :: {

	// API key.

	key: string

	// The repository (or project) deployed

	repository?: string

	// The person or robot who the annotation should be attributed to.

	annotated_by?: string

	// The type of event to send, either annotation or deploy

	event?: string

	// Unix timestamp of where the event should appear in the timeline, defaults to now. Be careful with this.

	event_epoch?: string

	// id of an EC2 instance that this event should be attached to, which will limit the contexts where this event is shown

	instance_id?: string

	// The revision of the code that was deployed. Required for deploy events

	revision_id?: string

	// The person or robot responsible for deploying the code

	deployed_by?: string

	// The environment code was deployed to. (ie: development, staging, production)

	deployed_to?: string

	// one of INFO/WARN/ERROR, defaults to INFO if not supplied.  May affect display.

	level?: string

	// The contents of the annotation message, in plain text.  Limited to 256 characters. Required for annotation.

	msg?: string
}

statusio_maintenance :: {

	// Message describing the maintenance window

	desc?: string

	// Notify subscribers now

	maintenance_notify_now?: bool

	// The length of time in UTC that the maintenance will run             (starting from playbook runtime)

	minutes?: string

	// Desired state of the package.

	state?: string

	// The given name of your container (data center)

	containers?: string

	// Notify subscribers 72 hours before maintenance start time

	maintenance_notify_72_hr?: bool

	// Date maintenance is expected to start (Month/Day/Year) (UTC)
	// End Date is worked out from start_date + minutes

	start_date?: string

	// Time maintenance is expected to start (Hour:Minutes) (UTC)
	// End Time is worked out from start_time + minutes

	start_time?: string

	// Your unique StatusPage ID from status.io

	statuspage: string

	// A descriptive title for the maintenance window

	title?: string

	// Your unique API ID from status.io

	api_id: string

	// Notify subscribers 1 hour before maintenance start time

	maintenance_notify_1_hr?: bool

	// Status.io API URL. A private apiary can be used instead.

	url?: string

	// If it affects all components and containers

	all_infrastructure_affected?: bool

	// Automatically start and end the maintenance window

	automation?: bool

	// The given name of your component (server name)

	components?: string

	// The maintenance id number when deleting a maintenance window

	maintenance_id?: string

	// Notify subscribers 24 hours before maintenance start time

	maintenance_notify_24_hr?: bool

	// Your unique API Key from status.io

	api_key: string
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

logicmonitor_facts :: {

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

	// The fully qualified domain name of a collector in your LogicMonitor account.
	// This is optional for querying a LogicMonitor host when a displayname is specified.
	// This is required for querying a LogicMonitor host when a displayname is not specified.

	collector?: string

	// The LogicMonitor account company name. If you would log in to your account at "superheroes.logicmonitor.com" you would use "superheroes".

	company: string

	// The display name of a host in your LogicMonitor account or the desired display name of a device to add into monitoring.

	displayname?: string
}

zabbix_map :: {

	// Whether the problem trigger will be displayed for elements with a single problem.

	expand_problem?: bool

	// Height of the map.

	height?: string

	// Map element label type.

	label_type?: string

	// Size of white space between map's borders and its elements.

	margin?: string

	// Graph written in DOT language.

	data?: string

	// Name of the Zabbix image used to display the element if this element doesn't have the C(zbx_image) attribute defined.

	default_image?: string

	// State of the map.
	// On C(present), it will create if map does not exist or update the map if the associated data is different.
	// On C(absent) will remove the map if it exists.

	state?: string

	// Width of the map.

	width?: string

	// Whether icon highlighting is enabled.

	highlight?: bool

	// Name of the map.

	name: string
}

zabbix_screen :: {

	// List of screens to be created/updated/deleted (see example).

	screens: [..._]
}

zabbix_user :: {

	// Override password.

	override_passwd?: bool

	// Surname of the user.

	surname?: string

	// Language code of the user's language.

	lang?: string

	// Automatic refresh period in seconds.

	refresh?: string

	// Amount of object rows to show per page.

	rows_per_page?: string

	// User's theme.

	theme?: string

	// Whether to enable auto-login.
	// If enable autologin, cannot enable autologout.

	autologin?: bool

	// User session life time in seconds. If set to 0, the session will never expire.
	// If enable autologout, cannot enable autologin.

	autologout?: string

	// Name of the user.

	name?: string

	// State of the user.
	// On C(present), it will create if user does not exist or update the user if the associated data is different.
	// On C(absent) will remove a user if it exists.

	state?: string

	// Type of the user.

	type?: string

	// Set the user's media.

	user_medias?: [..._]

	// Name of the user alias in Zabbix.
	// alias is the unique identifier used and cannot be updated using this module.

	alias: string

	// User's password.

	passwd: string

	// User groups to add the user to.

	usrgrps?: [..._]

	// URL of the page to redirect the user to after logging in.

	after_login_url?: string
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

spectrum_device :: {

	// UDP port used for SNMP discovery.

	agentport?: string

	// IP address of the device.
	// If a hostname is given, it will be resolved to the IP address.

	device: string

	// On C(present) creates the device when it does not exist.
	// On C(absent) removes the device when it exists.

	state?: string

	// HTTP, HTTPS URL of the Oneclick server in the form (http|https)://host.domain[:port]

	url: string

	// Oneclick user password.

	url_password: string

	// SNMP community used for device discovery.
	// Required when C(state=present).

	community?: string

	// Landscape handle of the SpectroServer to which add or remove the device.

	landscape: string

	// Oneclick user name.

	url_username: string

	// if C(no), it will not use a proxy, even if one is defined in an environment variable on the target hosts.

	use_proxy?: bool

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool
}

uptimerobot :: {

	// Uptime Robot API key.

	apikey: string

	// ID of the monitor to check.

	monitorid: string

	// Define whether or not the monitor should be running or paused.

	state: string
}

zabbix_host_info :: {

	// Find the exact match

	exact_match?: bool

	// List of host inventory keys to display in result.
	// Whole host inventory is retrieved if keys are not specified.

	host_inventory?: [..._]

	// Host interface IP of the host in Zabbix.

	host_ip?: string

	// Name of the host in Zabbix.
	// host_name is the unique identifier used and cannot be updated using this module.

	host_name: string

	// Remove duplicate host from host result

	remove_duplicate?: bool
}

zabbix_hostmacro :: {

	// Value of the host macro.

	macro_value: string

	// State of the macro.
	// On C(present), it will create if macro does not exist or update the macro if the associated data is different.
	// On C(absent) will remove a macro if it exists.

	state?: string

	// Only updates an existing macro if set to C(yes).

	force?: bool

	// Name of the host.

	host_name: string

	// Name of the host macro without the enclosing curly braces and the leading dollar sign.

	macro_name: string
}

monit :: {

	// The name of the I(monit) program/process to manage

	name: string

	// The state of service

	state: string

	// If there are pending actions for the service monitored by monit, then Ansible will check for up to this many seconds to verify the requested action has been performed. Ansible will sleep for five seconds between each check.

	timeout?: string
}

zabbix_group_info :: {

	// Name of the hostgroup in Zabbix.
	// hostgroup is the unique identifier used and cannot be updated using this module.

	hostgroup_name: string
}

logicmonitor :: {

	// The action you wish to perform on target.
	// Add: Add an object to your LogicMonitor account.
	// Remove: Remove an object from your LogicMonitor account.
	// Update: Update properties, description, or groups (target=host) for an object in your LogicMonitor account.
	// SDT: Schedule downtime for an object in your LogicMonitor account.

	action: string

	// The display name of a host in your LogicMonitor account or the desired display name of a device to manage.
	// Optional for managing hosts (target=host).

	displayname?: string

	// The time that the Scheduled Down Time (SDT) should begin.
	// Optional for managing SDT (action=sdt).
	// Y-m-d H:M

	starttime?: string

	// A LogicMonitor user name. The module will authenticate and perform actions on behalf of this user.

	user: string

	// The fully qualified domain name of a collector in your LogicMonitor account.
	// This is required for the creation of a LogicMonitor host (target=host action=add).
	// This is required for updating, removing or scheduling downtime for hosts if 'displayname' isn't specified (target=host action=update action=remove action=sdt).

	collector?: string

	// The long text description of the object in your LogicMonitor account.
	// Optional for managing hosts and host groups (target=host or target=hostgroup; action=add or action=update).

	description?: string

	// The duration (minutes) of the Scheduled Down Time (SDT).
	// Optional for putting an object into SDT (action=sdt).

	duration?: string

	// The fullpath of the host group object you would like to manage.
	// Recommend running on a single Ansible host.
	// Required for management of LogicMonitor host groups (target=hostgroup).

	fullpath?: string

	// A list of groups that the host should be a member of.
	// Optional for managing hosts (target=host; action=add or action=update).

	groups?: string

	// The hostname of a host in your LogicMonitor account, or the desired hostname of a device to manage.
	// Optional for managing hosts (target=host).

	hostname?: string

	// The password of the specified LogicMonitor user

	password: string

	// A boolean flag to turn alerting on or off for an object.
	// Optional for managing all hosts (action=add or action=update).

	alertenable?: bool

	// The LogicMonitor account company name. If you would log in to your account at "superheroes.logicmonitor.com" you would use "superheroes."

	company: string

	// ID of the datasource to target.
	// Required for management of LogicMonitor datasources (target=datasource).

	id?: string

	// A dictionary of properties to set on the LogicMonitor host or host group.
	// Optional for managing hosts and host groups (target=host or target=hostgroup; action=add or action=update).
	// This parameter will add or update existing properties in your LogicMonitor account.

	properties?: string

	// The type of LogicMonitor object you wish to manage.
	// Collector: Perform actions on a LogicMonitor collector.
	// NOTE You should use Ansible service modules such as M(service) or M(supervisorctl) for managing the Collector 'logicmonitor-agent' and 'logicmonitor-watchdog' services. Specifically, you'll probably want to start these services after a Collector add and stop these services before a Collector remove.
	// Host: Perform actions on a host device.
	// Hostgroup: Perform actions on a LogicMonitor host group.
	// NOTE Host and Hostgroup tasks should always be performed via delegate_to: localhost. There are no benefits to running these tasks on the remote host and doing so will typically cause problems.


	target: string
}

newrelic_deployment :: {

	// (one of app_name or application_id are required) The application id, found in the URL when viewing the application in RPM

	application_id?: string

	// A list of changes for this deployment

	changelog?: string

	// A revision number (e.g., git commit SHA)

	revision?: string

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool

	// (one of app_name or application_id are required) The value of app_name in the newrelic.yml file used by the application

	app_name?: string

	// Name of the application

	appname?: string

	// Text annotation for the deployment - notes for you

	description?: string

	// The environment for this deployment

	environment?: string

	// API token, to place in the x-api-key header.

	token: string

	// The name of the user/process that triggered this deployment

	user?: string
}

zabbix_group :: {

	// List of host groups to create or delete.

	host_groups: string

	// Create or delete host group.

	state?: string
}

zabbix_mediatype :: {

	// Name of the media type.

	name: string

	// Whether SMTP authentication with username and password should be enabled or not.
	// If set to C(true), C(username) and C(password) should be specified.

	smtp_authentication?: bool

	// SMTP server host.
	// Required when I(type=email).

	smtp_server?: string

	// SMTP server port.
	// Required when I(type=email).

	smtp_server_port?: int

	// SSL verify host for SMTP.
	// Can be specified when I(smtp_security=STARTTLS) or I(smtp_security=SSL/TLS)

	smtp_verify_host?: bool

	// Desired state of the mediatype.
	// On C(present), it will create a mediatype if it does not exist or update the mediatype if the associated data is different.
	// On C(absent), it will remove the mediatype if it exists.

	state: string

	// The maximum number of attempts to send an alert.
	// Possible range is 0-10

	max_attempts?: int

	// The maximum number of alerts that can be processed in parallel.
	// Possible value is 1 when I(type=sms) and 0-100 otherwise.

	max_sessions?: int

	// Email address from which notifications will be sent.
	// Required when I(type=email).

	smtp_email?: string

	// SMTP connection security level to use.

	smtp_security?: string

	// SSL verify peer for SMTP.
	// Can be specified when I(smtp_security=STARTTLS) or I(smtp_security=SSL/TLS)

	smtp_verify_peer?: bool

	// Serial device name of the gsm modem.
	// Required when I(type=sms).

	gsm_modem?: string

	// Authentication password.
	// Required when I(type=jabber) or I(type=ez_texting).
	// Required when I(type=email) and I(smtp_authentication=true).

	password?: string

	// Whether the media type is enabled or no.

	status?: string

	// Type of the media type.

	type: string

	// Username or Jabber identifier.
	// Required when I(type=jabber) or I(type=ez_texting).
	// Required when I(type=email) and I(smtp_authentication=true).

	username?: string

	// The message text limit.
	// Required when I(type=ez_texting).
	// 160 characters for USA and 136 characters for Canada.

	message_text_limit?: string

	// List of script parameters.
	// Required when I(type=script).

	script_params?: [..._]

	// SMTP HELO.
	// Required when I(type=email).

	smtp_helo?: string

	// The interval between retry attempts.
	// Possible range is 0-60

	attempt_interval?: int

	// The name of the executed script.
	// Required when I(type=script).

	script_name?: string
}

zabbix_valuemap :: {

	// List of value mappings for the value map.

	mappings: [..._]

	// Name of the value map.

	name: string

	// State of the value map.
	// On C(present), it will create a value map if it does not exist or update the value map if the associated data is different.
	// On C(absent), it will remove the value map if it exists.

	state?: string
}
