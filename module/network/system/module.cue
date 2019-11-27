package system

net_banner :: {

	// Specifies which banner that should be configured on the remote device.

	banner: string

	// Specifies whether or not the configuration is present in the current devices active running configuration.

	state?: string

	// The banner text that should be present in the remote device running configuration.  This argument accepts a multiline string, with no empty lines. Requires I(state=present).

	text?: string
}

net_logging :: {

	// Purge logging not defined in the I(aggregate) parameter.

	purge?: string

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

	// If value of C(dest) is I(host) it indicates file-name the host name to be notified.

	name?: string
}

net_ping :: {

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

net_system :: {

	// List of DNS name servers by IP address to use to perform name resolution lookups.  This argument accepts either a list of DNS servers See examples.

	name_servers?: string

	// State of the configuration values in the device's current active configuration.  When set to I(present), the values should be configured in the device active configuration and when set to I(absent) the values should not be in the device active configuration

	state?: string

	// Configure the IP domain name on the remote device to the provided value. Value should be in the dotted name form and will be appended to the C(hostname) to create a fully-qualified domain name.

	domain_name?: string

	// Provides the list of domain suffixes to append to the hostname for the purpose of doing name resolution. This argument accepts a name or list of names and will be reconciled with the current active configuration on the running node.

	domain_search?: string

	// Configure the device hostname parameter. This option takes an ASCII string value.

	hostname?: string

	// Provides one or more source interfaces to use for performing DNS lookups.  The interface provided in C(lookup_source) must be a valid interface configured on the device.

	lookup_source?: string
}

net_user :: {

	// The set of username objects to be configured on the remote network device. The list entries can either be the username or a hash of username and properties. This argument is mutually exclusive with the C(name) argument.

	aggregate?: string

	// The username to be configured on the remote network device. This argument accepts a string value and is mutually exclusive with the C(aggregate) argument. Please note that this option is not same as C(provider username).

	name?: string

	// Instructs the module to consider the resource definition absolute. It will remove any previously configured usernames on the device with the exception of the `admin` user (the current defined set of users).

	purge?: bool

	// Specifies the SSH public key to configure for the given username. This argument accepts a valid SSH key value.

	sshkey?: string

	// Configures the state of the username definition as it relates to the device operational configuration. When set to I(present), the username(s) should be configured in the device active configuration and when set to I(absent) the username(s) should not be in the device active configuration

	state?: string

	// Since passwords are encrypted in the device running config, this argument will instruct the module when to change the password.  When set to C(always), the password will always be updated in the device and when set to C(on_create) the password will be updated only if the username is created.

	update_password?: string

	// The password to be configured on the remote network device. The password needs to be provided in clear and it will be encrypted on the device. Please note that this option is not same as C(provider password).

	configured_password?: string

	// Defines the username without assigning a password. This will allow the user to login to the system without being authenticated by a password.

	nopassword?: bool

	// The C(privilege) argument configures the privilege level of the user when logged into the system. This argument accepts integer values in the range of 1 to 15.

	privilege?: string

	// Configures the role for the username in the device running configuration. The argument accepts a string value defining the role name. This argument does not check if the role has been configured on the device.

	role?: string
}
