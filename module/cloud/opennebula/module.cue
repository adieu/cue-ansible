package opennebula

one_service :: {

	// Name of service template to use to create a new instance of a service

	template_name?: string

	// Wait for the instance to reach RUNNING state after DEPLOYING or COOLDOWN state after SCALING

	wait?: bool

	// Number of VMs for the specified role

	cardinality?: string

	// ID of a service instance that you would like to manage

	service_id?: string

	// ID of a service template to use to create a new instance of a service

	template_id?: string

	// ID of the group which will be set as the group of the service

	group_id?: string

	// Name of the role whose cardinality should be changed

	role?: string

	// Dictionary of key/value custom attributes which will be used when instantiating a new service.

	custom_attrs?: string

	// Set permission mode of a service instance in octet format, e.g. C(600) to give owner C(use) and C(manage) and nothing to group and others.

	mode?: string

	// Name of a service instance that you would like to manage

	service_name?: string

	// Password of the user to login into OpenNebula OneFlow API server. If not set then the value of the C(ONEFLOW_PASSWORD) environment variable is used.

	api_password?: string

	// URL of the OpenNebula OneFlow API server.
	// It is recommended to use HTTPS so that the username/password are not transferred over the network unencrypted.
	// If not set then the value of the ONEFLOW_URL environment variable is used.

	api_url?: string

	// ID of the user which will be set as the owner of the service

	owner_id?: string

	// C(present) - instantiate a service from a template specified with C(template_id)/C(template_name).
	// C(absent) - terminate an instance of a service specified with C(service_id)/C(service_name).

	state?: string

	// Setting C(unique=yes) will make sure that there is only one service instance running with a name set with C(service_name) when
	// instantiating a service from a template specified with C(template_id)/C(template_name). Check examples below.

	unique?: bool

	// How long before wait gives up, in seconds

	wait_timeout?: string

	// Name of the user to login into the OpenNebula OneFlow API server. If not set then the value of the C(ONEFLOW_USERNAME) environment variable is used.

	api_username?: string

	// Force the new cardinality even if it is outside the limits

	force?: bool
}

one_vm :: {

	// Create a private persistent copy of the template plus any image defined in DISK, and instantiate that copy.

	persistent?: bool

	// URL of the OpenNebula RPC server.
	// It is recommended to use HTTPS so that the username/password are not
	// transferred over the network unencrypted.
	// If not set then the value of the C(ONE_URL) environment variable is used.

	api_url?: string

	// Name of Datastore to use to create a new instace

	datastore_id?: string

	// Indicates how many instances that match C(count_attributes) and
	// C(count_labels) parameters should be deployed. Instances are either
	// created or terminated based on this value.
	// NOTE':' Instances with the least IDs will be terminated first.

	exact_count?: string

	// ID of a VM template to use to create a new instance

	template_id?: string

	// Set to true to put vm on hold while creating

	vm_start_on_hold?: string

	// A dictionary of key/value attributes that can only be used with
	// C(exact_count) to determine how many nodes based on a specific
	// attributes criteria should be deployed. This can be expressed in
	// multiple ways and is shown in the EXAMPLES section.

	count_attributes?: string

	// Percentage of CPU divided by 100 required for the new instance. Half a
	// processor is written 0.5.

	cpu?: string

	// The size of the disk created for new instances (in MB, GB, TB,...).
	// NOTE':' If The Template hats Multiple Disks the Order of the Sizes is
	// matched against the order specified in C(template_id)/C(template_name).

	disk_size?: string

	// Reboot, power-off or terminate instances C(hard)

	hard?: bool

	// A list of instance ids used for states':' C(absent), C(running), C(rebooted), C(poweredoff)

	instance_ids?: string

	// Number of CPUs (cores) new VM will have.

	vcpu?: string

	// A list of dictionaries with network parameters. See examples for more details.

	networks?: string

	// ID of the user which will be set as the owner of the instance

	owner_id?: string

	// Wait for the instance to reach its desired state before returning. Keep
	// in mind if you are waiting for instance to be in running state it
	// doesn't mean that you will be able to SSH on that machine only that
	// boot process have started on that instance, see 'wait_for' example for
	// details.

	wait?: bool

	// Password of the user to login into OpenNebula RPC server. If not set
	// then the value of the C(ONE_PASSWORD) environment variable is used.
	// if both I(api_username) or I(api_password) are not set, then it will try
	// authenticate with ONE auth file. Default path is "~/.one/one_auth".
	// Set environment variable C(ONE_AUTH) to override this path.

	api_password?: string

	// Number of instances to launch

	count?: string

	// The size of the memory for new instances (in MB, GB, ...)

	memory?: string

	// A dictionary of key/value attributes to add to new instances, or for
	// setting C(state) of instances with these attributes.
	// Keys are case insensitive and OpenNebula automatically converts them to upper case.
	// Be aware C(NAME) is a special attribute which sets the name of the VM when it's deployed.
	// C(#) character(s) can be appended to the C(NAME) and the module will automatically add
	// indexes to the names of VMs.
	// For example':' C(NAME':' foo-###) would create VMs with names C(foo-000), C(foo-001),...
	// When used with C(count_attributes) and C(exact_count) the module will
	// match the base name without the index part.

	attributes?: string

	// Name of Datastore to use to create a new instace

	datastore_name?: string

	// Creates an image from a VM disk.
	// It is a dictionary where you have to specify C(name) of the new image.
	// Optionally you can specify C(disk_id) of the disk you want to save. By default C(disk_id) is 0.
	// I(NOTE)':' This operation will only be performed on the first VM (if more than one VM ID is passed)
	// and the VM has to be in the C(poweredoff) state.
	// Also this operation will fail if an image with specified C(name) already exists.

	disk_saveas?: string

	// A list of labels to associate with new instances, or for setting
	// C(state) of instances with these labels.

	labels?: string

	// How long before wait gives up, in seconds

	wait_timeout?: string

	// ID of the group which will be set as the group of the instance

	group_id?: string

	// C(present) - create instances from a template specified with C(template_id)/C(template_name).
	// C(running) - run instances
	// C(poweredoff) - power-off instances
	// C(rebooted) - reboot instances
	// C(absent) - terminate instances

	state?: string

	// Name of VM template to use to create a new instace

	template_name?: string

	// Name of the user to login into the OpenNebula RPC server. If not set
	// then the value of the C(ONE_USERNAME) environment variable is used.

	api_username?: string

	// A list of labels that can only be used with C(exact_count) to determine
	// how many nodes based on a specific labels criteria should be deployed.
	// This can be expressed in multiple ways and is shown in the EXAMPLES
	// section.

	count_labels?: string

	// Set permission mode of the instance in octet format, e.g. C(600) to give owner C(use) and C(manage) and nothing to group and others.

	mode?: string
}

one_host :: {

	// Hostname of the machine to manage.

	name: string

	// Takes the host to the desired lifecycle state.
	// If C(absent) the host will be deleted from the cluster.
	// If C(present) the host will be created in the cluster (includes C(enabled), C(disabled) and C(offline) states).
	// If C(enabled) the host is fully operational.
	// C(disabled), e.g. to perform maintenance operations.
	// C(offline), host is totally offline.

	state?: string

	// The template or attribute changes to merge into the host template.

	template?: string

	// The name of the virtual machine manager mad name, this values are taken from the oned.conf with the tag name VM_MAD (name)

	vmm_mad_name?: string

	// The cluster ID.

	cluster_id?: string

	// The cluster specified by name.

	cluster_name?: string

	// The name of the information manager, this values are taken from the oned.conf with the tag name IM_MAD (name)

	im_mad_name?: string

	// The labels for this host.

	labels?: string
}

one_image :: {

	// Password of the user to login into OpenNebula RPC server. If not set
	// then the value of the C(ONE_PASSWORD) environment variable is used.

	api_password?: string

	// URL of the OpenNebula RPC server.
	// It is recommended to use HTTPS so that the username/password are not
	// transferred over the network unencrypted.
	// If not set then the value of the C(ONE_URL) environment variable is used.

	api_url?: string

	// Name of the user to login into the OpenNebula RPC server. If not set
	// then the value of the C(ONE_USERNAME) environment variable is used.

	api_username?: string

	// Whether the image should be enabled or disabled.

	enabled?: bool

	// A C(id) of the image you would like to manage.

	id?: string

	// A C(name) of the image you would like to manage.

	name?: string

	// A name that will be assigned to the existing or new image.
	// In the case of cloning, by default C(new_name) will take the name of the origin image with the prefix 'Copy of'.

	new_name?: string

	// C(present) - state that is used to manage the image
	// C(absent) - delete the image
	// C(cloned) - clone the image
	// C(renamed) - rename the image to the C(new_name)

	state?: string
}

one_image_info :: {

	// Password of the user to login into OpenNebula RPC server. If not set
	// then the value of the C(ONE_PASSWORD) environment variable is used.

	api_password?: string

	// URL of the OpenNebula RPC server.
	// It is recommended to use HTTPS so that the username/password are not
	// transferred over the network unencrypted.
	// If not set then the value of the C(ONE_URL) environment variable is used.

	api_url?: string

	// Name of the user to login into the OpenNebula RPC server. If not set
	// then the value of the C(ONE_USERNAME) environment variable is used.

	api_username?: string

	// A list of images ids whose facts you want to gather.

	ids?: string

	// A C(name) of the image whose facts will be gathered.
	// If the C(name) begins with '~' the C(name) will be used as regex pattern
	// which restricts the list of images (whose facts will be returned) whose names match specified regex.
	// Also, if the C(name) begins with '~*' case-insensitive matching will be performed.
	// See examples for more details.

	name?: string
}
