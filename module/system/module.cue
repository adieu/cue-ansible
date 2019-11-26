package system

gconftool2 :: {

	// The action to take upon the key/value.

	state: string

	// Preference keys typically have simple values such as strings, integers, or lists of strings and integers. This is ignored if the state is "get". See man gconftool-2(1)

	value?: string

	// The type of value being set. This is ignored if the state is "get".

	value_type?: string

	// Specify a configuration source to use rather than the default path. See man gconftool-2(1)

	config_source?: string

	// Access the config database directly, bypassing server.  If direct is specified then the config_source must be specified as well. See man gconftool-2(1)

	direct?: bool

	// A GConf preference key is an element in the GConf repository that corresponds to an application preference. See man gconftool-2(1)

	key: string
}

lvg :: {

	// List of comma-separated devices to use as physical devices in this volume group.
	// Required when creating or resizing volume group.
	// The module will take care of running pvcreate if needed.

	pvs?: [..._]

	// Control if the volume group exists.

	state?: string

	// The name of the volume group.

	vg: string

	// Additional options to pass to C(vgcreate) when creating the volume group.

	vg_options?: string

	// If C(yes), allows to remove volume group with logical volumes.

	force?: bool

	// The size of the physical extent. I(pesize) must be a power of 2 of at least 1 sector (where the sector size is the largest sector size of the PVs currently used in the VG), or at least 128KiB.
	// Since Ansible 2.6, pesize can be optionally suffixed by a UNIT (k/K/m/M/g/G), default unit is megabyte.

	pesize?: string

	// Additional options to pass to C(pvcreate) when creating the volume group.

	pv_options?: string
}

seboolean :: {

	// Desired boolean value

	state: bool

	// Useful for scenarios (chrooted environment) that you can't get the real SELinux state.

	ignore_selinux_state?: bool

	// Name of the boolean to configure.

	name: string

	// Set to C(yes) if the boolean setting should survive a reboot.

	persistent?: bool
}

sysctl :: {

	// Use this option to ignore errors about unknown keys.

	ignoreerrors?: bool

	// The dot-separated path (aka I(key)) specifying the sysctl variable.

	name: string

	// If C(yes), performs a I(/sbin/sysctl -p) if the C(sysctl_file) is updated. If C(no), does not reload I(sysctl) even if the C(sysctl_file) is updated.

	reload?: bool

	// Whether the entry should be present or absent in the sysctl file.

	state?: string

	// Specifies the absolute path to C(sysctl.conf), if not C(/etc/sysctl.conf).

	sysctl_file?: string

	// Verify token value with the sysctl command and set with -w if necessary

	sysctl_set?: bool

	// Desired value of the sysctl key.

	value?: string
}

syspatch :: {

	// Apply all available system patches

	apply?: string

	// Revert system patches

	revert?: string
}

xfconf :: {

	// A Xfconf preference channel is a top-level tree key, inside of the Xfconf repository that corresponds to the location for which all application properties/keys are stored. See man xfconf-query(1)

	channel: string

	// A Xfce preference key is an element in the Xfconf repository that corresponds to an application preference. See man xfconf-query(1)

	property: string

	// The action to take upon the property/value.

	state?: string

	// Preference properties typically have simple values such as strings, integers, or lists of strings and integers. This is ignored if the state is "get". See man xfconf-query(1)

	value?: string

	// The type of value being set. This is ignored if the state is "get".

	value_type?: string
}

kernel_blacklist :: {

	// If specified, use this blacklist file instead of C(/etc/modprobe.d/blacklist-ansible.conf).

	blacklist_file?: string

	// Name of kernel module to black- or whitelist.

	name: string

	// Whether the module should be present in the blacklist or absent.

	state?: string
}

make :: {

	// Change to this directory before running make.

	chdir: string

	// Use a custom Makefile.

	file?: string

	// Any extra parameters to pass to make.

	params?: {...}

	// The target to run.
	// Typically this would be something like C(install),C(test) or C(all)."

	target?: string
}

crypttab :: {

	// Name of the encrypted block device as it appears in the C(/etc/crypttab) file, or optionally prefixed with C(/dev/mapper/), as it appears in the filesystem. I(/dev/mapper/) will be stripped from I(name).

	name: string

	// A comma-delimited list of options. See C(crypttab(5) ) for details.

	opts?: string

	// Encryption password, the path to a file containing the password, or C(-) or unset if the password should be entered at boot.

	password?: string

	// Path to file to use instead of C(/etc/crypttab).
	// This might be useful in a chroot environment.

	path?: string

	// Use I(present) to add a line to C(/etc/crypttab) or update its definition if already present.
	// Use I(absent) to remove a line with matching I(name).
	// Use I(opts_present) to add options to those already present; options with different values will be updated.
	// Use I(opts_absent) to remove options from the existing set.

	state: string

	// Path to the underlying block device or file, or the UUID of a block-device prefixed with I(UUID=).

	backing_device?: string
}

java_keystore :: {

	// Certificate that should be used to create the key store.

	certificate: string

	// Absolute path where the jks should be generated.

	dest: string

	// Key store will be created even if it already exists.

	force?: bool

	// Name of the group that should own jks file.

	group?: string

	// Mode the file should be.

	mode?: string

	// Password that should be used to secure the key store.

	password: string

	// Name of the certificate.

	name: string

	// Name of the user that should own jks file.

	owner?: string

	// Private key that should be used to create the key store.

	private_key: string
}

sefcontext :: {

	// Reload SELinux policy after commit.
	// Note that this does not apply SELinux file contexts to existing files.

	reload?: bool

	// SELinux range for the specified target.

	selevel?: string

	// SELinux type for the specified target.

	setype: string

	// SELinux user for the specified target.

	seuser?: string

	// Whether the SELinux file context must be C(absent) or C(present).

	state?: string

	// Target path (expression).

	target: string

	// The file type that should have SELinux contexts applied.
	// The following file type options are available:
	// C(a) for all files,
	// C(b) for block devices,
	// C(c) for character devices,
	// C(d) for directories,
	// C(f) for regular files,
	// C(l) for symbolic links,
	// C(p) for named pipes,
	// C(s) for socket files.

	ftype?: string

	// Useful for scenarios (chrooted environment) that you can't get the real SELinux state.

	ignore_selinux_state?: bool
}

aix_inittab :: {

	// Runlevel of the entry.

	runlevel: string

	// Whether the entry should be present or absent in the inittab file.

	state?: string

	// Action what the init has to do with this entry.

	action: string

	// What command has to run.

	command: string

	// After which inittabline should the new entry inserted.

	insertafter?: string

	// Name of the inittab entry.

	name: string
}

ufw :: {

	// Insert the corresponding rule as rule number NUM.
	// Note that ufw numbers rules starting with 1.

	insert?: int

	// TCP/IP protocol.

	proto?: string

	// Delete rule.

	delete?: bool

	// Allows to interpret the index in I(insert) relative to a position.
	// C(zero) interprets the rule number as an absolute index (i.e. 1 is the first rule).
	// C(first-ipv4) interprets the rule number relative to the index of the first IPv4 rule, or relative to the position where the first IPv4 rule would be if there is currently none.
	// C(last-ipv4) interprets the rule number relative to the index of the last IPv4 rule, or relative to the position where the last IPv4 rule would be if there is currently none.
	// C(first-ipv6) interprets the rule number relative to the index of the first IPv6 rule, or relative to the position where the first IPv6 rule would be if there is currently none.
	// C(last-ipv6) interprets the rule number relative to the index of the last IPv6 rule, or relative to the position where the last IPv6 rule would be if there is currently none.

	insert_relative_to?: string

	// Toggles logging. Logged packets use the LOG_KERN syslog facility.

	logging?: string

	// Add a comment to the rule. Requires UFW version >=0.35.

	comment?: string

	// Specify interface for rule.

	interface?: string

	// Apply the rule to routed/forwarded packets.

	route?: bool

	// Destination IP address.

	to_ip?: string

	// Select direction for a rule or default policy command.

	direction?: string

	// Source IP address.

	from_ip?: string

	// Source port.

	from_port?: string

	// Log new connections matched to this rule

	log?: bool

	// Use profile located in C(/etc/ufw/applications.d).

	name?: string

	// Add firewall rule

	rule?: string

	// C(enabled) reloads firewall and enables firewall on boot.
	// C(disabled) unloads firewall and disables firewall on boot.
	// C(reloaded) reloads firewall.
	// C(reset) disables and resets firewall to installation defaults.

	state?: string

	// Destination port.

	to_port?: string

	// Change the default policy for incoming or outgoing traffic.

	default?: string
}

vdo :: {

	// Specifies the number of threads across which to subdivide parts of the VDO processing based on logical block addresses.  Valid values are integer values from 1 to 100 (lower numbers are preferable due to overhead). The default is 1.  Existing volumes will maintain their previously configured setting unless a different value is specified in the playbook.

	logicalthreads?: string

	// The name of the VDO volume.

	name: string

	// Whether this VDO volume should be "present" or "absent". If a "present" VDO volume does not exist, it will be created.  If a "present" VDO volume already exists, it will be modified, by updating the configuration, which will take effect when the VDO volume is restarted. Not all parameters of an existing VDO volume can be modified; the "statusparamkeys" list contains the parameters that can be modified after creation. If an "absent" VDO volume does not exist, it will not be removed.

	state: string

	// Specifies the write policy of the VDO volume.  The 'sync' mode acknowledges writes only after data is on stable storage.  The 'async' mode acknowledges writes when data has been cached for writing to stable storage.  The default (and highly recommended) 'auto' mode checks the storage device to determine whether it supports flushes.  Devices that support flushes will result in a VDO volume in 'async' mode, while devices that do not support flushes will run in sync mode. Existing volumes will maintain their previously configured setting unless a different value is specified in the playbook.

	writepolicy?: string

	// Configures whether compression is enabled.  The default for a created volume is 'enabled'.  Existing volumes will maintain their previously configured setting unless a different value is specified in the playbook.

	compression?: string

	// Specifies whether to attempt to execute a growphysical operation, if there is enough unused space on the device.  A growphysical operation will be executed if there is at least 64 GB of free space, relative to the previous physical size of the affected VDO volume.

	growphysical?: bool

	// Specifies the amount of index memory in gigabytes.  The default is 0.25.  The special decimal values 0.25, 0.5, and 0.75 can be used, as can any positive integer. This option is only available when creating a new volume, and cannot be changed for an existing volume.

	indexmem?: string

	// Specifies the index mode of the Albireo index.  The default is 'dense', which has a deduplication window of 1 GB of index memory per 1 TB of incoming data, requiring 10 GB of index data on persistent storage. The 'sparse' mode has a deduplication window of 1 GB of index memory per 10 TB of incoming data, but requires 100 GB of index data on persistent storage.  This option is only available when creating a new volume, and cannot be changed for an existing volume.

	indexmode?: string

	// Specifies the number of threads to use for acknowledging completion of requested VDO I/O operations. Valid values are integer values from 1 to 100 (lower numbers are preferable due to overhead).  The default is 1.  Existing volumes will maintain their previously configured setting unless a different value is specified in the playbook.

	ackthreads?: string

	// Specifies the number of threads to use for submitting I/O operations to the storage device.  Valid values are integer values from 1 to 100 (lower numbers are preferable due to overhead).  The default is 4. Existing volumes will maintain their previously configured setting unless a different value is specified in the playbook.

	biothreads?: string

	// Specifies the extra VDO device read cache size in megabytes.  This is in addition to a system-defined minimum.  Using a value with a suffix of K, M, G, or T is optional.  The default value is 0.  1.125 MB of memory per bio thread will be used per 1 MB of read cache specified (for example, a VDO volume configured with 4 bio threads will have a read cache memory usage overhead of 4.5 MB per 1 MB of read cache specified). Existing volumes will maintain their previously configured setting unless a different value is specified in the playbook.
	// The read cache feature is available in VDO 6.1 and older.

	readcachesize?: string

	// Enables 512-byte emulation mode, allowing drivers or filesystems to access the VDO volume at 512-byte granularity, instead of the default 4096-byte granularity. Default is 'disabled'; only recommended when a driver or filesystem requires 512-byte sector level access to a device.  This option is only available when creating a new volume, and cannot be changed for an existing volume.

	emulate512?: bool

	// The size of the increment by which the physical size of a VDO volume is grown, in megabytes (or may be issued with an LVM-style suffix of K, M, G, or T).  Must be a power of two between 128M and 32G.  The default is 2G, which supports volumes having a physical size up to 16T. The maximum, 32G, supports a physical size of up to 256T. This option is only available when creating a new volume, and cannot be changed for an existing volume.

	slabsize?: string

	// The "activate" status for a VDO volume.  If this is set to "no", the VDO volume cannot be started, and it will not start on system startup.  However, on initial creation, a VDO volume with "activated" set to "off" will be running, until stopped.  This is the default behavior of the "vdo create" command; it provides the user an opportunity to write a base amount of metadata (filesystem, LVM headers, etc.) to the VDO volume prior to stopping the volume, and leaving it deactivated until ready to use.

	activated?: bool

	// The amount of memory allocated for caching block map pages, in megabytes (or may be issued with an LVM-style suffix of K, M, G, or T).  The default (and minimum) value is 128M.  The value specifies the size of the cache; there is a 15% memory usage overhead. Each 1.25G of block map covers 1T of logical blocks, therefore a small amount of block map cache memory can cache a significantly large amount of block map data.  Existing volumes will maintain their previously configured setting unless a different value is specified in the playbook.

	blockmapcachesize?: string

	// Specifies the number of threads to use for CPU-intensive work such as hashing or compression.  Valid values are integer values from 1 to 100 (lower numbers are preferable due to overhead).  The default is 2. Existing volumes will maintain their previously configured setting unless a different value is specified in the playbook.

	cputhreads?: string

	// Configures whether deduplication is enabled.  The default for a created volume is 'enabled'.  Existing volumes will maintain their previously configured setting unless a different value is specified in the playbook.

	deduplication?: string

	// Whether this VDO volume is running.
	// A VDO volume must be activated in order to be started.

	running?: bool

	// The full path of the device to use for VDO storage.
	// This is required if "state" is "present".

	device?: string

	// The logical size of the VDO volume (in megabytes, or LVM suffix format).  If not specified for a new volume, this defaults to the same size as the underlying storage device, which is specified in the 'device' parameter. Existing volumes will maintain their size if the logicalsize parameter is not specified, or is smaller than or identical to the current size.  If the specified size is larger than the current size, a growlogical operation will be performed.

	logicalsize?: string

	// Specifies the number of threads across which to subdivide parts of the VDO processing based on physical block addresses.  Valid values are integer values from 1 to 16 (lower numbers are preferable due to overhead). The physical space used by the VDO volume must be larger than (slabsize * physicalthreads).  The default is 1.  Existing volumes will maintain their previously configured setting unless a different value is specified in the playbook.

	physicalthreads?: string

	// Enables or disables the read cache.  The default is 'disabled'.  Choosing 'enabled' enables a read cache which may improve performance for workloads of high deduplication, read workloads with a high level of compression, or on hard disk storage.  Existing volumes will maintain their previously configured setting unless a different value is specified in the playbook.
	// The read cache feature is available in VDO 6.1 and older.

	readcache?: string
}

gather_facts :: {

	// A toggle that controls if the fact modules are executed in parallel or serially and in order. This can guarantee the merge order of module facts at the expense of performance.
	// By default it will be true if more than one fact module is used.

	parallel?: bool
}

locale_gen :: {

	// Whether the locale shall be present.

	state?: string

	// Name and encoding of the locale, such as "en_GB.UTF-8".

	name: string
}

ohai :: {
}

selogin :: {

	// Run independent of selinux runtime state

	ignore_selinux_state?: bool

	// a Linux user

	login: string

	// Reload SELinux policy after commit.

	reload?: string

	// MLS/MCS Security Range (MLS/MCS Systems only) SELinux Range for SELinux login mapping defaults to the SELinux user record range.

	selevel?: string

	// SELinux user name

	seuser: string

	// Desired mapping value.

	state: string
}

authorized_key :: {

	// Follow path symlink instead of replacing it.

	follow?: bool

	// Whether this module should manage the directory of the authorized key file.
	// If set to C(yes), the module will create the directory, as well as set the owner and permissions of an existing directory.
	// Be sure to set C(manage_dir=no) if you are using an alternate directory for authorized_keys, as set with C(path), since you could lock yourself out of SSH access.
	// See the example below.

	manage_dir?: bool

	// Alternate path to the authorized_keys file.
	// When unset, this value defaults to I(~/.ssh/authorized_keys).

	path?: string

	// The username on the remote host whose authorized_keys file will be modified.

	user: string

	// Whether the given key (with the given key_options) should or should not be in the file.

	state?: string

	// This only applies if using a https url as the source of the keys.
	// If set to C(no), the SSL certificates will not be validated.
	// This should only set to C(no) used on personally controlled sites using self-signed certificates as it avoids verifying the source site.
	// Prior to 2.1 the code worked as if this was set to C(yes).

	validate_certs?: bool

	// Change the comment on the public key.
	// Rewriting the comment is useful in cases such as fetching it from GitHub or GitLab.
	// If no comment is specified, the existing comment will be kept.

	comment?: string

	// Whether to remove all other non-specified keys from the authorized_keys file.
	// Multiple keys can be specified in a single C(key) string value by separating them by newlines.
	// This option is not loop aware, so if you use C(with_) , it will be exclusive per iteration of the loop.
	// If you want multiple keys in the file you need to pass them all to C(key) in a single batch as mentioned above.

	exclusive?: bool

	// The SSH public key(s), as a string or (since Ansible 1.9) url (https://github.com/username.keys).

	key: string

	// A string of ssh key options to be prepended to the key in the authorized_keys file.

	key_options?: string
}

capabilities :: {

	// Desired capability to set (with operator and flags, if state is C(present)) or remove (if state is C(absent))

	capability: string

	// Specifies the path to the file to be managed.

	path: string

	// Whether the entry should be present or absent in the file's capabilities.

	state?: string
}

group :: {

	// Forces the use of "local" command alternatives on platforms that implement it.
	// This is useful in environments that use centralized authentication when you want to manipulate the local groups. (e.g. it uses C(lgroupadd) instead of C(groupadd)).
	// This requires that these commands exist on the targeted host, otherwise it will be a fatal error.

	local?: bool

	// Name of the group to manage.

	name: string

	// This option allows to change the group ID to a non-unique value. Requires C(gid).
	// Not supported on macOS or BusyBox distributions.

	non_unique?: bool

	// Whether the group should be present or not on the remote host.

	state?: string

	// If I(yes), indicates that the group created is a system group.

	system?: bool

	// Optional I(GID) to set for the group.

	gid?: int
}

hostname :: {

	// Name of the host

	name: string

	// Which strategy to use to update the hostname.
	// If not set we try to autodetect, but this can be problematic, specially with containers as they can present misleading information.

	use?: string
}

listen_ports_facts :: {
}

puppet :: {

	// Toggles use_srv_records flag

	use_srv_records?: bool

	// Override puppet.conf noop mode.
	// When C(yes), run Puppet agent with C(--noop) switch set.
	// When C(no), run Puppet agent with C(--no-noop) switch set.
	// When unset (default), use default or puppet.conf value if defined.

	noop?: bool

	// The hostname of the puppetmaster to contact.

	puppetmaster?: string

	// A list of puppet tags to be used.

	tags?: [..._]

	// How long to wait for I(puppet) to finish.

	timeout?: string

	// Print extra information.

	verbose?: bool

	// The name to use when handling certificates.

	certname?: string

	// Basename of the facter output file.

	facter_basename?: string

	// Path to the manifest file to run puppet apply on.

	manifest?: string

	// A dict of values to pass in as persistent external facter facts.

	facts?: {...}

	// Where the puppet logs should go, if puppet apply is being used.
	// C(all) will go to both C(stdout) and C(syslog).

	logdest?: string

	// Path to an alternate location for puppet modules.

	modulepath?: string

	// Whether to print a transaction summary.

	summarize?: bool

	// Enable full debugging.

	debug?: bool

	// Puppet environment to be used.

	environment?: string

	// Execute a specific piece of Puppet code.
	// It has no effect with a puppetmaster.

	execute?: string
}

runit :: {

	// Whether the service is enabled or not, if disabled it also implies stopped.

	enabled?: bool

	// Name of the service to manage.

	name: string

	// directory runsv watches for services

	service_dir?: string

	// directory where services are defined, the source of symlinks to service_dir.

	service_src?: string

	// C(started)/C(stopped) are idempotent actions that will not run commands unless necessary.  C(restarted) will always bounce the service (sv restart) and C(killed) will always bounce the service (sv force-stop). C(reloaded) will send a HUP (sv reload). C(once) will run a normally downed sv once (sv once), not really an idempotent operation.

	state?: string
}

selinux_permissive :: {

	// The domain that will be added or removed from the list of permissive domains.

	domain: string

	// Disable reloading of the SELinux policy after making change to a domain's permissive setting.
	// The default is C(no), which causes policy to be reloaded when a domain changes state.
	// Reloading the policy does not work on older versions of the C(policycoreutils-python) library, for example in EL 6."

	no_reload?: bool

	// Indicate if the domain should or should not be set as permissive.

	permissive: bool

	// Name of the SELinux policy store to use.

	store?: string
}

solaris_zone :: {

	// Extra options to the zoneadm attach command. For example, this can be used to specify whether a minimum or full update of packages is required and if any packages need to be deleted. For valid values, see zoneadm(1M)

	attach_options?: string

	// Extra options to the zonecfg(1M) create command.

	create_options?: string

	// Extra options to the zoneadm(1M) install command. To automate Solaris 11 zone creation, use this to specify the profile XML file, e.g. install_options="-c sc_profile.xml"

	install_options?: string

	// Zone name.

	name: string

	// The password hash for the root account. If not specified, the zone's root account will not have a password.

	root_password?: string

	// C(present), configure and install the zone.
	// C(installed), synonym for C(present).
	// C(running), if the zone already exists, boot it, otherwise, configure and install the zone first, then boot it.
	// C(started), synonym for C(running).
	// C(stopped), shutdown a zone.
	// C(absent), destroy the zone.
	// C(configured), configure the ready so that it's to be attached.
	// C(attached), attach a zone, but do not boot it.
	// C(detached), shutdown and detach a zone

	state: string

	// Timeout, in seconds, for zone to boot.

	timeout?: int

	// The zonecfg configuration commands for this zone. See zonecfg(1M) for the valid options and syntax. Typically this is a list of options separated by semi-colons or new lines, e.g. "set auto-boot=true;add net;set physical=bge0;set address=10.1.1.1;end"

	config?: string

	// The path where the zone will be created. This is required when the zone is created, but not used otherwise.

	path?: string

	// Whether to create a sparse (C(true)) or whole root (C(false)) zone.

	sparse?: bool
}

user :: {

	// List of groups user will be added to. When set to an empty string C(''), the user is removed from all groups except the primary group.
	// Before Ansible 2.3, the only input format allowed was a comma separated string.
	// Mutually exclusive with C(local)

	groups?: [..._]

	// Optionally set the user's home directory.

	home?: string

	// Sets the profile of the user.
	// Does nothing when used with other platforms.
	// Can set multiple profiles using comma separation.
	// To delete all the profiles, use C(profile='').
	// Currently supported on Illumos/Solaris.

	profile?: string

	// Optionally specify number of bits in SSH key to create.

	ssh_key_bits?: int

	// Optionally specify the SSH key filename.
	// If this is a relative filename then it will be relative to the user's home directory.
	// This parameter defaults to I(.ssh/id_rsa).

	ssh_key_file?: string

	// Whether the account should exist or not, taking action if the state is different from what is stated.

	state?: string

	// When creating an account C(state=present), setting this to C(yes) makes the user a system account.
	// This setting cannot be changed on existing users.

	system?: bool

	// This only affects C(state=absent), it forces removal of the user and associated directories on supported platforms.
	// The behavior is the same as C(userdel --force), check the man page for C(userdel) on your system for details and support.
	// When used with C(generate_ssh_key=yes) this forces an existing key to be overwritten.

	force?: bool

	// Whether to generate a SSH key for the user in question.
	// This will B(not) overwrite an existing SSH key unless used with C(force=yes).

	generate_ssh_key?: bool

	// Optionally sets the user's primary group (takes a group name).

	group?: string

	// Lock the password (usermod -L, pw lock, usermod -C).
	// BUT implementation differs on different platforms, this option does not always mean the user cannot login via other methods.
	// This option does not disable the user, only lock the password. Do not change the password in the same task.
	// Currently supported on Linux, FreeBSD, DragonFlyBSD, NetBSD, OpenBSD.

	password_lock?: bool

	// Optionally set the user's shell.
	// On macOS, before Ansible 2.5, the default shell for non-system users was C(/usr/bin/false). Since Ansible 2.5, the default shell for non-system users on macOS is C(/bin/bash).
	// On other operating systems, the default shell is determined by the underlying tool being used. See Notes for details.

	shell?: string

	// Set a passphrase for the SSH key.
	// If no passphrase is provided, the SSH key will default to having no passphrase.

	ssh_key_passphrase?: string

	// Optionally sets the I(UID) of the user.

	uid?: int

	// Optionally sets the user's login class, a feature of most BSD OSs.

	login_class?: string

	// Optionally set a home skeleton directory.
	// Requires C(create_home) option!

	skeleton?: string

	// Unless set to C(no), a home directory will be made for the user when the account is created or if the home directory does not exist.
	// Changed from C(createhome) to C(create_home) in Ansible 2.5.

	create_home?: bool

	// Forces the use of "local" command alternatives on platforms that implement it.
	// This is useful in environments that use centralized authentification when you want to manipulate the local users (i.e. it uses C(luseradd) instead of C(useradd)).
	// This will check C(/etc/passwd) for an existing account before invoking commands. If the local account database exists somewhere other than C(/etc/passwd), this setting will not work properly.
	// This requires that the above commands as well as C(/etc/passwd) must exist on the target host, otherwise it will be a fatal error.
	// Mutually exclusive with C(groups) and C(append)

	local?: bool

	// Name of the user to create, remove or modify.

	name: string

	// Optionally when used with the -u option, this option allows to change the user ID to a non-unique value.

	non_unique?: bool

	// C(always) will update passwords if they differ.
	// C(on_create) will only set the password for newly created users.

	update_password?: string

	// Optionally sets the description (aka I(GECOS)) of user account.

	comment?: string

	// An expiry time for the user in epoch, it will be ignored on platforms that do not support this.
	// Currently supported on GNU/Linux, FreeBSD, and DragonFlyBSD.
	// Since Ansible 2.6 you can remove the expiry time specify a negative value. Currently supported on GNU/Linux and FreeBSD.

	expires?: float

	// macOS only, optionally hide the user from the login window and system preferences.
	// The default will be C(yes) if the I(system) option is used.

	hidden?: bool

	// This only affects C(state=absent), it attempts to remove directories associated with the user.
	// The behavior is the same as C(userdel --remove), check the man page for details and support.

	remove?: bool

	// If C(yes), add the user to the groups specified in C(groups).
	// If C(no), user will only be added to the groups specified in C(groups), removing them from all other groups.
	// Mutually exclusive with C(local)

	append?: bool

	// Sets the authorization of the user.
	// Does nothing when used with other platforms.
	// Can set multiple authorizations using comma separation.
	// To delete all authorizations, use C(authorization='').
	// Currently supported on Illumos/Solaris.

	authorization?: string

	// If set to C(yes) when used with C(home: ), attempt to move the user's old home directory to the specified directory if it isn't there already and the old home exists.

	move_home?: bool

	// Optionally set the user's password to this crypted value.
	// On macOS systems, this value has to be cleartext. Beware of security issues.
	// To create a disabled account on Linux systems, set this to C('!') or C('*').
	// To create a disabled account on OpenBSD, set this to C('*************').
	// See U(https://docs.ansible.com/ansible/faq.html#how-do-i-generate-encrypted-passwords-for-the-user-module) for details on various ways to generate these password values.

	password?: string

	// Optionally specify the type of SSH key to generate.
	// Available SSH key types will depend on implementation present on target host.

	ssh_key_type?: string

	// Sets the role of the user.
	// Does nothing when used with other platforms.
	// Can set multiple roles using comma separation.
	// To delete all roles, use C(role='').
	// Currently supported on Illumos/Solaris.

	role?: string

	// Optionally sets the seuser type (user_u) on selinux enabled systems.

	seuser?: string

	// Optionally define the comment for the SSH key.

	ssh_key_comment?: string
}

aix_lvg :: {

	// Control if the volume group exists and volume group AIX state varyonvg C(varyon) or varyoffvg C(varyoff).

	state?: string

	// The name of the volume group.

	vg: string

	// The type of the volume group.

	vg_type?: string

	// Force volume group creation.

	force?: bool

	// The size of the physical partition in megabytes.

	pp_size?: int

	// List of comma-separated devices to use as physical devices in this volume group.
	// Required when creating or extending (C(present) state) the volume group.
	// If not informed reducing (C(absent) state) the volume group will be removed.

	pvs?: [..._]
}

aix_filesystem :: {

	// Specifies attributes for files system separated by comma.

	attributes?: [..._]

	// Logical volume (LV) device name or remote export device to create a NFS file system.
	// It is used to create a file system on an already existing logical volume or the exported NFS file system.
	// If not mentioned a new logical volume name will be created following AIX standards (LVM).

	device?: string

	// Specifies the virtual file system type.

	fs_type?: string

	// Specifies the mount group.

	mount_group?: string

	// Removes the mount point directory when used with state C(absent).

	rm_mount_point?: bool

	// Specifies the file system size.
	// For already C(present) it will be resized.
	// 512-byte blocks, Megabytes or Gigabytes. If the value has M specified it will be in Megabytes. If the value has G specified it will be in Gigabytes.
	// If no M or G the value will be 512-byte blocks.
	// If "+" is specified in begin of value, the value will be added.
	// If "-" is specified in begin of value, the value will be removed.
	// If "+" or "-" is not specified, the total value will be the specified.
	// Size will respects the LVM AIX standards.

	size?: string

	// Controls the file system state.
	// C(present) check if file system exists, creates or resize.
	// C(absent) removes existing file system if already C(unmounted).
	// C(mounted) checks if the file system is mounted or mount the file system.
	// C(unmounted) check if the file system is unmounted or unmount the file system.

	state: string

	// Specifies whether the file system is to be processed by the accounting subsystem.

	account_subsystem?: bool

	// Specifies the mount point, which is the directory where the file system will be mounted.

	filesystem: string

	// Specifies a Network File System (NFS) server.

	nfs_server?: string

	// Set file system permissions. C(rw) (read-write) or C(ro) (read-only).

	permissions?: string

	// Specifies an existing volume group (VG).

	vg?: string

	// File system is automatically mounted at system restart.

	auto_mount?: bool
}

cron :: {

	// Minute when the job should run ( 0-59, *, */2, etc )

	minute?: string

	// Description of a crontab entry or, if env is set, the name of environment variable.
	// Required if C(state=absent).
	// Note that if name is not set and C(state=present), then a new crontab entry will always be created, regardless of existing ones.
	// This parameter will always be required in future releases.

	name?: string

	// Special time specification nickname.

	special_time?: string

	// Day of the month the job should run ( 1-31, *, */2, etc )

	day?: string

	// If set, manages a crontab's environment variable.
	// New variables are added on top of crontab.
	// C(name) and C(value) parameters are the name and the value of environment variable.

	env?: bool

	// If the job should be run at reboot. This option is deprecated. Users should use special_time.

	reboot?: bool

	// Whether to ensure the job or environment variable is present or absent.

	state?: string

	// Hour when the job should run ( 0-23, *, */2, etc )

	hour?: string

	// Used with C(state=present) and C(env).
	// If specified, the environment variable will be inserted after the declaration of specified environment variable.

	insertafter?: string

	// The command to execute or, if env is set, the value of environment variable.
	// The command should not contain line breaks.
	// Required if C(state=present).

	job?: string

	// Month of the year the job should run ( 1-12, *, */2, etc )

	month?: string

	// The specific user whose crontab should be modified.
	// When unset, this parameter defaults to using C(root).

	user?: string

	// Day of the week that the job should run ( 0-6 for Sunday-Saturday, *, etc )

	weekday?: string

	// If set, create a backup of the crontab before it is modified. The location of the backup is returned in the C(backup_file) variable by this module.

	backup?: bool

	// If specified, uses this file instead of an individual user's crontab.
	// If this is a relative path, it is interpreted with respect to I(/etc/cron.d).
	// If it is absolute, it will typically be I(/etc/crontab).
	// Many linux distros expect (and some require) the filename portion to consist solely of upper- and lower-case letters, digits, underscores, and hyphens.
	// To use the C(cron_file) parameter you must specify the C(user) as well.

	cron_file?: string

	// If the job should be disabled (commented out) in the crontab.
	// Only has effect if C(state=present).

	disabled?: bool

	// Used with C(state=present) and C(env).
	// If specified, the environment variable will be inserted before the declaration of specified environment variable.

	insertbefore?: string
}

cronvar :: {

	// The value to set this variable to.
	// Required if C(state=present).

	value?: string

	// If set, create a backup of the crontab before it is modified. The location of the backup is returned in the C(backup) variable by this module.

	backup?: bool

	// If specified, uses this file instead of an individual user's crontab.
	// Without a leading C(/), this is assumed to be in I(/etc/cron.d).
	// With a leading C(/), this is taken as absolute.

	cron_file?: string

	// If specified, the variable will be inserted after the variable specified.
	// Used with C(state=present).

	insertafter?: string

	// Used with C(state=present). If specified, the variable will be inserted just before the variable specified.

	insertbefore?: string

	// Name of the crontab variable.

	name: string

	// Whether to ensure that the variable is present or absent.

	state?: string

	// The specific user whose crontab should be modified.
	// This parameter defaults to C(root) when unset.

	user?: string
}

getent :: {

	// The name of a getent database supported by the target system (passwd, group, hosts, etc).

	database: string

	// If a supplied key is missing this will make the task fail if C(yes).

	fail_key?: bool

	// Key from which to return values from the specified database, otherwise the full contents are returned.

	key?: string

	// Override all databases with the specified service
	// The underlying system must support the service flag which is not always available.

	service?: string

	// Character used to split the database values into lists/arrays such as ':' or ' ', otherwise  it will try to pick one depending on the database.

	split?: string
}

interfaces_file :: {

	// If set to C(absent) the option or section will be removed if present instead of created.

	state?: string

	// If I(option) is not presented for the I(interface) and I(state) is C(present) option will be added. If I(option) already exists and is not C(pre-up), C(up), C(post-up) or C(down), it's value will be updated. C(pre-up), C(up), C(post-up) and C(down) options can't be updated, only adding new options, removing existing ones or cleaning the whole option set are supported

	value?: string

	// Address family of the interface, useful if same interface name is used for both inet and inet6

	address_family?: string

	// Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.

	backup?: bool

	// Path to the interfaces file

	dest?: string

	// Name of the interface, required for value changes or option remove

	iface?: string

	// Name of the option, required for value changes or option remove

	option?: string
}

open_iscsi :: {

	// Whether the target node should be automatically connected at startup.

	auto_node_startup?: bool

	// Whether the target node should be connected.

	login?: bool

	// The value for C(discovery.sendtargets.auth.authmethod).

	node_auth?: string

	// The value for C(discovery.sendtargets.auth.username).

	node_user?: string

	// The port on which the iSCSI target process listens.

	port?: string

	// Whether the list of nodes in the persistent iSCSI database should be returned by the module.

	show_nodes?: bool

	// Whether the list of target nodes on the portal should be (re)discovered and added to the persistent iSCSI database.
	// Keep in mind that C(iscsiadm) discovery resets configuration, like C(node.startup) to manual, hence combined with C(auto_node_startup=yes) will always return a changed state.

	discover?: bool

	// The value for C(discovery.sendtargets.auth.password).

	node_pass?: string

	// The IP address of the iSCSI target.

	portal?: string

	// The iSCSI target name.

	target?: string
}

ping :: {

	// Data to return for the C(ping) return value.
	// If this parameter is set to C(crash), the module will cause an exception.

	data?: string
}

service_facts :: {
}

lvol :: {

	// Whether the volume is active and visible to the host.

	active?: bool

	// The name of the logical volume.

	lv?: string

	// Shrink if current size is higher than size requested.

	shrink?: bool

	// The thin pool volume name. When you want to create a thin provisioned volume, specify a thin pool volume name.

	thinpool?: string

	// The volume group this logical volume is part of.

	vg?: string

	// The name of the snapshot volume

	snapshot?: string

	// Control if the logical volume exists. If C(present) and the volume does not already exist then the C(size) option is required.

	state?: string

	// Shrink or remove operations of volumes requires this switch. Ensures that that filesystems get never corrupted/destroyed by mistake.

	force?: bool

	// Free-form options to be passed to the lvcreate command.

	opts?: string

	// Comma separated list of physical volumes (e.g. /dev/sda,/dev/sdb).

	pvs?: string

	// Resize the underlying filesystem together with the logical volume.

	resizefs?: bool

	// The size of the logical volume, according to lvcreate(8) --size, by default in megabytes or optionally with one of [bBsSkKmMgGtTpPeE] units; or according to lvcreate(8) --extents as a percentage of [VG|PVS|FREE]; Float values must begin with a digit. Resizing using percentage values was not supported prior to 2.1.

	size?: string
}

mksysb :: {

	// Exclude files from packing option listed in C(/etc/exclude_packing.rootvg).

	software_packing?: bool

	// Storage path where the mksysb will stored.

	storage_path: string

	// Creates backup using snapshots.

	use_snapshot?: bool

	// Backup encrypted files.

	backup_crypt_files?: bool

	// Excludes files using C(/etc/rootvg.exclude).

	exclude_files?: bool

	// Backup extended attributes.

	extended_attrs?: bool

	// Backup name

	name: string

	// Back up DMAPI filesystem files.

	backup_dmapi_fs?: bool

	// Creates a new MAP files.

	create_map_files?: bool

	// Excludes WPAR files.

	exclude_wpar_files?: bool

	// Creates a new file data.

	new_image_data?: bool
}

python_requirements_info :: {

	// A list of version-likes or module names to check for installation. Supported operators: <, >, <=, >=, or ==. The bare module name like I(ansible), the module with a specific version like I(boto3==1.6.1), or a partial version like I(requests>2) are all valid specifications.


	dependencies?: string
}

aix_lvol :: {

	// The type of the logical volume.

	lv_type?: string

	// The size of the logical volume with one of the [MGT] units.

	size?: string

	// Control if the logical volume exists. If C(present) and the volume does not already exist then the C(size) option is required.

	state?: string

	// The volume group this logical volume is part of.

	vg: string

	// The number of copies of the logical volume.
	// Maximum copies are 3.

	copies?: int

	// The name of the logical volume.

	lv: string

	// Free-form options to be passed to the mklv command.

	opts?: string

	// Sets the interphysical volume allocation policy.
	// C(maximum) allocates logical partitions across the maximum number of physical volumes.
	// C(minimum) allocates logical partitions across the minimum number of physical volumes.

	policy?: string

	// A list of physical volumes e.g. C(hdisk1,hdisk2).

	pvs?: [..._]
}

openwrt_init :: {

	// Whether the service should start on boot. B(At least one of state and enabled are required.)

	enabled?: bool

	// Name of the service.

	name: string

	// If the service does not respond to the 'running' command, name a substring to look for as would be found in the output of the I(ps) command as a stand-in for a 'running' result.  If the string is found, the service will be assumed to be running.

	pattern?: string

	// C(started)/C(stopped) are idempotent actions that will not run commands unless necessary. C(restarted) will always bounce the service. C(reloaded) will always reload.

	state?: string
}

reboot :: {

	// Seconds to wait before reboot. Passed as a parameter to the reboot command.
	// On Linux, macOS and OpenBSD, this is converted to minutes and rounded down. If less than 60, it will be set to 0.
	// On Solaris and FreeBSD, this will be seconds.

	pre_reboot_delay?: int

	// Maximum seconds to wait for machine to reboot and respond to a test command.
	// This timeout is evaluated separately for both reboot verification and test command success so the maximum execution time for the module is twice this amount.

	reboot_timeout?: int

	// Paths to search on the remote machine for the C(shutdown) command.
	// I(Only) these paths will be searched for the C(shutdown) command. C(PATH) is ignored in the remote node when searching for the C(shutdown) command.

	search_paths?: [..._]

	// Command to run on the rebooted host and expect success from to determine the machine is ready for further tasks.

	test_command?: string

	// Maximum seconds to wait for a successful connection to the managed hosts before trying again.
	// If unspecified, the default setting for the underlying connection plugin is used.

	connect_timeout?: int

	// Message to display to users before reboot.

	msg?: string

	// Seconds to wait after the reboot command was successful before attempting to validate the system rebooted successfully.
	// This is useful if you want wait for something to settle despite your connection already working.

	post_reboot_delay?: int
}

iptables :: {

	// Destination specification.
	// Address can be either a network name, a hostname, a network IP address (with /mask), or a plain IP address.
	// Hostnames will be resolved once only, before the rule is submitted to the kernel. Please note that specifying any name to be resolved with a remote query such as DNS is a really bad idea.
	// The mask can be either a network mask or a plain number, specifying the number of 1's at the left side of the network mask. Thus, a mask of 24 is equivalent to 255.255.255.0. A C(!) argument before the address specification inverts the sense of the address.

	destination?: string

	// Specifies the maximum burst before the above limit kicks in.

	limit_burst?: string

	// Logging level according to the syslogd-defined priorities.
	// The value can be strings or numbers from 1-8.
	// This parameter is only applicable if C(jump) is set to C(LOG).

	log_level?: string

	// This specifies a destination address to use with C(DNAT).
	// Without this, the destination address is never altered.

	to_destination?: string

	// Wait N seconds for the xtables lock to prevent multiple instances of the program from running concurrently.

	wait?: string

	// Specifies a log text for the rule. Only make sense with a LOG jump.

	log_prefix?: string

	// Specifies the error packet type to return while rejecting. It implies "jump: REJECT"

	reject_with?: string

	// This option specifies the packet matching table which the command should operate on.
	// If the kernel is configured with automatic module loading, an attempt will be made to load the appropriate module for that table if it is not already there.

	table?: string

	// Whether the rule should be appended at the bottom or inserted at the top.
	// If the rule already exists the chain will not be modified.

	action?: string

	// This specifies a comment that will be added to the rule.

	comment?: string

	// Destination port or port range specification. This can either be a service name or a port number. An inclusive range can also be specified, using the format first:last. If the first port is omitted, '0' is assumed; if the last is omitted, '65535' is assumed. If the first port is greater than the second one they will be swapped. This is only valid if the rule also specifies one of the following protocols: tcp, udp, dccp or sctp.

	destination_port?: string

	// Specifies the GID or group to use in match by owner rule.

	gid_owner?: string

	// This allows specification of the ICMP type, which can be a numeric ICMP type, type/code pair, or one of the ICMP type names shown by the command 'iptables -p icmp -h'

	icmp_type?: string

	// This allows specifying a DSCP mark to be added to packets. It takes either an integer or hex value.
	// Mutually exclusive with C(set_dscp_mark_class).

	set_dscp_mark?: string

	// Specifies the UID or username to use in match by owner rule.
	// From Ansible 2.6 when the C(!) argument is prepended then the it inverts the rule to apply instead to all users except that one specified.

	uid_owner?: string

	// Which version of the IP protocol this rule should apply to.

	ip_version?: string

	// Specifies the maximum average number of matches to allow per second.
	// The number can specify units explicitly, using `/second', `/minute', `/hour' or `/day', or parts of them (so `5/second' is the same as `5/s').

	limit?: string

	// Name of an interface via which a packet is going to be sent (for packets entering the C(FORWARD), C(OUTPUT) and C(POSTROUTING) chains).
	// When the C(!) argument is used before the interface name, the sense is inverted.
	// If the interface name ends in a C(+), then any interface which begins with this name will match.
	// If this option is omitted, any interface name will match.

	out_interface?: string

	// The protocol of the rule or of the packet to check.
	// The specified protocol can be one of C(tcp), C(udp), C(udplite), C(icmp), C(esp), C(ah), C(sctp) or the special keyword C(all), or it can be a numeric value, representing one of these protocols or a different one.
	// A protocol name from I(/etc/protocols) is also allowed.
	// A C(!) argument before the protocol inverts the test.
	// The number zero is equivalent to all.
	// C(all) will match with all protocols and is taken as default when this option is omitted.

	protocol?: string

	// Insert the rule as the given rule number.
	// This works only with C(action=insert).

	rule_num?: string

	// Source port or port range specification.
	// This can either be a service name or a port number.
	// An inclusive range can also be specified, using the format C(first:last).
	// If the first port is omitted, C(0) is assumed; if the last is omitted, C(65535) is assumed.
	// If the first port is greater than the second one they will be swapped.

	source_port?: string

	// This specifies the target of the rule; i.e., what to do if the packet matches it.
	// The target can be a user-defined chain (other than the one this rule is in), one of the special builtin targets which decide the fate of the packet immediately, or an extension (see EXTENSIONS below).
	// If this option is omitted in a rule (and the goto parameter is not used), then matching the rule will have no effect on the packet's fate, but the counters on the rule will be incremented.

	jump?: string

	// Source specification.
	// Address can be either a network name, a hostname, a network IP address (with /mask), or a plain IP address.
	// Hostnames will be resolved once only, before the rule is submitted to the kernel. Please note that specifying any name to be resolved with a remote query such as DNS is a really bad idea.
	// The mask can be either a network mask or a plain number, specifying the number of 1's at the left side of the network mask. Thus, a mask of 24 is equivalent to 255.255.255.0. A C(!) argument before the address specification inverts the sense of the address.

	source?: string

	// Specifies the source IP range to match in the iprange module.

	src_range?: string

	// This allows matching packets that have the SYN bit set and the ACK and RST bits unset.
	// When negated, this matches all packets with the RST or the ACK bits set.

	syn?: string

	// This specifies a source address to use with C(SNAT).
	// Without this, the source address is never altered.

	to_source?: string

	// Specify the iptables chain to modify.
	// This could be a user-defined chain or one of the standard iptables chains, like C(INPUT), C(FORWARD), C(OUTPUT), C(PREROUTING), C(POSTROUTING), C(SECMARK) or C(CONNSECMARK).

	chain?: string

	// C(ctstate) is a list of the connection states to match in the conntrack module.
	// Possible states are C(INVALID), C(NEW), C(ESTABLISHED), C(RELATED), C(UNTRACKED), C(SNAT), C(DNAT)

	ctstate?: [..._]

	// Flushes the specified table and chain of all rules.
	// If no chain is specified then the entire table is purged.
	// Ignores all other parameters.

	flush?: bool

	// Name of an interface via which a packet was received (only for packets entering the C(INPUT), C(FORWARD) and C(PREROUTING) chains).
	// When the C(!) argument is used before the interface name, the sense is inverted.
	// If the interface name ends in a C(+), then any interface which begins with this name will match.
	// If this option is omitted, any interface name will match.

	in_interface?: string

	// Whether the rule should be absent or present.

	state?: string

	// TCP flags specification.
	// C(tcp_flags) expects a dict with the two keys C(flags) and C(flags_set).

	tcp_flags?: {...}

	// This specifies the IP address of host to send the cloned packets.
	// This option is only valid when C(jump) is set to C(TEE).

	gateway?: string

	// This enables the administrator to initialize the packet and byte counters of a rule (during C(INSERT), C(APPEND), C(REPLACE) operations).

	set_counters?: string

	// This specifies a destination port or range of ports to use, without this, the destination port is never altered.
	// This is only valid if the rule also specifies one of the protocol C(tcp), C(udp), C(dccp) or C(sctp).

	to_ports?: string

	// Specifies the destination IP range to match in the iprange module.

	dst_range?: string

	// This means that the rule only refers to second and further fragments of fragmented packets.
	// Since there is no way to tell the source or destination ports of such a packet (or ICMP type), such a packet will not match any rules which specify them.
	// When the "!" argument precedes fragment argument, the rule will only match head fragments, or unfragmented packets.

	fragment?: string

	// This specifies that the processing should continue in a user specified chain.
	// Unlike the jump argument return will not continue processing in this chain but instead in the chain that called us via jump.

	goto?: string

	// Specifies a match to use, that is, an extension module that tests for a specific property.
	// The set of matches make up the condition under which a target is invoked.
	// Matches are evaluated first to last if specified as an array and work in short-circuit fashion, i.e. if one extension yields false, evaluation will stop.

	match?: [..._]

	// Set the policy for the chain to the given target.
	// Only built-in chains can have policies.
	// This parameter requires the C(chain) parameter.
	// Ignores all other parameters.

	policy?: string

	// This allows specifying a predefined DiffServ class which will be translated to the corresponding DSCP mark.
	// Mutually exclusive with C(set_dscp_mark).

	set_dscp_mark_class?: string
}

pam_limits :: {

	// Limit type, see C(man 5 limits.conf) for an explanation

	limit_type: string

	// A username, @groupname, wildcard, uid/gid range.

	domain: string

	// Comment associated with the limit.

	comment?: string

	// Modify the limits.conf path.

	dest?: string

	// The limit to be set

	limit_item: string

	// If set to C(yes), the maximal value will be used or conserved. If the specified value is superior to the value in the file, file content is replaced with the new value, else content is not modified.

	use_max?: bool

	// If set to C(yes), the minimal value will be used or conserved. If the specified value is inferior to the value in the file, file content is replaced with the new value, else content is not modified.

	use_min?: bool

	// The value of the limit.

	value: string

	// Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.

	backup?: bool
}

parted :: {

	// The number of the partition to work with or the number of the partition that will be created.
	// Required when performing any action on the disk, except fetching information.

	number?: int

	// Where the partition will end as offset from the beginning of the disk, that is, the "distance" from the start of the disk.
	// The distance can be specified with all the units supported by parted (except compat) and it is case sensitive, e.g. C(10GiB), C(15%).

	part_end?: string

	// Where the partition will start as offset from the beginning of the disk, that is, the "distance" from the start of the disk.
	// The distance can be specified with all the units supported by parted (except compat) and it is case sensitive, e.g. C(10GiB), C(15%).

	part_start?: string

	// Whether to create or delete a partition.
	// If set to C(info) the module will only return the device information.

	state?: string

	// Set alignment for newly created partitions.

	align?: string

	// A list of the flags that has to be set on the partition.

	flags?: [..._]

	// Creates a new disk label.

	label?: string

	// Sets the name for the partition number (GPT, Mac, MIPS and PC98 only).

	name?: string

	// Selects the current default unit that Parted will use to display locations and capacities on the disk and to interpret those given by the user if they are not suffixed by an unit.
	// When fetching information about a disk, it is always recommended to specify a unit.

	unit?: string

	// The block device (disk) where to operate.

	device: string

	// May be specified only with 'msdos' or 'dvh' partition tables.
	// A C(name) must be specified for a 'gpt' partition table.
	// Neither C(part_type) nor C(name) may be used with a 'sun' partition table.

	part_type?: string
}

xfs_quota :: {

	// Soft inodes quota limit.

	isoft?: int

	// Hard realtime blocks quota limit.
	// This argument supports human readable sizes.

	rtbhard?: string

	// Whether to apply the limits or remove them.
	// When removing limit, they are set to 0, and not quite removed.

	state?: string

	// The XFS quota type.

	type: string

	// Hard blocks quota limit.
	// This argument supports human readable sizes.

	bhard?: string

	// Soft blocks quota limit.
	// This argument supports human readable sizes.

	bsoft?: string

	// Hard inodes quota limit.

	ihard?: int

	// The mount point on which to apply the quotas.

	mountpoint: string

	// The name of the user, group or project to apply the quota to, if other than default.

	name?: string

	// Soft realtime blocks quota limit.
	// This argument supports human readable sizes.

	rtbsoft?: string
}

debconf :: {

	// Value to set the configuration to.

	value?: string

	// The type of the value supplied.
	// C(seen) was added in Ansible 2.2.

	vtype?: string

	// Name of package to configure.

	name: string

	// A debconf configuration setting.

	question?: string

	// Do not set 'seen' flag when pre-seeding.

	unseen?: bool
}

facter :: {
}

pids :: {

	// the name of the process you want to get PID for.

	name: string
}

service :: {

	// C(started)/C(stopped) are idempotent actions that will not run commands unless necessary.
	// C(restarted) will always bounce the service.
	// C(reloaded) will always reload.
	// B(At least one of state and enabled are required.)
	// Note that reloaded will start the service if it is not already started, even if your chosen init system wouldn't normally.

	state?: string

	// The service module actually uses system specific modules, normally through auto detection, this setting can force a specific module.
	// Normally it uses the value of the 'ansible_service_mgr' fact and falls back to the old 'service' module when none matching is found.

	use?: string

	// Additional arguments provided on the command line.

	arguments?: string

	// Whether the service should start on boot.
	// B(At least one of state and enabled are required.)

	enabled?: bool

	// Name of the service.

	name: string

	// If the service does not respond to the status command, name a substring to look for as would be found in the output of the I(ps) command as a stand-in for a status result.
	// If the string is found, the service will be assumed to be started.

	pattern?: string

	// For OpenRC init scripts (e.g. Gentoo) only.
	// The runlevel that this service belongs to.

	runlevel?: string

	// If the service is being C(restarted) then sleep this many seconds between the stop and start command.
	// This helps to work around badly-behaving init scripts that exit immediately after signaling a process to stop.
	// Not all service managers support sleep, i.e when using systemd this setting will be ignored.

	sleep?: int
}

setup :: {

	// If supplied, restrict the additional facts collected to the given subset. Possible values: C(all), C(min), C(hardware), C(network), C(virtual), C(ohai), and C(facter). Can specify a list of values to specify a larger subset. Values can also be used with an initial C(!) to specify that that specific subset should not be collected.  For instance: C(!hardware,!network,!virtual,!ohai,!facter). If C(!all) is specified then only the min subset is collected. To avoid collecting even the min subset, specify C(!all,!min). To collect only specific facts, use C(!all,!min), and specify the particular fact subsets. Use the filter parameter if you do not want to display some collected facts.

	gather_subset?: string

	// Set the default timeout in seconds for individual fact gathering.

	gather_timeout?: string

	// Path used for local ansible facts (C(*.fact)) - files in this dir will be run (if executable) and their results be added to C(ansible_local) facts if a file is not executable it is read. Check notes for Windows options. (from 2.1 on) File/results format can be JSON or INI-format. The default C(fact_path) can be specified in C(ansible.cfg) for when setup is automatically called as part of C(gather_facts).

	fact_path?: string

	// If supplied, only return facts that match this shell-style (fnmatch) wildcard.

	filter?: string
}

sysvinit :: {

	// The runlevels this script should be enabled/disabled from.
	// Use this to override the defaults set by the package or init script itself.

	runlevels?: string

	// If the service is being C(restarted) or C(reloaded) then sleep this many seconds between the stop and start command. This helps to workaround badly behaving services.

	sleep?: string

	// C(started)/C(stopped) are idempotent actions that will not run commands unless necessary. Not all init scripts support C(restarted) nor C(reloaded) natively, so these will both trigger a stop and start as needed.

	state?: string

	// Additional arguments provided on the command line that some init scripts accept.

	arguments?: string

	// Have the module daemonize as the service itself might not do so properly.
	// This is useful with badly written init scripts or daemons, which commonly manifests as the task hanging as it is still holding the tty or the service dying when the task is over as the connection closes the session.

	daemonize?: bool

	// Whether the service should start on boot. B(At least one of state and enabled are required.)

	enabled?: bool

	// Name of the service.

	name: string

	// A substring to look for as would be found in the output of the I(ps) command as a stand-in for a status result.
	// If the string is found, the service will be assumed to be running.
	// This option is mainly for use with init scripts that don't support the 'status' option.

	pattern?: string
}

timezone :: {

	// Whether the hardware clock is in UTC or in local timezone.
	// Default is to keep current setting.
	// Note that this option is recommended not to change and may fail to configure, especially on virtual environments such as AWS.
	// B(At least one of name and hwclock are required.)
	// I(Only used on Linux.)

	hwclock?: string

	// Name of the timezone for the system clock.
	// Default is to keep current setting.
	// B(At least one of name and hwclock are required.)

	name?: string
}

beadm :: {

	// Path where to mount the ZFS boot environment.

	mountpoint?: string

	// ZFS boot environment name.

	name: string

	// Create the datasets for new BE with specific ZFS properties.
	// Multiple options can be specified.
	// This option is available only on Solarish platforms.

	options?: string

	// If specified, the new boot environment will be cloned from the given snapshot or inactive boot environment.

	snapshot?: string

	// Create or delete ZFS boot environment.

	state?: string

	// Associate a description with a new boot environment. This option is available only on Solarish platforms.

	description?: string

	// Specifies if the unmount should be forced.

	force?: bool
}

osx_defaults :: {

	// The domain is a domain name of the form C(com.companyname.appname).

	domain?: string

	// The host on which the preference should apply.
	// The special value C(currentHost) corresponds to the C(-currentHost) switch of the defaults commandline tool.

	host?: string

	// The key of the user preference.

	key: string

	// The path in which to search for C(defaults).

	path?: string

	// The state of the user defaults.
	// If set to C(list) will query the given parameter specified by C(key). Returns 'null' is nothing found or mis-spelled.
	// C(list) added in version 2.8.

	state?: string

	// The type of value to write.

	type?: string

	// The value to write.
	// Only required when C(state=present).

	value?: _

	// Add new elements to the array for a key which has an array as its value.

	array_add?: bool
}

alternatives :: {

	// The path to the symbolic link that should point to the real executable.
	// This option is always required on RHEL-based distributions. On Debian-based distributions this option is required when the alternative I(name) is unknown to the system.

	link?: string

	// The generic name of the link.

	name: string

	// The path to the real executable that the link should point to.

	path: string

	// The priority of the alternative.

	priority?: int
}

at :: {

	// An existing script file to be executed in the future.

	script_file?: string

	// The state dictates if the command or script file should be evaluated as present(added) or absent(deleted).

	state?: string

	// If a matching job is present a new job will not be added.

	unique?: bool

	// The type of units in the future to execute the command or script file.

	units: string

	// A command to be executed in the future.

	command?: string

	// The count of units in the future to execute the command or script file.

	count: int
}

awall :: {

	// Activate the new firewall rules.
	// Can be run with other steps or on its own.

	activate?: bool

	// One or more policy names.

	name?: [..._]

	// Whether the policies should be enabled or disabled.

	state?: string
}

dconf :: {

	// A dconf key to modify or read from the dconf database.

	key: string

	// The action to take upon the key/value.

	state?: string

	// Value to set for the specified dconf key. Value should be specified in GVariant format. Due to complexity of this format, it is best to have a look at existing values in the dconf database. Required for C(state=present).

	value?: string
}

firewalld :: {

	// Should this configuration be applied immediately, if set as permanent.

	immediate?: bool

	// The amount of time the rule should be in effect for when non-permanent.

	timeout?: int

	// The firewalld zone to add/remove to/from.
	// Note that the default zone can be configured per system but C(public) is default from upstream.
	// Available choices can be extended based on per-system configs, listed here are "out of the box" defaults.
	// Possible values include C(block), C(dmz), C(drop), C(external), C(home), C(internal), C(public), C(trusted), C(work).

	zone?: string

	// The interface you would like to add/remove to/from a zone in firewalld.

	interface?: string

	// Whether to run this module even when firewalld is offline.

	offline?: bool

	// Name of a service to add/remove to/from firewalld.
	// The service must be listed in output of firewall-cmd --get-services.

	service?: string

	// The source/network you would like to add/remove to/from firewalld.

	source?: string

	// Enable or disable a setting.
	// For ports: Should this port accept (enabled) or reject (disabled) connections.
	// The states C(present) and C(absent) can only be used in zone level operations (i.e. when no other parameters but zone and state are set).

	state: string

	// The ICMP block you would like to add/remove to/from a zone in firewalld.

	icmp_block?: string

	// The masquerade setting you would like to enable/disable to/from zones within firewalld.

	masquerade?: string

	// Should this configuration be in the running firewalld configuration or persist across reboots.
	// As of Ansible 2.3, permanent operations can operate on firewalld configs when it is not running (requires firewalld >= 3.0.9).
	// Note that if this is C(no), immediate is assumed C(yes).

	permanent?: bool

	// Name of a port or port range to add/remove to/from firewalld.
	// Must be in the form PORT/PROTOCOL or PORT-PORT/PROTOCOL for port ranges.

	port?: string

	// Enable/Disable inversion of ICMP blocks for a zone in firewalld.

	icmp_block_inversion?: string

	// Rich rule to add/remove to/from firewalld.

	rich_rule?: string
}

known_hosts :: {

	// The known_hosts file to edit

	path?: string

	// I(present) to add the host key, I(absent) to remove it.

	state?: string

	// Hash the hostname in the known_hosts file

	hash_host?: bool

	// The SSH public host key, as a string (required if state=present, optional when state=absent, in which case all keys for the host are removed). The key must be in the right format for ssh (see sshd(8), section "SSH_KNOWN_HOSTS FILE FORMAT").
Specifically, the key should not match the format that is found in an SSH pubkey file, but should rather have the hostname prepended to a line that includes the pubkey, the same way that it would appear in the known_hosts file. The value prepended to the line must also match the value of the name parameter.
Should be of format `<hostname[,IP]> ssh-rsa <pubkey>`

	key?: string

	// The host to add or remove (must match a host specified in key). It will be converted to lowercase so that ssh-keygen can find it.
	// Must match with <hostname> or <ip> present in key attribute.

	name: string
}

modprobe :: {

	// Name of kernel module to manage.

	name: string

	// Modules parameters.

	params?: string

	// Whether the module should be present or absent.

	state?: string
}

pamd :: {

	// The new type to assign to the new rule.

	new_type?: string

	// This is the path to the PAM service files.

	path?: string

	// The type of the PAM rule being modified.
	// The C(type), C(control) and C(module_path) all must match a rule to be modified.

	type: string

	// The name generally refers to the PAM service file to change, for example system-auth.

	name: string

	// The new control to assign to the new rule.

	new_control?: string

	// When state is C(updated), the module_arguments will replace existing module_arguments.
	// When state is C(args_absent) args matching those listed in module_arguments will be removed.
	// When state is C(args_present) any args listed in module_arguments are added if missing from the existing rule.
	// Furthermore, if the module argument takes a value denoted by C(=), the value will be changed to that specified in module_arguments.

	module_arguments?: [..._]

	// The module path of the PAM rule being modified.
	// The C(type), C(control) and C(module_path) all must match a rule to be modified.

	module_path: string

	// The new module path to be assigned to the new rule.

	new_module_path?: string

	// The default of C(updated) will modify an existing rule if type, control and module_path all match an existing rule.
	// With C(before), the new rule will be inserted before a rule matching type, control and module_path.
	// Similarly, with C(after), the new rule will be inserted after an existing rulematching type, control and module_path.
	// With either C(before) or C(after) new_type, new_control, and new_module_path must all be specified.
	// If state is C(args_absent) or C(args_present), new_type, new_control, and new_module_path will be ignored.
	// State C(absent) will remove the rule.  The 'absent' state was added in Ansible 2.4.

	state?: string

	// Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.

	backup?: bool

	// The control of the PAM rule being modified.
	// This may be a complicated control with brackets. If this is the case, be sure to put "[bracketed controls]" in quotes.
	// The C(type), C(control) and C(module_path) all must match a rule to be modified.

	control: string
}

seport :: {

	// Ports or port ranges.
	// Can be a list (since 2.6) or comma separated string.

	ports: [..._]

	// Protocol for the specified port.

	proto: string

	// Reload SELinux policy after commit.

	reload?: bool

	// SELinux type for the specified port.

	setype: string

	// Desired boolean value.

	state?: string

	// Run independent of selinux runtime state

	ignore_selinux_state?: bool
}

aix_devices :: {

	// Controls the device state.
	// C(available) (alias C(present)) rescan a specific device or all devices (when C(device) is not specified).
	// C(removed) (alias C(absent) removes a device.
	// C(defined) changes device to Defined state.

	state?: string

	// A list of device attributes.

	attributes?: {...}

	// The name of the device.
	// C(all) is valid to rescan C(available) all devices (AIX cfgmgr command).

	device: string

	// Forces action.

	force?: bool

	// Removes or defines a device and children devices.

	recursive?: bool
}

filesystem :: {

	// Target path to device or image file.

	dev: string

	// If C(yes), allows to create new filesystem on devices that already has filesystem.

	force?: bool

	// Filesystem type to be created.
	// reiserfs support was added in 2.2.
	// lvm support was added in 2.5.
	// since 2.5, I(dev) can be an image file.
	// vfat support was added in 2.5
	// ocfs2 support was added in 2.6
	// f2fs support was added in 2.7
	// swap support was added in 2.8

	fstype: string

	// List of options to be passed to mkfs command.

	opts?: string

	// If C(yes), if the block device and filesystem size differ, grow the filesystem into the space.
	// Supported for C(ext2), C(ext3), C(ext4), C(ext4dev), C(f2fs), C(lvm), C(xfs), C(vfat), C(swap) filesystems.
	// XFS Will only grow if mounted.
	// vFAT will likely fail if fatresize < 1.04.

	resizefs?: bool
}

java_cert :: {

	// Path to keystore.

	keystore_path?: string

	// Path to keytool binary if not used we search in PATH for it.

	executable?: string

	// Defines action which can be either certificate import or removal.

	state?: string

	// Imported certificate alias.
	// The alias is used when checking for the presence of a certificate in the keystore.

	cert_alias?: string

	// Basic URL to fetch SSL certificate from.
	// One of C(cert_url) or C(cert_path) is required to load certificate.

	cert_url?: string

	// Keystore password.

	keystore_pass: string

	// Trust imported cert as CAcert.

	trust_cacert?: bool

	// Local path to load certificate from.
	// One of C(cert_url) or C(cert_path) is required to load certificate.

	cert_path?: string

	// Port to connect to URL.
	// This will be used to create server URL:PORT.

	cert_port?: int

	// Create keystore if it does not exist.

	keystore_create?: bool

	// Keystore type (JCEKS, JKS).

	keystore_type?: string

	// Alias in the PKCS12 keystore.

	pkcs12_alias?: string

	// Password for importing from PKCS12 keystore.

	pkcs12_password?: string

	// Local path to load PKCS12 keystore from.

	pkcs12_path?: string
}

mount :: {

	// Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.

	backup?: bool

	// File to use instead of C(/etc/fstab).
	// You should not use this option unless you really know what you are doing.
	// This might be useful if you need to configure mountpoints in a chroot environment.
	// OpenBSD does not allow specifying alternate fstab files with mount so do not use this on OpenBSD with any state that operates on the live filesystem.
	// This parameter defaults to /etc/fstab or /etc/vfstab on Solaris.

	fstab?: string

	// Mount options (see fstab(5), or vfstab(4) on Solaris).

	opts?: string

	// Path to the mount point (e.g. C(/mnt/files)).
	// Before Ansible 2.3 this option was only usable as I(dest), I(destfile) and I(name).

	path: string

	// Device to be mounted on I(path).
	// Required when I(state) set to C(present) or C(mounted).

	src?: string

	// If C(mounted), the device will be actively mounted and appropriately configured in I(fstab). If the mount point is not present, the mount point will be created.
	// If C(unmounted), the device will be unmounted without changing I(fstab).
	// C(present) only specifies that the device is to be configured in I(fstab) and does not trigger or require a mount.
	// C(absent) specifies that the device mount's entry will be removed from I(fstab) and will also unmount the device and remove the mount point.
	// C(remounted) specifies that the device will be remounted for when you want to force a refresh on the mount itself (added in 2.9). This will always return changed=true.

	state: string

	// Determines if the filesystem should be mounted on boot.
	// Only applies to Solaris systems.

	boot?: bool

	// Dump (see fstab(5)).
	// Note that if set to C(null) and I(state) set to C(present), it will cease to work and duplicate entries will be made with subsequent runs.
	// Has no effect on Solaris systems.

	dump?: string

	// Filesystem type.
	// Required when I(state) is C(present) or C(mounted).

	fstype?: string

	// Passno (see fstab(5)).
	// Note that if set to C(null) and I(state) set to C(present), it will cease to work and duplicate entries will be made with subsequent runs.
	// Deprecated on Solaris systems.

	passno?: string
}

nosh :: {

	// Enable or disable the service according to local preferences in *.preset files. Mutually exclusive with I(enabled). Only has an effect if set to true. Will take effect prior to I(state=reset).

	preset?: bool

	// C(started)/C(stopped) are idempotent actions that will not run commands unless necessary. C(restarted) will always bounce the service. C(reloaded) will send a SIGHUP or start the service. C(reset) will start or stop the service according to whether it is enabled or not.

	state?: string

	// Run system-control talking to the calling user's service manager, rather than the system-wide service manager.

	user?: bool

	// Enable or disable the service, independently of C(*.preset) file preference or running state. Mutually exclusive with I(preset). Will take effect prior to I(state=reset).

	enabled?: bool

	// Name of the service to manage.

	name: string
}

selinux :: {

	// The path to the SELinux configuration file, if non-standard.

	configfile?: string

	// The name of the SELinux policy to use (e.g. C(targeted)) will be required if state is not C(disabled).

	policy?: string

	// The SELinux mode.

	state: string
}

svc :: {

	// Directory svscan watches for services

	service_dir?: string

	// Directory where services are defined, the source of symlinks to service_dir.

	service_src?: string

	// C(Started)/C(stopped) are idempotent actions that will not run commands unless necessary.  C(restarted) will always bounce the svc (svc -t) and C(killed) will always bounce the svc (svc -k). C(reloaded) will send a sigusr1 (svc -1). C(once) will run a normally downed svc once (svc -o), not really an idempotent operation.

	state?: string

	// Should a 'down' file exist or not, if it exists it disables auto startup. Defaults to no. Downed does not imply stopped.

	downed?: bool

	// Whether the service is enabled or not, if disabled it also implies stopped. Take note that a service can be enabled and downed (no auto restart).

	enabled?: bool

	// Name of the service to manage.

	name: string
}

systemd :: {

	// Whether the unit should be masked or not, a masked unit is impossible to start.

	masked?: bool

	// Name of the service. This parameter takes the name of exactly one service to work with.
	// When using in a chroot environment you always need to specify the full name i.e. (crond.service).

	name?: string

	// Whether to override existing symlinks.

	force?: bool

	// Do not synchronously wait for the requested operation to finish. Enqueued job will continue without Ansible blocking on its completion.

	no_block?: bool

	// run systemctl within a given service manager scope, either as the default system scope (system), the current user's scope (user), or the scope of all users (global).
	// For systemd to work with 'user', the executing user must have its own instance of dbus started (systemd requirement). The user dbus process is normally started during normal login, but not during the run of Ansible tasks. Otherwise you will probably get a 'Failed to connect to bus: no such file or directory' error.

	scope?: string

	// C(started)/C(stopped) are idempotent actions that will not run commands unless necessary. C(restarted) will always bounce the service. C(reloaded) will always reload.

	state?: string

	// (deprecated) run ``systemctl`` talking to the service manager of the calling user, rather than the service manager of the system.
	// This option is deprecated and will eventually be removed in 2.11. The ``scope`` option should be used instead.

	user?: bool

	// Run daemon_reexec command before doing any other operations, the systemd manager will serialize the manager state.

	daemon_reexec?: bool

	// Run daemon-reload before doing any other operations, to make sure systemd has read any changes.
	// When set to C(yes), runs daemon-reload even if the module does not start or stop anything.

	daemon_reload?: bool

	// Whether the service should start on boot. B(At least one of state and enabled are required.)

	enabled?: bool
}
