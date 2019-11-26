package ios

ios_command :: {

	// List of commands to send to the remote ios device over the configured provider. The resulting output from the command is returned. If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of retries has expired. If a command sent to the device requires answering a prompt, it is possible to pass a dict containing I(command), I(answer) and I(prompt). Common answers are 'y' or "\r" (carriage return, must be double quotes). See examples.

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

ios_l3_interface :: {

	// List of Layer-3 interfaces definitions. Each of the entry in aggregate list should define name of interface C(name) and a optional C(ipv4) or C(ipv6) address.

	aggregate?: string

	// IPv4 address to be set for the Layer-3 interface mentioned in I(name) option. The address format is <ipv4 address>/<mask>, the mask is number in range 0-32 eg. 192.168.0.1/24

	ipv4?: string

	// IPv6 address to be set for the Layer-3 interface mentioned in I(name) option. The address format is <ipv6 address>/<mask>, the mask is number in range 0-128 eg. fd5d:12c9:2201:1::1/64

	ipv6?: string

	// Name of the Layer-3 interface to be configured eg. GigabitEthernet0/2

	name?: string

	// State of the Layer-3 interface configuration. It indicates if the configuration should be present or absent on remote device.

	state?: string
}

ios_bgp :: {

	// Specifies the BGP related configuration.

	config?: string

	// Specifies the operation to be performed on the BGP process configured on the device.
	// In case of merge, the input configuration will be merged with the existing BGP configuration on the device.
	// In case of replace, if there is a diff between the existing configuration and the input configuration, the existing configuration will be replaced by the input configuration for every option that has the diff.
	// In case of override, all the existing BGP configuration will be removed from the device and replaced with the input configuration.
	// In case of delete the existing BGP configuration will be removed from the device.

	operation?: string
}

ios_linkagg :: {

	// Channel-group number for the port-channel Link aggregation group. Range 1-255.

	group?: string

	// List of members of the link aggregation group.

	members?: string

	// Mode of the link aggregation group.

	mode?: string

	// Purge links not defined in the I(aggregate) parameter.

	purge?: bool

	// State of the link aggregation group.

	state?: string

	// List of link aggregation definitions.

	aggregate?: string
}

ios_lldp_global :: {

	// A dictionary of LLDP options

	config?: {...}

	// The state of the configuration after module completion

	state?: string
}

ios_ntp :: {

	// Manage the state of the resource.

	state?: string

	// ACL for peer/server access restricition.

	acl?: string

	// Enable NTP authentication. Data type boolean.

	auth?: bool

	// md5 NTP authentication key of tye 7.

	auth_key?: string

	// auth_key id. Data type string

	key_id?: string

	// Enable NTP logs. Data type boolean.

	logging?: bool

	// Network address of NTP server.

	server?: string

	// Source interface for NTP packets.

	source_int?: string
}

ios_vlan :: {

	// ID of the VLAN. Range 1-4094.

	vlan_id: string

	// List of VLANs definitions.

	aggregate?: string

	// This is a intent option and checks the operational state of the for given vlan C(name) for associated interfaces. If the value in the C(associated_interfaces) does not match with the operational state of vlan interfaces on device it will result in failure.

	associated_interfaces?: string

	// Delay the play should wait to check for declarative intent params values.

	delay?: string

	// List of interfaces that should be associated to the VLAN.

	interfaces: string

	// Name of the VLAN.

	name?: string

	// Purge VLANs not defined in the I(aggregate) parameter.

	purge?: bool

	// State of the VLAN configuration.

	state?: string
}

ios_lacp :: {

	// The provided configurations.

	config?: {...}

	// The state of the configuration after module completion

	state?: string
}

ios_l3_interfaces :: {

	// A dictionary of Layer-3 interface options

	config?: [...{...}]

	// The state of the configuration after module completion

	state?: string
}

ios_l2_interfaces :: {

	// A dictionary of Layer-2 interface options

	config?: [...{...}]

	// The state of the configuration after module completion

	state?: string
}

ios_interfaces :: {

	// A dictionary of interface options

	config?: [..._]

	// The state of the configuration after module completion

	state?: string
}

ios_banner :: {

	// Specifies whether or not the configuration is present in the current devices active running configuration.

	state?: string

	// The banner text that should be present in the remote device running configuration.  This argument accepts a multiline string, with no empty lines. Requires I(state=present).

	text?: string

	// Specifies which banner should be configured on the remote device. In Ansible 2.4 and earlier only I(login) and I(motd) were supported.

	banner: string
}

ios_vrf :: {

	// Provides a short description of the VRF definition in the current active configuration.  The VRF definition value accepts alphanumeric characters used to provide additional information about the VRF.

	description?: string

	// Adds an export and import list of extended route target communities in address-family configuration submode to the VRF.

	route_both_ipv4?: string

	// Adds an export and import list of extended route target communities in address-family configuration submode to the VRF.

	route_both_ipv6?: string

	// Adds an export list of extended route target communities to the VRF.

	route_export?: string

	// Time in seconds to wait before checking for the operational state on remote device.

	delay?: string

	// Instructs the module to consider the VRF definition absolute.  It will remove any previously configured VRFs on the device.

	purge?: bool

	// Adds an export and import list of extended route target communities to the VRF.

	route_both?: string

	// Adds an export list of extended route target communities in address-family configuration submode to the VRF.

	route_export_ipv4?: string

	// Adds an export list of extended route target communities in address-family configuration submode to the VRF.

	route_export_ipv6?: string

	// Adds an import list of extended route target communities in address-family configuration submode to the VRF.

	route_import_ipv4?: string

	// Adds an import list of extended route target communities in address-family configuration submode to the VRF.

	route_import_ipv6?: string

	// The set of VRF definition objects to be configured on the remote IOS device.  Ths list entries can either be the VRF name or a hash of VRF definitions and attributes.  This argument is mutually exclusive with the C(name) argument.

	vrfs?: string

	// This is a intent option and checks the operational state of the for given vrf C(name) for associated interfaces. If the value in the C(associated_interfaces) does not match with the operational state of vrf interfaces on device it will result in failure.

	associated_interfaces?: string

	// Identifies the set of interfaces that should be configured in the VRF.  Interfaces must be routed interfaces in order to be placed into a VRF.

	interfaces?: string

	// The name of the VRF definition to be managed on the remote IOS device.  The VRF definition name is an ASCII string name used to uniquely identify the VRF.  This argument is mutually exclusive with the C(vrfs) argument

	name?: string

	// The router-distinguisher value uniquely identifies the VRF to routing processes on the remote IOS system.  The RD value takes the form of C(A:B) where C(A) and C(B) are both numeric values.

	rd?: string

	// Adds an import list of extended route target communities to the VRF.

	route_import?: string

	// Configures the state of the VRF definition as it relates to the device operational configuration.  When set to I(present), the VRF should be configured in the device active configuration and when set to I(absent) the VRF should not be in the device active configuration

	state?: string
}

ios_facts :: {

	// When supplied, this argument will restrict the facts collected to a given subset. Possible values for this argument include all and the resources like interfaces, vlans etc. Can specify a list of values to include a larger subset. Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected. Valid subsets are 'all', 'interfaces', 'l2_interfaces', 'vlans', 'lag_interfaces', 'lacp', 'lacp_interfaces', 'lldp_global', 'lldp_interfaces', 'l3_interfaces'.

	gather_network_resources?: string

	// When supplied, this argument restricts the facts collected to a given subset.
	// Possible values for this argument include C(all), C(min), C(hardware), C(config), and C(interfaces).
	// Specify a list of values to include a larger subset.
	// Use a value with an initial C(!) to collect all facts except that subset.

	gather_subset?: string
}

ios_l2_interface :: {

	// Native VLAN to be configured in trunk port. If C(mode=trunk), used as the trunk native VLAN ID.

	native_vlan?: string

	// Manage the state of the Layer-2 Interface configuration.

	state?: string

	// List of allowed VLANs in a given trunk port. If C(mode=trunk), these are the only VLANs that will be configured on the trunk, i.e. "2-10,15".

	trunk_allowed_vlans?: string

	// List of VLANs to be configured in trunk port. If C(mode=trunk), used as the VLAN range to ADD or REMOVE from the trunk.

	trunk_vlans?: string

	// Configure given VLAN in access port. If C(mode=access), used as the access VLAN ID.

	access_vlan?: string

	// List of Layer-2 interface definitions.

	aggregate?: string

	// Mode in which interface needs to be configured.

	mode?: string

	// Full name of the interface excluding any logical unit number, i.e. GigabitEthernet0/1.

	name: string
}

ios_lacp_interfaces :: {

	// A dictionary of LACP lacp_interfaces option

	config?: [...{...}]

	// The state of the configuration after module completion

	state?: string
}

ios_lag_interfaces :: {

	// A list of link aggregation group configurations.

	config?: [...{...}]

	// The state of the configuration after module completion

	state?: string
}

ios_lldp_interfaces :: {

	// A dictionary of LLDP options

	config?: [...{...}]

	// The state of the configuration after module completion

	state?: string
}

ios_logging :: {

	// List of logging definitions.

	aggregate?: string

	// Destination of the logs.

	dest?: string

	// Set logging facility.

	facility?: string

	// Set logging severity levels.

	level?: string

	// The hostname or IP address of the destination.
	// Required when I(dest=host).

	name?: string

	// Size of buffer. The acceptable value is in range from 4096 to 4294967295 bytes.

	size?: string

	// State of the logging configuration.

	state?: string
}

ios_config :: {

	// Use this argument to specify one or more lines that should be ignored during the diff.  This is used for lines in the configuration that are automatically updated by the system.  This argument takes a list of regular expressions or exact line matches.

	diff_ignore_lines?: string

	// This argument is used when pushing a multiline configuration element to the IOS device.  It specifies the character to use as the delimiting character.  This only applies to the configuration action.

	multiline_delimiter?: string

	// The ordered set of commands to append to the end of the command stack if a change needs to be made.  Just like with I(before) this allows the playbook designer to append a set of commands to be executed after the command set.

	after?: string

	// This is a dict object containing configurable options related to backup file path. The value of this option is read only when C(backup) is set to I(yes), if C(backup) is set to I(no) this option will be silently ignored.

	backup_options?: {...}

	// Instructs the module on the way to perform the matching of the set of commands against the current device config.  If match is set to I(line), commands are matched line by line.  If match is set to I(strict), command lines are matched with respect to position.  If match is set to I(exact), command lines must be an equal match.  Finally, if match is set to I(none), the module will not attempt to compare the source configuration with the running configuration on the remote device.

	match?: string

	// The module, by default, will connect to the remote device and retrieve the current running-config to use as a base for comparing against the contents of source. There are times when it is not desirable to have the task get the current running-config for every task in a playbook.  The I(running_config) argument allows the implementer to pass in the configuration to use as the base config for comparison.

	running_config?: string

	// When changes are made to the device running-configuration, the changes are not copied to non-volatile storage by default.  Using this argument will change that before.  If the argument is set to I(always), then the running-config will always be copied to the startup-config and the I(modified) flag will always be set to True.  If the argument is set to I(modified), then the running-config will only be copied to the startup-config if it has changed since the last save to startup-config.  If the argument is set to I(never), the running-config will never be copied to the startup-config.  If the argument is set to I(changed), then the running-config will only be copied to the startup-config if the task has made a change. I(changed) was added in Ansible 2.5.

	save_when?: string

	// This argument will cause the module to create a full backup of the current C(running-config) from the remote device before any changes are made. If the C(backup_options) value is not given, the backup file is written to the C(backup) folder in the playbook root directory or role root directory, if playbook is part of an ansible role. If the directory does not exist, it is created.

	backup?: bool

	// The ordered set of commands that should be configured in the section.  The commands must be the exact same commands as found in the device running-config.  Be sure to note the configuration command syntax as some commands are automatically modified by the device config parser.

	lines?: string

	// Instructs the module on the way to perform the configuration on the device. If the replace argument is set to I(line) then the modified lines are pushed to the device in configuration mode.  If the replace argument is set to I(block) then the entire command block is pushed to the device in configuration mode if any line is not correct.

	replace?: string

	// Specifies the source path to the file that contains the configuration or configuration template to load.  The path to the source file can either be the full path on the Ansible control host or a relative path from the playbook or role root directory.  This argument is mutually exclusive with I(lines), I(parents).

	src?: string

	// The ordered set of commands to push on to the command stack if a change needs to be made.  This allows the playbook designer the opportunity to perform configuration commands prior to pushing any changes without affecting how the set of commands are matched against the system.

	before?: string

	// The C(intended_config) provides the master configuration that the node should conform to and is used to check the final running-config against. This argument will not modify any settings on the remote device and is strictly used to check the compliance of the current device's configuration against.  When specifying this argument, the task should also modify the C(diff_against) value and set it to I(intended).

	intended_config?: string

	// The ordered set of parents that uniquely identify the section or hierarchy the commands should be checked against.  If the parents argument is omitted, the commands are checked against the set of top level or global commands.

	parents?: string

	// This argument specifies whether or not to collect all defaults when getting the remote device running config.  When enabled, the module will get the current config by issuing the command C(show running-config all).

	defaults?: bool

	// When using the C(ansible-playbook --diff) command line argument the module can generate diffs against different sources.
	// When this option is configure as I(startup), the module will return the diff of the running-config against the startup-config.
	// When this option is configured as I(intended), the module will return the diff of the running-config against the configuration provided in the C(intended_config) argument.
	// When this option is configured as I(running), the module will return the before and after diff of the running-config with respect to any changes made to the device configuration.

	diff_against?: string
}

ios_lldp :: {

	// State of the LLDP configuration. If value is I(present) lldp will be enabled else if it is I(absent) it will be disabled.

	state?: string
}

ios_static_route :: {

	// VRF of the static route.

	vrf?: string

	// Admin distance of the static route.

	admin_distance?: string

	// Network prefix of the static route.

	prefix?: string

	// State of the static route configuration.

	state?: string

	// Name of the static route

	name?: string

	// Next hop IP of the static route.

	next_hop?: string

	// Set tag of the static route.

	tag?: string

	// Tracked item to depend on for the static route.

	track?: string

	// List of static route definitions.

	aggregate?: string

	// Interface of the static route.

	interface?: string

	// Network prefix mask of the static route.

	mask?: string
}

ios_system :: {

	// Provides the list of domain suffixes to append to the hostname for the purpose of doing name resolution. This argument accepts a list of names and will be reconciled with the current active configuration on the running node.

	domain_search?: string

	// Configure the device hostname parameter. This option takes an ASCII string value.

	hostname?: string

	// Administrative control for enabling or disabling DNS lookups.  When this argument is set to True, lookups are performed and when it is set to False, lookups are not performed.

	lookup_enabled?: bool

	// Provides one or more source interfaces to use for performing DNS lookups.  The interface provided in C(lookup_source) must be a valid interface configured on the device.

	lookup_source?: string

	// List of DNS name servers by IP address to use to perform name resolution lookups.  This argument accepts either a list of DNS servers See examples.

	name_servers?: string

	// State of the configuration values in the device's current active configuration.  When set to I(present), the values should be configured in the device active configuration and when set to I(absent) the values should not be in the device active configuration

	state?: string

	// Configure the IP domain name on the remote device to the provided value. Value should be in the dotted name form and will be appended to the C(hostname) to create a fully-qualified domain name.

	domain_name?: string
}

ios_interface :: {

	// Transmit rate in bits per second (bps).
	// This is state check parameter only.
	// Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)

	tx_rate?: string

	// Check the operational state of given interface C(name) for CDP/LLDP neighbor.
	// The following suboptions are available.

	neighbors?: string

	// State of the Interface configuration, C(up) means present and operationally up and C(down) means present and operationally C(down)

	state?: string

	// Description of Interface.

	description?: string

	// Interface link status

	duplex?: string

	// Interface link status.

	enabled?: bool

	// Maximum size of transmit packet.

	mtu?: string

	// Name of the Interface.

	name: string

	// Receiver rate in bits per second (bps).
	// This is state check parameter only.
	// Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)

	rx_rate?: string

	// List of Interfaces definitions.

	aggregate?: string

	// Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state argument which are I(state) with values C(up)/C(down), I(tx_rate) and I(rx_rate).

	delay?: string

	// Interface link speed.

	speed?: string
}

ios_ping :: {

	// Number of packets to send.

	count?: string

	// The IP Address or hostname (resolvable by switch) of the remote node.

	dest: string

	// The source IP Address.

	source?: string

	// Determines if the expected result is success or fail.

	state?: string

	// The VRF to use for forwarding.

	vrf?: string
}

ios_user :: {

	// The set of username objects to be configured on the remote Cisco IOS device. The list entries can either be the username or a hash of username and properties. This argument is mutually exclusive with the C(name) argument.

	aggregate?: string

	// This argument determines whether a 'password' or 'secret' will be configured.

	password_type?: string

	// The C(privilege) argument configures the privilege level of the user when logged into the system. This argument accepts integer values in the range of 1 to 15.

	privilege?: string

	// Configures the state of the username definition as it relates to the device operational configuration. When set to I(present), the username(s) should be configured in the device active configuration and when set to I(absent) the username(s) should not be in the device active configuration

	state?: string

	// Configures the view for the username in the device running configuration. The argument accepts a string value defining the view name. This argument does not check if the view has been configured on the device.

	view?: string

	// The password to be configured on the Cisco IOS device. The password needs to be provided in clear and it will be encrypted on the device. Please note that this option is not same as C(provider password).

	configured_password?: string

	// This option allows configuring hashed passwords on Cisco IOS devices.

	hashed_password?: string

	// The username to be configured on the Cisco IOS device. This argument accepts a string value and is mutually exclusive with the C(aggregate) argument. Please note that this option is not same as C(provider username).

	name?: string

	// Defines the username without assigning a password. This will allow the user to login to the system without being authenticated by a password.

	nopassword?: bool

	// Instructs the module to consider the resource definition absolute. It will remove any previously configured usernames on the device with the exception of the `admin` user (the current defined set of users).

	purge?: bool

	// Specifies one or more SSH public key(s) to configure for the given username.
	// This argument accepts a valid SSH key value.

	sshkey?: string

	// Since passwords are encrypted in the device running config, this argument will instruct the module when to change the password.  When set to C(always), the password will always be updated in the device and when set to C(on_create) the password will be updated only if the username is created.

	update_password?: string
}

ios_vlans :: {

	// A dictionary of VLANs options

	config?: [...{...}]

	// The state of the configuration after module completion

	state?: string
}
