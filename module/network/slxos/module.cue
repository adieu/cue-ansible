package slxos

slxos_lldp :: {

	// State of the LLDP configuration. If value is I(present) lldp will be enabled else if it is I(absent) it will be disabled.

	state?: string
}

slxos_vlan :: {

	// List of VLANs definitions.

	aggregate?: string

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

	// ID of the VLAN. Range 1-4094.

	vlan_id: string
}

slxos_l2_interface :: {

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

	// Full name of the interface excluding any logical unit number, i.e. Ethernet 0/1.

	name: string

	// Native VLAN to be configured in trunk port. If C(mode=trunk), used as the trunk native VLAN ID.

	native_vlan?: string
}

slxos_linkagg :: {

	// State of the link aggregation group.

	state?: string

	// List of link aggregation definitions.

	aggregate?: string

	// Channel-group number for the port-channel Link aggregation group. Range 1-1024.

	group?: string

	// List of members of the link aggregation group.

	members?: string

	// Mode of the link aggregation group.

	mode?: string

	// Purge links not defined in the I(aggregate) parameter.

	purge?: bool
}

slxos_facts :: {

	// When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, hardware, config, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.

	gather_subset?: string
}

slxos_interface :: {

	// List of Interfaces definitions.

	aggregate?: string

	// Check the operational state of given interface C(name) for LLDP neighbor.
	// The following suboptions are available.

	neighbors?: string

	// Receiver rate in bits per second (bps).

	rx_rate?: string

	// Interface link speed.

	speed?: string

	// Transmit rate in bits per second (bps).

	tx_rate?: string

	// Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state argument which are I(state) with values C(up)/C(down), I(tx_rate) and I(rx_rate).

	delay?: string

	// Description of Interface.

	description?: string

	// Interface link status.

	enabled?: bool

	// Maximum size of transmit packet.

	mtu?: string

	// Name of the Interface.

	name: string

	// State of the Interface configuration, C(up) means present and operationally up and C(down) means present and operationally C(down)

	state?: string
}

slxos_l3_interface :: {

	// List of L3 interfaces definitions. Each of the entry in aggregate list should define name of interface C(name) and a optional C(ipv4) or C(ipv6) address.

	aggregate?: string

	// IPv4 address to be set for the L3 interface mentioned in I(name) option. The address format is <ipv4 address>/<mask>, the mask is number in range 0-32 eg. 192.168.0.1/24

	ipv4?: string

	// IPv6 address to be set for the L3 interface mentioned in I(name) option. The address format is <ipv6 address>/<mask>, the mask is number in range 0-128 eg. fd5d:12c9:2201:1::1/64

	ipv6?: string

	// Name of the L3 interface to be configured eg. Ethernet 0/2

	name?: string

	// State of the L3 interface configuration. It indicates if the configuration should be present or absent on remote device.

	state?: string
}

slxos_command :: {

	// List of conditions to evaluate against the output of the command. The task will wait for each condition to be true before moving forward. If the conditional is not true within the configured number of retries, the task fails. See examples.

	wait_for?: string

	// List of commands to send to the remote SLX-OS device over the configured provider. The resulting output from the command is returned. If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of retries has expired.

	commands: string

	// Configures the interval in seconds to wait between retries of the command. If the command does not pass the specified conditions, the interval indicates how long to wait before trying the command again.

	interval?: string

	// The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy.  Valid values are C(all) or C(any).  If the value is set to C(all) then all conditionals in the wait_for must be satisfied.  If the value is set to C(any) then only one of the values must be satisfied.

	match?: string

	// Specifies the number of retries a command should by tried before it is considered failed. The command is run on the target device every retry and evaluated against the I(wait_for) conditions.

	retries?: string
}

slxos_config :: {

	// The ordered set of commands to append to the end of the command stack if a change needs to be made.  Just like with I(before) this allows the playbook designer to append a set of commands to be executed after the command set.

	after?: string

	// When using the C(ansible-playbook --diff) command line argument the module can generate diffs against different sources.
	// When this option is configure as I(startup), the module will return the diff of the running-config against the startup-config.
	// When this option is configured as I(intended), the module will return the diff of the running-config against the configuration provided in the C(intended_config) argument.
	// When this option is configured as I(running), the module will return the before and after diff of the running-config with respect to any changes made to the device configuration.

	diff_against?: string

	// The C(intended_config) provides the master configuration that the node should conform to and is used to check the final running-config against.   This argument will not modify any settings on the remote device and is strictly used to check the compliance of the current device's configuration against.  When specifying this argument, the task should also modify the C(diff_against) value and set it to I(intended).

	intended_config?: string

	// Instructs the module on the way to perform the matching of the set of commands against the current device config.  If match is set to I(line), commands are matched line by line.  If match is set to I(strict), command lines are matched with respect to position.  If match is set to I(exact), command lines must be an equal match.  Finally, if match is set to I(none), the module will not attempt to compare the source configuration with the running configuration on the remote device.

	match?: string

	// When changes are made to the device running-configuration, the changes are not copied to non-volatile storage by default.  Using this argument will change that before.  If the argument is set to I(always), then the running-config will always be copied to the startup-config and the I(modified) flag will always be set to True.  If the argument is set to I(modified), then the running-config will only be copied to the startup-config if it has changed since the last save to startup-config.  If the argument is set to I(never), the running-config will never be copied to the startup-config.  If the argument is set to I(changed), then the running-config will only be copied to the startup-config if the task has made a change.

	save_when?: string

	// This is a dict object containing configurable options related to backup file path. The value of this option is read only when C(backup) is set to I(yes), if C(backup) is set to I(no) this option will be silently ignored.

	backup_options?: {...}

	// This argument specifies whether or not to collect all defaults when getting the remote device running config.  When enabled, the module will get the current config by issuing the command C(show running-config all).

	defaults?: bool

	// Use this argument to specify one or more lines that should be ignored during the diff.  This is used for lines in the configuration that are automatically updated by the system.  This argument takes a list of regular expressions or exact line matches.

	diff_ignore_lines?: string

	// The ordered set of commands to push on to the command stack if a change needs to be made.  This allows the playbook designer the opportunity to perform configuration commands prior to pushing any changes without affecting how the set of commands are matched against the system.

	before?: string

	// The ordered set of commands that should be configured in the section.  The commands must be the exact same commands as found in the device running-config.  Be sure to note the configuration command syntax as some commands are automatically modified by the device config parser.

	lines?: string

	// This argument is used when pushing a multiline configuration element to the SLX-OS device.  It specifies the character to use as the delimiting character.  This only applies to the configuration action.

	multiline_delimiter?: string

	// The ordered set of parents that uniquely identify the section or hierarchy the commands should be checked against.  If the parents argument is omitted, the commands are checked against the set of top level or global commands.

	parents?: string

	// Instructs the module on the way to perform the configuration on the device.  If the replace argument is set to I(line) then the modified lines are pushed to the device in configuration mode.  If the replace argument is set to I(block) then the entire command block is pushed to the device in configuration mode if any line is not correct.

	replace?: string

	// This argument will cause the module to create a full backup of the current C(running-config) from the remote device before any changes are made. If the C(backup_options) value is not given, the backup file is written to the C(backup) folder in the playbook root directory. If the directory does not exist, it is created.

	backup?: bool

	// The module, by default, will connect to the remote device and retrieve the current running-config to use as a base for comparing against the contents of source.  There are times when it is not desirable to have the task get the current running-config for every task in a playbook.  The I(running_config) argument allows the implementer to pass in the configuration to use as the base config for comparison.

	running_config?: string

	// Specifies the source path to the file that contains the configuration or configuration template to load.  The path to the source file can either be the full path on the Ansible control host or a relative path from the playbook or role root directory.  This argument is mutually exclusive with I(lines), I(parents).

	src?: string
}
