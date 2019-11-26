package cnos

cnos_rollback :: {

	// Specify username for the server relating to the protocol used.

	serverusername: string

	// This refers to the type of configuration which will be used for the rolling back process. The choices are the running or startup configurations. There is no default value, so it will result in an error if the input is incorrect.

	configType: string

	// This refers to the protocol used by the network device to interact with the remote server from where to download the backup configuration. The choices are FTP, SFTP, TFTP, or SCP. Any other protocols will result in error. If this parameter is not specified, there is no default value to be used.

	protocol: string

	// This specifies the full file path of the configuration file located on the remote server. In case the relative path is used as the variable value, the root folder for the user of the server needs to be specified.

	rcpath: string

	// This specifies the IP Address of the remote server from where the backup configuration will be downloaded.

	rcserverip: string

	// Specify password for the server relating to the protocol used.

	serverpassword: string
}

cnos_backup :: {

	// This specifies what type of configuration will be backed up. The choices are the running or startup configurations. There is no default value, so it will result in an error if the input is incorrect.

	configType: string

	// This refers to the protocol used by the network device to interact with the remote server to where to upload the backup configuration. The choices are FTP, SFTP, TFTP, or SCP. Any other protocols will result in error. If this parameter is not specified, there is no default value to be used.

	protocol: string

	// This specifies the full file path where the configuration file will be copied on the remote server. In case the relative path is used as the variable value, the root folder for the user of the server needs to be specified.

	rcpath: string

	// -This specifies the IP Address of the remote server to where the configuration will be backed up.

	rcserverip: string

	// Specify the password for the server relating to the protocol used.

	serverpassword: string

	// Specify the username for the server relating to the protocol used.

	serverusername: string
}

cnos_factory :: {
}

cnos_l2_interface :: {

	// Configure given VLAN in access port. If C(mode=access), used as the access VLAN ID.

	access_vlan?: string

	// Full name of the interface excluding any logical unit number, i.e. Ethernet1/3.

	name: string

	// Native VLAN to be configured in trunk port. If C(mode=trunk), used as the trunk native VLAN ID.

	native_vlan?: string

	// B(Deprecated)
	// Starting with Ansible 2.5 we recommend using C(connection: network_cli).
	// For more information please see the L(CNOS Platform Options guide, ../network/user_guide/platform_cnos.html).
	// HORIZONTALLINE
	// A dict object containing connection details.

	provider?: string

	// Manage the state of the Layer-2 Interface configuration.

	state?: string

	// List of allowed VLANs in a given trunk port. If C(mode=trunk), these are the only VLANs that will be configured on the trunk, i.e. "2-10,15".

	trunk_allowed_vlans?: string

	// List of VLANs to be configured in trunk port. If C(mode=trunk), used as the VLAN range to ADD or REMOVE from the trunk.

	trunk_vlans?: string

	// List of Layer-2 interface definitions.

	aggregate?: string

	// Mode in which interface needs to be configured.

	mode?: string
}

cnos_logging :: {

	// Destination of the logs. Lenovo uses the term server instead of host in its CLI.

	dest?: string

	// Set logging facility. This is applicable only for server logging

	facility?: string

	// Set logging severity levels. 0-emerg;1-alert;2-crit;3-err;4-warn; 5-notif;6-inform;7-debug

	level?: string

	// If value of C(dest) is I(file) it indicates file-name and for I(server) indicates the server name to be notified.

	name?: string

	// Size of buffer. The acceptable value is in range from 4096 to 4294967295 bytes.

	size?: string

	// State of the logging configuration.

	state?: string

	// List of logging definitions.

	aggregate?: string
}

cnos_config :: {

	// The ordered set of commands to push on to the command stack if a change needs to be made.  This allows the playbook designer the opportunity to perform configuration commands prior to pushing any changes without affecting how the set of commands are matched against the system.

	before?: string

	// Allows a commit description to be specified to be included when the configuration is committed.  If the configuration is not changed or committed, this argument is ignored.

	comment?: string

	// The ordered set of commands that should be configured in the section.  The commands must be the exact same commands as found in the device running-config.  Be sure to note the configuration command syntax as some commands are automatically modified by the device config parser.

	lines?: string

	// Enters into administration configuration mode for making config changes to the device.

	admin?: bool

	// The ordered set of commands to append to the end of the command stack if a change needs to be made.  Just like with I(before) this allows the playbook designer to append a set of commands to be executed after the command set.

	after?: string

	// This argument will cause the module to create a full backup of the current C(running-config) from the remote device before any changes are made. If the C(backup_options) value is not given, the backup file is written to the C(backup) folder in the playbook root directory. If the directory does not exist, it is created.

	backup?: bool

	// This is a dict object containing configurable options related to backup file path. The value of this option is read only when C(backup) is set to I(yes), if C(backup) is set to I(no) this option will be silently ignored.

	backup_options?: {...}

	// Specifies the source path to the file that contains the configuration or configuration template to load.  The path to the source file can either be the full path on the Ansible control host or a relative path from the playbook or role root directory.  This argument is mutually exclusive with I(lines), I(parents).

	src?: string

	// The module, by default, will connect to the remote device and retrieve the current running-config to use as a base for comparing against the contents of source.  There are times when it is not desirable to have the task get the current running-config for every task in a playbook.  The I(config) argument allows the implementer to pass in the configuration to use as the base config for comparison.

	config?: string

	// Instructs the module on the way to perform the matching of the set of commands against the current device config.  If match is set to I(line), commands are matched line by line.  If match is set to I(strict), command lines are matched with respect to position.  If match is set to I(exact), command lines must be an equal match.  Finally, if match is set to I(none), the module will not attempt to compare the source configuration with the running configuration on the remote device.

	match?: string

	// The ordered set of parents that uniquely identify the section the commands should be checked against.  If the parents argument is omitted, the commands are checked against the set of top level or global commands.

	parents?: string

	// Instructs the module on the way to perform the configuration on the device.  If the replace argument is set to I(line) then the modified lines are pushed to the device in configuration mode.  If the replace argument is set to I(block) then the entire command block is pushed to the device in configuration mode if any line is not correct.

	replace?: string
}

cnos_save :: {
}

cnos_vlan :: {

	// Purge VLANs not defined in the I(aggregate) parameter.

	purge?: bool

	// ID of the VLAN. Range 1-4094.

	vlan_id: string

	// B(Deprecated)
	// Starting with Ansible 2.5 we recommend using C(connection: network_cli).
	// For more information please see the L(CNOS Platform Options guide, ../network/user_guide/platform_cnos.html).
	// HORIZONTALLINE
	// A dict object containing connection details.

	provider?: string

	// This is a intent option and checks the operational state of the for given vlan C(name) for associated interfaces. If the value in the C(associated_interfaces) does not match with the operational state of vlan interfaces on device it will result in failure.

	associated_interfaces?: string

	// Delay the play should wait to check for declarative intent params values.

	delay?: string

	// List of interfaces that should be associated to the VLAN.

	interfaces: string

	// Name of the VLAN.

	name?: string

	// State of the VLAN configuration.

	state?: string

	// List of VLANs definitions.

	aggregate?: string
}

cnos_vrf :: {

	// Name of the VRF.

	name: string

	// Purge VRFs not defined in the I(aggregate) parameter.

	purge?: bool

	// Route distinguisher of the VRF

	rd?: string

	// State of the VRF configuration.

	state?: string

	// List of VRFs contexts

	aggregate?: string

	// This is a intent option and checks the operational state of the for given vrf C(name) for associated interfaces. If the value in the C(associated_interfaces) does not match with the operational state of vrf interfaces on device it will result in failure.

	associated_interfaces?: string

	// Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state arguments.

	delay?: string

	// Identifies the set of interfaces that should be configured in the VRF. Interfaces must be routed interfaces in order to be placed into a VRF. The name of interface should be in expanded format and not abbreviated.

	interfaces?: string
}

cnos_banner :: {

	// Specifies which banner should be configured on the remote device. In Ansible 2.8 and earlier only I(login) and I(motd) were supported.

	banner: string

	// B(Deprecated)
	// Starting with Ansible 2.5 we recommend using C(connection: network_cli).
	// For more information please see the L(CNOS Platform Options guide, ../network/user_guide/platform_cnos.html).
	// HORIZONTALLINE
	// A dict object containing connection details.

	provider?: string

	// Specifies whether or not the configuration is present in the current devices active running configuration.

	state?: string

	// The banner text that should be present in the remote device running configuration.  This argument accepts a multiline string, with no empty lines. Requires I(state=present).

	text?: string
}

cnos_l3_interface :: {

	// State of the Layer-3 interface configuration. It indicates if the configuration should be present or absent on remote device.

	state?: string

	// List of Layer-3 interfaces definitions. Each of the entry in aggregate list should define name of interface C(name) and a optional C(ipv4) or C(ipv6) address.

	aggregate?: string

	// IPv4 address to be set for the Layer-3 interface mentioned in I(name) option. The address format is <ipv4 address>/<mask>, the mask is number in range 0-32 eg. 10.241.107.1/24

	ipv4?: string

	// IPv6 address to be set for the Layer-3 interface mentioned in I(name) option. The address format is <ipv6 address>/<mask>, the mask is number in range 0-128 eg. fd5d:12c9:2201:1::1/64

	ipv6?: string

	// Name of the Layer-3 interface to be configured eg. Ethernet1/2

	name?: string

	// B(Deprecated)
	// Starting with Ansible 2.5 we recommend using C(connection: network_cli).
	// For more information please see the L(CNOS Platform Options guide, ../network/user_guide/platform_cnos.html).
	// HORIZONTALLINE
	// A dict object containing connection details.

	provider?: string
}

cnos_system :: {

	// Administrative control for enabling or disabling DNS lookups. When this argument is set to True, lookups are performed and when it is set to False, lookups are not performed.

	lookup_enabled?: bool

	// Provides one or more source interfaces to use for performing DNS lookups. The interface must be a valid interface configured. on the device.

	lookup_source?: string

	// List of DNS name servers by IP address to use to perform name resolution lookups.  This argument accepts either a list of DNS servers or a list of hashes that configure the name server and VRF name or keyword 'default'. See examples.

	name_servers?: string

	// State of the configuration values in the device's current active configuration.  When set to I(present), the values should be configured in the device active configuration and when set to I(absent) the values should not be in the device active configuration

	state?: string

	// Configures the default domain name suffix to be used when referencing this node by its FQDN.  This argument accepts either a list of domain names or a list of dicts that configure the domain name and VRF name or keyword 'default'. See examples.

	domain_name?: string

	// Configures a list of domain name suffixes to search when performing DNS name resolution. This argument accepts either a list of domain names or a list of dicts that configure the domain name and VRF name or keyword 'default'. See examples.

	domain_search?: string

	// Configure the device hostname parameter. This option takes an ASCII string value or keyword 'default'

	hostname?: string
}

cnos_command :: {

	// Specifies the number of retries a command should by tried before it is considered failed. The command is run on the target device every retry and evaluated against the I(wait_for) conditions.

	retries?: string

	// List of conditions to evaluate against the output of the command. The task will wait for each condition to be true before moving forward. If the conditional is not true within the configured number of retries, the task fails. See examples.

	wait_for?: string

	// List of commands to send to the remote device. The resulting output from the command is returned. If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of retires is expired.

	commands: string

	// Configures the interval in seconds to wait between retries of the command. If the command does not pass the specified conditions, the interval indicates how long to wait before trying the command again.

	interval?: string

	// The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy.  Valid values are C(all) or C(any).  If the value is set to C(all) then all conditionals in the wait_for must be satisfied.  If the value is set to C(any) then only one of the values must be satisfied.

	match?: string
}

cnos_conditional_command :: {

	// This specifies the CLI command as an attribute to this method. The command is passed using double quotes. The variables can be placed directly on to the CLI commands or can be invoked from the vars directory.

	clicommand: string

	// If you specify condition=false in the inventory file against any device, the command execution is skipped for that device.

	condition: string

	// If a task needs to be executed, you have to set the flag the same as it is specified in the inventory for that device.

	flag: string
}

cnos_bgp :: {

	// This is an overloaded bgp second argument. Usage of this argument can be found is the User Guide referenced above.

	bgpArg2?: string

	// This is an overloaded bgp third argument. Usage of this argument can be found is the User Guide referenced above.

	bgpArg3?: string

	// This is an overloaded bgp fourth argument. Usage of this argument can be found is the User Guide referenced above.

	bgpArg4?: string

	// This is an overloaded bgp eight argument. Usage of this argument can be found is the User Guide referenced above.

	bgpArg8?: string

	// AS number

	asNum: string

	// This is an overloaded bgp first argument. Usage of this argument can be found is the User Guide referenced above.

	bgpArg1: string

	// This is an overloaded bgp fifth argument. Usage of this argument can be found is the User Guide referenced above.

	bgpArg5?: string

	// This is an overloaded bgp sixth argument. Usage of this argument can be found is the User Guide referenced above.

	bgpArg6?: string

	// This is an overloaded bgp seventh argument. Use of this argument can be found is the User Guide referenced above.

	bgpArg7?: string
}

cnos_showrun :: {
}

cnos_conditional_template :: {

	// This specifies the path to the CNOS command file which needs to be applied. This usually comes from the commands folder. Generally this file is the output of the variables applied on a template file. So this command is preceded by a template module. The command file must contain the Ansible keyword {{ inventory_hostname }} and the condition flag in its filename to ensure that the command file is unique for each switch and condition. If this is omitted, the command file will be overwritten during iteration. For example, commandfile=./commands/clos_leaf_bgp_ {{ inventory_hostname }}_LP21_commands.txt

	commandfile: string

	// If you specify condition=<flag string> in the inventory file against any device, the template execution is done for that device in case it matches the flag setting for that task.

	condition: string

	// If a task needs to be executed, you have to set the flag the same as it is specified in the inventory for that device.

	flag: string
}

cnos_facts :: {

	// Specifies the password to use if required to enter privileged mode on the remote device.  If I(authorize) is false, then this argument does nothing. If the value is not specified in the task, the value of environment variable C(ANSIBLE_NET_AUTH_PASS) will be used instead.

	auth_pass?: string

	// Instructs the module to enter privileged mode on the remote device before sending any commands.  If not specified, the device will attempt to execute all commands in non-privileged mode. If the value is not specified in the task, the value of environment variable C(ANSIBLE_NET_AUTHORIZE) will be used instead.

	authorize?: bool

	// When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, hardware, config, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.

	gather_subset?: string
}

cnos_user :: {

	// The C(state) argument configures the state of the username definition as it relates to the device operational configuration.  When set to I(present), the username(s) should be configured in the device active configuration and when set to I(absent) the username(s) should not be in the device active configuration

	state?: string

	// Since passwords are encrypted in the device running config, this argument will instruct the module when to change the password.  When set to C(always), the password will always be updated in the device and when set to C(on_create) the password will be updated only if the username is created.

	update_password?: string

	// The set of username objects to be configured on the remote Lenovo CNOS device.  The list entries can either be the username or a hash of username and properties.  This argument is mutually exclusive with the C(name) argument.

	aggregate?: string

	// The password to be configured on the network device. The password needs to be provided in cleartext and it will be encrypted on the device. Please note that this option is not same as C(provider password).

	configured_password?: string

	// The username to be configured on the remote Lenovo CNOS device.  This argument accepts a string value and is mutually exclusive with the C(aggregate) argument.

	name?: string

	// The C(purge) argument instructs the module to consider the resource definition absolute.  It will remove any previously configured usernames on the device with the exception of the `admin` user which cannot be deleted per cnos constraints.

	purge?: bool

	// The C(role) argument configures the role for the username in the device running configuration.  The argument accepts a string value defining the role name.  This argument does not check if the role has been configured on the device.

	role?: string

	// The C(sshkey) argument defines the SSH public key to configure for the username.  This argument accepts a valid SSH key value.

	sshkey?: string
}

cnos_vlag :: {

	// This is an overloaded vlag fourth argument. Usage of this argument can be found is the User Guide referenced above.

	vlagArg4?: string

	// This is an overloaded vlag first argument. Usage of this argument can be found is the User Guide referenced above.

	vlagArg1: string

	// This is an overloaded vlag second argument. Usage of this argument can be found is the User Guide referenced above.

	vlagArg2?: string

	// This is an overloaded vlag third argument. Usage of this argument can be found is the User Guide referenced above.

	vlagArg3?: string
}

cnos_lldp :: {

	// State of the LLDP configuration. If value is I(present) lldp will be enabled else if it is I(absent) it will be disabled.

	state?: string
}

cnos_static_route :: {

	// List of static route definitions.

	aggregate?: string

	// Name of the static route

	description?: string

	// Network prefix mask of the static route.

	mask?: string

	// State of the static route configuration.

	state?: string

	// Set tag of the static route.

	tag?: string

	// Admin distance of the static route.

	admin_distance?: string

	// Interface of the static route.

	interface?: string

	// Next hop IP of the static route.

	next_hop?: string

	// Network prefix of the static route.

	prefix?: string
}

cnos_template :: {

	// This specifies the path to the CNOS command file which needs to be applied. This usually comes from the commands folder. Generally this file is the output of the variables applied on a template file. So this command is preceded by a template module. Note The command file must contain the Ansible keyword {{ inventory_hostname }} in its filename to ensure that the command file is unique for each switch and condition. If this is omitted, the command file will be overwritten during iteration. For example, commandfile=./commands/clos_leaf_bgp_{{ inventory_hostname }}_commands.txt

	commandfile: string
}

cnos_linkagg :: {

	// List of link aggregation definitions.

	aggregate?: string

	// Channel-group number for the port-channel Link aggregation group. Range 1-255.

	group?: string

	// List of members of the link aggregation group.

	members?: string

	// Mode of the link aggregation group.

	mode?: string

	// B(Deprecated)
	// Starting with Ansible 2.5 we recommend using C(connection: network_cli).
	// For more information please see the L(CNOS Platform Options guide, ../network/user_guide/platform_cnos.html).
	// HORIZONTALLINE
	// A dict object containing connection details.

	provider?: string

	// Purge links not defined in the I(aggregate) parameter.

	purge?: bool

	// State of the link aggregation group.

	state?: string
}

cnos_reload :: {
}

cnos_image :: {

	// This refers to the protocol used by the network device to interact with the remote server from where to download the firmware image. The choices are FTP, SFTP, TFTP, or SCP. Any other protocols will result in error. If this parameter is not specified there is no default value to be used.

	protocol: string

	// This specifies the IP Address of the remote server from where the software image will be downloaded.

	serverip: string

	// Specify the password for the server relating to the protocol used

	serverpassword?: string

	// Specify the username for the server relating to the protocol used

	serverusername: string

	// This specifies the full file path of the image located on the remote server. In case the relative path is used as the variable value, the root folder for the user of the server needs to be specified.

	imgpath: string

	// This specifies the firmware image type to be downloaded

	imgtype: string
}

cnos_interface :: {

	// Interface link status

	duplex?: string

	// Maximum size of transmit packet.

	mtu?: string

	// Name of the Interface.

	name: string

	// Check operational state of given interface C(name) for LLDP neighbor.
	// The following suboptions are available.

	neighbors?: string

	// Interface link speed.

	speed?: string

	// State of the Interface configuration, C(up) means present and operationally up and C(down) means present and operationally C(down)

	state?: string

	// Transmit rate in bits per second (bps).
	// This is state check parameter only.
	// Supports conditionals, see L(Conditionals in Networking Modules, ../network/user_guide/network_working_with_command_output.html)

	tx_rate?: string

	// List of Interfaces definitions.

	aggregate?: string

	// Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state argument which are I(state) with values C(up)/C(down), I(tx_rate) and I(rx_rate)

	delay?: string

	// Description of Interface.

	description?: string

	// Interface link status.

	enabled?: bool

	// B(Deprecated)
	// Starting with Ansible 2.5 we recommend using C(connection: network_cli).
	// For more information please see the L(CNOS Platform Options guide, ../network/user_guide/platform_cnos.html).
	// HORIZONTALLINE
	// A dict object containing connection details.

	provider?: string

	// Receiver rate in bits per second (bps).
	// This is state check parameter only.
	// Supports conditionals, see L(Conditionals in Networking Modules, ../network/user_guide/network_working_with_command_output.html)

	rx_rate?: string
}
