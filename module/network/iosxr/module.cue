package iosxr

iosxr_system :: {

	// Configure the IP domain name on the remote device to the provided value. Value should be in the dotted name form and will be appended to the C(hostname) to create a fully-qualified domain name.

	domain_name?: string

	// Provides the list of domain suffixes to append to the hostname for the purpose of doing name resolution. This argument accepts a list of names and will be reconciled with the current active configuration on the running node.

	domain_search?: string

	// Configure the device hostname parameter. This option takes an ASCII string value.

	hostname?: string

	// Provides administrative control for enabling or disabling DNS lookups.  When this argument is set to True, lookups are performed and when it is set to False, lookups are not performed.

	lookup_enabled?: bool

	// The C(lookup_source) argument provides one or more source interfaces to use for performing DNS lookups.  The interface provided in C(lookup_source) must be a valid interface configured on the device.

	lookup_source?: string

	// The C(name_serves) argument accepts a list of DNS name servers by way of either FQDN or IP address to use to perform name resolution lookups.  This argument accepts wither a list of DNS servers See examples.

	name_servers?: string

	// State of the configuration values in the device's current active configuration.  When set to I(present), the values should be configured in the device active configuration and when set to I(absent) the values should not be in the device active configuration

	state?: string

	// VRF name for domain services

	vrf?: string
}

iosxr_user :: {

	// The password to be configured on the Cisco IOS XR device. The password needs to be provided in clear text. Password is encrypted on the device when used with I(cli) and by Ansible when used with I(netconf) using the same MD5 hash technique with salt size of 3. Please note that this option is not same as C(provider password).

	configured_password?: string

	// Configures the group for the username in the device running configuration. The argument accepts a string value defining the group name. This argument does not check if the group has been configured on the device.

	group?: string

	// Configures the groups for the username in the device running configuration. The argument accepts a list of group names. This argument does not check if the group has been configured on the device. It is similar to the aggregate command for usernames, but lets you configure multiple groups for the user(s).

	groups?: string

	// The username to be configured on the Cisco IOS XR device. This argument accepts a string value and is mutually exclusive with the C(aggregate) argument. Please note that this option is not same as C(provider username).

	name?: string

	// Instructs the module to consider the resource definition absolute. It will remove any previously configured usernames on the device with the exception of the `admin` user and the current defined set of users.

	purge?: bool

	// Since passwords are encrypted in the device running config, this argument will instruct the module when to change the password.  When set to C(always), the password will always be updated in the device and when set to C(on_create) the password will be updated only if the username is created.

	update_password?: string

	// Enters into administration configuration mode for making config changes to the device.
	// Applicable only when using network_cli transport

	admin?: bool

	// The set of username objects to be configured on the remote Cisco IOS XR device. The list entries can either be the username or a hash of username and properties. This argument is mutually exclusive with the C(name) argument.

	aggregate?: string

	// Configures the contents of the public keyfile to upload to the IOS-XR node. This enables users to login using the accompanying private key. IOS-XR only accepts base64 decoded files, so this will be decoded and uploaded to the node. Do note that this requires an OpenSSL public key file, PuTTy generated files will not work! Mutually exclusive with public_key_contents. If used with multiple users in aggregates, then the same key file is used for all users.

	public_key?: string

	// Configures the contents of the public keyfile to upload to the IOS-XR node. This enables users to login using the accompanying private key. IOS-XR only accepts base64 decoded files, so this will be decoded and uploaded to the node. Do note that this requires an OpenSSL public key file, PuTTy generated files will not work! Mutually exclusive with public_key.If used with multiple users in aggregates, then the same key file is used for all users.

	public_key_contents?: string

	// Configures the state of the username definition as it relates to the device operational configuration. When set to I(present), the username(s) should be configured in the device active configuration and when set to I(absent) the username(s) should not be in the device active configuration

	state?: string
}

iosxr_facts :: {

	// When supplied, this argument will restrict the facts collected to a given subset. Possible values for this argument include all and the resources like interfaces, lacp etc. Can specify a list of values to include a larger subset. Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected. Valid subsets are 'all', 'lacp', 'lacp_interfaces', 'lldp_global', 'lldp_interfaces', 'interfaces', 'l2_interfaces', 'l3_interfaces', 'lag_interfaces'.

	gather_network_resources?: string

	// When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, hardware, config, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.

	gather_subset?: string
}

iosxr_interface :: {

	// State of the Interface configuration, C(up) means present and operationally up and C(down) means present and operationally C(down)

	state?: string

	// Transmit rate in bits per second (bps).
	// This is state check parameter only.
	// Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)

	tx_rate?: string

	// Whether the interface is C(active) or C(preconfigured). Preconfiguration allows you to configure modular services cards before they are inserted into the router. When the cards are inserted, they are instantly configured. Active cards are the ones already inserted.

	active?: string

	// Description of Interface being configured.

	description?: string

	// Sets the MTU value for the interface. Range is between 64 and 65535'

	mtu?: string

	// Name of the interface to configure in C(type + path) format. e.g. C(GigabitEthernet0/0/0/0)

	name: string

	// Receiver rate in bits per second (bps).
	// This is state check parameter only.
	// Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)

	rx_rate?: string

	// Configure the speed for an interface. Default is auto-negotiation when not configured.

	speed?: string

	// List of Interface definitions. Include multiple interface configurations together, one each on a separate line

	aggregate?: string

	// Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state argument which are I(state) with values C(up)/C(down), I(tx_rate) and I(rx_rate).

	delay?: string

	// Configures the interface duplex mode. Default is auto-negotiation when not configured.

	duplex?: string

	// Removes the shutdown configuration, which removes the forced administrative down on the interface, enabling it to move to an up or down state.

	enabled?: bool
}

iosxr_l3_interfaces :: {

	// A dictionary of Layer-3 interface options

	config?: [...{...}]

	// The state of the configuration after module completion

	state?: string
}

iosxr_lacp_interfaces :: {

	// A dictionary of LACP interfaces options.

	config?: [..._]

	// The state of the configuration after module completion.

	state?: string
}

iosxr_logging :: {

	// List of syslog logging configuration definitions.

	aggregate?: string

	// To configure the type of syslog facility in which system logging (syslog) messages are sent to syslog servers Optional config for C(dest) = C(host)

	facility?: string

	// Specifies the severity level for the logging.

	level?: string

	// vrf name when syslog server is configured, C(dest) = C(host)

	vrf?: string

	// Destination for system logging (syslog) messages.

	dest?: string

	// To append a hostname prefix to system logging (syslog) messages logged to syslog servers. Optional config for C(dest) = C(host)

	hostnameprefix?: string

	// When C(dest) = I(file) name indicates file-name
	// When C(dest) = I(host) name indicates the host-name or ip-address of syslog server.

	name?: string

	// Size of buffer when C(dest) = C(buffered). The acceptable value is in the range I(307200 to 125000000 bytes). Default 307200
	// Size of file when C(dest) = C(file). The acceptable value is in the range I(1 to 2097152)KB. Default 2 GB

	size?: string

	// Existential state of the logging configuration on the node.

	state?: string
}

iosxr_bgp :: {

	// Specifies the BGP related configuration.

	config?: string

	// Specifies the operation to be performed on the BGP process configured on the device.
	// In case of merge, the input configuration will be merged with the existing BGP configuration on the device.
	// In case of replace, if there is a diff between the existing configuration and the input configuration, the existing configuration will be replaced by the input configuration for every option that has the diff.
	// In case of override, all the existing BGP configuration will be removed from the device and replaced with the input configuration.
	// In case of delete the existing BGP configuration will be removed from the device.

	operation?: string
}

iosxr_command :: {

	// List of commands to send to the remote iosxr device over the configured provider. The resulting output from the command is returned. If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of retries has expired.

	commands: string

	// Configures the interval in seconds to wait between retries of the command. If the command does not pass the specified conditions, the interval indicates how long to wait before trying the command again.

	interval?: string

	// The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy.  Valid values are C(all) or C(any).  If the value is set to C(all) then all conditionals in the wait_for must be satisfied.  If the value is set to C(any) then only one of the values must be satisfied.

	match?: string

	// Specifies the number of retries a command should by tried before it is considered failed. The command is run on the target device every retry and evaluated against the I(wait_for) conditions.

	retries?: string

	// List of conditions to evaluate against the output of the command. The task will wait for each condition to be true before moving forward. If the conditional is not true within the configured number of retries, the task fails. See examples.

	wait_for?: string
}

iosxr_lacp :: {

	// The provided configurations.

	config?: {...}

	// The state of the configuration after module completion.

	state?: string
}

iosxr_config :: {

	// The ordered set of commands to push on to the command stack if a change needs to be made.  This allows the playbook designer the opportunity to perform configuration commands prior to pushing any changes without affecting how the set of commands are matched against the system.

	before?: string

	// The ordered set of parents that uniquely identify the section or hierarchy the commands should be checked against.  If the parents argument is omitted, the commands are checked against the set of top level or global commands.

	parents?: string

	// Instructs the module on the way to perform the configuration on the device.  If the replace argument is set to I(line) then the modified lines are pushed to the device in configuration mode.  If the replace argument is set to I(block) then the entire command block is pushed to the device in configuration mode if any line is not correct.

	replace?: string

	// Specifies the source path to the file that contains the configuration or configuration template to load.  The path to the source file can either be the full path on the Ansible control host or a relative path from the playbook or role root directory.  This argument is mutually exclusive with I(lines), I(parents).

	src?: string

	// The ordered set of commands to append to the end of the command stack if a change needs to be made.  Just like with I(before) this allows the playbook designer to append a set of commands to be executed after the command set.

	after?: string

	// Enters into exclusive configuration mode that locks out all users from committing configuration changes until the exclusive session ends.

	exclusive?: bool

	// The ordered set of commands that should be configured in the section.  The commands must be the exact same commands as found in the device running-config.  Be sure to note the configuration command syntax as some commands are automatically modified by the device config parser.

	lines?: string

	// Enters into administration configuration mode for making config changes to the device.

	admin?: bool

	// This argument will cause the module to create a full backup of the current C(running-config) from the remote device before any changes are made. If the C(backup_options) value is not given, the backup file is written to the C(backup) folder in the playbook root directory or role root directory, if playbook is part of an ansible role. If the directory does not exist, it is created.

	backup?: bool

	// This is a dict object containing configurable options related to backup file path. The value of this option is read only when C(backup) is set to I(yes), if C(backup) is set to I(no) this option will be silently ignored.

	backup_options?: {...}

	// The force argument instructs the module to not consider the current devices running-config.  When set to true, this will cause the module to push the contents of I(src) into the device without first checking if already configured.
	// Note this argument should be considered deprecated.  To achieve the equivalent, set the C(match=none) which is idempotent.  This argument will be removed in a future release.

	force?: bool

	// Instructs the module on the way to perform the matching of the set of commands against the current device config.  If match is set to I(line), commands are matched line by line.  If match is set to I(strict), command lines are matched with respect to position.  If match is set to I(exact), command lines must be an equal match.  Finally, if match is set to I(none), the module will not attempt to compare the source configuration with the running configuration on the remote device.

	match?: string

	// Allows a commit description to be specified to be included when the configuration is committed.  If the configuration is not changed or committed, this argument is ignored.

	comment?: string

	// The module, by default, will connect to the remote device and retrieve the current running-config to use as a base for comparing against the contents of source.  There are times when it is not desirable to have the task get the current running-config for every task in a playbook.  The I(config) argument allows the implementer to pass in the configuration to use as the base config for comparison.

	config?: string

	// Allows a commit label to be specified to be included when the configuration is committed. A valid label must begin with an alphabet and not exceed 30 characters, only alphabets, digits, hyphens and underscores are allowed. If the configuration is not changed or committed, this argument is ignored.

	label?: string
}

iosxr_interfaces :: {

	// A dictionary of interface options

	config?: [...{...}]

	// The state of the configuration after module completion

	state?: string
}

iosxr_lag_interfaces :: {

	// A provided Link Aggregation Group (LAG) configuration.

	config?: [...{...}]

	// The state of the configuration after module completion.

	state?: string
}

iosxr_lldp_global :: {

	// The provided global LLDP configuration.

	config?: {...}

	// The state of the configuration after module completion.

	state?: string
}

iosxr_banner :: {

	// Specifies the type of banner to configure on remote device.

	banner: string

	// Existential state of the configuration on the device.

	state?: string

	// Banner text to be configured. Accepts multiline string, without empty lines. Requires I(state=present).

	text?: string
}

iosxr_l2_interfaces :: {

	// The state of the configuration after module completion

	state?: string

	// A dictionary of Layer-2 interface options

	config?: [...{...}]
}

iosxr_lldp_interfaces :: {

	// A dictionary of LLDP interfaces options.

	config?: [...{...}]

	// The state of the configuration after module completion.

	state?: string
}

iosxr_netconf :: {

	// This argument specifies the port the netconf service should listen on for SSH connections.  The default port as defined in RFC 6242 is 830.

	netconf_port?: string

	// netconf vrf name

	netconf_vrf?: string

	// Specifies the state of the C(iosxr_netconf) resource on the remote device.  If the I(state) argument is set to I(present) the netconf service will be configured.  If the I(state) argument is set to I(absent) the netconf service will be removed from the configuration.

	state?: string
}
