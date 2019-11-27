package junos

junos_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_facts: {

		// The I(config_format) argument specifies the format of the configuration when serializing output from the device. This argument is applicable only when C(config) value is present in I(gather_subset). The I(config_format) should be supported by the junos version running on device. This value is not applicable while fetching old style facts that is when C(ofacts) value is present in value if I(gather_subset) value. This option is valid only for C(gather_subset) values.

		config_format?: string

		// When supplied, this argument will restrict the facts collected to a given subset. Possible values for this argument include all and the resources like interfaces, vlans etc. Can specify a list of values to include a larger subset. Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected. Valid subsets are 'all', 'interfaces', 'lacp', 'lacp_interfaces', 'lag_interfaces', 'l2_interfaces', 'l3_interfaces', 'lldp_global', 'lldp_interfaces', 'vlans'.

		gather_network_resources?: string

		// When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, hardware, config, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected. To maintain backward compatibility old style facts can be retrieved by explicitly adding C(ofacts)  to value, this requires junos-eznc to be installed as a prerequisite. Valid value of gather_subset are default, hardware, config, interfaces, ofacts. If C(ofacts) is present in the list it fetches the old style facts (fact keys without 'ansible_' prefix) and it requires junos-eznc library to be installed on control node and the device login credentials must be given in C(provider) option.

		gather_subset?: string
	}
}

junos_lldp_interfaces :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_lldp_interfaces: {

		// The state of the configuration after module completion.

		state?: string

		// The list of link layer discovery protocol interface attribute configurations

		config?: [...{...}]
	}
}

junos_static_route :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_static_route: {

		// Global admin preference of the static route.

		preference?: string

		// Qualified next hop IP of the static route. Qualified next hops allow to associate preference with a particular next-hop address.

		qualified_next_hop?: string

		// Assign preference for qualified next hop.

		qualified_preference?: string

		// State of the static route configuration.

		state?: string

		// Specifies whether or not the configuration is active or deactivated

		active?: bool

		// Network address with prefix of the static route.

		address: string

		// List of static route definitions

		aggregate?: string

		// Next hop IP of the static route.

		next_hop: string
	}
}

junos_system :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_system: {

		// Specifies whether or not the configuration is active or deactivated

		active?: bool

		// Configure the IP domain name on the remote device to the provided value. Value should be in the dotted name form and will be appended to the C(hostname) to create a fully-qualified domain name.

		domain_name?: string

		// Provides the list of domain suffixes to append to the hostname for the purpose of doing name resolution. This argument accepts a list of names and will be reconciled with the current active configuration on the running node.

		domain_search?: string

		// Configure the device hostname parameter. This option takes an ASCII string value.

		hostname?: string

		// List of DNS name servers by IP address to use to perform name resolution lookups.  This argument accepts either a list of DNS servers See examples.

		name_servers?: string

		// State of the configuration values in the device's current active configuration.  When set to I(present), the values should be configured in the device active configuration and when set to I(absent) the values should not be in the device active configuration

		state?: string
	}
}

junos_banner :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_banner: {

		// The banner text that should be present in the remote device running configuration.  This argument accepts a multiline string, with no empty lines. Requires I(state=present).

		text?: string

		// Specifies whether or not the configuration is active or deactivated

		active?: bool

		// Specifies which banner that should be configured on the remote device. Value C(login) indicates system login message prior to authenticating, C(motd) is login announcement after successful authentication.

		banner: string

		// Specifies whether or not the configuration is present in the current devices active running configuration.

		state?: string
	}
}

junos_command :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_command: {

		// Encoding scheme to use when serializing output from the device. This handles how to properly understand the output and apply the conditionals path to the result set. For I(rpcs) argument default display is C(xml) and for I(commands) argument default display is C(text). Value C(set) is applicable only for fetching configuration from device.

		display?: string

		// Configures the interval in seconds to wait between retries of the command.  If the command does not pass the specified conditional, the interval indicates how to long to wait before trying the command again.

		interval?: string

		// The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy.  Valid values are C(all) or C(any).  If the value is set to C(all) then all conditionals in the I(wait_for) must be satisfied.  If the value is set to C(any) then only one of the values must be satisfied.

		match?: string

		// Specifies the number of retries a command should be tried before it is considered failed.  The command is run on the target device every retry and evaluated against the I(wait_for) conditionals.

		retries?: string

		// The C(rpcs) argument accepts a list of RPCs to be executed over a netconf session and the results from the RPC execution is return to the playbook via the modules results dictionary.

		rpcs?: string

		// Specifies what to evaluate from the output of the command and what conditionals to apply.  This argument will cause the task to wait for a particular conditional to be true before moving forward.   If the conditional is not true by the configured retries, the task fails.  See examples.

		wait_for?: string

		// The commands to send to the remote junos device over the configured provider.  The resulting output from the command is returned.  If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of I(retries) has been exceeded.

		commands?: string
	}
}

junos_l2_interfaces :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_l2_interfaces: {

		// A dictionary of Layer-2 interface options

		config?: [...{...}]

		// The state of the configuration after module completion

		state?: string
	}
}

junos_l3_interfaces :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_l3_interfaces: {

		// A dictionary of Layer 3 interface options

		config?: [...{...}]

		// The state of the configuration after module completion

		state?: string
	}
}

junos_lag_interfaces :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_lag_interfaces: {

		// A list of link aggregation group configurations.

		config?: [...]

		// The state of the configuration after module completion

		state?: string
	}
}

junos_linkagg :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_linkagg: {

		// Mode of the link aggregation group. A value of C(on) will enable LACP in C(passive) mode. C(active) configures the link to actively information about the state of the link, or it can be configured in C(passive) mode ie. send link state information only when received them from another link. A value of C(off) will disable LACP.

		mode?: string

		// Name of the link aggregation group.

		name: string

		// Number of aggregated ethernet devices that can be configured. Acceptable integer value is between 1 and 128.

		device_count?: string

		// Minimum members that should be up before bringing up the link aggregation group.

		min_links?: string

		// Description of Interface.

		description?: string

		// List of members interfaces of the link aggregation group. The value can be single interface or list of interfaces.

		members: string

		// State of the link aggregation group.

		state?: string

		// Specifies whether or not the configuration is active or deactivated

		active?: bool

		// List of link aggregation definitions.

		aggregate?: string
	}
}

junos_lldp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_lldp: {

		// Specify the number of seconds that LLDP information is held before it is discarded. The multiplier value is used in combination with the C(interval) value.

		hold_multiplier?: string

		// Frequency at which LLDP advertisements are sent (in seconds).

		interval?: string

		// Value of C(present) ensures given LLDP configuration is present on device and LLDP is enabled, for value of C(absent) LLDP configuration is deleted and LLDP is in disabled state. Value C(enabled) ensures LLDP protocol is enabled and LLDP configuration if any is configured on remote device, for value of C(disabled) it ensures LLDP protocol is disabled any LLDP configuration if any is still present.

		state?: string

		// Specify the number of seconds the device waits before sending advertisements to neighbors after a change is made in local system.

		transmit_delay?: string

		// Specifies whether or not the configuration is active or deactivated

		active?: bool
	}
}

junos_package :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_package: {

		// The I(force_host) argument controls the way software package or bundle is added on remote JUNOS host and is applicable for JUNOS QFX5100 device. If the value is set to C(True) it will ignore any warnings while adding the host software package or bundle.

		force_host?: bool

		// The I(issu) argument is a boolean flag when set to C(True) allows unified in-service software upgrade (ISSU) feature which enables you to upgrade between two different Junos OS releases with no disruption on the control plane and with minimal disruption of traffic.

		issu?: bool

		// The I(no_copy) argument is responsible for instructing the remote device on where to install the package from.  When enabled, the package is transferred to the remote device prior to installing.

		no_copy?: bool

		// In order for a package to take effect, the remote device must be restarted.  When enabled, this argument will instruct the module to reboot the device once the updated package has been installed. If disabled or the remote package does not need to be changed, the device will not be started.

		reboot?: bool

		// The I(src) argument specifies the path to the source package to be installed on the remote device in the advent of a version mismatch. The I(src) argument can be either a localized path or a full path to the package file to install.

		src: string

		// The I(validate) argument is responsible for instructing the remote device to skip checking the current device configuration compatibility with the package being installed. When set to false validation is not performed.

		validate?: bool

		// The I(version) argument can be used to explicitly specify the version of the package that should be installed on the remote device.  If the I(version) argument is not specified, then the version is extracts from the I(src) filename.

		version?: string

		// The I(force) argument instructs the module to bypass the package version check and install the packaged identified in I(src) on the remote device.

		force?: bool
	}
}

junos_rpc :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_rpc: {

		// The C(rpc) argument specifies the RPC call to send to the remote devices to be executed.  The RPC Reply message is parsed and the contents are returned to the playbook.

		rpc: string

		// The C(args) argument provides a set of arguments for the RPC call and are encoded in the request message.  This argument accepts a set of key=value arguments.

		args?: string

		// The C(attrs) arguments defines a list of attributes and their values to set for the RPC call. This accepts a dictionary of key-values.

		attrs?: string

		// The C(output) argument specifies the desired output of the return data.  This argument accepts one of C(xml), C(text), or C(json).  For C(json), the JUNOS device must be running a version of software that supports native JSON output.

		output?: string
	}
}

junos_user :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_user: {

		// The C(sshkey) argument defines the public SSH key to be configured for the user account on the remote system.  This argument must be a valid SSH key

		sshkey?: string

		// The C(state) argument configures the state of the user definitions as it relates to the device operational configuration.  When set to I(present), the user should be configured in the device active configuration and when set to I(absent) the user should not be in the device active configuration

		state?: string

		// The C(role) argument defines the role of the user account on the remote system.  User accounts can have more than one role configured.

		role?: string

		// The C(aggregate) argument defines a list of users to be configured on the remote device.  The list of users will be compared against the current users and only changes will be added or removed from the device configuration.  This argument is mutually exclusive with the name argument.

		aggregate?: string

		// The C(encrypted_password) argument set already hashed password for the user account on the remote system.

		encrypted_password?: string

		// The C(full_name) argument provides the full name of the user account to be created on the remote device.  This argument accepts any text string value.

		full_name?: string

		// The C(name) argument defines the username of the user to be created on the system.  This argument must follow appropriate usernaming conventions for the target device running JUNOS.  This argument is mutually exclusive with the C(aggregate) argument.

		name?: string

		// The C(purge) argument instructs the module to consider the users definition absolute.  It will remove any previously configured users on the device with the exception of the current defined set of aggregate.

		purge?: bool

		// Specifies whether or not the configuration is active or deactivated

		active?: bool
	}
}

junos_vlans :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_vlans: {

		// A dictionary of Vlan options

		config?: [...{...}]

		// The state of the configuration after module completion.

		state?: string
	}
}

junos_interfaces :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_interfaces: {

		// The provided configuration

		config?: [...]

		// The state of the configuration after module completion

		state?: string
	}
}

junos_lacp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_lacp: {

		// The state of the configuration after module completion

		state?: string

		// A dictionary of LACP global options

		config?: {...}
	}
}

junos_l2_interface :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_l2_interface: {

		// List of VLAN names to be configured in trunk port. The value of C(trunk_vlans) should be list of vlan names.

		trunk_vlans?: string

		// Specifies whether or not the configuration is active or deactivated

		active?: bool

		// Description of Interface.

		description?: string

		// True if your device has Enhanced Layer 2 Software (ELS).

		enhanced_layer?: bool

		// The name of output filter of ethernet-switching.

		filter_output?: string

		// Name of the interface excluding any logical unit number.

		name?: string

		// Native VLAN to be configured in trunk port. The value of C(native_vlan) should be vlan id.

		native_vlan?: string

		// State of the Layer-2 Interface configuration.

		state?: string

		// Configure given VLAN in access port. The value of C(access_vlan) should be vlan name.

		access_vlan?: string

		// List of Layer-2 interface definitions.

		aggregate?: string

		// The name of input filter of ethernet-switching.

		filter_input?: string

		// Mode in which interface needs to be configured.

		mode?: string

		// Logical interface number. Value of C(unit) should be of type integer.

		unit?: string
	}
}

junos_ping :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_ping: {

		// Determines if the expected result is success or fail.

		state?: string

		// The time-to-live value for the ICMP packet(s).

		ttl?: int

		// Number of packets to send to check reachability.

		count?: int

		// The IP Address or hostname (resolvable by the device) of the remote node.

		dest: string

		// The source interface to use while sending the ping packet(s).

		interface?: string

		// Determines the interval (in seconds) between consecutive pings.

		interval?: int

		// Determines the size (in bytes) of the ping packet(s).

		size?: int

		// The IP Address to use while sending the ping packet(s).

		source?: string
	}
}

junos_vlan :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_vlan: {

		// The name of output filter.

		filter_output?: string

		// List of interfaces to check the VLAN has been configured correctly.

		interfaces?: string

		// Name of the VLAN.

		name: string

		// List of VLANs definitions.

		aggregate?: string

		// Text description of VLANs.

		description?: string

		// The name of input filter.

		filter_input?: string

		// ID of the VLAN. Range 1-4094.

		vlan_id: string

		// Specifies whether or not the configuration is active or deactivated

		active?: bool

		// Name of logical layer 3 interface.

		l3_interface?: string

		// State of the VLAN configuration.

		state?: string
	}
}

junos_interface :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_interface: {

		// Interface link status.

		duplex?: string

		// Configure interface link status.

		enabled?: bool

		// Name of the Interface.

		name: string

		// Check the operational state of given interface C(name) for LLDP neighbor.
		// The following suboptions are available.

		neighbors?: string

		// Interface link speed.

		speed?: string

		// Transmit rate in bits per second (bps).
		// This is state check parameter only.
		// Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)

		tx_rate?: string

		// Description of Interface.

		description?: string

		// List of Interfaces definitions.

		aggregate?: string

		// Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state argument which are I(state) with values C(up)/C(down), I(tx_rate) and I(rx_rate).

		delay?: string

		// Maximum size of transmit packet.

		mtu?: string

		// Receiver rate in bits per second (bps).
		// This is state check parameter only.
		// Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)

		rx_rate?: string

		// State of the Interface configuration, C(up) indicates present and operationally up and C(down) indicates present and operationally C(down)

		state?: string

		// Specifies whether or not the configuration is active or deactivated

		active?: bool
	}
}

junos_lacp_interfaces :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_lacp_interfaces: {

		// The list of dictionaries of LACP interfaces options.

		config?: [...{...}]

		// The state of the configuration after module completion.

		state?: string
	}
}

junos_l3_interface :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_l3_interface: {

		// IPv4 of the L3 interface.

		ipv4?: string

		// Name of the L3 interface.

		name?: string

		// State of the L3 interface configuration.

		state?: string

		// Logical interface number.

		unit?: string

		// Specifies whether or not the configuration is active or deactivated

		active?: bool

		// List of L3 interfaces definitions

		aggregate?: string

		// The name of input filter.

		filter_input?: string

		// The name of output filter.

		filter_output?: string

		// The name of input filter for ipv6.

		filter6_input?: string

		// The name of output filter for ipv6.

		filter6_output?: string

		// IPv6 of the L3 interface.

		ipv6?: string
	}
}

junos_lldp_global :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_lldp_global: {

		// The list of link layer discovery protocol attribute configurations

		config?: {...}

		// The state of the configuration after module completion.

		state?: string
	}
}

junos_logging :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_logging: {

		// Number of files to be archived, this is applicable if value of I(dest) is C(file). The acceptable value is in range from 1 to 1000.

		files?: string

		// Set logging severity levels.

		level?: string

		// Rotate log frequency in minutes, this is applicable if value of I(dest) is C(file). The acceptable value is in range of 1 to 59. This controls the frequency after which log file is rotated.

		rotate_frequency?: string

		// List of logging definitions.

		aggregate?: string

		// Set logging facility.

		facility?: string

		// If value of C(dest) is I(file) it indicates file-name, for I(user) it indicates username and for I(host) indicates the host name to be notified.

		name?: string

		// Size of the file in archive, this is applicable if value of I(dest) is C(file). The acceptable value is in range from 65536 to 1073741824 bytes.

		size?: string

		// State of the logging configuration.

		state?: string

		// Specifies whether or not the configuration is active or deactivated

		active?: bool

		// Destination of the logs.

		dest?: string
	}
}

junos_scp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_scp: {

		// The C(dest) argument specifies the path in which to receive the files.

		dest?: string

		// The C(recursive) argument enables recursive transfer of files and directories.

		recursive?: bool

		// The C(remote_src) argument enables the download of files (I(scp get)) from the remote device. The default behavior is to upload files (I(scp put)) to the remote device.

		remote_src?: bool

		// The C(src) argument takes a single path, or a list of paths to be transferred. The argument C(recursive) must be C(true) to transfer directories.

		src: string
	}
}

junos_config :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_config: {

		// The C(replace) argument will instruct the remote device to replace the current configuration hierarchy with the one specified in the corresponding hierarchy of the source configuration loaded from this module.
		// Note this argument should be considered deprecated.  To achieve the equivalent, set the I(update) argument to C(replace). This argument will be removed in a future release. The C(replace) and C(update) argument is mutually exclusive.

		replace?: bool

		// The C(rollback) argument instructs the module to rollback the current configuration to the identifier specified in the argument.  If the specified rollback identifier does not exist on the remote device, the module will fail.  To rollback to the most recent commit, set the C(rollback) argument to 0.

		rollback?: string

		// The I(src_format) argument specifies the format of the configuration found int I(src).  If the I(src_format) argument is not provided, the module will attempt to determine the format of the configuration file specified in I(src).

		src_format?: string

		// This argument will cause the module to create a full backup of the current C(running-config) from the remote device before any changes are made. If the C(backup_options) value is not given, the backup file is written to the C(backup) folder in the playbook root directory or role root directory, if playbook is part of an ansible role. If the directory does not exist, it is created.

		backup?: bool

		// This is a dict object containing configurable options related to backup file path. The value of this option is read only when C(backup) is set to I(yes), if C(backup) is set to I(no) this option will be silently ignored.

		backup_options?: {...}

		// This argument will check correctness of syntax; do not apply changes.
		// Note that this argument can be used to confirm verified configuration done via commit confirmed operation

		check_commit?: bool

		// The C(comment) argument specifies a text string to be used when committing the configuration.  If the C(confirm) argument is set to False, this argument is silently ignored.

		comment?: string

		// This argument will execute commit operation on remote device. It can be used to confirm a previous commit.

		confirm_commit?: bool

		// This argument will decide how to load the configuration data particularly when the candidate configuration and loaded configuration contain conflicting statements. Following are accepted values. C(merge) combines the data in the loaded configuration with the candidate configuration. If statements in the loaded configuration conflict with statements in the candidate configuration, the loaded statements replace the candidate ones. C(override) discards the entire candidate configuration and replaces it with the loaded configuration. C(replace) substitutes each hierarchy level in the loaded configuration for the corresponding level. C(update) is similar to the override option. The new configuration completely replaces the existing configuration. The difference comes when the configuration is later committed. This option performs a 'diff' between the new candidate configuration and the existing committed configuration. It then only notifies system processes responsible for the changed portions of the configuration, and only marks the actual configuration changes as 'changed'.

		update?: string

		// The C(zeroize) argument is used to completely sanitize the remote device configuration back to initial defaults.  This argument will effectively remove all current configuration statements on the remote device.

		zeroize?: bool

		// The C(confirm) argument will configure a time out value in minutes for the commit to be confirmed before it is automatically rolled back.  If the C(confirm) argument is set to False, this argument is silently ignored.  If the value for this argument is set to 0, the commit is confirmed immediately.

		confirm?: string

		// This argument takes a list of C(set) or C(delete) configuration lines to push into the remote device.  Each line must start with either C(set) or C(delete).  This argument is mutually exclusive with the I(src) argument.

		lines?: string

		// The I(src) argument provides a path to the configuration file to load into the remote system. The path can either be a full system path to the configuration file if the value starts with / or relative to the root of the implemented role or playbook. This argument is mutually exclusive with the I(lines) argument.

		src?: string
	}
}

junos_lldp_interface :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_lldp_interface: {

		// Specifies whether or not the configuration is active or deactivated

		active?: bool

		// Name of the interface LLDP should be configured on.

		name?: string

		// Value of C(present) ensures given LLDP configured on given I(interfaces) and is enabled, for value of C(absent) LLDP configuration on given I(interfaces) deleted. Value C(enabled) ensures LLDP protocol is enabled on given I(interfaces) and for value of C(disabled) it ensures LLDP is disabled on given I(interfaces).

		state?: string
	}
}

junos_netconf :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_netconf: {

		// This argument specifies the port the netconf service should listen on for SSH connections.  The default port as defined in RFC 6242 is 830.

		netconf_port?: string

		// Specifies the state of the C(junos_netconf) resource on the remote device.  If the I(state) argument is set to I(present) the netconf service will be configured.  If the I(state) argument is set to I(absent) the netconf service will be removed from the configuration.

		state?: string
	}
}

junos_vrf :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	junos_vrf: {

		// The set of VRF definition objects to be configured on the remote JUNOS device.  Ths list entries can either be the VRF name or a hash of VRF definitions and attributes.  This argument is mutually exclusive with the C(name) argument.

		aggregate?: string

		// Provides a short description of the VRF definition in the current active configuration.  The VRF definition value accepts alphanumeric characters used to provide additional information about the VRF.

		description?: string

		// Identifies the set of interfaces that should be configured in the VRF. Interfaces must be routed interfaces in order to be placed into a VRF.

		interfaces?: string

		// The name of the VRF definition to be managed on the remote IOS device.  The VRF definition name is an ASCII string name used to uniquely identify the VRF.  This argument is mutually exclusive with the C(aggregate) argument

		name?: string

		// The router-distinguisher value uniquely identifies the VRF to routing processes on the remote IOS system.  The RD value takes the form of C(A:B) where C(A) and C(B) are both numeric values.

		rd?: string

		// Specifies whether or not the configuration is active or deactivated

		active?: bool

		// Configures the state of the VRF definition as it relates to the device operational configuration.  When set to I(present), the VRF should be configured in the device active configuration and when set to I(absent) the VRF should not be in the device active configuration

		state?: string

		// Causes JUNOS to allocate a VPN label per VRF rather than per VPN FEC. This allows for forwarding of traffic to directly connected subnets, COS Egress filtering etc.

		table_label?: bool

		// It configures VRF target community configuration. The target value takes the form of C(target:A:B) where C(A) and C(B) are both numeric values.

		target?: string
	}
}
