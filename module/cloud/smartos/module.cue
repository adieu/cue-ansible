package smartos

vmadm :: {

	// Resolvers in C(/etc/resolv.conf) will be updated when updating the I(resolvers) property.

	maintain_resolvers?: string

	// Metadata to be set and associated with this VM, this contains operator generated keys.

	internal_metadata?: string

	// Number of virtual CPUs for a KVM guest.

	vcpus?: string

	// Timeout (in nanoseconds) for the TX timer of virtio NICs.

	virtio_txtimer?: string

	// A list of disks to add, valid properties are documented in vmadm(1M).

	disks?: string

	// Control the type of virtual CPU exposed to KVM VMs.

	cpu_type?: string

	// Force a particular action (i.e. stop or delete a VM).

	force?: string

	// Quota on zone filesystems (in MiBs).

	quota?: string

	// Dictionary that maps destinations to gateways, these will be set as static routes in the VM.

	routes?: string

	// Amount of memory (in MiBs) that will be available in the VM for the C(/tmp) filesystem.

	tmpfs?: string

	// Maximum number of filesystems the VM can have.

	zfs_filesystem_limit?: string

	// ZFS pool the VM's zone dataset will be created in.

	zpool?: string

	// Whether or not a VM is booted when the system is rebooted.

	autoboot?: string

	// Password required to connect to VNC. By default no password is set. Please note this can be read from the Global Zone.

	vnc_password?: string

	// Set (comma separated) list of privileges the zone is allowed to use.

	limit_priv?: string

	// Total amount of memory (in MiBs) on the host that can be locked by this VM.

	max_locked_memory?: string

	// Maximum number of lightweight processes this VM is allowed to have running.

	max_lwps?: string

	// Consider the provisioning complete when the VM first starts, rather than when the VM has rebooted.

	nowait?: string

	// Number of packets that can be sent in a single flush of the tx queue of virtio NICs.

	virtio_txburst?: string

	// TCP port to listen of the VNC server. Or set C(0) for random, or C(-1) to disable.

	vnc_port?: string

	// When enabled, the zone dataset will be mounted on C(/zones/archive) upon removal.

	archive_on_delete?: string

	// Maximum amount of virtual memory (in MiBs) the VM is allowed to use.

	max_swap?: string

	// Maximum amount of memory (in MiBs) on the host that the VM is allowed to use.

	max_physical_memory?: string

	// Default value for a virtual disk model for KVM guests.

	disk_driver?: string

	// Adds an C(@indestructible) snapshot to delegated datasets.

	indestructible_delegated?: string

	// Amount of virtual RAM for a KVM guest (in MiBs).

	ram?: string

	// Set the boot order for KVM VMs.

	boot?: string

	// Docker images need this flag enabled along with the I(brand) set to C(lx).

	docker?: string

	// Default value for a virtual NIC model for KVM guests.

	nic_driver?: string

	// Password required to connect to SPICE. By default no password is set. Please note this can be read from the Global Zone.

	spice_password?: string

	// Whether to delegate a ZFS dataset to an OS VM.

	delegate_dataset?: string

	// Domain value for C(/etc/hosts).

	dns_domain?: string

	// Name of the VM. vmadm(1M) uses this as an optional name.

	name?: string

	// List of resolvers to be put into C(/etc/resolv.conf).

	resolvers?: string

	// Addition options for SPICE-enabled KVM VMs.

	spice_opts?: string

	// UUID of the VM. Can either be a full UUID or C(*) for all VMs.

	uuid?: string

	// Type of virtual machine.

	brand: string

	// Additional qemu arguments for KVM guests. This overwrites the default arguments provided by vmadm(1M) and should only be used for debugging.

	qemu_opts?: string

	// IO throttle priority value relative to other VMs.

	zfs_io_priority?: string

	// Additional qemu cmdline arguments for KVM guests.

	qemu_extra_opts?: string

	// Timeout in seconds (or 0 to disable) for the C(svc:/smartdc/mdata:execute) service that runs user-scripts in the zone.

	mdata_exec_timeout?: string

	// Number of snapshots the VM can have.

	zfs_snapshot_limit?: string

	// List of namespaces to be set as I(internal_metadata-only); these namespaces will come from I(internal_metadata) rather than I(customer_metadata).

	internal_metadata_namespace?: string

	// Specifies compression algorithm used for this VMs data dataset. This option only has effect on delegated datasets.

	zfs_data_compression?: string

	// Kernel version to emulate for LX VMs.

	kernel_version?: string

	// Adds an C(@indestructible) snapshot to zoneroot.

	indestructible_zoneroot?: string

	// Suggested block size (power of 2) for files in the zoneroot dataset's filesystem.

	zfs_root_recsize?: string

	// Sets a limit on the number of fair share scheduler (FSS) CPU shares for a VM. This limit is relative to all other VMs on the system.

	cpu_shares?: string

	// Mount additional filesystems into an OS VM.

	filesystems?: string

	// Comma separated list of filesystem types this zone is allowed to mount.

	fs_allowed?: string

	// Metadata to be set and associated with this VM, this contain customer modifiable keys.

	customer_metadata?: string

	// A list of nics to add, valid properties are documented in vmadm(1M).

	nics?: string

	// States for the VM to be in. Please note that C(present), C(stopped) and C(restarted) operate on a VM that is currently provisioned. C(present) means that the VM will be created if it was absent, and that it will be in a running state. C(absent) will shutdown the zone before removing it. C(stopped) means the zone will be created if it doesn't exist already, before shutting it down.

	state: string

	// Image UUID.

	image_uuid?: string

	// Enables the firewall, allowing fwadm(1M) rules to be applied.

	firewall_enabled?: string

	// Zone/VM hostname.

	hostname?: string

	// Specify VGA emulation used by KVM VMs.

	vga?: string

	// Suggested block size (power of 2) for files in the delegated dataset's filesystem.

	zfs_data_recsize?: string

	// Specifies compression algorithm used for this VMs root dataset. This option only has effect on the zoneroot dataset.

	zfs_root_compression?: string

	// Sets a limit on the amount of CPU time that can be used by a VM. Use C(0) for no cap.

	cpu_cap?: string
}

imgadm :: {

	// Force a given operation (where supported by imgadm(1M)).

	force?: bool

	// zpool to import to or delete images from.

	pool?: string

	// URI for the image source.

	source?: string

	// State the object operated on should be in. C(imported) is an alias for for C(present) and C(deleted) for C(absent). When set to C(vacuumed) and C(uuid) to C(*), it will remove all unused images.

	state: string

	// Type for image sources.

	type?: string

	// Image UUID. Can either be a full UUID or C(*) for all images.

	uuid?: string
}

nictagadm :: {

	// When I(state) is absent set this switch will use the C(-f) parameter and delete the nic tag regardless of existing VMs.

	force?: bool

	// Specifies the I(mac) address to attach the nic tag to when not creating an I(etherstub).
	// Parameters I(mac) and I(etherstub) are mutually exclusive.

	mac?: string

	// Specifies the size of the I(mtu) of the desired nic tag.
	// Parameters I(mtu) and I(etherstub) are mutually exclusive.

	mtu?: int

	// Name of the nic tag.

	name: string

	// Create or delete a SmartOS nic tag.

	state?: string

	// Specifies that the nic tag will be attached to a created I(etherstub).
	// Parameter I(etherstub) is mutually exclusive with both I(mtu), and I(mac).

	etherstub?: bool
}

smartos_image_info :: {

	// Criteria for selecting image. Can be any value from image manifest and 'published_date', 'published', 'source', 'clones', and 'size'. More information can be found at U(https://smartos.org/man/1m/imgadm) under 'imgadm list'.

	filters?: string
}
