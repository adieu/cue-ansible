package ovirt

ovirt_auth :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_auth: {

		// A boolean flag indicating if the SDK should ask the server to send compressed responses. The default is I(True). Note that this is a hint for the server, and that it may return uncompressed data even when this parameter is set to I(True).

		compress?: bool

		// A string containing the hostname of the server. For example: I(server.example.com). Default value is set by I(OVIRT_HOSTNAME) environment variable.
		// Either C(url) or C(hostname) is required.

		hostname?: string

		// A boolean flag that indicates if the server TLS certificate and host name should be checked.

		insecure?: bool

		// A boolean flag indicating if Kerberos authentication should be used instead of the default basic authentication.

		kerberos?: bool

		// The maximum total time to wait for the response, in seconds. A value of zero (the default) means wait forever. If the timeout expires before the response is received an exception will be raised.

		timeout?: string

		// A string containing the API URL of the server. For example: I(https://server.example.com/ovirt-engine/api). Default value is set by I(OVIRT_URL) environment variable.
		// Either C(url) or C(hostname) is required.

		url?: string

		// A PEM file containing the trusted CA certificates. The certificate presented by the server will be verified using these CA certificates. If C(ca_file) parameter is not set, system wide CA certificate store is used. Default value is set by I(OVIRT_CAFILE) environment variable.

		ca_file?: string

		// A dictionary of HTTP headers to be added to each API call.

		headers?: string

		// The password of the user. Default value is set by I(OVIRT_PASSWORD) environment variable.

		password?: string

		// Specifies if a token should be created or revoked.

		state?: string

		// SSO token to be used instead of login with username/password. Default value is set by I(OVIRT_TOKEN) environment variable.

		token?: string

		// The name of the user. For example: I(admin@internal) Default value is set by I(OVIRT_USERNAME) environment variable.

		username?: string
	}
}

ovirt_datacenter :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_datacenter: {

		// Comment of the data center.

		comment?: string

		// Description of the data center.

		description?: string

		// Quota mode of the data center. One of I(disabled), I(audit) or I(enabled)

		quota_mode?: string

		// Compatibility version of the data center.

		compatibility_version?: string

		// This parameter can be used only when removing a data center. If I(True) data center will be forcibly removed, even though it contains some clusters. Default value is I(False), which means that only empty data center can be removed.

		force?: bool

		// ID of the datacenter to manage.

		id?: string

		// I(True) if the data center should be local, I(False) if should be shared.
		// Default value is set by engine.

		local?: bool

		// MAC pool to be used by this datacenter.
		// IMPORTANT: This option is deprecated in oVirt/RHV 4.1. You should use C(mac_pool) in C(ovirt_clusters) module, as MAC pools are set per cluster since 4.1.

		mac_pool?: string

		// Name of the data center to manage.

		name: string

		// Should the data center be present or absent.

		state?: string
	}
}

ovirt_event :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_event: {

		// Custom ID for the event. This ID must be unique for each event.
		// Required when state is present.

		custom_id?: int

		// Severity of the event.
		// Required when state is present.

		severity?: string

		// The id of the template associated with this event.

		template?: string

		// The id of the VM associated with this event.

		vm?: string

		// The id of the storage domain associated with this event.

		storage_domain?: string

		// The id of the cluster associated with this event.

		cluster?: string

		// The id of the data center associated with this event.

		data_center?: string

		// Message for the event.
		// Required when state is present.

		description?: string

		// The id of the host associated with this event.

		host?: string

		// The event ID in the oVirt/RHV audit_log table. This ID is not the same as custom_id and is only used when state is absent.
		// Required when state is absent.

		id?: string

		// Originator of the event.
		// Required when state is present.

		origin?: string

		// Should the event be present/absent.
		// The C(wait) option must be set to false when state is absent.

		state?: string

		// The id of the user associated with this event.

		user?: string
	}
}

ovirt_host_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_host_info: {

		// Filter the hosts based on the cluster version.

		cluster_version?: string

		// Search term which is accepted by oVirt/RHV search backend.
		// For example to search host X from datacenter Y use following pattern: name=X and datacenter=Y

		pattern?: string

		// If I(true) all the attributes of the hosts should be included in the response.

		all_content?: bool
	}
}

ovirt_affinity_label :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_affinity_label: {

		// List of the VMs names, which should have assigned this affinity label.

		vms?: string

		// Name of the cluster where vms and hosts resides.

		cluster?: string

		// List of the hosts names, which should have assigned this affinity label.

		hosts?: string

		// Name of the affinity label to manage.

		name: string

		// Should the affinity label be present or absent.

		state?: string
	}
}

ovirt_cluster_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_cluster_info: {

		pattern?: string

		// Search term which is accepted by oVirt/RHV search backend.
		// For example to search cluster X from datacenter Y use following pattern: name=X and datacenter=Y
	}
}

ovirt_vmpool :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_vmpool: {

		// Number of pre-started VMs defines the number of VMs in run state, that are waiting to be attached to Users.
		// Default value is set by engine.

		prestarted?: string

		// Should the VM pool be present/absent.
		// Note that when C(state) is I(absent) all VMs in VM pool are stopped and removed.

		state?: string

		// Name of the template, which will be used to create VM pool.

		template?: string

		// For creating vm pool without editing template.
		// Note: You can use C(vm) only for creating vm pool.

		vm?: {...}

		// Name of the cluster, where VM pool should be created.

		cluster?: string

		// Comment of the Virtual Machine pool.

		comment?: string

		// Description of the VM pool.

		description?: string

		// ID of the vmpool to manage.

		id?: string

		// Number of VMs in the pool.
		// Default value is set by engine.

		vm_count?: string

		// Name of the VM pool to manage.

		name: string

		// Type of the VM pool. Either manual or automatic.
		// C(manual) - The administrator is responsible for explicitly returning the virtual machine to the pool. The virtual machine reverts to the original base image after the administrator returns it to the pool.
		// C(Automatic) - When the virtual machine is shut down, it automatically reverts to its base image and is returned to the virtual machine pool.
		// Default value is set by engine.

		type?: string

		// Maximum number of VMs a single user can attach to from this pool.
		// Default value is set by engine.

		vm_per_user?: string
	}
}

ovirt_affinity_group :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_affinity_group: {

		// Name of the cluster of the affinity group.

		cluster?: string

		// If I(yes) VM cannot start on host if it does not satisfy the C(host_rule).
		// This parameter is support since oVirt/RHV 4.1 version.

		host_enforcing?: bool

		// If I(positive) I(all) VMs in this group should run on the this host.
		// If I(negative) I(no) VMs in this group should run on the this host.
		// This parameter is support since oVirt/RHV 4.1 version.

		host_rule?: string

		// Should the affinity group be present or absent.

		state?: string

		// List of the VMs names, which should have assigned this affinity group.

		vms?: string

		// Description of the affinity group.

		description?: string

		// List of the hosts names, which should have assigned this affinity group.
		// This parameter is support since oVirt/RHV 4.1 version.

		hosts?: string

		// Name of the affinity group to manage.

		name: string

		// If I(yes) VM cannot start if it does not satisfy the C(vm_rule).

		vm_enforcing?: bool

		// If I(positive) I(all) VMs in this group should run on the host defined by C(host_rule).
		// If I(negative) I(no) VMs in this group should run on the host defined by C(host_rule).
		// If I(disabled) this affinity group doesn't take effect.

		vm_rule?: string
	}
}

ovirt_disk_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_disk_info: {

		pattern?: string

		// Search term which is accepted by oVirt/RHV search backend.
		// For example to search Disk X from storage Y use following pattern: name=X and storage.name=Y
	}
}

ovirt_host_pm :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_host_pm: {

		// Should the host be present/absent.

		state?: string

		// Name of the host to manage.

		name: string

		// Dictionary of additional fence agent options (including Power Management slot).
		// Additional information about options can be found at U(https://github.com/ClusterLabs/fence-agents/blob/master/doc/FenceAgentAPI.md).

		options?: string

		// Password of the user specified in C(username) parameter.

		password?: string

		// Power management interface port.

		port?: string

		// Type of the power management. oVirt/RHV predefined values are I(drac5), I(ipmilan), I(rsa), I(bladecenter), I(alom), I(apc), I(apc_snmp), I(eps), I(wti), I(rsb), I(cisco_ucs), I(drac7), I(hpblade), I(ilo), I(ilo2), I(ilo3), I(ilo4), I(ilo_ssh), but user can have defined custom type.

		type?: string

		// Username to be used to connect to power management interface.

		username?: string

		// Address of the power management interface.

		address?: string

		// If I(true) options will be encrypted when send to agent.

		encrypt_options?: bool

		// Integer value specifying, by default it's added at the end.

		order?: string
	}
}

ovirt_template_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_template_info: {

		pattern?: string

		// Search term which is accepted by oVirt/RHV search backend.
		// For example to search template X from datacenter Y use following pattern: name=X and datacenter=Y
	}
}

ovirt_affinity_label_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_affinity_label_info: {

		// Name of the host, which affinity labels should be listed.

		host?: string

		// Name of the affinity labels which should be listed.

		name?: string

		// Name of the VM, which affinity labels should be listed.

		vm?: string
	}
}

ovirt_api_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_api_info: {
	}
}

ovirt_external_provider_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_external_provider_info: {

		// Name of the external provider, can be used as glob expression.

		name?: string

		// Type of the external provider.

		type: string
	}
}

ovirt_nic_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_nic_info: {

		// Name of the NIC, can be used as glob expression.

		name?: string

		// Name of the VM where NIC is attached.

		vm: string
	}
}

ovirt_snapshot :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_snapshot: {

		// ID of the snapshot to manage.

		snapshot_id?: string

		// Should the Virtual Machine snapshot be restore/present/absent.

		state?: string

		// Description of the snapshot.

		description?: string

		// Disk id which you want to upload or download
		// To get disk, you need to define disk_id or disk_name

		disk_id?: string

		// Path on a file system where snapshot should be downloaded.
		// Note that you must have an valid oVirt/RHV engine CA in your system trust store or you must provide it in C(ca_file) parameter.
		// Note that the snapshot is not downloaded when the file already exists, but you can forcibly download the snapshot when using C(force) I (true).

		download_image_path?: string

		// Number of days after which should snapshot be deleted.
		// It will check all snapshots of virtual machine and delete them, if they are older.

		keep_days_old?: string

		// Disk name which you want to upload or download

		disk_name?: string

		// Path to disk image, which should be uploaded.

		upload_image_path?: string

		// If I(true) and C(state) is I(present) save memory of the Virtual Machine if it's running.
		// If I(true) and C(state) is I(restore) restore memory of the Virtual Machine.
		// Note that Virtual Machine will be paused while saving the memory.

		use_memory?: bool

		// Name of the Virtual Machine to manage.

		vm_name: string
	}
}

ovirt_vnic_profile_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_vnic_profile_info: {

		// The maximum number of results to return.

		max?: int

		// Name of vnic profile.

		name?: string
	}
}

ovirt_event_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_event_info: {

		// Indicates if the search performed using the search parameter should be performed taking case into account. The default value is true, which means that case is taken into account. If you want to search ignoring case set it to false.

		case_sensitive?: bool

		// Indicates the event index after which events should be returned. The indexes of events are strictly increasing, so when this parameter is used only the events with greater indexes will be returned.

		from_?: int

		// Additional HTTP headers.

		headers?: string

		// Sets the maximum number of events to return. If not specified all the events are returned.

		max?: int

		// Additional URL query parameters.

		query?: string

		// Search term which is accepted by the oVirt/RHV API.
		// For example to search for events of severity alert use the following pattern: severity=alert

		search?: string

		// If True wait for the response.

		wait?: bool
	}
}

ovirt_external_provider :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_external_provider: {

		// Keystone authentication URL of the openstack provider.
		// Applicable for those types: I(os_image), I(os_volume) and I(network).

		authentication_url?: string

		// Type of the external network provider either external (for example OVN) or neutron.
		// Applicable if C(type) is I(network).

		network_type?: string

		// Password of the user specified in C(username) parameter.
		// Applicable for all types.

		password?: string

		// Specify if the network should be read only.
		// Applicable if C(type) is I(network).

		read_only?: bool

		// Name of the tenant.
		// Applicable for those types: I(os_image), I(os_volume) and I(network).

		tenant_name?: string

		// Type of the external provider.

		type?: string

		// List of authentication keys. Each key is represented by dict like {'uuid': 'our-uuid', 'value': 'YourSecretValue=='}
		// When you will not pass these keys and there are already some of them defined in the system they will be removed.
		// Applicable for I(os_volume).

		authentication_keys?: string

		// Name of the data center where provider should be attached.
		// Applicable for those type: I(os_volume).

		data_center?: string

		// Description of the external provider.

		description?: string

		// Name of the external provider to manage.

		name?: string

		// Should the external be present or absent
		// When you are using absent for I(os_volume), you need to make sure that SD is not attached to the data center!

		state?: string

		// URL where external provider is hosted.
		// Applicable for those types: I(os_image), I(os_volume), I(network) and I(foreman).

		url?: string

		// Username to be used for login to external provider.
		// Applicable for all types.

		username?: string
	}
}

ovirt_group :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_group: {

		// Authorization provider of the group. In previous versions of oVirt/RHV known as domain.

		authz_name: string

		// Name of the group to manage.

		name: string

		// Namespace of the authorization provider, where group resides.

		namespace?: string

		// Should the group be present/absent.

		state?: string
	}
}

ovirt_role :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_role: {

		// Name of the role to manage.

		name?: string

		// List of permits which role will have
		// Permit 'login' is default and all roles will have it.
		// List can contain name of permit.

		permits?: string

		// Should the role be present/absent.

		state?: string

		// Defines the role as administrative-only or not.

		administrative?: bool

		// Description of the role.

		description?: string

		// ID of the role to manage.

		id?: string
	}
}

ovirt_vmpool_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_vmpool_info: {

		pattern?: string

		// Search term which is accepted by oVirt/RHV search backend.
		// For example to search vmpool X: name=X
	}
}

ovirt_vnic_profile :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_vnic_profile: {

		// Custom properties applied to the vNIC profile.
		// Custom properties is a list of dictionary which can have following values:

		custom_properties?: string

		// Datacenter name where network reside.

		data_center: string

		// A human-readable description in plain text.

		description?: string

		// Marks whether pass_through NIC is migratable or not.

		migratable?: bool

		// Name of network to which is vNIC attached.

		network: string

		// The network filter enables to filter packets send to/from the VM's nic according to defined rules.

		network_filter?: string

		// A human-readable name in plain text.

		name: string

		// Enables passthrough to an SR-IOV-enabled host NIC.
		// When enabled C(qos) and  C(network_filter) are automatically set to None and C(port_mirroring) to False.
		// When enabled and C(migratable) not specified then C(migratable) is enabled.
		// Port mirroring, QoS and network filters are not supported on passthrough profiles.

		pass_through?: string

		// Enables port mirroring.

		port_mirroring?: bool

		// Quality of Service attributes regulate inbound and outbound network traffic of the NIC.

		qos?: string

		// Should the vNIC be absent/present.

		state?: string
	}
}

ovirt_group_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_group_info: {

		pattern?: string

		// Search term which is accepted by oVirt/RHV search backend.
		// For example to search group X use following pattern: name=X
	}
}

ovirt_network :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_network: {

		// Maximum transmission unit (MTU) of the network.

		mtu?: string

		// Name of the network to manage.

		name: string

		// Specify VLAN tag.

		vlan_tag?: string

		// If I(True) network will be marked as network for VM.
		// VM network carries traffic relevant to the virtual machine.

		vm_network?: bool

		// List of dictionaries describing how the network is managed in specific cluster.

		clusters?: string

		// Description of the network.

		description?: string

		// Name of external network provider.

		external_provider?: string

		// Name of the label to assign to the network.

		label?: string

		// Should the network be present or absent

		state?: string

		// Comment of the network.

		comment?: string

		// Datacenter name where network reside.

		data_center?: string

		// ID of the network to manage.

		id?: string
	}
}

ovirt_snapshot_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_snapshot_info: {

		// Id of the snapshot we want to retrieve information about.

		snapshot_id?: string

		// Name of the VM with snapshot.

		vm: string

		// Description of the snapshot, can be used as glob expression.

		description?: string
	}
}

ovirt_vm :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_vm: {

		// ID of the Virtual Machine to manage.

		id?: string

		// Kernel command line parameters (formatted as string) to be used with the kernel specified by C(kernel_path) option.
		// Usable with oVirt 4.3 and lower; removed in oVirt 4.4.

		kernel_params?: string

		// Name of the storage domain this virtual machine lease reside on. Pass an empty string to remove the lease.
		// NOTE - Supported since oVirt 4.1.

		lease?: string

		// Dictionary of values to be used to connect to XEN and import a virtual machine to oVirt.

		xen?: string

		// If I(true), use memory ballooning.
		// Memory balloon is a guest device, which may be used to re-distribute / reclaim the host memory based on VM needs in a dynamic way. In this way it's possible to create memory over commitment states.

		ballooning_enabled?: bool

		// Comment of the Virtual Machine.

		comment?: string

		// CPU Pinning topology to map virtual machine CPU to host CPU.
		// CPU Pinning topology is a list of dictionary which can have following values:

		cpu_pinning?: string

		// Assign graphical console to the virtual machine.

		graphical_console?: string

		// If I(yes) then the disks of the created virtual machine will be cloned and independent of the template.
		// This parameter is used only when C(state) is I(running) or I(present) and VM didn't exist before.

		clone?: bool

		// Mapper which maps lun between VM's OVF and the destination lun this VM should contain, relevant when C(state) is registered. lun_mappings is described by the following dictionary: - C(logical_unit_id): The logical unit number to identify a logical unit, - C(logical_unit_port): The port being used to connect with the LUN disk. - C(logical_unit_portal): The portal being used to connect with the LUN disk. - C(logical_unit_address): The address of the block storage host. - C(logical_unit_target): The iSCSI specification located on an iSCSI server - C(logical_unit_username): Username to be used to connect to the block storage host. - C(logical_unit_password): Password to be used to connect to the block storage host. - C(storage_type): The storage type which the LUN reside on (iscsi or fcp)

		lun_mappings?: string

		// Name of the template, which should be used to create Virtual Machine.
		// Required if creating VM.
		// If template is not specified and VM doesn't exist, VM will be created from I(Blank) template.

		template?: string

		// Boolean indication whether to reassign bad macs when C(state) is registered.

		reassign_bad_macs?: bool

		// List of dictionaries representing network interfaces to be setup by cloud init.
		// This option is used, when user needs to setup more network interfaces via cloud init.
		// If one network interface is enough, user should use C(cloud_init) I(nic_*) parameters. C(cloud_init) I(nic_*) parameters are merged with C(cloud_init_nics) parameters.

		cloud_init_nics?: string

		// When C(state) is I(exported) this parameter indicates if the existing VM with the same name should be overwritten.

		exclusive?: bool

		// When C(state) is I(exported)this parameter specifies the name of the export storage domain.

		export_domain?: string

		// If I(true) C(kernel_params), C(initrd_path) and C(kernel_path) will persist in virtual machine configuration, if I(False) it will be used for run once.
		// Usable with oVirt 4.3 and lower; removed in oVirt 4.4.

		kernel_params_persist?: bool

		// If I(true), the VM will migrate to any available host.

		migrate?: bool

		// Operating system of the Virtual Machine.
		// Default value is set by oVirt/RHV engine.
		// Possible values: debian_7, freebsd, freebsdx64, other, other_linux, other_linux_ppc64, other_ppc64, rhel_3, rhel_4, rhel_4x64, rhel_5, rhel_5x64, rhel_6, rhel_6x64, rhel_6_ppc64, rhel_7x64, rhel_7_ppc64, sles_11, sles_11_ppc64, ubuntu_12_04, ubuntu_12_10, ubuntu_13_04, ubuntu_13_10, ubuntu_14_04, ubuntu_14_04_ppc64, windows_10, windows_10x64, windows_2003, windows_2003x64, windows_2008, windows_2008x64, windows_2008r2x64, windows_2008R2x64, windows_2012x64, windows_2012R2x64, windows_7, windows_7x64, windows_8, windows_8x64, windows_xp

		operating_system?: string

		// I(True) enable USB support, I(False) to disable it. By default is chosen by oVirt/RHV engine.

		usb_support?: bool

		// If I(yes) the C(cloud_init) or C(sysprep) parameters will be saved for the virtual machine and the virtual machine won't be started as run-once.

		cloud_init_persist?: bool

		// Number of virtual CPUs sockets of the Virtual Machine.
		// Default value is set by oVirt/RHV engine.

		cpu_sockets?: string

		// List of disks, which should be attached to Virtual Machine. Disk is described by following dictionary.

		disks?: string

		// Number of IO threads used by virtual machine. I(0) means IO threading disabled.

		io_threads?: string

		// List of boot devices which should be used to boot. For example C([ cdrom, hd ]).
		// Default value is set by oVirt/RHV engine.

		boot_devices?: string

		// Dictionary with values for Unix-like Virtual Machine initialization using cloud init.

		cloud_init?: string

		// Sets time zone offset of the guest hardware clock.
		// For example C(Etc/GMT)

		timezone?: string

		// Dictionary of values to be used to connect to kvm and import a virtual machine to oVirt.

		kvm?: string

		// I(True) enable VirtIO serial console, I(False) to disable it. By default is chosen by oVirt/RHV engine.

		serial_console?: bool

		// If I(true), the sound card is added to the virtual machine.

		soundcard_enabled?: bool

		// Dictionary of values to be used to connect to VMware and import a virtual machine to oVirt.

		vmware?: string

		// I(True) enable Single Sign On by Guest Agent, I(False) to disable it. By default is chosen by oVirt/RHV engine.

		sso?: bool

		// Dictionary with values for Windows Virtual Machine initialization using sysprep.

		sysprep?: string

		// Specify if latest template version should be used, when running a stateless VM.
		// If this parameter is set to I(yes) stateless VM is created.

		use_latest_template_version?: bool

		// Assign watchdog device for the virtual machine.
		// Watchdogs is a dictionary which can have following values:

		watchdog?: string

		// Mapper which maps affinity name between VM's OVF and the destination affinity this VM should be registered to, relevant when C(state) is registered.

		affinity_group_mappings?: string

		// Mapper which maps affinity label name between VM's OVF and the destination label this VM should be registered to, relevant when C(state) is registered.

		affinity_label_mappings?: string

		// Sets the value of the custom_emulated_machine attribute.

		custom_emulated_machine?: string

		// Source VM to clone VM from.
		// VM should have snapshot specified by C(snapshot).
		// If C(snapshot_name) specified C(snapshot_vm) is required.

		snapshot_vm?: string

		// Number of virtual CPUs cores of the Virtual Machine.
		// Default value is set by oVirt/RHV engine.

		cpu_cores?: string

		// Mapper which maps aaa domain name between VM's OVF and the destination aaa domain this VM should be registered to, relevant when C(state) is registered. The aaa domain mapping is described by the following dictionary:

		domain_mappings?: string

		// Amount of minimal guaranteed memory of the Virtual Machine. Prefix uses IEC 60027-2 standard (for example 1GiB, 1024MiB).
		// C(memory_guaranteed) parameter can't be lower than C(memory) parameter.
		// Default value is set by engine.

		memory_guaranteed?: string

		// Please check to I(Synopsis) to more detailed description of force parameter, it can behave differently in different situations.

		force?: bool

		// Amount of memory of the Virtual Machine. Prefix uses IEC 60027-2 standard (for example 1GiB, 1024MiB).
		// Default value is set by engine.

		memory?: string

		// Random number generator (RNG). You can choose of one the following devices I(urandom), I(random) or I(hwrng).
		// In order to select I(hwrng), you must have it enabled on cluster first.
		// /dev/urandom is used for cluster version >= 4.1, and /dev/random for cluster version <= 4.0

		rng_device?: string

		// List of NICs, which should be attached to Virtual Machine. NIC is described by following dictionary.

		nics?: string

		// CPU mode of the virtual machine. It can be some of the following: I(host_passthrough), I(host_model) or I(custom).
		// For I(host_passthrough) CPU type you need to set C(placement_policy) to I(pinned).
		// If no value is passed, default value is set by oVirt/RHV engine.

		cpu_mode?: string

		// Specify format of the disk.
		// If C(cow) format is used, disk will by created as sparse, so space will be allocated for the volume as needed, also known as I(thin provision).
		// If C(raw) format is used, disk storage will be allocated right away, also known as I(preallocated).
		// Note that this option isn't idempotent as it's not currently possible to change format of the disk via API.
		// This parameter is considered only when C(template) and C(storage domain) is provided.

		disk_format?: string

		// Name of virtual machine's hardware configuration.
		// By default no instance type is used.

		instance_type?: string

		// If I(true), the update will not be applied to the VM immediately and will be only applied when virtual machine is restarted.
		// NOTE - If there are multiple next run configuration changes on the VM, the first change may get reverted if this option is not passed.

		next_run?: bool

		// If I(yes) Virtual Machine will be set as delete protected.
		// If I(no) Virtual Machine won't be set as delete protected.
		// If no value is passed, default value is set by oVirt/RHV engine.

		delete_protected?: bool

		// Description of the Virtual Machine.

		description?: string

		// Dictionary of values to be used to export VM as OVA.

		export_ova?: string

		// Upper bound of virtual machine memory up to which memory hot-plug can be performed. Prefix uses IEC 60027-2 standard (for example 1GiB, 1024MiB).
		// Default value is set by engine.

		memory_max?: string

		// ISO file from ISO storage domain which should be attached to Virtual Machine.
		// If you pass empty string the CD will be ejected from VM.
		// If used with C(state) I(running) or I(present) and VM is running the CD will be attached to VM.
		// If used with C(state) I(running) or I(present) and VM is down the CD will be attached to VM persistently.

		cd_iso?: string

		// Name of the cluster, where Virtual Machine should be created.
		// Required if creating VM.

		cluster?: string

		// Mapper which maps cluster name between VM's OVF and the destination cluster this VM should be registered to, relevant when C(state) is registered. Cluster mapping is described by the following dictionary:

		cluster_mappings?: string

		// Number of threads per core of the Virtual Machine.
		// Default value is set by oVirt/RHV engine.

		cpu_threads?: string

		// The configuration of the virtual machine's placement policy.
		// If no value is passed, default value is set by oVirt/RHV engine.
		// Placement policy can be one of the following values:

		placement_policy?: string

		// If I(true), in addition return I(remote_vv_file) inside I(vm) dictionary, which contains compatible content for remote-viewer application. Works only C(state) is I(running).

		ticket?: bool

		// List of vNUMA Nodes to set for this VM and pin them to assigned host's physical NUMA node.
		// Each vNUMA node is described by following dictionary:

		numa_nodes?: string

		// Specify a serial number policy for the Virtual Machine.
		// Following options are supported.
		// C(vm) - Sets the Virtual Machine's UUID as its serial number.
		// C(host) - Sets the host's UUID as the Virtual Machine's serial number.
		// C(custom) - Allows you to specify a custom serial number in C(serial_policy_value).

		serial_policy?: string

		// Should the Virtual Machine be running/stopped/present/absent/suspended/next_run/registered/exported/reboot. When C(state) is I(registered) and the unregistered VM's name belongs to an already registered in engine VM in the same DC then we fail to register the unregistered template.
		// I(present) state will create/update VM and don't change its state if it already exists.
		// I(running) state will create/update VM and start it.
		// I(next_run) state updates the VM and if the VM has next run configuration it will be rebooted.
		// Please check I(notes) to more detailed description of states.
		// I(exported) state will export the VM to export domain or as OVA.
		// I(registered) is supported since 2.4.
		// I(reboot) is supported since 2.10, virtual machine is rebooted only if it's in up state.

		state?: string

		// If I(yes) Virtual Machine will be set as stateless.
		// If I(no) Virtual Machine will be unset as stateless.
		// If no value is passed, default value is set by oVirt/RHV engine.

		stateless?: bool

		// Mapper which maps role name between VM's OVF and the destination role this VM should be registered to, relevant when C(state) is registered. Role mapping is described by the following dictionary:

		role_mappings?: string

		// Allows you to specify a custom serial number.
		// This parameter is used only when C(serial_policy) is I(custom).

		serial_policy_value?: string

		// If I(true), use smart card authentication.

		smartcard_enabled?: bool

		// Name of the storage domain where all template disks should be created.
		// This parameter is considered only when C(template) is provided.
		// IMPORTANT - This parameter is not idempotent, if the VM exists and you specify different storage domain, disk won't move.

		storage_domain?: string

		// Boolean indication whether to allow partial registration of Virtual Machine when C(state) is registered.

		allow_partial_import?: bool

		// I(True) enable menu to select boot device, I(False) to disable it. By default is chosen by oVirt/RHV engine.

		boot_menu?: bool

		// Set a CPU shares for this Virtual Machine.
		// Default value is set by oVirt/RHV engine.

		cpu_shares?: string

		// Properties sent to VDSM to configure various hooks.
		// Custom properties is a list of dictionary which can have following values:

		custom_properties?: string

		// Type of the Virtual Machine.
		// Default value is set by oVirt/RHV engine.
		// I(high_performance) is supported since Ansible 2.5 and oVirt/RHV 4.2.

		type?: string

		// Mapper which maps an external virtual NIC profile to one that exists in the engine when C(state) is registered. vnic_profile is described by the following dictionary:

		vnic_profile_mappings?: string

		// Version number of the template to be used for VM.
		// By default the latest available version of the template is used.

		template_version?: string

		// Enables a virtual machine to be customized to its own compatibility version. If 'C(custom_compatibility_version)' is set, it overrides the cluster's compatibility version for this particular virtual machine.

		custom_compatibility_version?: string

		// If I(yes) Virtual Machine will be set as highly available.
		// If I(no) Virtual Machine won't be set as highly available.
		// If no value is passed, default value is set by oVirt/RHV engine.

		high_availability?: bool

		// Path to a kernel image used to boot the virtual machine.
		// Kernel image must be stored on either the ISO domain or on the host's storage.
		// Usable with oVirt 4.3 and lower; removed in oVirt 4.4.

		kernel_path?: string

		// Snapshot to clone VM from.
		// Snapshot with description specified should exist.
		// You have to specify C(snapshot_vm) parameter with virtual machine name of this snapshot.

		snapshot_name?: string

		// Name of the Virtual Machine to manage.
		// If VM don't exists C(name) is required. Otherwise C(id) or C(name) can be used.

		name?: string

		// Virtual Machine quota ID to be used for disk. By default quota is chosen by oVirt/RHV engine.

		quota_id?: string

		// If I(true), the VM will migrate when I(placement_policy=user-migratable) but not when I(placement_policy=pinned).

		force_migrate?: bool

		// Indicates the priority of the virtual machine inside the run and migration queues. Virtual machines with higher priorities will be started and migrated before virtual machines with lower priorities. The value is an integer between 0 and 100. The higher the value, the higher the priority.
		// If no value is passed, default value is set by oVirt/RHV engine.

		high_availability_priority?: string

		// Single Root I/O Virtualization - technology that allows single device to expose multiple endpoints that can be passed to VMs
		// host_devices is an list which contain dictionary with name and state of device

		host_devices?: string

		// Path to an initial ramdisk to be used with the kernel specified by C(kernel_path) option.
		// Ramdisk image must be stored on either the ISO domain or on the host's storage.
		// Usable with oVirt 4.3 and lower; removed in oVirt 4.4.

		initrd_path?: string

		// If I(yes) then the permissions of the template (only the direct ones, not the inherited ones) will be copied to the created virtual machine.
		// This parameter is used only when C(state) is I(running) or I(present) and VM didn't exist before.

		clone_permissions?: bool

		// Specify host where Virtual Machine should be running. By default the host is chosen by engine scheduler.
		// This parameter is used only when C(state) is I(running) or I(present).

		host?: string

		// Set how the memory allocation for NUMA nodes of this VM is applied (relevant if NUMA nodes are set for this VM).
		// It can be one of the following: I(interleave), I(preferred) or I(strict).
		// If no value is passed, default value is set by oVirt/RHV engine.

		numa_tune_mode?: string
	}
}

ovirt_disk :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_disk: {

		// I(True) if the disk should be shareable. By default when disk is created it isn't shareable.

		shareable?: bool

		// I(True) if the disk should be sparse (also known as I(thin provision)). If the parameter is omitted, cow disks will be created as sparse and raw disks as I(preallocated)
		// Note that this option isn't idempotent as it's not currently possible to change sparseness of the disk via API.

		sparse?: bool

		// I(True) if the disk should be sparsified.
		// Sparsification frees space in the disk image that is not used by its filesystem. As a result, the image will occupy less space on the storage.
		// Note that this parameter isn't idempotent, as it's not possible to check if the disk should be or should not be sparsified.

		sparsify?: bool

		// Path on a file system where disk should be downloaded.
		// Note that you must have an valid oVirt/RHV engine CA in your system trust store or you must provide it in C(ca_file) parameter.
		// Note that the disk is not downloaded when the file already exists, but you can forcibly download the disk when using C(force) I (true).

		download_image_path?: string

		// Please take a look at C(image_path) documentation to see the correct usage of this parameter.

		force?: bool

		// ID of the Virtual Machine to manage. Either C(vm_id) or C(vm_name) is required if C(state) is I(attached) or I(detached).

		vm_id?: string

		// When the hypervisor name is specified the newly created disk or an existing disk will refresh its information about the underlying storage( Disk size, Serial, Product ID, Vendor ID ...) The specified host will be used for gathering the storage related information. This option is only valid for passthrough disks. This option requires at least the logical_unit.id to be specified

		host?: string

		// When C(state) is I(exported) disk is exported to given Glance image provider.
		// When C(state) is I(imported) disk is imported from given Glance image provider.
		// C(**IMPORTANT**)
		// There is no reliable way to achieve idempotency, so every time you specify this parameter the disk is exported, so please handle your playbook accordingly to not export the disk all the time. This option is valid only for template disks.

		image_provider?: string

		// Dictionary which describes LUN to be directly attached to VM:

		logical_unit?: string

		// Disk quota ID to be used for disk. By default quota is chosen by oVirt/RHV engine.

		quota_id?: string

		// Path to disk image, which should be uploaded.
		// Note that currently we support only compatibility version 0.10 of the qcow disk.
		// Note that you must have an valid oVirt/RHV engine CA in your system trust store or you must provide it in C(ca_file) parameter.
		// Note that there is no reliable way to achieve idempotency, so if you want to upload the disk even if the disk with C(id) or C(name) exists, then please use C(force) I(true). If you will use C(force) I(false), which is default, then the disk image won't be uploaded.

		upload_image_path?: string

		// I(True) if the disk should be bootable. By default when disk is created it isn't bootable.

		bootable?: bool

		// Description of the disk image to manage.

		description?: string

		// Specify format of the disk.
		// Note that this option isn't idempotent as it's not currently possible to change format of the disk via API.

		format?: string

		// Name of the disk to manage. Either C(id) or C(name)/C(alias) is required.

		name?: string

		// I(True) if the disk should be activated.
		// When creating disk of virtual machine it is set to I(True).

		activate?: bool

		// Specify if the disk is a data disk or ISO image or a one of a the Hosted Engine disk types
		// The Hosted Engine disk content types are available with Engine 4.3+ and Ansible 2.8

		content_type?: string

		// ID of the disk to manage. Either C(id) or C(name) is required.

		id?: string

		// Should the Virtual Machine disk be present/absent/attached/detached/exported/imported.

		state?: string

		// Size of the disk. Size should be specified using IEC standard units. For example 10GiB, 1024MiB, etc.
		// Size can be only increased, not decreased.

		size?: string

		// Storage domain names where disk should be copied.
		// C(**IMPORTANT**)
		// There is no reliable way to achieve idempotency, so every time you specify this parameter the disks are copied, so please handle your playbook accordingly to not copy the disks all the time. This is valid only for VM and floating disks, template disks works as expected.

		storage_domains?: string

		// Name of the Virtual Machine to manage. Either C(vm_id) or C(vm_name) is required if C(state) is I(attached) or I(detached).

		vm_name?: string

		// Disk profile name to be attached to disk. By default profile is chosen by oVirt/RHV engine.

		profile?: string

		// If the disk's Wipe After Delete is enabled, then the disk is first wiped.

		wipe_after_delete?: bool

		// Driver of the storage interface.
		// It's required parameter when creating the new disk.

		interface?: string

		// Name of the openstack volume type. This is valid when working with cinder.

		openstack_volume_type?: string

		// Storage domain name where disk should be created. By default storage is chosen by oVirt/RHV engine.

		storage_domain?: string
	}
}

ovirt_host :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_host: {

		// Specify if host will have enabled Kdump integration.

		kdump_integration?: string

		// Password of the root. It's required in case C(public_key) is set to I(False).

		password?: string

		// Host address. It can be either FQDN (preferred) or IP address.

		address?: string

		// If I(true) and C(state) is I(upgraded) run check for upgrade action before executing upgrade action.

		check_upgrade?: bool

		// If C(state) is I(iscsidiscover) it means that the iscsi attribute is being used to discover targets
		// If C(state) is I(iscsilogin) it means that the iscsi attribute is being used to login to the specified targets passed as part of the iscsi attribute

		iscsi?: string

		// Name of the host to manage.

		name: string

		// If True host iptables will be overridden by host deploy script.
		// Note that C(override_iptables) is I(false) by default in oVirt/RHV.

		override_iptables?: bool

		// Enable or disable power management of the host.
		// For more comprehensive setup of PM use C(ovirt_host_pm) module.

		power_management_enabled?: bool

		// SPM priority of the host. Integer value from 1 to 10, where higher number means higher priority.

		spm_priority?: string

		// The amount of time in seconds the module should wait for the host to get into desired state.

		timeout?: string

		// Name of the cluster, where host should be created.

		cluster?: string

		// Description of the host.

		comment?: string

		// If I(deploy) it means this host should deploy also hosted engine components.
		// If I(undeploy) it means this host should un-deploy hosted engine components and this host will not function as part of the High Availability cluster.

		hosted_engine?: string

		// If I(true) and C(state) is I(upgraded) reboot host after successful upgrade.

		reboot_after_upgrade?: bool

		// State which should a host to be in after successful completion.
		// I(iscsilogin) and I(iscsidiscover) are supported since version 2.4.

		state?: string

		// Indicates that the host should be removed even if it is non-responsive, or if it is part of a Gluster Storage cluster and has volume bricks on it.
		// WARNING: It doesn't forcibly remove the host if another host related operation is being executed on the host at the same time.

		force?: bool

		// Override the display address of all VMs on this host with specified address.

		override_display?: bool

		// I(True) if the public key should be used to authenticate to host.
		// It's required in case C(password) is not set.

		public_key?: bool

		// If I(consolidated), each vGPU is placed on the first physical card with available space. This is the default placement, utilizing all available space on the physical cards.
		// If I(separated), each vGPU is placed on a separate physical card, if possible. This can be useful for improving vGPU performance.

		vgpu_placement?: string

		// If C(state) is I(present) activate the host.
		// This parameter is good to disable, when you don't want to change the state of host when using I(present) C(state).

		activate?: bool

		// ID of the host to manage.

		id?: string

		// List of kernel boot parameters.
		// Following are most common kernel parameters used for host:
		// Hostdev Passthrough & SR-IOV: intel_iommu=on
		// Nested Virtualization: kvm-intel.nested=1
		// Unsafe Interrupts: vfio_iommu_type1.allow_unsafe_interrupts=1
		// PCI Reallocation: pci=realloc
		// C(Note:)
		// Modifying kernel boot parameters settings can lead to a host boot failure. Please consult the product documentation before doing any changes.
		// Kernel boot parameters changes require host deploy and restart. The host needs to be I(reinstalled) successfully and then to be I(rebooted) for kernel boot parameters to be applied.

		kernel_params?: string
	}
}

ovirt_job :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_job: {

		// Description of the job.

		description: string

		// Should the job be C(present)/C(absent)/C(failed).
		// C(started) is alias for C(present). C(finished) is alias for C(absent). Same in the steps.
		// Note when C(finished)/C(failed) it will finish/fail all steps.

		state?: string

		// The steps of the job.

		steps?: [...]
	}
}

ovirt_storage_template_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_storage_template_info: {

		// The storage domain name where the templates should be listed.

		storage_domain?: string

		// Flag which indicates whether to get unregistered templates which contain one or more disks which reside on a storage domain or diskless templates.

		unregistered?: bool

		// Sets the maximum number of templates to return. If not specified all the templates are returned.

		max?: string
	}
}

ovirt_instance_type :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_instance_type: {

		// Should the Instance Type be present/absent.
		// I(present) state will create/update instance type and don't change its state if it already exists.

		state?: string

		// CPU mode of the instance type. It can be some of the following: I(host_passthrough), I(host_model) or I(custom).
		// For I(host_passthrough) CPU type you need to set C(placement_policy) to I(pinned).
		// If no value is passed, default value is set by oVirt/RHV engine.

		cpu_mode?: string

		// Amount of minimal guaranteed memory of the Instance Type. Prefix uses IEC 60027-2 standard (for example 1GiB, 1024MiB).
		// C(memory_guaranteed) parameter can't be lower than C(memory) parameter.
		// Default value is set by engine.

		memory_guaranteed?: string

		// Upper bound of instance type memory up to which memory hot-plug can be performed. Prefix uses IEC 60027-2 standard (for example 1GiB, 1024MiB).
		// Default value is set by engine.

		memory_max?: string

		// Random number generator (RNG). You can choose of one the following devices I(urandom), I(random) or I(hwrng).
		// In order to select I(hwrng), you must have it enabled on cluster first.
		// /dev/urandom is used for cluster version >= 4.1, and /dev/random for cluster version <= 4.0

		rng_device?: string

		// I(True) enable VirtIO serial console, I(False) to disable it. By default is chosen by oVirt/RHV engine.

		serial_console?: bool

		// List of boot devices which should be used to boot. For example C([ cdrom, hd ]).
		// Default value is set by oVirt/RHV engine.

		boot_devices?: string

		// Description of the instance type.

		description?: string

		// Assign graphical console to the instance type.
		// Graphical console is a dictionary which can have following values:
		// C(headless_mode) - If I(true) disable the graphics console for this instance type.
		// C(protocol) - Graphical protocol, a list of I(spice), I(vnc), or both.

		graphical_console?: string

		// If I(true), virtio scsi will be enabled.

		virtio_scsi?: bool

		// Number of virtual CPUs cores of the Instance Type.
		// Default value is set by oVirt/RHV engine.

		cpu_cores?: string

		// If I(yes) Instance Type will be set as highly available.
		// If I(no) Instance Type won't be set as highly available.
		// If no value is passed, default value is set by oVirt/RHV engine.

		high_availability?: bool

		// Number of virtual CPUs sockets of the Instance Type.
		// Default value is set by oVirt/RHV engine.

		cpu_sockets?: string

		// Number of virtual CPUs sockets of the Instance Type.
		// Default value is set by oVirt/RHV engine.

		cpu_threads?: string

		// Indicates the priority of the instance type inside the run and migration queues. Instance Type with higher priorities will be started and migrated before instance types with lower priorities. The value is an integer between 0 and 100. The higher the value, the higher the priority.
		// If no value is passed, default value is set by oVirt/RHV engine.

		high_availability_priority?: string

		// Number of IO threads used by instance type. I(0) means IO threading disabled.

		io_threads?: string

		// Assign watchdog device for the instance type.
		// Watchdogs is a dictionary which can have following values:
		// C(model) - Model of the watchdog device. For example: I(i6300esb), I(diag288) or I(null).
		// C(action) - Watchdog action to be performed when watchdog is triggered. For example: I(none), I(reset), I(poweroff), I(pause) or I(dump).

		watchdog?: string

		// Specify host where Instance Type should be running. By default the host is chosen by engine scheduler.
		// This parameter is used only when C(state) is I(running) or I(present).

		host?: string

		// ID of the Instance Type to manage.

		id?: string

		// Amount of memory of the Instance Type. Prefix uses IEC 60027-2 standard (for example 1GiB, 1024MiB).
		// Default value is set by engine.

		memory?: string

		// Name of the Instance Type to manage.
		// If instance type don't exists C(name) is required. Otherwise C(id) or C(name) can be used.

		name?: string

		// Duration of one period in milliseconds.

		rng_period?: string

		// The configuration of the instance type's placement policy.
		// Placement policy can be one of the following values:
		// C(migratable) - Allow manual and automatic migration.
		// C(pinned) - Do not allow migration.
		// C(user_migratable) - Allow manual migration only.
		// If no value is passed, default value is set by oVirt/RHV engine.

		placement_policy?: string

		// I(True) enable USB support, I(False) to disable it. By default is chosen by oVirt/RHV engine.

		usb_support?: bool

		// Operating system of the Instance Type.
		// Default value is set by oVirt/RHV engine.
		// Possible values: debian_7, freebsd, freebsdx64, other, other_linux, other_linux_ppc64, other_ppc64, rhel_3, rhel_4, rhel_4x64, rhel_5, rhel_5x64, rhel_6, rhel_6x64, rhel_6_ppc64, rhel_7x64, rhel_7_ppc64, sles_11, sles_11_ppc64, ubuntu_12_04, ubuntu_12_10, ubuntu_13_04, ubuntu_13_10, ubuntu_14_04, ubuntu_14_04_ppc64, windows_10, windows_10x64, windows_2003, windows_2003x64, windows_2008, windows_2008x64, windows_2008r2x64, windows_2008R2x64, windows_2012x64, windows_2012R2x64, windows_7, windows_7x64, windows_8, windows_8x64, windows_xp

		operating_system?: string

		// Number of bytes allowed to consume per period.

		rng_bytes?: string

		// If I(true), the sound card is added to the instance type.

		soundcard_enabled?: bool

		// If I(true), use memory ballooning.
		// Memory balloon is a guest device, which may be used to re-distribute / reclaim the host memory based on instance type needs in a dynamic way. In this way it's possible to create memory over commitment states.

		ballooning_enabled?: bool

		// CPU Pinning topology to map instance type CPU to host CPU.
		// CPU Pinning topology is a list of dictionary which can have following values:
		// C(cpu) - Number of the host CPU.
		// C(vcpu) - Number of the instance type CPU.

		cpu_pinning?: string

		// List of NICs, which should be attached to Virtual Machine. NIC is described by following dictionary.
		// C(name) - Name of the NIC.
		// C(profile_name) - Profile name where NIC should be attached.
		// C(interface) -  Type of the network interface. One of following I(virtio), I(e1000), I(rtl8139), default is I(virtio).
		// C(mac_address) - Custom MAC address of the network interface, by default it's obtained from MAC pool.
		// NOTE - This parameter is used only when C(state) is I(running) or I(present) and is able to only create NICs. To manage NICs of the instance type in more depth please use M(ovirt_nic) module instead.

		nics?: string

		// If I(true), use smart card authentication.

		smartcard_enabled?: bool
	}
}

ovirt_tag :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_tag: {

		// ID of the tag to manage.

		id?: string

		// Name of the tag to manage.

		name: string

		// Name of the parent tag.

		parent?: string

		// Should the tag be present/absent/attached/detached.
		// C(Note): I(attached) and I(detached) states are supported since version 2.4.

		state?: string

		// List of the VMs names, which should have assigned this tag.

		vms?: string

		// Description of the tag to manage.

		description?: string

		// List of the hosts names, which should have assigned this tag.

		hosts?: string
	}
}

ovirt_quota_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_quota_info: {

		// Name of the datacenter where quota resides.

		data_center: string

		// Name of the quota, can be used as glob expression.

		name?: string
	}
}

ovirt_storage_vm_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_storage_vm_info: {

		// Sets the maximum number of virtual machines to return. If not specified all the virtual machines are returned.

		max?: string

		// The storage domain name where the virtual machines should be listed.

		storage_domain?: string

		// Flag which indicates whether to get unregistered virtual machines which contain one or more disks which reside on a storage domain or diskless virtual machines.

		unregistered?: bool
	}
}

ovirt_storage_domain_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_storage_domain_info: {

		pattern?: string

		// Search term which is accepted by oVirt/RHV search backend.
		// For example to search storage domain X from datacenter Y use following pattern: name=X and datacenter=Y
	}
}

ovirt_datacenter_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_datacenter_info: {

		pattern?: string

		// Search term which is accepted by oVirt/RHV search backend.
		// For example to search datacenter I(X) use following pattern: I(name=X)
	}
}

ovirt_host_network :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_host_network: {

		// If I(true) network configuration will be persistent, otherwise it is temporary. Default I(true) since Ansible 2.8.

		save?: bool

		// Dictionary describing network bond:
		// C(name) - Bond name.
		// C(mode) - Bonding mode.
		// C(options) - Bonding options.
		// C(interfaces) - List of interfaces to create a bond.

		bond?: string

		// Name of the network interface where logical network should be attached.

		interface?: string

		// List of names of the network label to be assigned to bond or interface.

		labels?: string

		// Should the host be present/absent.

		state?: string

		// If I(true) all networks will be synchronized before modification

		sync_networks?: bool

		// If I(true) verify connectivity between host and engine.
		// Network configuration changes will be rolled back if connectivity between engine and the host is lost after changing network configuration.

		check?: bool

		// Name of the host to manage networks for.

		name: string

		// List of dictionary describing networks to be attached to interface or bond:
		// C(name) - Name of the logical network to be assigned to bond or interface.
		// C(boot_protocol) - Boot protocol one of the I(none), I(static) or I(dhcp).
		// C(address) - IP address in case of I(static) boot protocol is used.
		// C(netmask) - Subnet mask in case of I(static) boot protocol is used.
		// C(gateway) - Gateway in case of I(static) boot protocol is used.
		// C(version) - IP version. Either v4 or v6. Default is v4.

		networks?: string
	}
}

ovirt_user :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_user: {

		// Name of the user to manage. In most LDAPs it's I(uid) of the user, but in Active Directory you must specify I(UPN) of the user.

		name: string

		// Namespace where the user resides. When using the authorization provider that stores users in the LDAP server, this attribute equals the naming context of the LDAP server.

		namespace?: string

		// Should the user be present/absent.

		state?: string

		// Authorization provider of the user. In previous versions of oVirt/RHV known as domain.

		authz_name: string
	}
}

ovirt_user_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_user_info: {

		pattern?: string

		// Search term which is accepted by oVirt/RHV search backend.
		// For example to search user X use following pattern: name=X
	}
}

ovirt_mac_pool :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_mac_pool: {

		// ID of the mac pool to manage.

		id?: string

		// Name of the MAC pool to manage.

		name: string

		// List of MAC ranges. The from and to should be split by comma.
		// For example: 00:1a:4a:16:01:51,00:1a:4a:16:01:61

		ranges?: string

		// Should the mac pool be present or absent.

		state?: string

		// If I(true) allow a MAC address to be used multiple times in a pool.
		// Default value is set by oVirt/RHV engine to I(false).

		allow_duplicates?: bool

		// Description of the MAC pool.

		description?: string
	}
}

ovirt_nic :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_nic: {

		// ID of the nic to manage.

		id?: string

		// Logical network to which the VM network interface should use, by default Empty network is used if network is not specified.

		network?: string

		// Virtual network interface profile to be attached to VM network interface.
		// When not specified and network has only single profile it will be auto-selected, otherwise you must specify profile.

		profile?: string

		// Should the Virtual Machine NIC be present/absent/plugged/unplugged.

		state?: string

		// Name of the Virtual Machine to manage.
		// You must provide either C(vm) parameter or C(template) parameter.

		vm?: string

		// Type of the network interface. For example e1000, pci_passthrough, rtl8139, rtl8139_virtio, spapr_vlan or virtio.
		// It's required parameter when creating the new NIC.

		interface?: string

		// Defines if the NIC is linked to the virtual machine.

		linked?: bool

		// Custom MAC address of the network interface, by default it's obtained from MAC pool.

		mac_address?: string

		// Name of the network interface to manage.

		name: string

		// Name of the template to manage.
		// You must provide either C(vm) parameter or C(template) parameter.

		template?: string
	}
}

ovirt_storage_domain :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_storage_domain: {

		// Boolean flag which indicates whether the storage domain is configured as backup or not.

		backup?: bool

		// Host to be used to mount storage.

		host?: string

		// Dictionary with values for PosixFS storage type:
		// Note that these parameters are not idempotent.

		posixfs?: string

		// Indicates the minimum percentage of a free space in a storage domain to present a warning.

		warning_low_space?: string

		// Indicates the minimal free space the storage domain should contain in percentages.

		critical_space_action_blocker?: string

		// If I(True) storage domain will be formatted after removing it from oVirt/RHV.
		// This parameter is relevant only when C(state) is I(absent).

		format?: bool

		// Id of the storage domain to be imported.

		id?: string

		// Name of the storage domain to manage. (Not required when state is I(imported))

		name?: string

		// Should the storage domain be present/absent/maintenance/unattached/imported/update_ovf_store
		// I(imported) is supported since version 2.4.
		// I(update_ovf_store) is supported since version 2.5, currently if C(wait) is (true), we don't wait for update.

		state?: string

		// Dictionary with values for localfs storage type:
		// Note that these parameters are not idempotent.

		localfs?: string

		// Comment of the storage domain.

		comment?: string

		// Description of the storage domain.

		description?: string

		// Dictionary with values for fibre channel storage type:
		// Note that these parameters are not idempotent.

		fcp?: string

		// Dictionary with values for GlusterFS storage type:
		// Note that these parameters are not idempotent.

		glusterfs?: string

		// Dictionary with values for iSCSI storage type:
		// Note that these parameters are not idempotent.

		iscsi?: string

		// Dictionary with values for NFS storage type:
		// Note that these parameters are not idempotent.

		nfs?: string

		// Boolean flag which indicates whether the storage domain should wipe the data after delete.

		wipe_after_delete?: bool

		// Data center name where storage domain should be attached.
		// This parameter isn't idempotent, it's not possible to change data center of storage domain.

		data_center?: string

		// Logical remove of the storage domain. If I(true) retains the storage domain's data for import.
		// This parameter is relevant only when C(state) is I(absent).

		destroy?: bool

		// If I(True) storage domain blocks will be discarded upon deletion. Enabled by default.
		// This parameter is relevant only for block based storage domains.

		discard_after_delete?: bool

		// Function of the storage domain.
		// This parameter isn't idempotent, it's not possible to change domain function of storage domain.

		domain_function?: string

		// Dictionary with values for managed block storage type
		// Note: available from ovirt 4.3

		managed_block_storage?: string
	}
}

ovirt_template :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_template: {

		// Name of the template to manage.

		name?: string

		// Mapper which maps role name between Template's OVF and the destination role this Template should be registered to, relevant when C(state) is registered. Role mapping is described by the following dictionary:

		role_mappings?: string

		// Dictionary with values for Windows Virtual Machine initialization using sysprep.

		sysprep?: string

		// C(name) - The name of this version.
		// C(number) - The index of this version in the versions hierarchy of the template. Used for editing of sub template.

		version?: string

		// Name of the VM, which will be used to create template.

		vm?: string

		// If I(True) then the permissions of the VM (only the direct ones, not the inherited ones) will be copied to the created template.
		// This parameter is used only when C(state) I(present).

		clone_permissions?: bool

		// List of dictionaries representing network interfaces to be setup by cloud init.
		// This option is used, when user needs to setup more network interfaces via cloud init.
		// If one network interface is enough, user should use C(cloud_init) I(nic_*) parameters. C(cloud_init) I(nic_*) parameters are merged with C(cloud_init_nics) parameters.

		cloud_init_nics?: string

		// Name of the cluster, where template should be created/imported.

		cluster?: string

		// Description of the template.

		description?: string

		// Amount of minimal guaranteed memory of the template. Prefix uses IEC 60027-2 standard (for example 1GiB, 1024MiB).
		// C(memory_guaranteed) parameter can't be lower than C(memory) parameter.

		memory_guaranteed?: string

		// If I(true), use smart card authentication.

		smartcard_enabled?: bool

		// If I(true), use memory ballooning.
		// Memory balloon is a guest device, which may be used to re-distribute / reclaim the host memory based on VM needs in a dynamic way. In this way it's possible to create memory over commitment states.

		ballooning_enabled?: bool

		// Dictionary with values for Unix-like Virtual Machine initialization using cloud init.

		cloud_init?: string

		// CPU profile to be set to template.

		cpu_profile?: string

		// When C(state) is I(imported) this parameter specifies the name of the image provider to be used.

		image_provider?: string

		// ID of the template to be registered.

		id?: string

		// When C(state) is I(imported) and C(image_provider) is used this parameter specifies the name of disk to be imported as template.

		image_disk?: string

		// Number of IO threads used by virtual machine. I(0) means IO threading disabled.

		io_threads?: string

		// Amount of memory of the template. Prefix uses IEC 60027-2 standard (for example 1GiB, 1024MiB).

		memory?: string

		// Should the template be present/absent/exported/imported/registered. When C(state) is I(registered) and the unregistered template's name belongs to an already registered in engine template in the same DC then we fail to register the unregistered template.

		state?: string

		// When C(state) is I(imported) this parameter specifies the name of the destination data storage domain. When C(state) is I(registered) this parameter specifies the name of the data storage domain of the unregistered template.

		storage_domain?: string

		// Boolean indication whether to allow partial registration of a template when C(state) is registered.

		allow_partial_import?: bool

		// Mapper which maps cluster name between Template's OVF and the destination cluster this Template should be registered to, relevant when C(state) is registered. Cluster mapping is described by the following dictionary:

		cluster_mappings?: string

		// When C(state) is I(imported) and C(image_provider) is used this parameter specifies the new name for imported disk, if omitted then I(image_disk) name is used by default. This parameter is used only in case of importing disk image from Glance domain.

		template_image_disk_name?: string

		// I(True) enable USB support, I(False) to disable it. By default is chosen by oVirt/RHV engine.

		usb_support?: bool

		// If I(true), the sound card is added to the virtual machine.

		soundcard_enabled?: bool

		// Mapper which maps aaa domain name between Template's OVF and the destination aaa domain this Template should be registered to, relevant when C(state) is registered. The aaa domain mapping is described by the following dictionary:

		domain_mappings?: string

		// Upper bound of template memory up to which memory hot-plug can be performed. Prefix uses IEC 60027-2 standard (for example 1GiB, 1024MiB).

		memory_max?: string

		// When C(state) is I(exported) this parameter indicates if the existing templates with the same name should be overwritten.

		exclusive?: bool

		// Sets time zone offset of the guest hardware clock.
		// For example C(Etc/GMT)

		timezone?: string

		// List of NICs, which should be attached to Virtual Machine. NIC is described by following dictionary.

		nics?: string

		// Operating system of the template.
		// Default value is set by oVirt/RHV engine.
		// Possible values are: debian_7, freebsd, freebsdx64, other, other_linux, other_linux_ppc64, other_ppc64, rhel_3, rhel_4, rhel_4x64, rhel_5, rhel_5x64, rhel_6, rhel_6x64, rhel_6_ppc64, rhel_7x64, rhel_7_ppc64, sles_11, sles_11_ppc64, ubuntu_12_04, ubuntu_12_10, ubuntu_13_04, ubuntu_13_10, ubuntu_14_04, ubuntu_14_04_ppc64, windows_10, windows_10x64, windows_2003, windows_2003x64, windows_2008, windows_2008x64, windows_2008r2x64, windows_2008R2x64, windows_2012x64, windows_2012R2x64, windows_7, windows_7x64, windows_8, windows_8x64, windows_xp

		operating_system?: string

		// 'Sealing' is an operation that erases all machine-specific configurations from a filesystem: This includes SSH keys, UDEV rules, MAC addresses, system ID, hostname, etc. If I(true) subsequent virtual machines made from this template will avoid configuration inheritance.
		// This parameter is used only when C(state) I(present).

		seal?: bool

		// I(True) enable Single Sign On by Guest Agent, I(False) to disable it. By default is chosen by oVirt/RHV engine.

		sso?: bool

		// Mapper which maps an external virtual NIC profile to one that exists in the engine when C(state) is registered. vnic_profile is described by the following dictionary:

		vnic_profile_mappings?: string

		// Name for importing Template from storage domain.
		// If not defined, C(name) will be used.

		clone_name?: string

		// When C(state) is I(exported) or I(imported) this parameter specifies the name of the export storage domain.

		export_domain?: string
	}
}

ovirt_vm_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_vm_info: {

		// Search term which is accepted by oVirt/RHV search backend.
		// For example to search VM X from cluster Y use following pattern: name=X and cluster=Y

		pattern?: string

		// If I(true) all the attributes of the virtual machines should be included in the response.

		all_content?: bool

		// If I(true) performed search will take case into account.

		case_sensitive?: bool

		// The maximum number of results to return.

		max?: string

		// Indicates if the returned result describes the virtual machine as it is currently running or if describes the virtual machine with the modifications that have already been performed but that will only come into effect when the virtual machine is restarted. By default the value is set by engine.

		next_run?: bool
	}
}

ovirt_cluster :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_cluster: {

		// If I(True) enable memory balloon optimization. Memory balloon is used to re-distribute / reclaim the host memory based on VM needs in a dynamic way.

		ballooning?: bool

		// CPU codename. For example I(Intel SandyBridge Family).

		cpu_type?: string

		// List of references to the external network providers available in the cluster. If the automatic deployment of the external network provider is supported, the networks of the referenced network provider are available on every host in the cluster.
		// This is supported since oVirt version 4.2.

		external_network_providers?: string

		// CPU architecture of cluster.

		cpu_arch?: string

		// The threshold used by C(fence_skip_if_connectivity_broken).

		fence_connectivity_threshold?: string

		// If I(True) enables KSM C(ksm) for best performance inside NUMA nodes.

		ksm_numa?: bool

		// Management network of cluster to access cluster hosts.

		network?: string

		// Should the cluster be present or absent.

		state?: string

		// If I(True) enables integration with an OpenAttestation server.

		trusted_service?: bool

		// The compatibility version of the cluster. All hosts in this cluster must support at least this compatibility version.

		compatibility_version?: string

		// A flag indicating if fencing should be skipped if Gluster bricks are up and running and Gluster quorum will not be met without those bricks.
		// This flag is optional, and the default value is `false`.

		fence_skip_if_gluster_quorum_not_met?: bool

		// If I(True) enables an optional reason field when a host is placed into maintenance mode from the Manager, allowing the administrator to provide an explanation for the maintenance.

		host_reason?: bool

		// I I(True) MoM enables to run Kernel Same-page Merging I(KSM) when necessary and when it can yield a memory saving benefit that outweighs its CPU cost.

		ksm?: bool

		// Custom scheduling policy properties of the cluster.
		// These optional properties override the properties of the scheduling policy specified by the C(scheduling_policy) parameter.

		scheduling_policy_properties?: string

		// Specify a serial number policy for the virtual machines in the cluster.
		// Following options are supported:
		// C(vm) - Sets the virtual machine's UUID as its serial number.
		// C(host) - Sets the host's UUID as the virtual machine's serial number.
		// C(custom) - Allows you to specify a custom serial number in C(serial_policy_value).

		serial_policy?: string

		// The proxy by which the SPICE client will connect to virtual machines.
		// The address must be in the following format: I(protocol://[host]:[port])

		spice_proxy?: string

		// Comment of the cluster.

		comment?: string

		// Set the I(custom) migration bandwidth limit.
		// This parameter is used only when C(migration_bandwidth) is I(custom).

		migration_bandwidth_limit?: string

		// If I(True) compression is used during live migration of the virtual machine.
		// Used only when C(migration_policy) is set to I(legacy).
		// Following options are supported:
		// C(true) - Override the global setting to I(true).
		// C(false) - Override the global setting to I(false).
		// C(inherit) - Use value which is set globally.

		migration_compressed?: string

		// A migration policy defines the conditions for live migrating virtual machines in the event of host failure.
		// Following policies are supported:
		// C(legacy) - Legacy behavior of 3.6 version.
		// C(minimal_downtime) - Virtual machines should not experience any significant downtime.
		// C(suspend_workload) - Virtual machines may experience a more significant downtime.
		// C(post_copy) - Virtual machines should not experience any significant downtime. If the VM migration is not converging for a long time, the migration will be switched to post-copy. Added in version I(2.4).

		migration_policy?: string

		// If I(True) enables an optional reason field when a virtual machine is shut down from the Manager, allowing the administrator to provide an explanation for the maintenance.

		vm_reason?: bool

		// If I(True) the exposed host threads would be treated as cores which can be utilized by virtual machines.

		threads_as_cores?: bool

		// If I(True) enables fencing on the cluster.
		// Fencing is enabled by default.

		fence_enabled?: bool

		// If I(True) any hosts in the cluster that are Non Responsive and still connected to storage will not be fenced.

		fence_skip_if_sd_active?: bool

		// The type of firewall to be used on hosts in this cluster.
		// Up to version 4.1, it was always I(iptables). Since version 4.2, you can choose between I(iptables) and I(firewalld). For clusters with a compatibility version of 4.2 and higher, the default firewall type is I(firewalld).

		firewall_type?: string

		// If I(True) enables the oVirt/RHV to monitor cluster capacity for highly available virtual machines.

		ha_reservation?: bool

		// Name of the cluster to manage.

		name: string

		// Name of the scheduling policy to be used for cluster.

		scheduling_policy?: string

		// Type of switch to be used by all networks in given cluster. Either I(legacy) which is using linux bridge or I(ovs) using Open vSwitch.

		switch_type?: string

		// If I(True), hosts in this cluster will be used as Gluster Storage server nodes, and not for running virtual machines.
		// By default the cluster is created for virtual machine hosts.

		gluster?: bool

		// ID of the cluster to manage.

		id?: string

		// If I(True) auto-convergence is used during live migration of virtual machines.
		// Used only when C(migration_policy) is set to I(legacy).
		// Following options are supported:
		// C(true) - Override the global setting to I(true).
		// C(false) - Override the global setting to I(false).
		// C(inherit) - Use value which is set globally.

		migration_auto_converge?: string

		// A flag indicating if fencing should be skipped if Gluster bricks are up and running in the host being fenced.
		// This flag is optional, and the default value is `false`.

		fence_skip_if_gluster_bricks_up?: bool

		// I(disabled) - Disables memory page sharing.
		// I(server) - Sets the memory page sharing threshold to 150% of the system memory on each host.
		// I(desktop) - Sets the memory page sharing threshold to 200% of the system memory on each host.

		memory_policy?: string

		// List that specify the random number generator devices that all hosts in the cluster will use.
		// Supported generators are: I(hwrng) and I(random).

		rng_sources?: string

		// Allows you to specify a custom serial number.
		// This parameter is used only when C(serial_policy) is I(custom).

		serial_policy_value?: string

		// Datacenter name where cluster reside.

		data_center?: string

		// Description of the cluster.

		description?: string

		// If I(True) fencing will be temporarily disabled if the percentage of hosts in the cluster that are experiencing connectivity issues is greater than or equal to the defined threshold.
		// The threshold can be specified by C(fence_connectivity_threshold).

		fence_skip_if_connectivity_broken?: bool

		// The name of the U(https://fedorahosted.org/tuned) to set on all the hosts in the cluster. This is not mandatory and relevant only for clusters with Gluster service.
		// Could be for example I(virtual-host), I(rhgs-sequential-io), I(rhgs-random-io)

		gluster_tuned_profile?: string

		// MAC pool to be used by this cluster.
		// C(Note:)
		// This is supported since oVirt version 4.1.

		mac_pool?: string

		// The bandwidth settings define the maximum bandwidth of both outgoing and incoming migrations per host.
		// Following bandwidth options are supported:
		// C(auto) - Bandwidth is copied from the I(rate limit) [Mbps] setting in the data center host network QoS.
		// C(hypervisor_default) - Bandwidth is controlled by local VDSM setting on sending host.
		// C(custom) - Defined by user (in Mbps).

		migration_bandwidth?: string

		// The resilience policy defines how the virtual machines are prioritized in the migration.
		// Following values are supported:
		// C(do_not_migrate) -  Prevents virtual machines from being migrated. 
		// C(migrate) - Migrates all virtual machines in order of their defined priority.
		// C(migrate_highly_available) - Migrates only highly available virtual machines to prevent overloading other hosts.

		resilience_policy?: string

		// If I(True), hosts in this cluster will be used to run virtual machines.

		virt?: bool
	}
}

ovirt_network_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_network_info: {

		pattern?: string

		// Search term which is accepted by oVirt/RHV search backend.
		// For example to search network starting with string vlan1 use: name=vlan1*
	}
}

ovirt_permission :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_permission: {

		// Username of the user to manage. In most LDAPs it's I(uid) of the user, but in Active Directory you must specify I(UPN) of the user.
		// Note that if user does not exist in the system this module will fail, you should ensure the user exists by using M(ovirt_users) module.

		user_name?: string

		// Authorization provider of the user/group.

		authz_name: string

		// Name of the group to manage.
		// Note that if group does not exist in the system this module will fail, you should ensure the group exists by using M(ovirt_groups) module.

		group_name?: string

		// ID of the object where the permissions should be managed.

		object_id?: string

		// The object where the permissions should be managed.

		object_type?: string

		// Name of the quota to assign permission. Works only with C(object_type) I(data_center).

		quota_name?: string

		// Name of the role to be assigned to user/group on specific object.

		role?: string

		// Should the permission be present/absent.

		state?: string

		// Namespace of the authorization provider, where user/group resides.

		namespace?: string

		// Name of the object where the permissions should be managed.

		object_name?: string
	}
}

ovirt_storage_connection :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_storage_connection: {

		// Virtual File System type.

		vfs_type?: string

		// Option which will be passed when mounting storage.

		mount_options?: string

		// NFS version. One of: I(auto), I(v3), I(v4) or I(v4_1).

		nfs_version?: string

		// A CHAP password for logging into a target.

		password?: string

		// Port of the iSCSI storage server.

		port?: string

		// Id of the storage connection to manage.

		id?: string

		// Should the storage connection be present or absent.

		state?: string

		// Storage type. For example: I(nfs), I(iscsi), etc.

		type?: string

		// Name of the storage domain to be used with storage connection.

		storage?: string

		// Address of the storage server. E.g.: myserver.mydomain.com

		address?: string

		// This parameter is relevant only when updating a connection.
		// If I(true) the storage domain don't have to be in I(MAINTENANCE) state, so the storage connection is updated.

		force?: bool

		// The number of times to retry a request before attempting further recovery actions. Range 0 to 65535.

		nfs_retrans?: string

		// The time in tenths of a second to wait for a response before retrying NFS requests. Range 0 to 65535.

		nfs_timeout?: string

		// Path of the mount point of the storage. E.g.: /path/to/my/data

		path?: string

		// The target IQN for the storage device.

		target?: string

		// A CHAP username for logging into a target.

		username?: string
	}
}

ovirt_scheduling_policy_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_scheduling_policy_info: {

		// ID of the scheduling policy.

		id: string

		// Name of the scheduling policy, can be used as glob expression.

		name?: string
	}
}

ovirt_host_storage_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_host_storage_info: {

		// Dictionary with values for fibre channel storage type:
		// C(address) - Address of the fibre channel storage server.
		// C(port) - Port of the fibre channel storage server.
		// C(lun_id) - LUN id.

		fcp?: string

		// Host to get device list from.

		host: string

		// Dictionary with values for iSCSI storage type:
		// C(address) - Address of the iSCSI storage server.
		// C(target) - The target IQN for the storage device.
		// C(username) - A CHAP user name for logging into a target.
		// C(password) - A CHAP password for logging into a target.

		iscsi?: string
	}
}

ovirt_permission_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_permission_info: {

		// Namespace of the authorization provider, where user/group resides.

		namespace?: string

		// Username of the user to manage. In most LDAPs it's I(uid) of the user, but in Active Directory you must specify I(UPN) of the user.

		user_name?: string

		// Authorization provider of the user/group. In previous versions of oVirt/RHV known as domain.

		authz_name: string

		// Name of the group to manage.

		group_name?: string
	}
}

ovirt_quota :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_quota: {

		// Description of the quota to manage.

		description?: string

		// ID of the quota to manage.

		id?: string

		// Storage grace(hard limit) defined in percentage (1-100).

		storage_grace?: string

		// Storage threshold(soft limit) defined in percentage (0-100).

		storage_threshold?: string

		// List of dictionary of storage limits, which is valid to specific storage.
		// If storage isn't specified it's valid to all storages in system:

		storages?: string

		// Cluster grace(hard limit) defined in percentage (1-100).

		cluster_grace?: string

		// Cluster threshold(soft limit) defined in percentage (0-100).

		cluster_threshold?: string

		// Name of the quota to manage.

		name: string

		// Should the quota be present/absent.

		state?: string

		// List of dictionary of cluster limits, which is valid to specific cluster.
		// If cluster isn't specified it's valid to all clusters in system:

		clusters?: string

		// Name of the datacenter where quota should be managed.

		data_center: string
	}
}

ovirt_tag_info :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	ovirt_tag_info: {

		// Name of the host, which tags should be listed.

		host?: string

		// Name of the tag which should be listed.

		name?: string

		// Name of the VM, which tags should be listed.

		vm?: string
	}
}
