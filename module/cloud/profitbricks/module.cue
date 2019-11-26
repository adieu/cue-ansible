package profitbricks

profitbricks :: {

	// The CPU family type to allocate to the virtual machine.

	cpu_family?: string

	// The system image ID for creating the virtual machine, e.g. a3eae284-a2fe-11e4-b187-5f1f641608c8.

	image: string

	// list of instance ids, currently only used when state='absent' to remove instances.

	instance_ids?: string

	// The datacenter location. Use only if you want to create the Datacenter or else this value is ignored.

	location?: string

	// remove the bootVolume of the virtual machine you're destroying.

	remove_boot_volume?: bool

	// create or terminate instances

	state?: string

	// Whether or not to increment a single number in the name for created virtual machines.

	auto_increment?: bool

	// Password set for the administrative user.

	image_password?: string

	// Public SSH keys allowing access to the virtual machine.

	ssh_keys?: string

	// The size in GB of the boot volume.

	volume_size?: string

	// how long before wait gives up, in seconds

	wait_timeout?: string

	// This will assign the machine to the public LAN. If no LAN exists with public Internet access it is created.

	assign_public_ip?: bool

	// The bus type for the volume.

	bus?: string

	// The datacenter to provision this virtual machine.

	datacenter?: string

	// The ProfitBricks username. Overrides the PB_SUBSCRIPTION_ID environment variable.

	subscription_user?: string

	// The number of CPU cores to allocate to the virtual machine.

	cores?: string

	// The number of virtual machines to create.

	count?: string

	// The ID of the LAN you wish to add the servers to.

	lan?: string

	// The name of the virtual machine.

	name: string

	// The amount of memory to allocate to the virtual machine.

	ram?: string

	// THe ProfitBricks password. Overrides the PB_PASSWORD environment variable.

	subscription_password?: string

	// wait for the instance to be in state 'running' before returning

	wait?: bool
}

profitbricks_datacenter :: {

	// how long before wait gives up, in seconds

	wait_timeout?: string

	// The description of the virtual datacenter.

	description?: string

	// The datacenter location.

	location?: string

	// The name of the virtual datacenter.

	name: string

	// create or terminate datacenters

	state?: string

	// THe ProfitBricks password. Overrides the PB_PASSWORD environment variable.

	subscription_password?: string

	// The ProfitBricks username. Overrides the PB_SUBSCRIPTION_ID environment variable.

	subscription_user?: string

	// wait for the datacenter to be created before returning

	wait?: bool
}

profitbricks_nic :: {

	// The name or ID of the NIC. This is only required on deletes, but not on create.

	name: string

	// THe ProfitBricks password. Overrides the PB_PASSWORD environment variable.

	subscription_password?: string

	// The datacenter in which to operate.

	datacenter: string

	// The LAN to place the NIC on. You can pass a LAN that doesn't exist and it will be created. Required on create.

	lan: string

	// The server name or ID.

	server: string

	// Indicate desired state of the resource

	state?: string

	// The ProfitBricks username. Overrides the PB_SUBSCRIPTION_ID environment variable.

	subscription_user?: string

	// wait for the operation to complete before returning

	wait?: bool

	// how long before wait gives up, in seconds

	wait_timeout?: string
}

profitbricks_volume :: {

	// The bus type.

	bus?: string

	// list of instance ids, currently only used when state='absent' to remove instances.

	instance_ids?: string

	// The size of the volume.

	size?: string

	// how long before wait gives up, in seconds

	wait_timeout?: string

	// Whether or not to increment a single number in the name for created virtual machines.

	auto_increment?: bool

	// The disk type of the volume.

	disk_type?: string

	// THe ProfitBricks password. Overrides the PB_PASSWORD environment variable.

	subscription_password?: string

	// The datacenter in which to create the volumes.

	datacenter: string

	// The system image ID for the volume, e.g. a3eae284-a2fe-11e4-b187-5f1f641608c8. This can also be a snapshot image ID.

	image: string

	// Password set for the administrative user.

	image_password?: string

	// The licence type for the volume. This is used when the image is non-standard.

	licence_type?: string

	// wait for the datacenter to be created before returning

	wait?: bool

	// The number of volumes you wish to create.

	count?: string

	// The name of the volumes. You can enumerate the names using auto_increment.

	name: string

	// Public SSH keys allowing access to the virtual machine.

	ssh_keys?: string

	// create or terminate datacenters

	state?: string

	// The ProfitBricks username. Overrides the PB_SUBSCRIPTION_ID environment variable.

	subscription_user?: string
}

profitbricks_volume_attachments :: {

	// Indicate desired state of the resource

	state?: string

	// THe ProfitBricks password. Overrides the PB_PASSWORD environment variable.

	subscription_password?: string

	// The ProfitBricks username. Overrides the PB_SUBSCRIPTION_ID environment variable.

	subscription_user?: string

	// The volume name or ID.

	volume: string

	// wait for the operation to complete before returning

	wait?: bool

	// how long before wait gives up, in seconds

	wait_timeout?: string

	// The datacenter in which to operate.

	datacenter: string

	// The name of the server you wish to detach or attach the volume.

	server: string
}
