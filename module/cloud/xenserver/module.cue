package xenserver

xenserver_guest :: {

	// UUID of the VM to manage if known. This is XenServer's unique identifier.
	// It is required if name is not unique.
	// Please note that a supplied UUID will be ignored on VM creation, as XenServer creates the UUID internally.

	uuid?: string

	// A CD-ROM configuration for the VM.
	// All parameters are case sensitive.
	// Valid parameters are:
	//  - C(type) (string): The type of CD-ROM, valid options are C(none) or C(iso). With C(none) the CD-ROM device will be present but empty.
	//  - C(iso_name) (string): The file name of an ISO image from one of the XenServer ISO Libraries (implies C(type: iso)). Required if C(type) is set to C(iso).

	cdrom?: {...}

	// Specify the state VM should be in.
	// If C(state) is set to C(present) and VM exists, ensure the VM configuration conforms to given parameters.
	// If C(state) is set to C(present) and VM does not exist, then VM is deployed with given parameters.
	// If C(state) is set to C(absent) and VM exists, then VM is removed with its associated components.
	// If C(state) is set to C(poweredon) and VM does not exist, then VM is deployed with given parameters and powered on automatically.

	state?: string

	// Convert VM to template.

	is_template?: bool

	// Whether to create a Linked Clone from the template, existing VM or snapshot. If no, will create a full copy.
	// This is equivalent to C(Use storage-level fast disk clone) option in XenCenter.

	linked_clone?: bool

	// VM description.

	name_desc?: string

	// Name of a template, an existing VM (must be shut down) or a snapshot that should be used to create VM.
	// Templates/VMs/snapshots on XenServer do not necessarily have unique names. The module will fail if multiple templates with same name are found.
	// In case of multiple templates/VMs/snapshots with same name, use C(template_uuid) to uniquely specify source template.
	// If VM already exists, this setting will be ignored.
	// This parameter is case sensitive.

	template?: string

	// Define a list of custom VM params to set on VM.
	// Useful for advanced users familiar with managing VM params trough xe CLI.
	// A custom value object takes two fields C(key) and C(value) (see example below).

	custom_params?: [..._]

	// Manage VM's hardware parameters. VM needs to be shut down to reconfigure these parameters.
	// Valid parameters are:
	//  - C(num_cpus) (integer): Number of CPUs.
	//  - C(num_cpu_cores_per_socket) (integer): Number of Cores Per Socket. C(num_cpus) has to be a multiple of C(num_cpu_cores_per_socket).
	//  - C(memory_mb) (integer): Amount of memory in MB.

	hardware?: {...}

	// Name of the VM to work with.
	// VMs running on XenServer do not necessarily have unique names. The module will fail if multiple VMs with same name are found.
	// In case of multiple VMs with same name, use C(uuid) to uniquely specify VM to manage.
	// This parameter is case sensitive.

	name: string

	// A list of networks (in the order of the NICs).
	// All parameters are case sensitive.
	// Required parameters per entry:
	//  - C(name) (string): Name of a XenServer network to attach the network interface to. You can also use C(name_label) as an alias.
	// Optional parameters per entry (used for VM hardware):
	//  - C(mac) (string): Customize MAC address of the interface.
	// Optional parameters per entry (used for OS customization):
	//  - C(type) (string): Type of IPv4 assignment, valid options are C(none), C(dhcp) or C(static). Value C(none) means whatever is default for OS. On some operating systems it could be DHCP configured (e.g. Windows) or unconfigured interface (e.g. Linux).
	//  - C(ip) (string): Static IPv4 address (implies C(type: static)). Can include prefix in format <IPv4 address>/<prefix> instead of using C(netmask).
	//  - C(netmask) (string): Static IPv4 netmask required for C(ip) if prefix is not specified.
	//  - C(gateway) (string): Static IPv4 gateway.
	//  - C(type6) (string): Type of IPv6 assignment, valid options are C(none), C(dhcp) or C(static). Value C(none) means whatever is default for OS. On some operating systems it could be DHCP configured (e.g. Windows) or unconfigured interface (e.g. Linux).
	//  - C(ip6) (string): Static IPv6 address (implies C(type6: static)) with prefix in format <IPv6 address>/<prefix>.
	//  - C(gateway6) (string): Static IPv6 gateway.

	networks?: [..._]

	// UUID of a template, an existing VM or a snapshot that should be used to create VM.
	// It is required if template name is not unique.

	template_uuid?: string

	// A list of disks to add to VM.
	// All parameters are case sensitive.
	// Removing or detaching existing disks of VM is not supported.
	// Required parameters per entry:
	//  - C(size_[tb,gb,mb,kb,b]) (integer): Disk storage size in specified unit. VM needs to be shut down to reconfigure this parameter.
	// Optional parameters per entry:
	//  - C(name) (string): Disk name. You can also use C(name_label) as an alias.
	//  - C(name_desc) (string): Disk description.
	//  - C(sr) (string): Storage Repository to create disk on. If not specified, will use default SR. Cannot be used for moving disk to other SR.
	//  - C(sr_uuid) (string): UUID of a SR to create disk on. Use if SR name is not unique.

	disks?: [..._]

	// Name of a XenServer host that will be a Home Server for the VM.
	// This parameter is case sensitive.

	home_server?: string

	// By default, module will wait indefinitely for VM to accquire an IP address if C(wait_for_ip_address: yes).
	// If this parameter is set to positive value, the module will instead wait specified number of seconds for the state change.
	// In case of timeout, module will generate an error message.

	state_change_timeout?: int

	// Wait until XenServer detects an IP address for the VM. If C(state) is set to C(absent), this parameter is ignored.
	// This requires XenServer Tools to be preinstalled on the VM to work properly.

	wait_for_ip_address?: bool

	// Destination folder for VM.
	// This parameter is case sensitive.
	// Example:
	//   folder: /folder1/folder2

	folder?: string

	// Ignore warnings and complete the actions.
	// This parameter is useful for removing VM in running state or reconfiguring VM params that require VM to be shut down.

	force?: bool
}

xenserver_guest_info :: {

	// Name of the VM to gather facts from.
	// VMs running on XenServer do not necessarily have unique names. The module will fail if multiple VMs with same name are found.
	// In case of multiple VMs with same name, use C(uuid) to uniquely specify VM to manage.
	// This parameter is case sensitive.

	name: string

	// UUID of the VM to gather fact of. This is XenServer's unique identifier.
	// It is required if name is not unique.

	uuid?: string
}

xenserver_guest_powerstate :: {

	// Name of the VM to manage.
	// VMs running on XenServer do not necessarily have unique names. The module will fail if multiple VMs with same name are found.
	// In case of multiple VMs with same name, use C(uuid) to uniquely specify VM to manage.
	// This parameter is case sensitive.

	name: string

	// Specify the state VM should be in.
	// If C(state) is set to value other than C(present), then VM is transitioned into required state and facts are returned.
	// If C(state) is set to C(present), then VM is just checked for existence and facts are returned.

	state?: string

	// By default, module will wait indefinitely for VM to change state or acquire an IP address if C(wait_for_ip_address: yes).
	// If this parameter is set to positive value, the module will instead wait specified number of seconds for the state change.
	// In case of timeout, module will generate an error message.

	state_change_timeout?: int

	// UUID of the VM to manage if known. This is XenServer's unique identifier.
	// It is required if name is not unique.

	uuid?: string

	// Wait until XenServer detects an IP address for the VM.
	// This requires XenServer Tools to be preinstalled on the VM to work properly.

	wait_for_ip_address?: bool
}
