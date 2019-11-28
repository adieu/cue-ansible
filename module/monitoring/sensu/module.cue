package sensu

logentries :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	logentries: {

		// type of the log

		logtype?: string

		// name of the log

		name?: string

		// path to a log file

		path: string

		// following state of the log

		state?: string
	}
}

sensu_check :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	sensu_check: {

		// Whether the check should be scheduled at all.
		// You can still issue it via the sensu api

		publish?: bool

		// When to enable handling of check failures

		subdue_end?: string

		// Time to live in seconds until the check is considered stale

		ttl?: string

		// Classifies the check as an aggregate check,
		// making it available via the aggregate API

		aggregate?: bool

		// Create a backup file (if yes), including the timestamp information so
		// you can get the original file back if you somehow clobbered it incorrectly.

		backup?: bool

		// Path to the sensu check to run (not required when I(state=absent))

		command: string

		// Whether the check should be handled or not

		handle?: bool

		// Check interval in seconds

		interval?: string

		// List of subscribers/channels this check should run for
		// See sensu_subscribers to subscribe a machine to a channel

		subscribers?: string

		// Other checks this check depends on, if dependencies fail,
		// handling of this check will be disabled

		dependencies?: string

		// The low threshold for flap detection

		low_flap_threshold?: string

		// The name of the check
		// This is the key that is used to determine whether a check exists

		name: string

		// Whether the check should be present or not

		state?: string

		// When to disable handling of check failures

		subdue_begin?: string

		// Whether the check is a metric

		metric?: bool

		// Number of event occurrences before the handler should take action

		occurrences?: string

		// Path to the json file of the check to be added/removed.
		// Will be created if it does not exist (unless I(state=absent)).
		// The parent folders need to exist when I(state=present), otherwise an error will be thrown

		path?: string

		// Whether the check should be scheduled by the sensu client or server
		// This option obviates the need for specifying the I(subscribers) option

		standalone?: bool

		// Timeout for the check

		timeout?: string

		// A hash/dictionary of custom parameters for mixing to the configuration.
		// You can't rewrite others module parameters using this

		custom?: string

		// List of handlers to notify when the check fails

		handlers?: string

		// The high threshold for flap detection

		high_flap_threshold?: string

		// Number of seconds handlers should wait before taking second action

		refresh?: string

		// The check source, used to create a JIT Sensu client for an external resource (e.g. a network switch).

		source?: string
	}
}

sensu_client :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	sensu_client: {

		// A unique name for the client. The name cannot contain special characters or spaces.

		name?: string

		// Whether the client should be present or not

		state?: string

		// An address to help identify and reach the client. This is only informational, usually an IP address or hostname.

		address?: string

		// If a deregistration event should be created upon Sensu client process stop.

		deregister?: bool

		// If Sensu should monitor keepalives for this client.

		keepalives?: bool

		// Client definition attributes to redact (values) when logging and sending client keepalives.

		redact?: string

		// The socket definition scope, used to configure the Sensu client socket.

		socket?: string

		// The chef definition scope, used to configure the Sensu Enterprise Chef integration (Sensu Enterprise users only).

		chef?: string

		// The registration definition scope, used to configure Sensu registration event handlers.

		registration?: string

		// If safe mode is enabled for the client. Safe mode requires local check definitions in order to accept a check request and execute the check.

		safe_mode?: bool

		// The servicenow definition scope, used to configure the Sensu Enterprise ServiceNow integration (Sensu Enterprise users only).

		servicenow?: string

		// An array of client subscriptions, a list of roles and/or responsibilities assigned to the system (e.g. webserver).
		// These subscriptions determine which monitoring checks are executed by the client, as check requests are sent to subscriptions.
		// The subscriptions array items must be strings.

		subscriptions: string

		// The keepalive definition scope, used to configure Sensu client keepalives behavior (e.g. keepalive thresholds, etc).

		keepalive?: string

		// The ec2 definition scope, used to configure the Sensu Enterprise AWS EC2 integration (Sensu Enterprise users only).

		ec2?: string

		// The puppet definition scope, used to configure the Sensu Enterprise Puppet integration (Sensu Enterprise users only).

		puppet?: string

		// The deregistration definition scope, used to configure automated Sensu client de-registration.

		deregistration?: string
	}
}

circonus_annotation :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	circonus_annotation: {

		// Circonus API key

		api_key: string

		// Annotation Category

		category: string

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
	}
}

sensu_handler :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	sensu_handler: {

		// An array of check result severities the handler will handle.
		// NOTE: event resolution bypasses this filtering.

		severities?: string

		// If events matching one or more silence entries should be handled.

		handle_silenced?: bool

		// The Sensu event mutator (name) to use to mutate event data for the handler.

		mutator?: string

		// A unique name for the handler. The name cannot contain special characters or spaces.

		name: string

		// The handler command to be executed.
		// The event data is passed to the process via STDIN.
		// NOTE: the command attribute is only required for Pipe handlers (i.e. handlers configured with "type": "pipe").

		command?: string

		// An array of Sensu event filters (names) to use when filtering events for the handler.
		// Each array item must be a string.

		filters?: string

		// If events in the flapping state should be handled.

		handle_flapping?: bool

		// An array of Sensu event handlers (names) to use for events using the handler set.
		// Each array item must be a string.
		// NOTE: the handlers attribute is only required for handler sets (i.e. handlers configured with "type": "set").

		handlers?: string

		// The socket definition scope, used to configure the TCP/UDP handler socket.
		// NOTE: the socket attribute is only required for TCP/UDP handlers (i.e. handlers configured with "type": "tcp" or "type": "udp").

		socket?: string

		// The handler execution duration timeout in seconds (hard stop).
		// Only used by pipe and tcp handler types.

		timeout?: string

		// The handler type

		type: string

		// The Sensu event filter (name) to use when filtering events for the handler.

		filter?: string

		// The pipe definition scope, used to configure the Sensu transport pipe.
		// NOTE: the pipe attribute is only required for Transport handlers (i.e. handlers configured with "type": "transport").

		pipe?: string

		// Whether the handler should be present or not

		state?: string
	}
}

nagios :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	nagios: {

		// Action to take.
		// servicegroup options were added in 2.0.
		// delete_downtime options were added in 2.2.

		action: string

		// Path to the nagios I(command file) (FIFO pipe). Only required if auto-detection fails.

		cmdfile?: string

		// Comment for C(downtime) action.

		comment?: string

		// Minutes to schedule downtime for.
		// Only usable with the C(downtime) action.

		minutes?: int

		// The Servicegroup we want to set downtimes/alerts for. B(Required) option when using the C(servicegroup_service_downtime) amd C(servicegroup_host_downtime).

		servicegroup?: string

		// What to manage downtime/alerts for. Separate multiple services with commas. C(service) is an alias for C(services). B(Required) option when using the C(downtime), C(enable_alerts), and C(disable_alerts) actions.

		services: string

		// Author to leave downtime comments as. Only usable with the C(downtime) action.

		author?: string

		// The raw command to send to nagios, which should not include the submitted time header or the line-feed B(Required) option when using the C(command) action.

		command: string

		// Host to operate on in Nagios.

		host?: string
	}
}

pingdom :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	pingdom: {

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
}

newrelic_deployment :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	newrelic_deployment: {

		// Name of the application

		appname?: string

		// A list of changes for this deployment

		changelog?: string

		// Text annotation for the deployment - notes for you

		description?: string

		// The environment for this deployment

		environment?: string

		// A revision number (e.g., git commit SHA)

		revision?: string

		// API token, to place in the x-api-key header.

		token: string

		// The name of the user/process that triggered this deployment

		user?: string

		// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

		validate_certs?: bool

		// (one of app_name or application_id are required) The value of app_name in the newrelic.yml file used by the application

		app_name?: string

		// (one of app_name or application_id are required) The application id, found in the URL when viewing the application in RPM

		application_id?: string
	}
}

stackdriver :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	stackdriver: {

		// The person or robot who the annotation should be attributed to.

		annotated_by?: string

		// The person or robot responsible for deploying the code

		deployed_by?: string

		// The environment code was deployed to. (ie: development, staging, production)

		deployed_to?: string

		// id of an EC2 instance that this event should be attached to, which will limit the contexts where this event is shown

		instance_id?: string

		// API key.

		key: string

		// The contents of the annotation message, in plain text.  Limited to 256 characters. Required for annotation.

		msg?: string

		// The type of event to send, either annotation or deploy

		event?: string

		// Unix timestamp of where the event should appear in the timeline, defaults to now. Be careful with this.

		event_epoch?: string

		// one of INFO/WARN/ERROR, defaults to INFO if not supplied.  May affect display.

		level?: string

		// The repository (or project) deployed

		repository?: string

		// The revision of the code that was deployed. Required for deploy events

		revision_id?: string
	}
}

honeybadger_deployment :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	honeybadger_deployment: {

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

		// A hash, number, tag, or other identifier showing what revision was deployed

		revision?: string

		// API token.

		token: string
	}
}

logstash_plugin :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	logstash_plugin: {

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
}

librato_annotation :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	librato_annotation: {

		// The annotation stream name
		// If the annotation stream does not exist, it will be created automatically

		name?: string

		// A string which describes the originating source of an annotation when that annotation is tracked across multiple members of a population

		source?: string

		// The unix timestamp indicating the time at which the event referenced by this annotation started

		start_time?: string

		// The title of an annotation is a string and may contain spaces
		// The title should be a short, high-level summary of the annotation e.g. v45 Deployment

		title: string

		// The description contains extra metadata about a particular annotation
		// The description should contain specifics on the individual annotation e.g. Deployed 9b562b2 shipped new feature foo!

		description?: string

		// The unix timestamp indicating the time at which the event referenced by this annotation ended
		// For events that have a duration, this is a useful way to annotate the duration of the event

		end_time?: string

		// See examples

		links: string

		// Librato account username

		user: string

		// Librato account api key

		api_key: string
	}
}

logicmonitor :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	logicmonitor: {

		// A LogicMonitor user name. The module will authenticate and perform actions on behalf of this user.

		user: string

		// A boolean flag to turn alerting on or off for an object.
		// Optional for managing all hosts (action=add or action=update).

		alertenable?: bool

		// The fullpath of the host group object you would like to manage.
		// Recommend running on a single Ansible host.
		// Required for management of LogicMonitor host groups (target=hostgroup).

		fullpath?: string

		// A dictionary of properties to set on the LogicMonitor host or host group.
		// Optional for managing hosts and host groups (target=host or target=hostgroup; action=add or action=update).
		// This parameter will add or update existing properties in your LogicMonitor account.

		properties?: string

		// The time that the Scheduled Down Time (SDT) should begin.
		// Optional for managing SDT (action=sdt).
		// Y-m-d H:M

		starttime?: string

		// The long text description of the object in your LogicMonitor account.
		// Optional for managing hosts and host groups (target=host or target=hostgroup; action=add or action=update).

		description?: string

		// The display name of a host in your LogicMonitor account or the desired display name of a device to manage.
		// Optional for managing hosts (target=host).

		displayname?: string

		// The password of the specified LogicMonitor user

		password: string

		// The LogicMonitor account company name. If you would log in to your account at "superheroes.logicmonitor.com" you would use "superheroes."

		company: string

		// The hostname of a host in your LogicMonitor account, or the desired hostname of a device to manage.
		// Optional for managing hosts (target=host).

		hostname?: string

		// The type of LogicMonitor object you wish to manage.
		// Collector: Perform actions on a LogicMonitor collector.
		// NOTE You should use Ansible service modules such as M(service) or M(supervisorctl) for managing the Collector 'logicmonitor-agent' and 'logicmonitor-watchdog' services. Specifically, you'll probably want to start these services after a Collector add and stop these services before a Collector remove.
		// Host: Perform actions on a host device.
		// Hostgroup: Perform actions on a LogicMonitor host group.
		// NOTE Host and Hostgroup tasks should always be performed via delegate_to: localhost. There are no benefits to running these tasks on the remote host and doing so will typically cause problems.

		target: string

		// A list of groups that the host should be a member of.
		// Optional for managing hosts (target=host; action=add or action=update).

		groups?: string

		// ID of the datasource to target.
		// Required for management of LogicMonitor datasources (target=datasource).

		id?: string

		// The action you wish to perform on target.
		// Add: Add an object to your LogicMonitor account.
		// Remove: Remove an object from your LogicMonitor account.
		// Update: Update properties, description, or groups (target=host) for an object in your LogicMonitor account.
		// SDT: Schedule downtime for an object in your LogicMonitor account.

		action: string

		// The fully qualified domain name of a collector in your LogicMonitor account.
		// This is required for the creation of a LogicMonitor host (target=host action=add).
		// This is required for updating, removing or scheduling downtime for hosts if 'displayname' isn't specified (target=host action=update action=remove action=sdt).

		collector?: string

		// The duration (minutes) of the Scheduled Down Time (SDT).
		// Optional for putting an object into SDT (action=sdt).

		duration?: string
	}
}

airbrake_deployment :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	airbrake_deployment: {

		// Optional URL to submit the notification to. Use to send notifications to Airbrake-compliant tools like Errbit.

		url?: string

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
	}
}

icinga2_host :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	icinga2_host: {

		// List of variables.

		variables?: string

		// The IP address of the host.

		ip: string

		// Apply feature state.

		state?: string

		// The password for use in HTTP basic authentication.
		// If the C(url_username) parameter is not specified, the C(url_password) parameter will not be used.

		url_password?: string

		// If C(no), it will not use a proxy, even if one is defined in an environment variable on the target hosts.

		use_proxy?: bool

		// HTTP, HTTPS, or FTP URL in the form (http|https|ftp)://[user[:pass]]@host.domain[:port]/path

		url: string

		// The username for use in HTTP basic authentication.
		// This parameter can be used without C(url_password) for sites that allow empty passwords.

		url_username?: string

		// PEM formatted file that contains your private key to be used for SSL client authentication. If C(client_cert) contains both the certificate and key, this option is not required.

		client_key?: string

		// The name used to display the host.

		display_name?: string

		// httplib2, the library used by the uri module only sends authentication information when a webservice responds to an initial request with a 401 status. Since some basic auth services do not properly send a 401, logins will fail. This option forces the sending of the Basic authentication header upon initial request.

		force_basic_auth?: bool

		// Name used to create / delete the host. This does not need to be the FQDN, but does needs to be unique.

		name: string

		// The command used to check if the host is alive.

		check_command?: string

		// PEM formatted certificate chain file to be used for SSL client authentication. This file can also include the key as well, and if the key is included, C(client_key) is not required.

		client_cert?: string

		// The zone from where this host should be polled.

		zone?: string

		// The template used to define the host.
		// Template cannot be modified after object creation.

		template?: string

		// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

		validate_certs?: bool
	}
}

logicmonitor_facts :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	logicmonitor_facts: {

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

		// The fully qualified domain name of a collector in your LogicMonitor account.
		// This is optional for querying a LogicMonitor host when a displayname is specified.
		// This is required for querying a LogicMonitor host when a displayname is not specified.

		collector?: string
	}
}

pagerduty :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	pagerduty: {

		// Length of maintenance window in hours.

		hours?: string

		// A comma separated list of PagerDuty service IDs.

		service?: string

		// Create a maintenance window or get a list of ongoing windows.

		state: string

		// A pagerduty token, generated on the pagerduty site. It is used for authorization.

		token: string

		// PagerDuty user ID. Obsolete. Please, use I(token) for authorization.

		user?: string

		// ID of maintenance window. Only needed when absent a maintenance_window.

		window_id?: string

		// Short description of maintenance window.

		desc?: string

		// Maintenance window in minutes (this is added to the hours).

		minutes?: string

		// PagerDuty unique subdomain. Obsolete. It is not used with PagerDuty REST v2 API.

		name?: string

		// ID of user making the request. Only needed when creating a maintenance_window.

		requester_id?: string

		// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

		validate_certs?: bool
	}
}

spectrum_device :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	spectrum_device: {

		// SNMP community used for device discovery.
		// Required when C(state=present).

		community?: string

		// IP address of the device.
		// If a hostname is given, it will be resolved to the IP address.

		device: string

		// Landscape handle of the SpectroServer to which add or remove the device.

		landscape: string

		// Oneclick user password.

		url_password: string

		// UDP port used for SNMP discovery.

		agentport?: string

		// On C(present) creates the device when it does not exist.
		// On C(absent) removes the device when it exists.

		state?: string

		// HTTP, HTTPS URL of the Oneclick server in the form (http|https)://host.domain[:port]

		url: string

		// Oneclick user name.

		url_username: string

		// if C(no), it will not use a proxy, even if one is defined in an environment variable on the target hosts.

		use_proxy?: bool

		// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

		validate_certs?: bool
	}
}

bigpanda :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	bigpanda: {

		// Free text description of the deployment.

		description?: string

		// Name of affected host name. Can be a list.

		hosts?: string

		// State of the deployment.

		state: string

		// API token.

		token: string

		// If C(no), SSL certificates for the target url will not be validated. This should only be used on personally controlled sites using self-signed certificates.

		validate_certs?: bool

		// The deployment version.

		version: string

		// The name of the component being deployed. Ex: billing

		component: string

		// The person responsible for the deployment.

		owner?: string

		// Base URL of the API server.

		url?: string

		// The environment name, typically 'production', 'staging', etc.

		env?: string
	}
}

statusio_maintenance :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	statusio_maintenance: {

		// Notify subscribers 24 hours before maintenance start time

		maintenance_notify_24_hr?: bool

		// The length of time in UTC that the maintenance will run             (starting from playbook runtime)

		minutes?: string

		// Status.io API URL. A private apiary can be used instead.

		url?: string

		// Automatically start and end the maintenance window

		automation?: bool

		// The given name of your container (data center)

		containers?: string

		// Notify subscribers 1 hour before maintenance start time

		maintenance_notify_1_hr?: bool

		// Your unique API ID from status.io

		api_id: string

		// The given name of your component (server name)

		components?: string

		// Your unique StatusPage ID from status.io

		statuspage: string

		// A descriptive title for the maintenance window

		title?: string

		// Message describing the maintenance window

		desc?: string

		// The maintenance id number when deleting a maintenance window

		maintenance_id?: string

		// Desired state of the package.

		state?: string

		// Notify subscribers now

		maintenance_notify_now?: bool

		// Date maintenance is expected to start (Month/Day/Year) (UTC)
		// End Date is worked out from start_date + minutes

		start_date?: string

		// Time maintenance is expected to start (Hour:Minutes) (UTC)
		// End Time is worked out from start_time + minutes

		start_time?: string

		// If it affects all components and containers

		all_infrastructure_affected?: bool

		// Your unique API Key from status.io

		api_key: string

		// Notify subscribers 72 hours before maintenance start time

		maintenance_notify_72_hr?: bool
	}
}

pagerduty_alert :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	pagerduty_alert: {

		// The URL of the monitoring client that is triggering this event.

		client_url?: string

		// Identifies the incident to which this I(state) should be applied.
		// For C(triggered) I(state) - If there's no open (i.e. unresolved) incident with this key, a new one will be created. If there's already an open incident with a matching key, this event will be appended to that incident's log. The event key provides an easy way to "de-dup" problem reports.
		// For C(acknowledged) or C(resolved) I(state) - This should be the incident_key you received back when the incident was first opened by a trigger event. Acknowledge events referencing resolved or nonexistent incidents will be discarded.

		incident_key?: string

		// The GUID of one of your "Generic API" services.
		// This is the "integration key" listed on a "Integrations" tab of PagerDuty service.

		integration_key: string

		// ID of PagerDuty service when incidents will be triggered, acknowledged or resolved.

		service_id: string

		// The GUID of one of your "Generic API" services. Obsolete. Please use I(integration_key).

		service_key?: string

		// Type of event to be sent.

		state: string

		// The pagerduty API key (readonly access), generated on the pagerduty site.

		api_key: string

		// The name of the monitoring client that is triggering this event.

		client?: string

		// For C(triggered) I(state) - Required. Short description of the problem that led to this trigger. This field (or a truncated version) will be used when generating phone calls, SMS messages and alert emails. It will also appear on the incidents tables in the PagerDuty UI. The maximum length is 1024 characters.
		// For C(acknowledged) or C(resolved) I(state) - Text that will appear in the incident's log associated with this event.

		desc?: string

		// PagerDuty unique subdomain. Obsolete. It is not used with PagerDuty REST v2 API.

		name?: string
	}
}

uptimerobot :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	uptimerobot: {

		// Uptime Robot API key.

		apikey: string

		// ID of the monitor to check.

		monitorid: string

		// Define whether or not the monitor should be running or paused.

		state: string
	}
}

monit :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	monit: {

		// The name of the I(monit) program/process to manage

		name: string

		// The state of service

		state: string

		// If there are pending actions for the service monitored by monit, then Ansible will check for up to this many seconds to verify the requested action has been performed. Ansible will sleep for five seconds between each check.

		timeout?: string
	}
}

sensu_silence :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	sensu_silence: {

		// Specifies to create or clear (delete) a silence entry via the Sensu API

		state: string

		// Specifies the subscription which the silence entry applies to.
		// To create a silence entry for a client prepend C(client:) to client name. Example - C(client:server1.example.dev)

		subscription: string

		// Specifies the URL of the Sensu monitoring host server.

		url?: string

		// Specifies the check which the silence entry applies to.

		check?: string

		// Specifies the entity responsible for this entry.

		creator?: string

		// If specified, the silence entry will be automatically cleared after this number of seconds.

		expire?: string

		// If specified as true, the silence entry will be automatically cleared once the condition it is silencing is resolved.

		expire_on_resolve?: bool

		// If specified, this free-form string is used to provide context or rationale for the reason this silence entry was created.

		reason?: string
	}
}

sensu_subscription :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	sensu_subscription: {

		// Create a backup file (if yes), including the timestamp information so you
		// can get the original file back if you somehow clobbered it incorrectly.

		backup?: bool

		// The name of the channel

		name: string

		// Path to the subscriptions json file

		path?: string

		// Whether the machine should subscribe or unsubscribe from the channel

		state?: string
	}
}

icinga2_feature :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	icinga2_feature: {

		// This is the feature name to enable or disable.

		name: string

		// If set to C(present) and feature is disabled, then feature is enabled.
		// If set to C(present) and feature is already enabled, then nothing is changed.
		// If set to C(absent) and feature is enabled, then feature is disabled.
		// If set to C(absent) and feature is already disabled, then nothing is changed.

		state?: string
	}
}

rollbar_deployment :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	rollbar_deployment: {

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
}
