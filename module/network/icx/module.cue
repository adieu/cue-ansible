package icx

icx_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	icx_facts: {

		gather_subset?: [...]

		// When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, hardware, config, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.
	}
}

icx_logging :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	icx_logging: {

		// List of logging definitions.

		aggregate?: [...]

		// Check running configuration. This can be set as environment variable. Module will use environment variable value(default:True), unless it is overridden, by specifying it as module parameter.

		check_running_config?: bool

		// Destination of the logs.

		dest?: string

		// Specifies log facility to log messages from the device.

		facility?: string

		// Specifies the message level.

		level?: [...]

		// ipv4 address/ipv6 address/name of  syslog server.

		name?: string

		// State of the logging configuration.

		state?: string

		// UDP port of destination host(syslog server).

		udp_port?: string
	}
}

icx_system :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	icx_system: {

		// Provides the list of domain names to append to the hostname for the purpose of doing name resolution. This argument accepts a list of names and will be reconciled with the current active configuration on the running node.

		domain_search?: [...]

		// Configure the device hostname parameter. This option takes an ASCII string value.

		hostname?: string

		// List of DNS name servers by IP address to use to perform name resolution lookups.

		name_servers?: [...]

		// State of the configuration values in the device's current active configuration.  When set to I(present), the values should be configured in the device active configuration and when set to I(absent) the values should not be in the device active configuration

		state?: string

		// Configures radius/tacacs server

		aaa_servers?: [...]

		// Check running configuration. This can be set as environment variable. Module will use environment variable value(default:True), unless it is overridden, by specifying it as module parameter.

		check_running_config?: bool

		// Configure the IP domain name on the remote device to the provided value. Value should be in the dotted name form and will be appended to the hostname to create a fully-qualified domain name.

		domain_name?: [...]
	}
}

icx_banner :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	icx_banner: {

		// Specifies which banner should be configured on the remote device.

		banner: string

		// Check running configuration. This can be set as environment variable. Module will use environment variable value(default:True), unless it is overridden, by specifying it as module parameter.

		check_running_config?: bool

		// Specifies whether or not the motd configuration should accept the require-enter-key

		enterkey?: bool

		// Specifies whether or not the configuration is present in the current devices active running configuration.

		state?: string

		// The banner text that should be present in the remote device running configuration. This argument accepts a multiline string, with no empty lines.

		text?: string
	}
}

icx_command :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	icx_command: {

		// List of commands to send to the remote ICX device over the configured provider. The resulting output from the command is returned. If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of retries has expired. If a command sent to the device requires answering a prompt, checkall and newline if multiple prompts, it is possible to pass a dict containing I(command), I(answer), I(prompt), I(check_all) and I(newline).Common answers are 'y' or "\r" (carriage return, must be double quotes). See examples.

		commands: [...]

		// Configures the interval in seconds to wait between retries of the command. If the command does not pass the specified conditions, the interval indicates how long to wait before trying the command again.

		interval?: int

		// The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy.  Valid values are C(all) or C(any).  If the value is set to C(all) then all conditionals in the wait_for must be satisfied.  If the value is set to C(any) then only one of the values must be satisfied.

		match?: string

		// Specifies the number of times a command should by tried before it is considered failed. The command is run on the target device every retry and evaluated against the I(wait_for) conditions.

		retries?: int

		// List of conditions to evaluate against the output of the command. The task will wait for each condition to be true before moving forward. If the conditional is not true within the configured number of retries, the task fails. See examples.

		wait_for?: [...]
	}
}

icx_ping :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	icx_ping: {

		// Specifies the Virtual Routing and Forwarding (VRF) instance of the device to be pinged.

		vrf?: string

		// Number of packets to send. Default is 1.

		count?: int

		// ip-addr | host-name | vrf vrf-name | ipv6 [ ipv6-addr | host-name | vrf vrf-name]  (resolvable by switch) of the remote node.

		dest: string

		// Specifies the size of the ICMP data portion of the packet, in bytes. This is the payload and does not include the header. The value can range from 0 to 10000. The default is 16..

		size?: int

		// IP address to be used as the origin of the ping packets.

		source?: string

		// Determines if the expected result is success or fail.

		state?: string

		// Specifies the time, in milliseconds for which the device waits for a reply from the pinged device. The value can range from 1 to 4294967296. The default is 5000 (5 seconds).

		timeout?: int

		// Specifies the time to live as a maximum number of hops. The value can range from 1 to 255. The default is 64.

		ttl?: int
	}
}

icx_static_route :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	icx_static_route: {

		// List of static route definitions.

		aggregate?: [...]

		// Check running configuration. This can be set as environment variable. Module will use environment variable value(default:True), unless it is overridden, by specifying it as module parameter.

		check_running_config?: bool

		// Network prefix mask of the static route.

		mask?: string

		// Next hop IP of the static route.

		next_hop?: string

		// Network prefix of the static route.

		prefix?: string

		// Purge routes not defined in the I(aggregate) parameter.

		purge?: bool

		// State of the static route configuration.

		state?: string

		// Admin distance of the static route. Range is 1 to 255.

		admin_distance?: int
	}
}

icx_user :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	icx_user: {

		// Defines the username without assigning a password. This will allow the user to login to the system without being authenticated by a password.

		nopassword?: bool

		// The privilege level to be granted to the user

		privilege?: string

		// If set to true module will remove any previously configured usernames on the device except the current defined set of users.

		purge?: bool

		// This  argument will instruct the module when to change the password. When set to C(always), the password will always be updated in the device and when set to C(on_create) the password will be updated only if the username is created.

		update_password?: string

		// This parameter indicates the time the file's access time should be set to. Should be preserve when no modification is required, YYYYMMDDHHMM.SS when using default time format, or now. Default is None meaning that preserve is the default for state=[file,directory,link,hard] and now is default for state=touch

		access_time?: string

		// Check running configuration. This can be set as environment variable. Module will use environment variable value(default:True), unless it is overridden, by specifying it as module parameter.

		check_running_config?: bool

		// The username to be configured on the ICX device.

		name: string

		// The set of username objects to be configured on the remote ICX device. The list entries can either be the username or a hash of username and properties. This argument is mutually exclusive with the C(name) argument.

		aggregate?: [...]

		// The password to be configured on the ICX device.

		configured_password?: string

		// Configures the state of the username definition as it relates to the device operational configuration. When set to I(present), the username(s) should be configured in the device active configuration and when set to I(absent) the username(s) should not be in the device active configuration

		state?: string
	}
}

icx_vlan :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	icx_vlan: {

		// List of ethernet ports or LAGS to be added as trunk(tagged) ports to the vlan. To add a range of ports use 'to' keyword. See the example.

		tagged?: {...}

		// ID of the VLAN. Range 1-4094.

		vlan_id: int

		// List of ethernet ports or LAGS to be added as access(untagged) ports to the vlan. To add a range of ports use 'to' keyword. See the example.

		interfaces?: {...}

		// Name of the VLAN.

		name?: string

		// This is a intent option and checks the operational state of the for given vlan C(name) for associated interfaces. If the value in the C(associated_interfaces) does not match with the operational state of vlan interfaces on device it will result in failure.

		associated_interfaces?: [...]

		// Check running configuration. This can be set as environment variable. Module will use environment variable value(default:True), unless it is overridden, by specifying it as module parameter.

		check_running_config?: bool

		// Purge VLANs not defined in the I(aggregate) parameter.

		purge?: bool

		// State of the VLAN configuration.

		state?: string

		// Enable spanning-tree 802-1w/rstp for this vlan.

		stp?: {...}

		// Delay the play should wait to check for declarative intent params values.

		delay?: int

		// Enables DHCP snooping on a VLAN.

		ip_dhcp_snooping?: bool

		// Enables dynamic ARP inspection on a VLAN.

		ip_arp_inspection?: bool

		// List of VLANs definitions.

		aggregate?: [...]

		// This is a intent option and checks the operational state of  given vlan C(name) for associated tagged ports and lags. If the value in the C(associated_tagged) does not match with the operational state of vlan interfaces on device it will result in failure.

		associated_tagged?: [...]
	}
}

icx_config :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	icx_config: {

		// The C(intended_config) provides the master configuration that the node should conform to and is used to check the final running-config against.   This argument will not modify any settings on the remote device and is strictly used to check the compliance of the current device's configuration against.  When specifying this argument, the task should also modify the C(diff_against) value and set it to I(intended).

		intended_config?: string

		// Instructs the module on the way to perform the matching of the set of commands against the current device config.  If match is set to I(line), commands are matched line by line.  If match is set to I(strict), command lines are matched with respect to position.  If match is set to I(exact), command lines must be an equal match.  Finally, if match is set to I(none), the module will not attempt to compare the source configuration with the running configuration on the remote device.

		match?: string

		// When changes are made to the device running-configuration, the changes are not copied to non-volatile storage by default.  Using this argument will change that before.  If the argument is set to I(always), then the running-config will always be copied to the start-up configuration and the I(modified) flag will always be set to True.  If the argument is set to I(modified), then the running-config will only be copied to the start-up configuration if it has changed since the last save to configuration.  If the argument is set to I(never), the running-config will never be copied to the configuration.  If the argument is set to I(changed), then the running-config will only be copied to the configuration if the task has made a change.

		save_when?: string

		// This argument will cause the module to create a full backup of the current C(running-config) from the remote device before any changes are made.  The backup file is written to the C(backup) folder in the playbook root directory or role root directory, if playbook is part of an ansible role. If the directory does not exist, it is created.

		backup?: bool

		// This argument specifies whether or not to collect all defaults when getting the remote device running config.  When enabled, the module will get the current config by issuing the command C(show running-config all).

		defaults?: bool

		// When using the C(ansible-playbook --diff) command line argument the module can generate diffs against different sources.
		// When this option is configure as I(startup), the module will return the diff of the running-config against the configuration.
		// When this option is configured as I(intended), the module will return the diff of the running-config against the configuration provided in the C(intended_config) argument.
		// When this option is configured as I(running), the module will return the before and after diff of the running-config with respect to any changes made to the device configuration.

		diff_against?: string

		// The ordered set of commands that should be configured in the section.  The commands must be the exact same commands as found in the device running-config.  Be sure to note the configuration command syntax as some commands are automatically modified by the device config parser.

		lines?: [...]

		// The ordered set of commands to append to the end of the command stack if a change needs to be made.  Just like with I(before) this allows the playbook designer to append a set of commands to be executed after the command set.

		after?: [...]

		// The ordered set of commands to push on to the command stack if a change needs to be made.  This allows the playbook designer the opportunity to perform configuration commands prior to pushing any changes without affecting how the set of commands are matched against the system.

		before?: [...]

		// The ordered set of parents that uniquely identify the section or hierarchy the commands should be checked against.  If the parents argument is omitted, the commands are checked against the set of top level or global commands.

		parents?: [...]

		// The module, by default, will connect to the remote device and retrieve the current running-config to use as a base for comparing against the contents of source.  There are times when it is not desirable to have the task get the current running-config for every task in a playbook.  The I(running_config) argument allows the implementer to pass in the configuration to use as the base config for comparison.

		running_config?: string

		// Use this argument to specify one or more lines that should be ignored during the diff.  This is used for lines in the configuration that are automatically updated by the system.  This argument takes a list of regular expressions or exact line matches.

		diff_ignore_lines?: [...]

		// This argument is used when pushing a multiline configuration element to the ICX device.  It specifies the character to use as the delimiting character.  This only applies to the configuration action.

		multiline_delimiter?: string

		// Instructs the module on the way to perform the configuration on the device.  If the replace argument is set to I(line) then the modified lines are pushed to the device in configuration mode.  If the replace argument is set to I(block) then the entire command block is pushed to the device in configuration mode if any line is not correct.

		replace?: string

		// Specifies the source path to the file that contains the configuration or configuration template to load.  The path to the source file can either be the full path on the Ansible control host or a relative path from the playbook or role root directory.  This argument is mutually exclusive with I(lines), I(parents).

		src?: string
	}
}

icx_interface :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	icx_interface: {

		// Check the operational state of given interface C(name) for CDP/LLDP neighbor.
		// The following suboptions are available.

		neighbors?: [...]

		// Receiver rate in bits per second (bps).
		// This is state check parameter only.
		// Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)

		rx_rate?: string

		// Interface link speed/duplex

		speed?: string

		// State of the Interface configuration, C(up) means present and operationally up and C(down) means present and operationally C(down)

		state?: string

		// enable/disable stp for the interface

		stp?: bool

		// Check running configuration. This can be set as environment variable.
		// Module will use environment variable value(default:True), unless it is overridden, by specifying it as module parameter.

		check_running_config?: bool

		// Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state argument which are I(state) with values C(up)/C(down), I(tx_rate) and I(rx_rate).

		delay?: int

		// Interface link status

		enabled?: bool

		// Inline power on Power over Ethernet (PoE) ports.

		power?: {...}

		// Transmit rate in bits per second (bps).
		// This is state check parameter only.
		// Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)

		tx_rate?: string

		// List of Interfaces definitions.

		aggregate?: [...]

		// Name of the description.

		description?: string

		// Name of the Interface.

		name?: string
	}
}

icx_linkagg :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	icx_linkagg: {

		// Purge links not defined in the I(aggregate) parameter.

		purge?: bool

		// State of the link aggregation group.

		state?: string

		// List of link aggregation definitions.

		aggregate?: [...]

		// Check running configuration. This can be set as environment variable. Module will use environment variable value(default:True), unless it is overridden, by specifying it as module parameter.

		check_running_config?: bool

		// Channel-group number for the port-channel Link aggregation group. Range 1-255 or set to 'auto' to auto-generates a LAG ID

		group?: int

		// List of port members or ranges of the link aggregation group.

		members?: [...]

		// Mode of the link aggregation group.

		mode?: string

		// Name of the LAG

		name?: string
	}
}

icx_lldp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	icx_lldp: {

		// Check running configuration. This can be set as environment variable. Module will use environment variable value(default:True), unless it is overridden, by specifying it as module parameter.

		check_running_config?: bool

		// specify interfaces

		interfaces?: [...]

		// Enables the receipt and transmission of Link Layer Discovery Protocol (LLDP) globally.

		state?: string
	}
}

icx_copy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	icx_copy: {

		// remote username to be used for scp login.

		remote_user?: string

		// remote password to be used for scp login.

		remote_pass?: string

		// The port number of the remote host. Default values will be selected based on protocol type. Default scp:22, http:443

		remote_port?: string

		// public key type to be used to login to scp server

		public_key?: string

		// The name or path of the remote file/resource to be uploaded or downloaded.

		remote_filename: string

		// IP address of the remote server

		remote_server: string

		// Name of the resource to be uploaded. Mutually exclusive with download.

		upload?: string

		// Name of the resource to be downloaded. Mutually exclusive with upload.

		download?: string

		// Data transfer protocol to be used

		protocol: string
	}
}

icx_l3_interface :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	icx_l3_interface: {

		// List of Layer-3 interfaces definitions. Each of the entry in aggregate list should define name of interface C(name) and a optional C(ipv4) or C(ipv6) address.

		aggregate?: [...]

		// Replaces the configured primary IP address on the interface.

		replace?: string

		// State of the Layer-3 interface configuration. It indicates if the configuration should be present or absent on remote device.

		state?: string

		// Check running configuration. This can be set as environment variable. Module will use environment variable value(default:True), unless it is overridden, by specifying it as module parameter.

		check_running_config?: bool

		// IPv4 address to be set for the Layer-3 interface mentioned in I(name) option. The address format is <ipv4 address>/<mask>, the mask is number in range 0-32 eg. 192.168.0.1/24

		ipv4?: string

		// IPv6 address to be set for the Layer-3 interface mentioned in I(name) option. The address format is <ipv6 address>/<mask>, the mask is number in range 0-128 eg. fd5d:12c9:2201:1::1/64.

		ipv6?: string

		// Specifies if ipv4 address should be dynamic/advertise to ospf/not advertise to ospf. This should be specified only if ipv4 address is configured and if it is not secondary IP address.

		mode?: string

		// Name of the Layer-3 interface to be configured eg. GigabitEthernet0/2, ve 10, ethernet 1/1/1

		name?: string

		// Specifies that the configured address is a secondary IP address. If this keyword is omitted, the configured address is the primary IP address.

		secondary?: string
	}
}
