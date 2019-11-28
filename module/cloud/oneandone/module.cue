package oneandone

oneandone_monitoring_policy :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	oneandone_monitoring_policy: {

		// Servers to remove from the monitoring policy.

		remove_servers?: string

		// Monitoring policy thresholds. Each of the suboptions have warning and critical, which both have alert and value suboptions. Warning is used to set limits for warning alerts, critical is used to set critical alerts. alert enables alert, and value is used to advise when the value is exceeded.

		thresholds: string

		// Processes to be updated on the monitoring policy.

		update_processes?: string

		// Ports to add to the monitoring policy.

		add_ports?: string

		// Processes to add to the monitoring policy.

		add_processes?: string

		// Monitoring policy name used with present state. Used as identifier (id or name) when used with absent state. maxLength=128

		name: string

		// Array of processes that will be monitoring.

		processes: string

		// Custom API URL. Overrides the ONEANDONE_API_URL environement variable.

		api_url?: string

		// User's email. maxLength=128

		email: string

		// Authenticating API token provided by 1&1.

		auth_token: string

		// The identifier (id or name) of the monitoring policy used with update state.

		monitoring_policy: string

		// Ports to remove from the monitoring policy.

		remove_ports?: string

		// Processes to remove from the monitoring policy.

		remove_processes?: string

		// wait for the instance to be in state 'running' before returning

		wait?: bool

		// Defines the number of seconds to wait when using the _wait_for methods

		wait_interval?: string

		// Servers to add to the monitoring policy.

		add_servers?: string

		// Set true for using agent.

		agent: string

		// how long before wait gives up, in seconds

		wait_timeout?: string

		// Define a monitoring policy's state to create, remove, update.

		state?: string

		// Ports to be updated on the monitoring policy.

		update_ports?: string

		// Monitoring policy description. maxLength=256

		description?: string

		// Array of ports that will be monitoring.

		ports: string
	}
}

oneandone_private_network :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	oneandone_private_network: {

		// Authenticating API token provided by 1&1.

		auth_token: string

		// The identifier (id or name) of the network used with update state.

		private_network: string

		// List of server identifiers (name or id) to be removed from the private network.

		remove_members?: string

		// Define a network's state to create, remove, or update.

		state?: string

		// List of server identifiers (name or id) to be added to the private network.

		add_members?: string

		// Set the netmask for the private network, i.e. 255.255.255.0

		subnet_mask?: string

		// Defines the number of seconds to wait when using the _wait_for methods

		wait_interval?: string

		// The identifier of the datacenter where the private network will be created

		datacenter?: string

		// Set a private network space, i.e. 192.168.1.0

		network_address?: string

		// wait for the instance to be in state 'running' before returning

		wait?: bool

		// Custom API URL. Overrides the ONEANDONE_API_URL environement variable.

		api_url?: string

		// Set a description for the network.

		description?: string

		// Private network name used with present state. Used as identifier (id or name) when used with absent state.

		name: string

		// how long before wait gives up, in seconds

		wait_timeout?: string
	}
}

oneandone_public_ip :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	oneandone_public_ip: {

		// ID of the datacenter where the IP will be created (only for unassigned IPs).

		datacenter?: string

		// Reverse DNS name. maxLength=256

		reverse_dns?: string

		// wait for the instance to be in state 'running' before returning

		wait?: bool

		// Defines the number of seconds to wait when using the _wait_for methods

		wait_interval?: string

		// Custom API URL. Overrides the ONEANDONE_API_URL environement variable.

		api_url?: string

		// The ID of the public IP used with update and delete states.

		public_ip_id: string

		// Define a public ip state to create, remove, or update.

		state?: string

		// Type of IP. Currently, only IPV4 is available.

		type?: string

		// how long before wait gives up, in seconds

		wait_timeout?: string

		// Authenticating API token provided by 1&1.

		auth_token: string
	}
}

oneandone_server :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	oneandone_server: {

		// The private network name or ID.

		private_network?: string

		// The type of server to be built.

		server_type?: string

		// User's public SSH key (contents, not path).

		ssh_key?: string

		// The total number of processors. It must be provided with cores_per_processor, ram, and hdds parameters.

		vcore?: string

		// When creating multiple servers at once, whether to differentiate hostnames by appending a count after them or substituting the count where there is a %02d or %03d in the hostname string.

		auto_increment?: bool

		// The description of the server.

		description?: string

		// The instance size name or ID of the server. It is required only for 'present' state, and it is mutually exclusive with vcore, cores_per_processor, ram, and hdds parameters.

		fixed_instance_size: string

		// Define a server's state to create, remove, start or stop it.

		state?: string

		// how long before wait gives up, in seconds

		wait_timeout?: string

		// The number of servers to create.

		count?: string

		// The firewall policy name or ID.

		firewall_policy?: string

		// The amount of RAM memory. It must be provided with with vcore, cores_per_processor, and hdds parameters.

		ram?: string

		// The hostname or ID of the server. Only used when state is 'present'.

		hostname?: string

		// Wait for the server to be in state 'running' before returning. Also used for delete operation (set to 'false' if you don't want to wait for each individual server to be deleted before moving on with other tasks.)

		wait?: bool

		// Custom API URL. Overrides the ONEANDONE_API_URL environement variable.

		api_url?: string

		// The operating system name or ID for the server. It is required only for 'present' state.

		appliance?: string

		// The datacenter location.

		datacenter?: string

		// The load balancer name or ID.

		load_balancer?: string

		// The monitoring policy name or ID.

		monitoring_policy?: string

		// Server identifier (ID or hostname). It is required for all states except 'running' and 'present'.

		server?: string

		// Defines the number of seconds to wait when using the wait_for methods

		wait_interval?: string

		// Authenticating API token provided by 1&1. Overrides the ONEANDONE_AUTH_TOKEN environement variable.

		auth_token: string

		// The number of cores per processor. It must be provided with vcore, ram, and hdds parameters.

		cores_per_processor?: string

		// A list of hard disks with nested "size" and "is_main" properties. It must be provided with vcore, cores_per_processor, and ram parameters.

		hdds?: string
	}
}

oneandone_firewall_policy :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	oneandone_firewall_policy: {

		// wait for the instance to be in state 'running' before returning

		wait?: bool

		// how long before wait gives up, in seconds

		wait_timeout?: string

		// The identifier (id or name) of the firewall policy used with update state.

		firewall_policy: string

		// Firewall policy description. maxLength=256

		description?: string

		// A list of server IP ids to be unassigned from a firewall policy. Used in combination with update state.

		remove_server_ips?: string

		// A list of rules that will be added to an existing firewall policy. It is syntax is the same as the one used for rules parameter. Used in combination with update state.

		add_rules?: string

		// A list of rule ids that will be removed from an existing firewall policy. Used in combination with update state.

		remove_rules?: string

		// Defines the number of seconds to wait when using the _wait_for methods

		wait_interval?: string

		// Firewall policy name used with present state. Used as identifier (id or name) when used with absent state. maxLength=128

		name: string

		// Custom API URL. Overrides the ONEANDONE_API_URL environment variable.

		api_url?: string

		// Authenticating API token provided by 1&1.

		auth_token: string

		// A list of rules that will be set for the firewall policy. Each rule must contain protocol parameter, in addition to three optional parameters (port_from, port_to, and source)

		rules?: string

		// Define a firewall policy state to create, remove, or update.

		state?: string

		// A list of server identifiers (id or name) to be assigned to a firewall policy. Used in combination with update state.

		add_server_ips?: string
	}
}

oneandone_load_balancer :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	oneandone_load_balancer: {

		// Description of the load balancer. maxLength=256

		description?: string

		// Health check period in seconds. minimum=5, maximum=300, multipleOf=1

		health_check_interval: string

		// Regular expression to check. Required for HTTP health check. maxLength=64

		health_check_parse?: string

		// The identifier (id or name) of the load balancer used with update state.

		load_balancer: string

		// Persistence time in seconds. Required if persistence is enabled. minimum=30, maximum=1200, multipleOf=1

		persistence_time: string

		// A list of server identifiers (id or name) to be assigned to a load balancer. Used in combination with update state.

		add_server_ips?: string

		// Custom API URL. Overrides the ONEANDONE_API_URL environement variable.

		api_url?: string

		// ID or country code of the datacenter where the load balancer will be created.

		datacenter?: string

		// Type of the health check. At the moment, HTTP is not allowed.

		health_check_test: string

		// Balancing procedure.

		method: string

		// A list of server IP ids to be unassigned from a load balancer. Used in combination with update state.

		remove_server_ips?: string

		// A list of rules that will be added to an existing load balancer. It is syntax is the same as the one used for rules parameter. Used in combination with update state.

		add_rules?: string

		// Url to call for checking. Required for HTTP health check. maxLength=1000

		health_check_path?: string

		// A list of rule ids that will be removed from an existing load balancer. Used in combination with update state.

		remove_rules?: string

		// A list of rule objects that will be set for the load balancer. Each rule must contain protocol, port_balancer, and port_server parameters, in addition to source parameter, which is optional.

		rules: string

		// Define a load balancer state to create, remove, or update.

		state?: string

		// wait for the instance to be in state 'running' before returning

		wait?: bool

		// how long before wait gives up, in seconds

		wait_timeout?: string

		// Authenticating API token provided by 1&1.

		auth_token: string

		// Load balancer name used with present state. Used as identifier (id or name) when used with absent state. maxLength=128

		name: string

		// Persistence.

		persistence: bool

		// Defines the number of seconds to wait when using the _wait_for methods

		wait_interval?: string
	}
}
