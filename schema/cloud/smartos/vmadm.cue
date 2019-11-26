package ansible

module: vmadm: {
	module:            "vmadm"
	short_description: "Manage SmartOS virtual machines and zones."
	description: [
		"Manage SmartOS virtual machines through vmadm(1M).",
	]
	version_added: "2.3"
	author:        "Jasper Lievisse Adriaanse (@jasperla)"
	options: {
		archive_on_delete: {
			required: false
			description: [
				"When enabled, the zone dataset will be mounted on C(/zones/archive) upon removal.",
			]
		}

		autoboot: {
			required: false
			description: [
				"Whether or not a VM is booted when the system is rebooted.",
			]
		}
		brand: {
			required: true
			choices: ["joyent", "joyent-minimal", "kvm", "lx"]
			default: "joyent"
			description: [
				"Type of virtual machine.",
			]
		}
		boot: {
			required: false
			description: [
				"Set the boot order for KVM VMs.",
			]
		}
		cpu_cap: {
			required: false
			description: [
				"Sets a limit on the amount of CPU time that can be used by a VM. Use C(0) for no cap.",
			]
		}

		cpu_shares: {
			required: false
			description: [
				"Sets a limit on the number of fair share scheduler (FSS) CPU shares for a VM. This limit is relative to all other VMs on the system.",
			]
		}

		cpu_type: {
			required: false
			choices: ["qemu64", "host"]
			default: "qemu64"
			description: [
				"Control the type of virtual CPU exposed to KVM VMs.",
			]
		}
		customer_metadata: {
			required: false
			description: [
				"Metadata to be set and associated with this VM, this contain customer modifiable keys.",
			]
		}

		delegate_dataset: {
			required: false
			description: [
				"Whether to delegate a ZFS dataset to an OS VM.",
			]
		}
		disk_driver: {
			required: false
			description: [
				"Default value for a virtual disk model for KVM guests.",
			]
		}
		disks: {
			required: false
			description: [
				"A list of disks to add, valid properties are documented in vmadm(1M).",
			]
		}
		dns_domain: {
			required: false
			description: [
				"Domain value for C(/etc/hosts).",
			]
		}
		docker: {
			required: false
			description: [
				"Docker images need this flag enabled along with the I(brand) set to C(lx).",
			]
			version_added: "2.5"
		}
		filesystems: {
			required: false
			description: [
				"Mount additional filesystems into an OS VM.",
			]
		}
		firewall_enabled: {
			required: false
			description: [
				"Enables the firewall, allowing fwadm(1M) rules to be applied.",
			]
		}
		force: {
			required: false
			description: [
				"Force a particular action (i.e. stop or delete a VM).",
			]
		}
		fs_allowed: {
			required: false
			description: [
				"Comma separated list of filesystem types this zone is allowed to mount.",
			]
		}
		hostname: {
			required: false
			description: [
				"Zone/VM hostname.",
			]
		}
		image_uuid: {
			required: false
			description: [
				"Image UUID.",
			]
		}
		indestructible_delegated: {
			required: false
			description: [
				"Adds an C(@indestructible) snapshot to delegated datasets.",
			]
		}
		indestructible_zoneroot: {
			required: false
			description: [
				"Adds an C(@indestructible) snapshot to zoneroot.",
			]
		}
		internal_metadata: {
			required: false
			description: [
				"Metadata to be set and associated with this VM, this contains operator generated keys.",
			]
		}

		internal_metadata_namespace: {
			required: false
			description: [
				"List of namespaces to be set as I(internal_metadata-only); these namespaces will come from I(internal_metadata) rather than I(customer_metadata).",
			]
		}

		kernel_version: {
			required: false
			description: [
				"Kernel version to emulate for LX VMs.",
			]
		}
		limit_priv: {
			required: false
			description: [
				"Set (comma separated) list of privileges the zone is allowed to use.",
			]
		}
		maintain_resolvers: {
			required: false
			description: [
				"Resolvers in C(/etc/resolv.conf) will be updated when updating the I(resolvers) property.",
			]
		}

		max_locked_memory: {
			required: false
			description: [
				"Total amount of memory (in MiBs) on the host that can be locked by this VM.",
			]
		}
		max_lwps: {
			required: false
			description: [
				"Maximum number of lightweight processes this VM is allowed to have running.",
			]
		}
		max_physical_memory: {
			required: false
			description: [
				"Maximum amount of memory (in MiBs) on the host that the VM is allowed to use.",
			]
		}
		max_swap: {
			required: false
			description: [
				"Maximum amount of virtual memory (in MiBs) the VM is allowed to use.",
			]
		}
		mdata_exec_timeout: {
			required: false
			description: [
				"Timeout in seconds (or 0 to disable) for the C(svc:/smartdc/mdata:execute) service that runs user-scripts in the zone.",
			]
		}

		name: {
			required: false
			aliases: ["alias"]
			description: [
				"Name of the VM. vmadm(1M) uses this as an optional name.",
			]
		}
		nic_driver: {
			required: false
			description: [
				"Default value for a virtual NIC model for KVM guests.",
			]
		}
		nics: {
			required: false
			description: [
				"A list of nics to add, valid properties are documented in vmadm(1M).",
			]
		}
		nowait: {
			required: false
			description: [
				"Consider the provisioning complete when the VM first starts, rather than when the VM has rebooted.",
			]
		}

		qemu_opts: {
			required: false
			description: [
				"Additional qemu arguments for KVM guests. This overwrites the default arguments provided by vmadm(1M) and should only be used for debugging.",
			]
		}

		qemu_extra_opts: {
			required: false
			description: [
				"Additional qemu cmdline arguments for KVM guests.",
			]
		}
		quota: {
			required: false
			description: [
				"Quota on zone filesystems (in MiBs).",
			]
		}
		ram: {
			required: false
			description: [
				"Amount of virtual RAM for a KVM guest (in MiBs).",
			]
		}
		resolvers: {
			required: false
			description: [
				"List of resolvers to be put into C(/etc/resolv.conf).",
			]
		}
		routes: {
			required: false
			description: [
				"Dictionary that maps destinations to gateways, these will be set as static routes in the VM.",
			]
		}

		spice_opts: {
			required: false
			description: [
				"Addition options for SPICE-enabled KVM VMs.",
			]
		}
		spice_password: {
			required: false
			description: [
				"Password required to connect to SPICE. By default no password is set. Please note this can be read from the Global Zone.",
			]
		}

		state: {
			required: true
			choices: ["present", "absent", "stopped", "restarted"]
			description: [
				"States for the VM to be in. Please note that C(present), C(stopped) and C(restarted) operate on a VM that is currently provisioned. C(present) means that the VM will be created if it was absent, and that it will be in a running state. C(absent) will shutdown the zone before removing it. C(stopped) means the zone will be created if it doesn't exist already, before shutting it down.",
			]
		}

		tmpfs: {
			required: false
			description: [
				"Amount of memory (in MiBs) that will be available in the VM for the C(/tmp) filesystem.",
			]
		}
		uuid: {
			required: false
			description: [
				"UUID of the VM. Can either be a full UUID or C(*) for all VMs.",
			]
		}
		vcpus: {
			required: false
			description: [
				"Number of virtual CPUs for a KVM guest.",
			]
		}
		vga: {
			required: false
			description: [
				"Specify VGA emulation used by KVM VMs.",
			]
		}
		virtio_txburst: {
			required: false
			description: [
				"Number of packets that can be sent in a single flush of the tx queue of virtio NICs.",
			]
		}
		virtio_txtimer: {
			required: false
			description: [
				"Timeout (in nanoseconds) for the TX timer of virtio NICs.",
			]
		}
		vnc_password: {
			required: false
			description: [
				"Password required to connect to VNC. By default no password is set. Please note this can be read from the Global Zone.",
			]
		}

		vnc_port: {
			required: false
			description: [
				"TCP port to listen of the VNC server. Or set C(0) for random, or C(-1) to disable.",
			]
		}

		zfs_data_compression: {
			required: false
			description: [
				"Specifies compression algorithm used for this VMs data dataset. This option only has effect on delegated datasets.",
			]
		}

		zfs_data_recsize: {
			required: false
			description: [
				"Suggested block size (power of 2) for files in the delegated dataset's filesystem.",
			]
		}
		zfs_filesystem_limit: {
			required: false
			description: [
				"Maximum number of filesystems the VM can have.",
			]
		}
		zfs_io_priority: {
			required: false
			description: [
				"IO throttle priority value relative to other VMs.",
			]
		}
		zfs_root_compression: {
			required: false
			description: [
				"Specifies compression algorithm used for this VMs root dataset. This option only has effect on the zoneroot dataset.",
			]
		}

		zfs_root_recsize: {
			required: false
			description: [
				"Suggested block size (power of 2) for files in the zoneroot dataset's filesystem.",
			]
		}
		zfs_snapshot_limit: {
			required: false
			description: [
				"Number of snapshots the VM can have.",
			]
		}
		zpool: {
			required: false
			description: [
				"ZFS pool the VM's zone dataset will be created in.",
			]
		}
	}
	requirements: ["python >= 2.6"]
}
