package purestorage

purefa_vg :: {

	// Define whether to eradicate the volume group on delete and leave in trash.

	eradicate?: bool

	// Define whether the volume group should exist or not.

	state?: string

	// The name of the volume group.

	vgroup: string
}

purefb_network :: {

	// Interface Name.

	name: string

	// Define which services are configured for the interfaces.

	services?: string

	// Create, delete or modifies a network interface.

	state?: string

	// IP address of interface.

	address?: string

	// Type of interface.

	itype?: string
}

purefa_alert :: {

	// Email address (valid format required)

	address: string

	// Set specified email address to be enabled or disabled

	enabled?: bool

	// Create or delete alert email

	state?: string
}

purefa_facts :: {

	// When supplied, this argument will define the facts to be collected. Possible values for this include all, minimum, config, performance, capacity, network, subnet, interfaces, hgroups, pgroups, hosts, admins, volumes, snapshots, pods, vgroups, offload, apps and arrays.

	gather_subset?: [..._]
}

purefa_host :: {

	// LUN ID to assign to volume for host. Must be unique.
	// If not provided the ID will be automatically assigned.
	// Range for LUN ID is 1 to 4095.

	lun?: int

	// List of NQNs of the host if protocol is nvme or mixed.

	nqn?: [..._]

	// Defines the host connection protocol for volumes.

	protocol?: string

	// Volume name to map to the host.

	volume?: string

	// The name of the host.

	host: string

	// Define which operating system the host is. Recommended for ActiveCluster integration.

	personality?: string

	// List of preferred arrays in an ActiveCluster environment.
	// To remove existing preferred arrays from the host, specify I(delete).

	preferred_array?: [..._]

	// Define whether the host should exist or not.
	// When removing host all connected volumes will be disconnected.

	state?: string

	// List of wwns of the host if protocol is fc or mixed.

	wwns?: [..._]

	// List of IQNs of the host if protocol is iscsi or mixed.

	iqn?: [..._]
}

purefa_offload :: {

	// The IP or FQDN address of the NFS server

	address?: string

	// Name of the bucket for the S3 target

	bucket?: string

	// Additional mount options for the NFS share
	// Supported mount options include I(port), I(rsize), I(wsize), I(nfsvers), and I(tcp) or I(udp)

	options?: string

	// Secret Access Key for the S3 target

	secret?: string

	// Define state of offload

	state?: string

	// Access Key ID of the S3 target

	access_key?: string

	// Define whether to initialize the S3 bucket

	initialize?: bool

	// The name of the offload target

	name: string

	// Define which protocol the offload engine uses

	protocol?: string

	// NFS export on the NFS server

	share?: string
}

purefa_ra :: {

	// Define state of remote assist
	// When set to I(enable) the RA port can be exposed using the I(debug) module.

	state?: string
}

purefa_arrayname :: {

	// Set the array name

	state?: string

	// Name of the array. Must conform to correct naming schema.

	name: string
}

purefa_connect :: {

	// Type of connection between arrays.

	connection?: string

	// Create or delete array connection

	state?: string

	// API token for target array

	target_api?: string

	// Management IP address of remote array.

	target_url: string
}

purefa_phonehome :: {

	// Define state of phonehome

	state?: string
}

purefa_snmp :: {

	// SNMP v3 only. Encryption protocol to use

	privacy_protocol?: string

	// Version of SNMP protocol to use for the manager.

	version?: string

	// SNMPv3 only. Passphrase of 8 - 32 characters.

	auth_passphrase?: string

	// SNMP v2c only. Manager community ID. Between 1 and 32 characters long.

	community?: string

	// Action to perform on event.

	notification?: string

	// SNMPv3 only. Passphrase to encrypt SNMP messages. Must be between 8 and 63 non-space ASCII characters.

	privacy_passphrase?: string

	// SNMP v3 only. User ID recognized by the specified SNMP manager. Must be between 1 and 32 characters.

	user?: string

	// SNMP v3 only. Hash algorithm to use

	auth_protocol?: string

	// IPv4 or IPv6 address or FQDN to send trap messages to.

	host: string

	// Name of SNMP Manager

	name: string

	// Create or delete SNMP manager

	state?: string
}

purefb_ds :: {

	// Sets the base of the Distinguished Name (DN) of the directory service groups. The base should consist of only Domain Components (DCs). The base_dn will populate with a default value when a URI is entered by parsing domain components from the URI. The base DN should specify DC= for each domain component and multiple DCs should be separated by commas.

	base_dn: string

	// The type of directory service to work on

	dstype?: string

	// Whether to enable or disable directory service support.

	enable?: bool

	// A list of up to 30 IP addresses or FQDNs for NIS servers.
	// This cannot be used in conjunction with LDAP configurations.

	nis_servers?: [..._]

	// Sets the password of the bind_user user name account.

	bind_password?: string

	// Sets the user name that can be used to bind to and query the directory.
	// For Active Directory, enter the username - often referred to as sAMAccountName or User Logon Name - of the account that is used to perform directory lookups.
	// For OpenLDAP, enter the full DN of the user.

	bind_user?: string

	// The optional organizational unit (OU) where the machine account for the directory service will be created.

	join_ou?: string

	// The NIS domain to search
	// This cannot be used in conjunction with LDAP configurations.

	nis_domain?: string

	// Create or delete directory service configuration

	state?: string

	// A list of up to 30 URIs of the directory servers. Each URI must include the scheme ldap:// or ldaps:// (for LDAP over SSL), a hostname, and a domain name or IP address. For example, ldap://ad.company.com configures the directory service with the hostname "ad" in the domain "company.com" while specifying the unencrypted LDAP protocol.

	uri?: [..._]
}

purefb_facts :: {

	// When supplied, this argument will define the facts to be collected. Possible values for this include all, minimum, config, performance, capacity, network, subnets, lags, filesystems and snapshots.

	gather_subset?: [..._]
}

purefb_fs :: {

	// Define whether to eradicate the filesystem on delete or leave in trash.

	eradicate?: bool

	// Define whether to HTTP/HTTPS protocol is enabled for the filesystem.

	http?: bool

	// Filesystem Name.

	name: string

	// Define whether to NFSv4.1 protocol is enabled for the filesystem.

	nfsv4?: bool

	// Define whether a snapshot directory is enabled for the filesystem.

	snapshot?: bool

	// Define whether the capacity for a filesystem is a hard limit.
	// CAUTION This will cause the filesystem to go Read-Only if the capacity has already exceeded the logical size of the filesystem.

	hard_limit?: bool

	// (Deprecate) Define whether to NFSv3 protocol is enabled for the filesystem.
	// This option will be deprecated in 2.10, use I(nfsv3) instead.

	nfs?: bool

	// Define whether to SMB protocol is enabled for the filesystem.

	smb?: bool

	// Default quota in M, G, T or P units for a group under this file system.

	group_quota?: string

	// Define the NFS rules in operation.

	nfs_rules?: string

	// Define whether to NFSv3 protocol is enabled for the filesystem.

	nfsv3?: bool

	// Define whether the fast remove directory is enabled for the filesystem.

	fastremove?: bool

	// Volume size in M, G, T or P units. See examples.

	size?: string

	// Create, delete or modifies a filesystem.

	state?: string

	// Default quota in M, G, T or P units for a user under this file system.

	user_quota?: string
}

purefa_dsrole :: {

	// Sets the common Name (CN) of the configured directory service group containing users for the FlashBlade. This name should be just the Common Name of the group without the CN= specifier.
	// Common Names should not exceed 64 characters in length.

	group?: string

	// Specifies where the configured group is located in the directory tree. This field consists of Organizational Units (OUs) that combine with the base DN attribute and the configured group CNs to complete the full Distinguished Name of the groups. The group base should specify OU= for each OU and multiple OUs should be separated by commas. The order of OUs is important and should get larger in scope from left to right.
	// Each OU should not exceed 64 characters in length.

	group_base?: string

	// The directory service role to work on

	role?: string

	// Create or delete directory service role

	state?: string
}

purefb_smtp :: {

	// Relay server name

	host?: string

	// Domain name for alert messages

	domain: string
}

purefb_snap :: {

	// Define whether to eradicate the snapshot on delete or leave in trash.

	eradicate?: bool

	// The name of the source filesystem.

	name: string

	// Define whether the filesystem snapshot should exist or not.

	state?: string

	// Suffix of snapshot name.

	suffix?: string
}

purefb_subnet :: {

	// IPv4 or IPv6 address of subnet gateway.

	gateway?: string

	// MTU size of the subnet. Range is 1280 to 9216.

	mtu?: int

	// Subnet Name.

	name: string

	// IPv4 or IPv6 address associated with the subnet.
	// Supply the prefix length (CIDR) as well as the IP address.

	prefix?: string

	// Create, delete or modifies a subnet.

	state?: string

	// VLAN ID of the subnet.

	vlan?: int
}

purefb_s3user :: {

	// Create or delete object store account user

	state?: string

	// Create secret access key.
	// Key can be exposed using the I(debug) module

	access_key?: bool

	// The name of object store account associated with user

	account?: string

	// The name of object store user

	name?: string
}

purefa_snap :: {

	// Suffix of snapshot name.

	suffix?: string

	// Name of target volume if creating from snapshot.

	target?: string

	// Define whether to eradicate the snapshot on delete or leave in trash.

	eradicate?: bool

	// The name of the source volume.

	name: string

	// Define whether to overwrite existing volume when creating from snapshot.

	overwrite?: bool

	// Define whether the volume snapshot should exist or not.

	state?: string
}

purefa_user :: {

	// If changing an existing password, you must provide the old password for security

	old_password?: string

	// Password for the local user.

	password?: string

	// Sets the local user's access level to the array

	role?: string

	// Create, delete or update local user account

	state?: string

	// Define whether to create an API token for this user
	// Token can be exposed using the I(debug) module

	api?: bool

	// The name of the local user account

	name?: string
}

purefa_volume :: {

	// The name of the volume.

	name: string

	// Define whether to overwrite a target volume if it already exists.

	overwrite?: bool

	// Volume size in M, G, T or P units.

	size?: string

	// Define whether the volume should exist or not.

	state?: string

	// The name of the target volume, if copying.

	target?: string

	// Bandwidth limit for volume in M or G units. M will set MB/s G will set GB/s To clear an existing QoS setting use 0 (zero)

	bw_qos?: string

	// Define whether to eradicate the volume on delete or leave in trash.

	eradicate?: bool

	// IOPs limit for volume - use value or K or M K will mean 1000 M will mean 1000000 To clear an existing IOPs setting use 0 (zero)

	iops_qos?: string
}

purefb_bucket :: {

	// Object Store Account for Bucket.

	account: string

	// Define whether to eradicate the bucket on delete or leave in trash.

	eradicate?: bool

	// Bucket Name.

	name: string

	// Create, delete or modifies a bucket.

	state?: string
}

purefb_s3acc :: {

	// The name of object store account

	name?: string

	// Create or delete object store account

	state?: string
}

purefa_hg :: {

	// The name of the hostgroup.

	hostgroup: string

	// Define whether the hostgroup should exist or not.

	state?: string

	// List of existing volumes to add to hostgroup.

	volume?: [..._]

	// List of existing hosts to add to hostgroup.

	host?: [..._]
}

purefa_pgsnap :: {

	// Define whether to eradicate the snapshot on delete or leave in trash.

	eradicate?: bool

	// The name of the source protection group.

	name: string

	// Restore a specific volume from a protection group snapshot.

	restore?: string

	// Define whether the protection group snapshot should exist or not. Copy (added in 2.7) will create a full read/write clone of the snapshot.

	state?: string

	// Volume to restore a specified volume to.
	// If not supplied this will default to the volume defined in I(restore)

	target?: string

	// Apply retention schedule settings to the snapshot

	apply_retention?: bool

	// Whether to initiate a snapshot of the protection group immediately

	now?: bool

	// Define whether to overwrite the target volume if it already exists.

	overwrite?: bool

	// Force immeadiate snapshot to remote targets

	remote?: bool

	// Suffix of snapshot name.

	suffix?: string
}

purefa_syslog :: {

	// Protocol which server uses

	protocol: string

	// Create or delete syslog servers configuration

	state?: string

	// Syslog server address. This field supports IPv4, IPv6 or FQDN. An invalid IP addresses will cause the module to fail. No validation is performed for FQDNs.

	address: string

	// Port at which the server is listening. If no port is specified the system will use 514

	port?: string
}

purefb_dsrole :: {

	// Specifies where the configured group is located in the directory tree. This field consists of Organizational Units (OUs) that combine with the base DN attribute and the configured group CNs to complete the full Distinguished Name of the groups. The group base should specify OU= for each OU and multiple OUs should be separated by commas. The order of OUs is important and should get larger in scope from left to right.
	// Each OU should not exceed 64 characters in length.

	group_base?: string

	// The directory service role to work on

	role?: string

	// Create or delete directory service role

	state?: string

	// Sets the common Name (CN) of the configured directory service group containing users for the FlashBlade. This name should be just the Common Name of the group without the CN= specifier.
	// Common Names should not exceed 64 characters in length.

	group?: string
}

purefb_info :: {

	// When supplied, this argument will define the information to be collected. Possible values for this include all, minimum, config, performance, capacity, network, subnets, lags, filesystems and snapshots.

	gather_subset?: [..._]
}

purefb_ra :: {

	// Define state of remote assist
	// When set to I(enable) the RA port can be exposed using the I(debug) module.

	state?: string
}

purefa_banner :: {

	// Banner text, or MOTD, to use

	banner?: string

	// Set ot delete the MOTD

	state?: string
}

purefa_dns :: {

	// Domain suffix to be appended when performing DNS lookups.

	domain?: string

	// List of up to 3 unique DNS server IP addresses. These can be IPv4 or IPv6 - No validation is done of the addresses is performed.

	nameservers?: [..._]

	// Set or delete directory service configuration

	state?: string
}

purefa_ds :: {

	// Sets the user name that can be used to bind to and query the directory.
	// For Active Directory, enter the username - often referred to as sAMAccountName or User Logon Name - of the account that is used to perform directory lookups.
	// For OpenLDAP, enter the full DN of the user.

	bind_user?: string

	// Whether to enable or disable directory service support.

	enable?: bool

	// Specifies where the configured groups are located in the directory tree. This field consists of Organizational Units (OUs) that combine with the base DN attribute and the configured group CNs to complete the full Distinguished Name of the groups. The group base should specify OU= for each OU and multiple OUs should be separated by commas. The order of OUs is important and should get larger in scope from left to right. Each OU should not exceed 64 characters in length.
	// Not Supported from Purity 5.2.0 or higher. Use I(purefa_dsrole) module.

	group_base?: string

	// A list of up to 30 URIs of the directory servers. Each URI must include the scheme ldap:// or ldaps:// (for LDAP over SSL), a hostname, and a domain name or IP address. For example, ldap://ad.company.com configures the directory service with the hostname "ad" in the domain "company.com" while specifying the unencrypted LDAP protocol.

	uri?: [..._]

	// Sets the common Name (CN) of the directory service group containing administrators with full privileges when managing the FlashArray. The name should be just the Common Name of the group without the CN= specifier. Common Names should not exceed 64 characters in length.
	// Not Supported from Purity 5.2.0 or higher. Use I(purefa_dsrole) module.

	aa_group?: string

	// Sets the base of the Distinguished Name (DN) of the directory service groups. The base should consist of only Domain Components (DCs). The base_dn will populate with a default value when a URI is entered by parsing domain components from the URI. The base DN should specify DC= for each domain component and multiple DCs should be separated by commas.

	base_dn: string

	// Sets the password of the bind_user user name account.

	bind_password?: string

	// Sets the common Name (CN) of the configured directory service group containing users with read-only privileges on the FlashArray. This name should be just the Common Name of the group without the CN= specifier. Common Names should not exceed 64 characters in length.
	// Not Supported from Purity 5.2.0 or higher. Use I(purefa_dsrole) module.

	ro_group?: string

	// Sets the common Name (CN) of the configured directory service group containing administrators with storage-related privileges on the FlashArray. This name should be just the Common Name of the group without the CN= specifier. Common Names should not exceed 64 characters in length.
	// Not Supported from Purity 5.2.0 or higher. Use I(purefa_dsrole) module.

	sa_group?: string

	// Create or delete directory service configuration

	state?: string
}

purefa_pg :: {

	// List of existing volumes to add to protection group.

	volume?: [..._]

	// Define whether to enabled snapshots for the protection group.

	enabled?: bool

	// Define whether to eradicate the protection group on delete and leave in trash.

	eradicate?: bool

	// List of existing hosts to add to protection group.

	host?: [..._]

	// List of existing hostgroups to add to protection group.

	hostgroup?: [..._]

	// The name of the protection group.

	pgroup: string

	// Define whether the protection group should exist or not.

	state?: string

	// List of remote arrays or offload target for replication protection group to connect to.
	// Note that all replicated protection groups are asynchronous.
	// Target arrays or offload targets must already be connected to the source array.
	// Maximum number of targets per Protection Group is 4, assuming your configuration supports this.

	target?: [..._]
}

purefa_smtp :: {

	// IPv4 or IPv6 address or FQDN. A port number may be appended.

	relay_host?: string

	// Domain name.

	sender_domain?: string

	// Set or delete SMTP configuration

	state?: string

	// The SMTP username.

	user?: string

	// The SMTP password.

	password?: string
}

purefa_info :: {

	// When supplied, this argument will define the information to be collected. Possible values for this include all, minimum, config, performance, capacity, network, subnet, interfaces, hgroups, pgroups, hosts, admins, volumes, snapshots, pods, vgroups, offload, apps, arrays, certs and kmip.

	gather_subset?: [..._]
}

purefa_ntp :: {

	// A list of up to 4 alternate NTP servers. These may include IPv4, IPv6 or FQDNs. Invalid IP addresses will cause the module to fail. No validation is performed for FQDNs.
	// If more than 4 servers are provided, only the first 4 unique nameservers will be used.
	// if no servers are given a default of I(0.pool.ntp.org) will be used.

	ntp_servers?: [..._]

	// Create or delete NTP servers configuration

	state?: string
}
