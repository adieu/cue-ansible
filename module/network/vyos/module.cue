package vyos

vyos_logging :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vyos_logging: {

		// If value of C(dest) is I(file) it indicates file-name, for I(user) it indicates username and for I(host) indicates the host name to be notified.

		name?: string

		// State of the logging configuration.

		state?: string

		// List of logging definitions.

		aggregate?: string

		// Destination of the logs.

		dest?: string

		// Set logging facility.

		facility?: string

		// Set logging severity levels.

		level?: string
	}
}

vyos_ping :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vyos_ping: {

		// Determines if the expected result is success or fail.

		state?: string

		// The time-to-live value for the ICMP packet(s).

		ttl?: int

		// Number of packets to send to check reachability.

		count?: int

		// The IP Address or hostname (resolvable by the device) of the remote node.

		dest: string

		// Determines the interval (in seconds) between consecutive pings.

		interval?: int

		// Determines the size (in bytes) of the ping packet(s).

		size?: int

		// The source interface or IP Address to use while sending the ping packet(s).

		source?: string
	}
}

vyos_config :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vyos_config: {

		// The C(match) argument controls the method used to match against the current active configuration.  By default, the desired config is matched against the active config and the deltas are loaded.  If the C(match) argument is set to C(none) the active configuration is ignored and the configuration is always loaded.

		match?: string

		// The C(save) argument controls whether or not changes made to the active configuration are saved to disk.  This is independent of committing the config.  When set to True, the active configuration is saved.

		save?: bool

		// The C(src) argument specifies the path to the source config file to load.  The source config file can either be in bracket format or set format.  The source file can include Jinja2 template variables.

		src?: string

		// The C(backup) argument will backup the current devices active configuration to the Ansible control host prior to making any changes. If the C(backup_options) value is not given, the backup file will be located in the backup folder in the playbook root directory or role root directory, if playbook is part of an ansible role. If the directory does not exist, it is created.

		backup?: bool

		// This is a dict object containing configurable options related to backup file path. The value of this option is read only when C(backup) is set to I(yes), if C(backup) is set to I(no) this option will be silently ignored.

		backup_options?: {...}

		// Allows a commit description to be specified to be included when the configuration is committed.  If the configuration is not changed or committed, this argument is ignored.

		comment?: string

		// The C(config) argument specifies the base configuration to use to compare against the desired configuration.  If this value is not specified, the module will automatically retrieve the current active configuration from the remote device.

		config?: string

		// The ordered set of configuration lines to be managed and compared with the existing configuration on the remote device.

		lines?: string
	}
}

vyos_l3_interfaces :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vyos_l3_interfaces: {

		// The state of the configuration after module completion.

		state?: string

		// The provided L3 interfaces configuration.

		config?: [...{...}]
	}
}

vyos_lldp_global :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vyos_lldp_global: {

		// The state of the configuration after module completion.

		state?: string

		// The provided link layer discovery protocol (LLDP) configuration.

		config?: {...}
	}
}

vyos_lldp_interface :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vyos_lldp_interface: {

		// List of interfaces LLDP should be configured on.

		aggregate?: [...]

		// Name of the interface LLDP should be configured on.

		name?: string

		// State of the LLDP configuration.

		state?: string
	}
}

vyos_lldp_interfaces :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vyos_lldp_interfaces: {

		// A list of lldp interfaces configurations.

		config?: [...]

		// The state of the configuration after module completion.

		state?: string
	}
}

vyos_vlan :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vyos_vlan: {

		// Configure Virtual interface address.

		address?: string

		// List of VLANs definitions.

		aggregate?: string

		// This is a intent option and checks the operational state of the for given vlan C(name) for associated interfaces. If the value in the C(associated_interfaces) does not match with the operational state of vlan on device it will result in failure.

		associated_interfaces?: string

		// List of interfaces that should be associated to the VLAN.

		interfaces: string

		// Purge VLANs not defined in the I(aggregate) parameter.

		purge?: bool

		// Delay the play should wait to check for declarative intent params values.

		delay?: string

		// Name of the VLAN.

		name?: string

		// State of the VLAN configuration.

		state?: string

		// ID of the VLAN. Range 0-4094.

		vlan_id: string
	}
}

vyos_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vyos_facts: {

		// When supplied, this argument will restrict the facts collected to a given subset. Possible values for this argument include all and the resources like interfaces. Can specify a list of values to include a larger subset. Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected. Valid subsets are 'all', 'interfaces', 'l3_interfaces', 'lag_interfaces', 'lldp_global', 'lldp_interfaces'.

		gather_network_resources?: string

		// When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, default, config, and neighbors. Can specify a list of values to include a larger subset. Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.

		gather_subset?: string
	}
}

vyos_interface :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vyos_interface: {

		// Interface link status.

		enabled?: bool

		// Maximum size of transmit packet.

		mtu?: string

		// Name of the Interface.

		name: string

		// Check the operational state of given interface C(name) for LLDP neighbor.
		// The following suboptions are available.

		neighbors?: string

		// Interface link speed.

		speed?: string

		// State of the Interface configuration, C(up) means present and operationally up and C(down) means present and operationally C(down)

		state?: string

		// List of Interfaces definitions.

		aggregate?: string

		// Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state argument which are I(state) with values C(up)/C(down) and I(neighbors).

		delay?: string

		// Description of Interface.

		description?: string

		// Interface link status.

		duplex?: string
	}
}

vyos_linkagg :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vyos_linkagg: {

		// List of link aggregation definitions.

		aggregate?: [...]

		// List of members of the link aggregation group.

		members?: [...]

		// Mode of the link aggregation group.

		mode?: string

		// Name of the link aggregation group.

		name: string

		// State of the link aggregation group.

		state?: string
	}
}

vyos_static_route :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vyos_static_route: {

		// Admin distance of the static route.

		admin_distance?: string

		// List of static route definitions

		aggregate?: string

		// Network prefix mask of the static route.

		mask?: string

		// Next hop IP of the static route.

		next_hop?: string

		// Network prefix of the static route. C(mask) param should be ignored if C(prefix) is provided with C(mask) value C(prefix/mask).

		prefix?: string

		// State of the static route configuration.

		state?: string
	}
}

vyos_system :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vyos_system: {

		// The new domain name to apply to the device.

		domain_name?: string

		// A list of domain names to search. Mutually exclusive with I(name_server)

		domain_search?: string

		// Configure the device hostname parameter. This option takes an ASCII string value.

		host_name?: string

		// A list of name servers to use with the device. Mutually exclusive with I(domain_search)

		name_servers?: string

		// Whether to apply (C(present)) or remove (C(absent)) the settings.

		state?: string
	}
}

vyos_lag_interfaces :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vyos_lag_interfaces: {

		// A list of link aggregation group configurations.

		config?: [...]

		// The state of the configuration after module completion.

		state?: string
	}
}

vyos_user :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vyos_user: {

		// The C(full_name) argument provides the full name of the user account to be created on the remote device. This argument accepts any text string value.

		full_name?: string

		// The C(level) argument configures the level of the user when logged into the system. This argument accepts string values admin or operator.

		level?: string

		// The username to be configured on the VyOS device. This argument accepts a string value and is mutually exclusive with the C(aggregate) argument. Please note that this option is not same as C(provider username).

		name?: string

		// Instructs the module to consider the resource definition absolute. It will remove any previously configured usernames on the device with the exception of the `admin` user (the current defined set of users).

		purge?: bool

		// Configures the state of the username definition as it relates to the device operational configuration. When set to I(present), the username(s) should be configured in the device active configuration and when set to I(absent) the username(s) should not be in the device active configuration

		state?: string

		// Since passwords are encrypted in the device running config, this argument will instruct the module when to change the password.  When set to C(always), the password will always be updated in the device and when set to C(on_create) the password will be updated only if the username is created.

		update_password?: string

		// The set of username objects to be configured on the remote VyOS device. The list entries can either be the username or a hash of username and properties. This argument is mutually exclusive with the C(name) argument.

		aggregate?: string

		// The password to be configured on the VyOS device. The password needs to be provided in clear and it will be encrypted on the device. Please note that this option is not same as C(provider password).

		configured_password?: string
	}
}

vyos_banner :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vyos_banner: {

		// Specifies whether or not the configuration is present in the current devices active running configuration.

		state?: string

		// The banner text that should be present in the remote device running configuration. This argument accepts a multiline string, with no empty lines. Requires I(state=present).

		text?: string

		// Specifies which banner that should be configured on the remote device.

		banner: string
	}
}

vyos_command :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vyos_command: {

		// The ordered set of commands to execute on the remote device running VyOS.  The output from the command execution is returned to the playbook.  If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of retries has been exceeded.

		commands: string

		// Configures the interval in seconds to wait between I(retries) of the command. If the command does not pass the specified conditions, the interval indicates how long to wait before trying the command again.

		interval?: string

		// The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy. Valid values are C(all) or C(any).  If the value is set to C(all) then all conditionals in the wait_for must be satisfied.  If the value is set to C(any) then only one of the values must be satisfied.

		match?: string

		// Specifies the number of retries a command should be tried before it is considered failed. The command is run on the target device every retry and evaluated against the I(wait_for) conditionals.

		retries?: string

		// Specifies what to evaluate from the output of the command and what conditionals to apply.  This argument will cause the task to wait for a particular conditional to be true before moving forward.  If the conditional is not true by the configured I(retries), the task fails. See examples.

		wait_for?: string
	}
}

vyos_interfaces :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vyos_interfaces: {

		// The provided interfaces configuration.

		config?: [...]

		// The state of the configuration after module completion.

		state?: string
	}
}

vyos_l3_interface :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vyos_l3_interface: {

		// IPv4 of the L3 interface.

		ipv4?: string

		// IPv6 of the L3 interface.

		ipv6?: string

		// Name of the L3 interface.

		name?: string

		// State of the L3 interface configuration.

		state?: string

		// List of L3 interfaces definitions

		aggregate?: string
	}
}

vyos_lldp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vyos_lldp: {

		// Name of the interfaces.

		interfaces?: [...]

		// State of the link aggregation group.

		state?: string
	}
}
