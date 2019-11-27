package eos

eos_lldp_interfaces :: {

	// A dictionary of LLDP interfaces options.

	config?: [...{...}]

	// The state of the configuration after module completion.

	state?: string
}

eos_logging :: {

	// Set logging severity levels.

	level?: string

	// The hostname or IP address of the destination.
	// Required when I(dest=host).

	name?: string

	// Size of buffer. The acceptable value is in range from 10 to 2147483647 bytes.

	size?: string

	// State of the logging configuration.

	state?: string

	// List of logging definitions.

	aggregate?: string

	// Destination of the logs.

	dest?: string

	// Set logging facility.

	facility?: string
}

eos_interfaces :: {

	// The provided configuration

	config?: [..._]

	// The state of the configuration after module completion.

	state?: string
}

eos_l3_interfaces :: {

	// A dictionary of Layer 3 interface options

	config?: [...{...}]

	// The state of the configuration after module completion

	state?: string
}

eos_lacp :: {

	// LACP global options.

	config?: {...}

	// The state of the configuration after module completion.

	state?: string
}

eos_linkagg :: {

	// List of members of the link aggregation group.

	members?: string

	// Minimum number of ports required up before bringing up the link aggregation group.

	min_links?: string

	// Mode of the link aggregation group.

	mode?: string

	// Purge links not defined in the I(aggregate) parameter.

	purge?: bool

	// State of the link aggregation group.

	state?: string

	// List of link aggregation definitions.

	aggregate?: string

	// Channel-group number for the port-channel Link aggregation group. Range 1-2000.

	group?: string
}

eos_lldp :: {

	// State of the LLDP configuration. If value is I(present) lldp will be enabled else if it is I(absent) it will be disabled.

	state?: string
}

eos_banner :: {

	// Specifies which banner that should be configured on the remote device.

	banner: string

	// Specifies whether or not the configuration is present in the current devices active running configuration.

	state?: string

	// The banner text that should be present in the remote device running configuration.  This argument accepts a multiline string. Requires I(state=present).

	text?: string
}

eos_eapi :: {

	// The module, by default, will connect to the remote device and retrieve the current running-config to use as a base for comparing against the contents of source.  There are times when it is not desirable to have the task get the current running-config for every task in a playbook.  The I(config) argument allows the implementer to pass in the configuration to use as the base config for comparison.

	config?: string

	// The C(http) argument controls the operating state of the HTTP transport protocol when eAPI is present in the running-config. When the value is set to True, the HTTP protocol is enabled and when the value is set to False, the HTTP protocol is disabled. By default, when eAPI is first configured, the HTTP protocol is disabled.

	http?: bool

	// Configures the HTTP port that will listen for connections when the HTTP transport protocol is enabled.  This argument accepts integer values in the valid range of 1 to 65535.

	http_port?: string

	// Configures the HTTP port that will listen for connections when the HTTP transport protocol is enabled.  This argument accepts integer values in the valid range of 1 to 65535.

	https_port?: string

	// Configures the HTTP port that will listen for connections when the HTTP transport protocol is enabled.  This argument accepts integer values in the valid range of 1 to 65535.

	local_http_port?: string

	// The C(state) argument controls the operational state of eAPI on the remote device.  When this argument is set to C(started), eAPI is enabled to receive requests and when this argument is C(stopped), eAPI is disabled and will not receive requests.

	state?: string

	// The time (in seconds) to wait for the eAPI configuration to be reflected in the running-config.

	timeout?: int

	// The C(https) argument controls the operating state of the HTTPS transport protocol when eAPI is present in the running-config. When the value is set to True, the HTTPS protocol is enabled and when the value is set to False, the HTTPS protocol is disabled. By default, when eAPI is first configured, the HTTPS protocol is enabled.

	https?: bool

	// The C(local_http) argument controls the operating state of the local HTTP transport protocol when eAPI is present in the running-config.  When the value is set to True, the HTTP protocol is enabled and restricted to connections from localhost only.  When the value is set to False, the HTTP local protocol is disabled.
	// Note is value is independent of the C(http) argument

	local_http?: bool

	// The C(socket) argument controls the operating state of the UNIX Domain Socket used to receive eAPI requests.  When the value of this argument is set to True, the UDS will listen for eAPI requests.  When the value is set to False, the UDS will not be available to handle requests.  By default when eAPI is first configured, the UDS is disabled.

	socket?: bool

	// The C(vrf) argument will configure eAPI to listen for connections in the specified VRF.  By default, eAPI transports will listen for connections in the global table.  This value requires the VRF to already be created otherwise the task will fail.

	vrf?: string
}

eos_l2_interface :: {

	// Configure given VLAN in access port. If C(mode=access), used as the access VLAN ID.

	access_vlan?: string

	// List of Layer-2 interface definitions.

	aggregate?: string

	// Mode in which interface needs to be configured.

	mode?: string

	// Name of the interface

	name: string

	// Native VLAN to be configured in trunk port. If C(mode=trunk), used as the trunk native VLAN ID.

	native_vlan?: string

	// Manage the state of the Layer-2 Interface configuration.

	state?: string

	// List of allowed VLANs in a given trunk port. If C(mode=trunk), these are the ONLY VLANs that will be configured on the trunk, i.e. C(2-10,15).

	trunk_allowed_vlans?: string
}

eos_static_route :: {

	// State of the static route configuration.

	state?: string

	// VRF for static route.

	vrf?: string

	// Network address with prefix of the static route.

	address: string

	// Admin distance of the static route.

	admin_distance?: string

	// List of static route definitions

	aggregate?: string

	// Next hop IP of the static route.

	next_hop: string
}

eos_bgp :: {

	// Specifies the BGP related configuration.

	config?: string

	// Specifies the operation to be performed on the BGP process configured on the device.
	// In case of merge, the input configuration will be merged with the existing BGP configuration on the device.
	// In case of replace, if there is a diff between the existing configuration and the input configuration, the existing configuration will be replaced by the input configuration for every option that has the diff.
	// In case of override, all the existing BGP configuration will be removed from the device and replaced with the input configuration.
	// In case of delete the existing BGP configuration will be removed from the device.

	operation?: string
}

eos_command :: {

	// Specifies the number of retries a command should be tried before it is considered failed.  The command is run on the target device every retry and evaluated against the I(wait_for) conditionals.

	retries?: string

	// Specifies what to evaluate from the output of the command and what conditionals to apply.  This argument will cause the task to wait for a particular conditional to be true before moving forward.   If the conditional is not true by the configured retries, the task fails. Note - With I(wait_for) the value in C(result['stdout']) can be accessed using C(result), that is to access C(result['stdout'][0]) use C(result[0]) See examples.

	wait_for?: string

	// The commands to send to the remote EOS device over the configured provider.  The resulting output from the command is returned.  If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of I(retries) has been exceeded.

	commands: string

	// Configures the interval in seconds to wait between retries of the command.  If the command does not pass the specified conditional, the interval indicates how to long to wait before trying the command again.

	interval?: string

	// The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy.  Valid values are C(all) or C(any).  If the value is set to C(all) then all conditionals in the I(wait_for) must be satisfied.  If the value is set to C(any) then only one of the values must be satisfied.

	match?: string
}

eos_config :: {

	// This is a dict object containing configurable options related to backup file path. The value of this option is read only when C(backup) is set to I(yes), if C(backup) is set to I(no) this option will be silently ignored.

	backup_options?: {...}

	// The ordered set of commands to push on to the command stack if a change needs to be made.  This allows the playbook designer the opportunity to perform configuration commands prior to pushing any changes without affecting how the set of commands are matched against the system.

	before?: string

	// The I(defaults) argument will influence how the running-config is collected from the device.  When the value is set to true, the command used to collect the running-config is append with the all keyword.  When the value is set to false, the command is issued without the all keyword

	defaults?: bool

	// The ordered set of commands that should be configured in the section.  The commands must be the exact same commands as found in the device running-config.  Be sure to note the configuration command syntax as some commands are automatically modified by the device config parser.

	lines?: string

	// When changes are made to the device running-configuration, the changes are not copied to non-volatile storage by default.  Using this argument will change that before.  If the argument is set to I(always), then the running-config will always be copied to the startup-config and the I(modified) flag will always be set to True.  If the argument is set to I(modified), then the running-config will only be copied to the startup-config if it has changed since the last save to startup-config.  If the argument is set to I(never), the running-config will never be copied to the startup-config. If the argument is set to I(changed), then the running-config will only be copied to the startup-config if the task has made a change. I(changed) was added in Ansible 2.5.

	save_when?: string

	// This argument will cause the module to create a full backup of the current C(running-config) from the remote device before any changes are made. If the C(backup_options) value is not given, the backup file is written to the C(backup) folder in the playbook root directory or role root directory, if playbook is part of an ansible role. If the directory does not exist, it is created.

	backup?: bool

	// When using the C(ansible-playbook --diff) command line argument the module can generate diffs against different sources.
	// When this option is configure as I(startup), the module will return the diff of the running-config against the startup-config.
	// When this option is configured as I(intended), the module will return the diff of the running-config against the configuration provided in the C(intended_config) argument.
	// When this option is configured as I(running), the module will return the before and after diff of the running-config with respect to any changes made to the device configuration.
	// When this option is configured as C(session), the diff returned will be based on the configuration session.

	diff_against?: string

	// Use this argument to specify one or more lines that should be ignored during the diff.  This is used for lines in the configuration that are automatically updated by the system.  This argument takes a list of regular expressions or exact line matches.

	diff_ignore_lines?: string

	// The ordered set of parents that uniquely identify the section or hierarchy the commands should be checked against.  If the parents argument is omitted, the commands are checked against the set of top level or global commands.

	parents?: string

	// Instructs the module on the way to perform the configuration on the device.  If the replace argument is set to I(line) then the modified lines are pushed to the device in configuration mode.  If the replace argument is set to I(block) then the entire command block is pushed to the device in configuration mode if any line is not correct.

	replace?: string

	// The I(src) argument provides a path to the configuration file to load into the remote system.  The path can either be a full system path to the configuration file if the value starts with / or relative to the root of the implemented role or playbook. This argument is mutually exclusive with the I(lines) and I(parents) arguments. It can be a Jinja2 template as well. src file must have same indentation as a live switch config. Arista EOS device config has 3 spaces indentation.

	src?: string

	// The C(intended_config) provides the master configuration that the node should conform to and is used to check the final running-config against.   This argument will not modify any settings on the remote device and is strictly used to check the compliance of the current device's configuration against.  When specifying this argument, the task should also modify the C(diff_against) value and set it to I(intended).

	intended_config?: string

	// The ordered set of commands to append to the end of the command stack if a change needs to be made.  Just like with I(before) this allows the playbook designer to append a set of commands to be executed after the command set.

	after?: string

	// Instructs the module on the way to perform the matching of the set of commands against the current device config.  If match is set to I(line), commands are matched line by line.  If match is set to I(strict), command lines are matched with respect to position.  If match is set to I(exact), command lines must be an equal match.  Finally, if match is set to I(none), the module will not attempt to compare the source configuration with the running configuration on the remote device.

	match?: string

	// The module, by default, will connect to the remote device and retrieve the current running-config to use as a base for comparing against the contents of source.  There are times when it is not desirable to have the task get the current running-config for every task in a playbook.  The I(running_config) argument allows the implementer to pass in the configuration to use as the base config for this module.

	running_config?: string
}

eos_vrf :: {

	// Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state arguments.

	delay?: string

	// Identifies the set of interfaces that should be configured in the VRF. Interfaces must be routed interfaces in order to be placed into a VRF. The name of interface should be in expanded format and not abbreviated.

	interfaces?: string

	// Name of the VRF.

	name: string

	// Purge VRFs not defined in the I(aggregate) parameter.

	purge?: bool

	// Route distinguisher of the VRF

	rd?: string

	// State of the VRF configuration.

	state?: string

	// List of VRFs definitions

	aggregate?: string

	// This is a intent option and checks the operational state of the for given vrf C(name) for associated interfaces. If the value in the C(associated_interfaces) does not match with the operational state of vrf interfaces on device it will result in failure.

	associated_interfaces?: string
}

eos_lag_interfaces :: {

	// A list of link aggregation group configurations.

	config?: [...{...}]

	// The state of the configuration after module completion.

	state?: string
}

eos_lldp_global :: {

	// The provided global LLDP configuration.

	config?: {...}

	// The state of the configuration after module completion.

	state?: string
}

eos_system :: {

	// Provides the list of domain suffixes to append to the hostname for the purpose of doing name resolution. This argument accepts a list of names and will be reconciled with the current active configuration on the running node.

	domain_search?: string

	// Configure the device hostname parameter. This option takes an ASCII string value.

	hostname?: string

	// Provides one or more source interfaces to use for performing DNS lookups.  The interface provided in C(lookup_source) can only exist in a single VRF.  This argument accepts either a list of interface names or a list of hashes that configure the interface name and VRF name.  See examples.

	lookup_source?: string

	// List of DNS name servers by IP address to use to perform name resolution lookups.  This argument accepts either a list of DNS servers or a list of hashes that configure the name server and VRF name.  See examples.

	name_servers?: string

	// State of the configuration values in the device's current active configuration.  When set to I(present), the values should be configured in the device active configuration and when set to I(absent) the values should not be in the device active configuration

	state?: string

	// Configure the IP domain name on the remote device to the provided value. Value should be in the dotted name form and will be appended to the C(hostname) to create a fully-qualified domain name.

	domain_name?: string
}

eos_facts :: {

	// When supplied, this argument will restrict the facts collected to a given subset. Possible values for this argument include all and the resources like interfaces, vlans etc. Can specify a list of values to include a larger subset. Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected. Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected. Valid subsets are 'all', 'interfaces', 'l2_interfaces', 'l3_interfaces', 'lacp', 'lacp_interfaces', 'lag_interfaces', 'lldp_global', 'lldp_interfaces', 'vlans'.

	gather_network_resources?: [..._]

	// When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, hardware, config, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.

	gather_subset?: [..._]
}

eos_interface :: {

	// Transmit rate in bits per second (bps) for the interface given in C(name) option.
	// This is state check parameter only.
	// Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)

	tx_rate?: string

	// Receiver rate in bits per second (bps) for the interface given in C(name) option.
	// This is state check parameter only.
	// Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)

	rx_rate?: string

	// List of Interfaces definitions. Each of the entry in aggregate list should define name of interface C(name) and other options as required.

	aggregate?: [..._]

	// Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state argument which are I(state) with values C(up)/C(down), I(tx_rate) and I(rx_rate).

	delay?: int

	// Description of Interface upto 240 characters.

	description?: string

	// Interface link status. If the value is I(True) the interface state will be enabled, else if value is I(False) interface will be in disable (shutdown) state.

	enabled?: bool

	// Set maximum transmission unit size in bytes of transmit packet for the interface given in C(name) option.

	mtu?: string

	// Name of the Interface to be configured on remote device. The name of interface should be in expanded format and not abbreviated.

	name: string

	// Check the operational state of given interface C(name) for LLDP neighbor.
	// The following suboptions are available.

	neighbors?: [..._]

	// This option configures autoneg and speed/duplex/flowcontrol for the interface given in C(name) option.

	speed?: string

	// State of the Interface configuration, C(up) means present and operationally up and C(down) means present and operationally C(down)

	state?: string
}

eos_l2_interfaces :: {

	// A dictionary of Layer-2 interface options

	config?: [...{...}]

	// The state of the configuration after module completion

	state?: string
}

eos_l3_interface :: {

	// List of L3 interfaces definitions. Each of the entry in aggregate list should define name of interface C(name) and a optional C(ipv4) or C(ipv6) address.

	aggregate?: string

	// IPv4 address to be set for the L3 interface mentioned in I(name) option. The address format is <ipv4 address>/<mask>, the mask is number in range 0-32 eg. 192.168.0.1/24

	ipv4?: string

	// IPv6 address to be set for the L3 interface mentioned in I(name) option. The address format is <ipv6 address>/<mask>, the mask is number in range 0-128 eg. fd5d:12c9:2201:1::1/64

	ipv6?: string

	// Name of the L3 interface to be configured eg. ethernet1

	name?: string

	// State of the L3 interface configuration. It indicates if the configuration should be present or absent on remote device.

	state?: string
}

eos_lacp_interfaces :: {

	// A dictionary of LACP interfaces options.

	config?: [...{...}]

	// The state of the configuration after module completion.

	state?: string
}

eos_user :: {

	// Specifies the SSH public key to configure for the given username.  This argument accepts a valid SSH key value.

	sshkey?: string

	// The set of username objects to be configured on the remote Arista EOS device.  The list entries can either be the username or a hash of username and properties.  This argument is mutually exclusive with the C(username) argument.

	aggregate?: string

	// The password to be configured on the remote Arista EOS device. The password needs to be provided in clear and it will be encrypted on the device. Please note that this option is not same as C(provider password).

	configured_password?: string

	// Defines the username without assigning a password.  This will allow the user to login to the system without being authenticated by a password.

	nopassword?: bool

	// Instructs the module to consider the resource definition absolute.  It will remove any previously configured usernames on the device with the exception of the `admin` user which cannot be deleted per EOS constraints.

	purge?: bool

	// Configures the role for the username in the device running configuration.  The argument accepts a string value defining the role name.  This argument does not check if the role has been configured on the device.

	role?: string

	// The username to be configured on the remote Arista EOS device.  This argument accepts a stringv value and is mutually exclusive with the C(aggregate) argument. Please note that this option is not same as C(provider username).

	name?: string

	// The C(privilege) argument configures the privilege level of the user when logged into the system.  This argument accepts integer values in the range of 1 to 15.

	privilege?: string

	// Configures the state of the username definition as it relates to the device operational configuration.  When set to I(present), the username(s) should be configured in the device active configuration and when set to I(absent) the username(s) should not be in the device active configuration

	state?: string

	// Since passwords are encrypted in the device running config, this argument will instruct the module when to change the password.  When set to C(always), the password will always be updated in the device and when set to C(on_create) the password will be updated only if the username is created.

	update_password?: string
}

eos_vlan :: {

	// List of VLANs definitions.

	aggregate?: string

	// This is a intent option and checks the operational state of the for given vlan C(name) for associated interfaces. The name of interface is case sensitive and should be in expanded format and not abbreviated. If the value in the C(associated_interfaces) does not match with the operational state of vlan interfaces on device it will result in failure.

	associated_interfaces?: string

	// Delay the play should wait to check for declarative intent params values.

	delay?: string

	// List of interfaces that should be associated to the VLAN. The name of interface is case sensitive and should be in expanded format and not abbreviated.

	interfaces?: string

	// Name of the VLAN.

	name?: string

	// Purge VLANs not defined in the I(aggregate) parameter.

	purge?: bool

	// State of the VLAN configuration.

	state?: string

	// ID of the VLAN.

	vlan_id: string
}

eos_vlans :: {

	// A dictionary of VLANs options

	config?: [...{...}]

	// The state of the configuration after module completion

	state?: string
}
