package misc

ovirt :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	ovirt: {

		// Define whether the instance is a server, desktop or high_performance.
		// I(high_performance) is supported since Ansible 2.5 and oVirt/RHV 4.2.

		instance_type?: string

		// Size of the instance's disk in GB.

		instance_disksize?: string

		// Interface type of the disk.

		disk_int?: string

		// The instance's number of CPUs.

		instance_cpus?: string

		// The logical network the machine should belong to.

		instance_network?: string

		// The name of the network interface in oVirt/RHEV.

		instance_nic?: string

		// The Storage Domain where you want to create the instance's disk on.

		sdomain?: string

		// Create, terminate or remove instances.

		state?: string

		// Define whether disk is thin or preallocated.

		disk_alloc?: string

		// Define the instance's number of cores.

		instance_cores?: string

		// Define the instance's Hostname.

		instance_hostname?: string

		// Define the instance's Authorized key.

		instance_key?: string

		// Define the instance's Netmask.

		instance_netmask?: string

		// Password of the user to authenticate with.

		password: string

		// Define the instance's IP.

		instance_ip?: string

		// The name of the instance to use.

		instance_name: string

		// Type of Operating System.

		instance_os?: string

		// The user to authenticate with.

		user: string

		// Define the instance's Domain.

		instance_domain?: string

		// Deploy the image to this oVirt cluster.

		zone?: string

		// The instance's amount of memory in MB.

		instance_mem?: string

		// Define the instance's Root password.

		instance_rootpw?: string

		// The oVirt/RHEV datacenter where you want to deploy to.

		region?: string

		// Whether you want to deploy an image or create an instance from scratch.

		resource_type?: string

		// The url of the oVirt instance.

		url: string

		// The template to use for the instance.

		image?: string

		// Define the instance's Primary DNS server.

		instance_dns?: string
	}
}

proxmox_kvm :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	proxmox_kvm: {

		// Specify if ACPI should be enabled/disabled.

		acpi?: bool

		// Sets the keyboard layout for VNC server.

		keyboard?: string

		// Enable/disable KVM hardware virtualization.

		kvm?: bool

		// VMID for the clone. Used only with clone.
		// If newid is not set, the next available VM ID will be fetched from ProxmoxAPI.

		newid?: string

		// Enables/disables time drift fix.

		tdf?: bool

		// Memory size in MB for instance.

		memory?: string

		// A hash/dictionaries of NUMA topology. C(numa='{"key":"value", "key":"value"}').
		// Keys allowed are - C(numa[n]) where 0 ≤ n ≤ N.
		// Values allowed are - C("cpu="<id[-id];...>",hostnodes="<id[-id];...>",memory="number",policy="(bind|interleave|preferred)"").
		// C(cpus) CPUs accessing this NUMA node.
		// C(hostnodes) Host NUMA nodes to use.
		// C(memory) Amount of memory this NUMA node provides.
		// C(policy) NUMA allocation policy.

		numa?: string

		// A hash/dictionary of serial device to create inside the VM. C('{"key":"value", "key":"value"}').
		// Keys allowed are - serial[n](str; required) where 0 ≤ n ≤ 3.
		// Values allowed are - C((/dev/.+|socket)).
		// /!\ If you pass through a host serial device, it is no longer possible to migrate such machines - use with special care.

		serial?: string

		// Select VGA type. If you want to use high resolution modes (>= 1280x1024x16) then you should use option 'std' or 'vmware'.

		vga?: string

		// Specify the BIOS implementation.

		bios?: string

		// Specify a list of settings you want to delete.

		delete?: string

		// Add the new VM to the specified pool.

		pool?: string

		// Allow reboot. If set to C(yes), the VM exit on reboot.

		reboot?: bool

		// Specifies SMBIOS type 1 fields.

		smbios?: string

		// Specifies the VM ID. Instead use I(name) parameter.
		// If vmid is not set, the next available VM ID will be fetched from ProxmoxAPI.

		vmid?: string

		// Specify if the VM should be automatically restarted after crash (currently ignored in PVE API).

		autostart?: bool

		// Sets maximum tolerated downtime (in seconds) for migrations.

		migrate_downtime?: string

		// Proxmox VE node, where the new VM will be created.
		// Only required for C(state=present).
		// For other states, it will be autodiscovered.

		node?: string

		// Enable/disable the protection flag of the VM. This will enable/disable the remove VM and remove disk operations.

		protection?: bool

		// Specifies the SCSI controller model.

		scsihw?: string

		// Revert a pending change.

		revert?: string

		// Specify emulated CPU type.

		cpu?: string

		// Allow to force stop VM.
		// Can be used only with states C(stopped), C(restarted).

		force?: bool

		// Specifies guest operating system. This is used to enable special optimization/features for specific operating systems.
		// The l26 is Linux 2.6/3.X Kernel.

		ostype?: string

		// Sets the number of CPU sockets. (1 - N).

		sockets?: string

		// Enables/disables the USB tablet device.

		tablet?: bool

		// Sets number of hotplugged vcpus.

		vcpus?: string

		// Specify the password to authenticate with.
		// You can use C(PROXMOX_PASSWORD) environment variable.

		api_password?: string

		// Specify the user to authenticate with.

		api_user: string

		// Specify if PVE should freeze CPU at startup (use 'c' monitor command to start execution).

		freeze?: bool

		// A hash/dictionary of volume used as IDE hard disk or CD-ROM. C(ide='{"key":"value", "key":"value"}').
		// Keys allowed are - C(ide[n]) where 0 ≤ n ≤ 3.
		// Values allowed are - C("storage:size,format=value").
		// C(storage) is the storage identifier where to create the disk.
		// C(size) is the size of the disk in GB.
		// C(format) is the drive's backing file's data format. C(qcow2|raw|subvol).

		ide?: string

		// Sets maximum speed (in MB/s) for migrations.
		// A value of 0 is no limit.

		migrate_speed?: string

		// Creates a virtual hardware watchdog device.

		watchdog?: string

		// The name of the snapshot. Used only with clone.

		snapname?: string

		// Target storage for full clone.

		storage?: string

		// Enables/disables the template.

		template?: bool

		// Specify CPU weight for a VM.
		// You can disable fair-scheduler configuration by setting this to 0

		cpuunits?: string

		// Create a full copy of all disk. This is always done when you clone a normal VM.
		// For VM templates, we try to create a linked clone by default.
		// Used only with clone

		full?: bool

		// Enable/disable hugepages memory.

		hugepages?: string

		// Sets the real time clock to local time.
		// This is enabled by default if ostype indicates a Microsoft OS.

		localtime?: bool

		// Rets amount of memory shares for auto-ballooning. (0 - 50000).
		// The larger the number is, the more memory this VM gets.
		// The number is relative to weights of all other running VMs.
		// Using 0 disables auto-ballooning, this means no limit.

		shares?: string

		// Pass arbitrary arguments to kvm.
		// This option is for experts only!

		args?: string

		// Specify the description for the VM. Only used on the configuration web interface.
		// This is saved as comment inside the configuration file.

		description?: string

		// Specifies whether a VM will be started during system bootup.

		onboot?: bool

		// A hash/dictionary of volume used as sata hard disk or CD-ROM. C(sata='{"key":"value", "key":"value"}').
		// Keys allowed are - C(sata[n]) where 0 ≤ n ≤ 5.
		// Values allowed are -  C("storage:size,format=value").
		// C(storage) is the storage identifier where to create the disk.
		// C(size) is the size of the disk in GB.
		// C(format) is the drive's backing file's data format. C(qcow2|raw|subvol).

		sata?: string

		// A hash/dictionary of volume used as VIRTIO hard disk. C(virtio='{"key":"value", "key":"value"}').
		// Keys allowed are - C(virto[n]) where 0 ≤ n ≤ 15.
		// Values allowed are -  C("storage:size,format=value").
		// C(storage) is the storage identifier where to create the disk.
		// C(size) is the size of the disk in GB.
		// C(format) is the drive's backing file's data format. C(qcow2|raw|subvol).

		virtio?: string

		// Specify if the QEMU Guest Agent should be enabled/disabled.

		agent?: bool

		// Name of VM to be cloned. If C(vmid) is setted, C(clone) can take arbitrary value but required for initiating the clone.

		clone?: string

		// Lock/unlock the VM.

		lock?: string

		// Specifies the VM name. Only used on the configuration web interface.
		// Required only for C(state=present).

		name?: string

		// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

		validate_certs?: bool

		// If C(yes), the VM will be update with new value.
		// Cause of the operations of the API and security reasons, I have disabled the update of the following parameters
		// C(net, virtio, ide, sata, scsi). Per example updating C(net) update the MAC address and C(virtio) create always new disk...

		update?: bool

		// Enable booting from specified disk. C((ide|sata|scsi|virtio)\d+)

		bootdisk?: string

		// Target drive's backing file's data format.
		// Used only with clone

		format?: string

		// Specify a hash/dictionary of map host pci devices into guest. C(hostpci='{"key":"value", "key":"value"}').
		// Keys allowed are - C(hostpci[n]) where 0 ≤ n ≤ N.
		// Values allowed are -  C("host="HOSTPCIID[;HOSTPCIID2...]",pcie="1|0",rombar="1|0",x-vga="1|0"").
		// The C(host) parameter is Host PCI device pass through. HOSTPCIID syntax is C(bus:dev.func) (hexadecimal numbers).
		// C(pcie=boolean) I(default=0) Choose the PCI-express bus (needs the q35 machine model).
		// C(rombar=boolean) I(default=1) Specify whether or not the device's ROM will be visible in the guest's memory map.
		// C(x-vga=boolean) I(default=0) Enable vfio-vga device support.
		// /!\ This option allows direct access to host hardware. So it is no longer possible to migrate such machines - use with special care.

		hostpci?: string

		// Selectively enable hotplug features.
		// This is a comma separated list of hotplug features C('network', 'disk', 'cpu', 'memory' and 'usb').
		// Value 0 disables hotplug completely and value 1 is an alias for the default C('network,disk,usb').

		hotplug?: string

		// Target node. Only allowed if the original VM is on shared storage.
		// Used only with clone

		target?: string

		// Specify the target host of the Proxmox VE cluster.

		api_host: string

		// Specify the amount of RAM for the VM in MB.
		// Using zero disables the balloon driver.

		balloon?: string

		// Specify the boot order -> boot on floppy C(a), hard disk C(c), CD-ROM C(d), or network C(n).
		// You can combine to set order.

		boot?: string

		// A hash/dictionary of volume used as SCSI hard disk or CD-ROM. C(scsi='{"key":"value", "key":"value"}').
		// Keys allowed are - C(sata[n]) where 0 ≤ n ≤ 13.
		// Values allowed are -  C("storage:size,format=value").
		// C(storage) is the storage identifier where to create the disk.
		// C(size) is the size of the disk in GB.
		// C(format) is the drive's backing file's data format. C(qcow2|raw|subvol).

		scsi?: string

		// Startup and shutdown behavior. C([[order=]\d+] [,up=\d+] [,down=\d+]).
		// Order is a non-negative number defining the general startup order.
		// Shutdown in done with reverse ordering.

		startup?: string

		// Specify if to prevent changes if current configuration file has different SHA1 digest.
		// This can be used to prevent concurrent modifications.

		digest?: string

		// Indicates desired state of the instance.
		// If C(current), the current state of the VM will be fetched. You can access it with C(results.status)

		state?: string

		// Timeout for operations.

		timeout?: string

		// Specifies the Qemu machine type.
		// type => C((pc|pc(-i440fx)?-\d+\.\d+(\.pxe)?|q35|pc-q35-\d+\.\d+(\.pxe)?))

		machine?: string

		// A hash/dictionary of network interfaces for the VM. C(net='{"key":"value", "key":"value"}').
		// Keys allowed are - C(net[n]) where 0 ≤ n ≤ N.
		// Values allowed are - C("model="XX:XX:XX:XX:XX:XX",bridge="value",rate="value",tag="value",firewall="1|0",trunks="vlanid"").
		// Model is one of C(e1000 e1000-82540em e1000-82544gc e1000-82545em i82551 i82557b i82559er ne2k_isa ne2k_pci pcnet rtl8139 virtio vmxnet3).
		// C(XX:XX:XX:XX:XX:XX) should be an unique MAC address. This is automatically generated if not specified.
		// The C(bridge) parameter can be used to automatically add the interface to a bridge device. The Proxmox VE standard bridge is called 'vmbr0'.
		// Option C(rate) is used to limit traffic bandwidth from and to this interface. It is specified as floating point number, unit is 'Megabytes per second'.
		// If you specify no bridge, we create a kvm 'user' (NATed) network device, which provides DHCP and DNS services.

		net?: string

		// Ignore locks
		// Only root is allowed to use this option.

		skiplock?: string

		// Specify number of cores per socket.

		cores?: string

		// Specify if CPU usage will be limited. Value 0 indicates no CPU limit.
		// If the computer has 2 CPUs, it has total of '2' CPU time

		cpulimit?: string

		// A hash/dictionary of map host parallel devices. C(parallel='{"key":"value", "key":"value"}').
		// Keys allowed are - (parallel[n]) where 0 ≤ n ≤ 2.
		// Values allowed are - C("/dev/parport\d+|/dev/usb/lp\d+").

		parallel?: string

		// Sets the initial date of the real time clock.
		// Valid format for date are C('now') or C('2016-09-25T16:01:21') or C('2016-09-25').

		startdate?: string
	}
}

proxmox_template :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	proxmox_template: {

		// the host of the Proxmox VE cluster

		api_host: string

		// the user to authenticate with

		api_user: string

		// the template name
		// required only for states C(absent), C(info)

		template?: string

		// timeout for operations

		timeout?: string

		// enable / disable https certificate verification

		validate_certs?: bool

		// the password to authenticate with
		// you can use PROXMOX_PASSWORD environment variable

		api_password?: string

		// content type
		// required only for C(state=present)

		content_type?: string

		// can be used only with C(state=present), exists template will be overwritten

		force?: bool

		// Proxmox VE node, when you will operate with template

		node: string

		// path to uploaded file
		// required only for C(state=present)

		src?: string

		// Indicate desired state of the template

		state?: string

		// target storage

		storage?: string
	}
}

serverless :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	serverless: {

		// Whether or not to force full deployment, equivalent to serverless C(--force) option.

		force?: bool

		// A list of specific functions to deploy.
		// If this is not provided, all functions in the service will be deployed.

		functions?: [...]

		// AWS region to deploy the service to.
		// This parameter defaults to C(us-east-1).

		region?: string

		// The path of a serverless framework binary relative to the 'service_path' eg. node_module/.bin/serverless

		serverless_bin_path?: string

		// Goal state of given stage/project.

		state?: string

		// Whether or not to deploy artifacts after building them.
		// When this option is C(false) all the functions will be built, but no stack update will be run to send them out.
		// This is mostly useful for generating artifacts to be stored/deployed elsewhere.

		deploy?: bool

		// The path to the root of the Serverless Service to be operated on.

		service_path: string

		// The name of the serverless framework project stage to deploy to.
		// This uses the serverless framework default "dev".

		stage?: string

		// Shows all stack events during deployment, and display any Stack Output.

		verbose?: bool
	}
}

terraform :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	terraform: {

		// The path to the root of the Terraform directory with the vars.tf/main.tf/etc to use.

		project_path: string

		// A list of specific resources to target in this plan/application. The resources selected here will also auto-include any dependencies.

		targets?: string

		// The terraform workspace to work with.

		workspace?: string

		// A group of key-values to provide at init stage to the -backend-config parameter.

		backend_config?: string

		// Goal state of given stage/project

		state?: string

		// The path to an existing Terraform state file to use when building plan. If this is not specified, the default `terraform.tfstate` will be used.
		// This option is ignored when plan is specified.

		state_file?: string

		// The path to a variables file for Terraform to fill into the TF configurations.

		variables_file?: string

		// The path of a terraform binary to use, relative to the 'service_path' unless you supply an absolute path.

		binary_path?: string

		// How long to maintain the lock on the statefile, if you use a service that accepts locks (such as S3+DynamoDB).

		lock_timeout?: string

		// A group of key-values to override template variables or those in variables files.

		variables?: string

		// To avoid duplicating infra, if a state file can't be found this will force a `terraform init`. Generally, this should be turned off unless you intend to provision an entirely new Terraform deployment.

		force_init?: bool

		// Enable statefile locking, if you use a service that accepts locks (such as S3+DynamoDB) to store your statefile.

		lock?: bool

		// The path to an existing Terraform plan file to apply. If this is not specified, Ansible will build a new TF plan and execute it. Note that this option is required if 'state' has the 'planned' value.

		plan_file?: string

		// Only works with state = absent
		// If true, the workspace will be deleted after the "terraform destroy" action.
		// The 'default' workspace will not be deleted.

		purge_workspace?: bool
	}
}

virt :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	virt: {

		// start VM at host startup.

		autostart?: bool

		// In addition to state management, various non-idempotent commands are available.

		command?: string

		// name of the guest VM being managed. Note that VM must be previously defined with xml.
		// This option is required unless I(command) is C(list_vms).

		name?: string

		// Note that there may be some lag for state requests like C(shutdown) since these refer only to VM states. After starting a guest, it may not be immediately accessible. state and command are mutually exclusive except when command=list_vms. In this case all VMs in specified state will be listed.

		state?: string

		// libvirt connection uri.

		uri?: string

		// XML document used with the define command.
		// Must be raw XML content using C(lookup). XML cannot be reference to a file.

		xml?: string
	}
}

cloud_init_data_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cloud_init_data_facts: {

		filter?: string

		// Filter facts
	}
}

helm :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	helm: {

		// A map of value options for the chart.

		values?: string

		// A map describing the chart to install. See examples for available options.

		chart?: string

		// Whether to disable hooks during the uninstall process.

		disable_hooks?: bool

		// Tiller's server host.

		host?: string

		// Release name to manage.

		name?: string

		// Kubernetes namespace where the chart should be installed.

		namespace?: string

		// Tiller's server port.

		port?: string

		// Whether to install C(present), remove C(absent), or purge C(purged) a package.

		state?: string
	}
}

virt_pool :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	virt_pool: {

		// in addition to state management, various non-idempotent commands are available. See examples.

		command?: string

		// Pass additional parameters to 'build' or 'delete' commands.

		mode?: string

		// name of the storage pool being managed. Note that pool must be previously defined with xml.

		name?: string

		// specify which state you want a storage pool to be in. If 'active', pool will be started. If 'present', ensure that pool is present but do not change its state; if it's missing, you need to specify xml argument. If 'inactive', pool will be stopped. If 'undefined' or 'absent', pool will be removed from I(libvirt) configuration. If 'deleted', pool contents will be deleted and then pool undefined.

		state?: string

		// I(libvirt) connection uri.

		uri?: string

		// XML document used with the define command.

		xml?: string

		// Specify if a given storage pool should be started automatically on system boot.

		autostart?: bool
	}
}

xenserver_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	xenserver_facts: {
	}
}

virt_net :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	virt_net: {

		// specify which state you want a network to be in. If 'active', network will be started. If 'present', ensure that network is present but do not change its state; if it's missing, you need to specify xml argument. If 'inactive', network will be stopped. If 'undefined' or 'absent', network will be removed from I(libvirt) configuration.

		state?: string

		// libvirt connection uri.

		uri?: string

		// XML document used with the define command.

		xml?: string

		// Specify if a given network should be started automatically on system boot.

		autostart?: bool

		// in addition to state management, various non-idempotent commands are available. See examples. Modify was added in version 2.1

		command?: string

		// name of the network being managed. Note that network must be previously defined with xml.

		name: string
	}
}

proxmox :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	proxmox: {

		// Specify number of cores per socket.

		cores?: string

		// specifies network interfaces for the container. As a hash/dictionary defining interfaces.

		netif?: string

		// Indicate desired state of the instance

		state?: string

		// the instance id
		// if not set, the next available VM ID will be fetched from ProxmoxAPI.
		// if not set, will be fetched from PromoxAPI based on the hostname

		vmid?: string

		// numbers of allocated cpus for instance

		cpus?: string

		// memory size in MB for instance

		memory?: string

		// timeout for operations

		timeout?: string

		// Indicate if the container should be unprivileged

		unprivileged?: bool

		// specifies additional mounts (separate disks) for the container. As a hash/dictionary defining mount points

		mounts?: string

		// sets DNS server IP address for a container

		nameserver?: string

		// Public key to add to /root/.ssh/authorized_keys. This was added on Proxmox 4.2, it is ignored for earlier versions

		pubkey?: string

		// sets DNS search domain for a container

		searchdomain?: string

		// target storage

		storage?: string

		// the user to authenticate with

		api_user: string

		// CPU weight for a VM

		cpuunits?: string

		// specifies whether a VM will be started during system bootup

		onboot?: bool

		// the template for VM creating
		// required only for C(state=present)

		ostemplate?: string

		// the password to authenticate with
		// you can use PROXMOX_PASSWORD environment variable

		api_password?: string

		// forcing operations
		// can be used only with states C(present), C(stopped), C(restarted)
		// with C(state=present) force option allow to overwrite existing container
		// with states C(stopped) , C(restarted) allow to force stop instance

		force?: bool

		// the instance hostname
		// required only for C(state=present)
		// must be unique if vmid is not passed

		hostname?: string

		// enable / disable https certificate verification

		validate_certs?: bool

		// swap memory size in MB for instance

		swap?: string

		// the host of the Proxmox VE cluster

		api_host: string

		// specifies the address the container will be assigned

		ip_address?: string

		// hard disk size in GB for instance

		disk?: string

		// Proxmox VE node, when new VM will be created
		// required only for C(state=present)
		// for another states will be autodiscovered

		node?: string

		// the instance root password
		// required only for C(state=present)

		password?: string

		// Proxmox VE resource pool

		pool?: string
	}
}

rhevm :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rhevm: {

		// The name of the VM.

		name?: string

		// The operating system option in RHEV/oVirt.

		osver?: string

		// The password for user authentication.

		password?: string

		// The RHEV/oVirt cluster in which you want you VM to start.

		cluster?: string

		// This option uses complex arguments and is a list of disks with the options name, size and domain.

		disks?: [...]

		// This option uses complex arguments and is a list of interfaces with the options name and vlan.

		ifaces?: [...]

		// The template to use for the VM.

		image?: string

		// A boolean switch to make a secure or insecure connection to the server.

		insecure_api?: bool

		// The timeout you wish to define for power actions.
		// When I(state = 'up').
		// When I(state = 'down').
		// When I(state = 'restarted').

		timeout?: int

		// The amount of memory you want your VM to use (in GB).

		vmmem?: int

		// To define if the VM is a server or desktop.

		type?: string

		// The host you wish your VM to run on.

		vmhost?: string

		// This option uses complex arguments and is a list of items that specify the bootorder.

		boot_order?: [...]

		// The CD you wish to have mounted on the VM when I(state = 'CD').

		cd_drive?: string

		// This parameter is used to configure the CPU share.

		cpu_share?: int

		// The port on which the API is reachable.

		port?: int

		// The name/IP of your RHEV-m/oVirt instance.

		server?: string

		// The RHEV/oVirt datacenter in which you want you VM to start.

		datacenter?: string

		// This serves to create/remove/update or powermanage your VM.

		state?: string

		// The number of CPUs you want in your VM.

		vmcpu?: int

		// This option sets the delete protection checkbox.

		del_prot?: bool

		// The minimum amount of memory you wish to reserve for this system.

		mempol?: int

		// The user to authenticate with.

		user?: string

		// To make your VM High Available.

		vm_ha?: bool
	}
}
