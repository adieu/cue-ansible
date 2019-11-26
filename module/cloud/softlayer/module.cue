package softlayer

sl_vm :: {

	// Amount of memory to be assigned to new virtual instance.

	memory: string

	// OS Code to be used for new virtual instance.

	os_code?: string

	// Datacenter for the virtual instance to be deployed.

	datacenter?: string

	// Domain name to be provided to a virtual instance.

	domain?: string

	// Specify which SoftLayer flavor template to use instead of cpus and memory.

	flavor?: string

	// Hostname to be provided to a virtual instance.

	hostname?: string

	// Flag to determine if the instance should be hourly billed.

	hourly?: bool

	// Instance Id of the virtual instance to perform action option.

	instance_id?: string

	// VLAN by its Id to be assigned to the public NIC.

	public_vlan?: string

	// Create, or cancel a virtual instance.
	// Specify C(present) for create, C(absent) to cancel.

	state?: string

	// Tag or list of tags to be provided to a virtual instance.

	tags?: string

	// Time in seconds before wait returns.

	wait_time?: string

	// List of disk sizes to be assigned to new virtual instance.

	disks: string

	// Image Template to be used for new virtual instance.

	image_id?: string

	// URL of a post provisioning script to be loaded and executed on virtual instance.

	post_uri?: string

	// VLAN by its Id to be assigned to the private NIC.

	private_vlan?: string

	// Flag used to wait for active status before returning.

	wait?: bool

	// Flag to determine if the instance should be deployed in dedicated space.

	dedicated?: bool

	// List of ssh keys by their Id to be assigned to a virtual instance.

	ssh_keys?: string

	// Count of cpus to be assigned to new virtual instance.

	cpus: string

	// Flag to determine if local disk should be used for the new instance.

	local_disk?: bool

	// NIC Speed to be assigned to new virtual instance.

	nic_speed?: string

	// Flag to determine if the instance should be private only.

	private?: bool
}
