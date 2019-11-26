package univention

udm_group :: {

	// Subpath inside the OU, e.g. C(cn=classes,cn=students,cn=groups).

	subpath?: string

	// Group description.

	description?: string

	// Name of the posix group.

	name: string

	// LDAP OU, e.g. school for LDAP OU C(ou=school,dc=example,dc=com).

	ou?: string

	// define the whole ldap position of the group, e.g. C(cn=g123m-1A,cn=classes,cn=schueler,cn=groups,ou=schule,dc=example,dc=com).

	position?: string

	// Whether the group is present or not.

	state?: string
}

udm_share :: {

	// Fake oplocks.

	samba_fake_oplocks?: string

	// Security mode.

	samba_security_mode?: string

	// Create files/directories with the owner of the parent directory.

	samba_inherit_owner?: string

	// Postexec script.

	samba_postexec?: string

	// Force directory security mode.

	samba_force_directory_security_mode?: string

	// MSDFS root.

	samba_msdfs_root?: string

	// Permissions for the share's root directory.

	directorymode?: string

	// Create files/directories with permissions of the parent directory.

	samba_inherit_permissions?: string

	// NFS synchronisation.

	sync?: string

	// Directory owner group of the share's root directory.

	group?: string

	// Invalid users or groups.

	samba_invalid_users?: string

	// Option name in exports file.

	nfs_custom_settings?: string

	// Directory mode.

	samba_directory_mode?: string

	// Force file mode.

	samba_force_create_mode?: string

	// NT ACL support.

	samba_nt_acl_support?: string

	// File mode.

	samba_create_mode?: string

	// Locking.

	samba_locking?: string

	// NFS write access.

	writeable?: string

	// Modify user ID for root user (root squashing).

	root_squash?: string

	// Level 2 oplocks.

	samba_level_2_oplocks?: string

	// Subtree checking.

	subtree_checking?: string

	// Name

	name: string

	// Force group.

	samba_force_group?: string

	// Force security mode.

	samba_force_security_mode?: string

	// Windows name. Required if C(state=present).

	samba_name?: string

	// Blocking size.

	samba_block_size?: string

	// Client-side caching policy.

	samba_csc_policy?: string

	// Whether the share is present or not.

	state?: string

	// Directory security mode.

	samba_directory_security_mode?: string

	// Force user.

	samba_force_user?: string

	// Valid users or groups.

	samba_valid_users?: string

	// Only allow access for this host, IP address or network.

	nfs_hosts?: string

	// Blocking locks.

	samba_blocking_locks?: string

	// Inherit ACLs.

	samba_inherit_acls?: string

	// Samba write access.

	samba_writeable?: string

	// Option name in smb.conf and its value.

	samba_custom_settings?: string

	// Allowed host/network.

	samba_hosts_allow?: string

	// Strict locking.

	samba_strict_locking?: string

	// VFS objects.

	samba_vfs_objects?: string

	// Restrict write access to these users/groups.

	samba_write_list?: string

	// Force directory mode.

	samba_force_directory_mode?: string

	// Denied host/network.

	samba_hosts_deny?: string

	// Directory on the providing server, e.g. C(/home). Required if C(state=present).

	path?: string

	// Users with write access may modify permissions.

	samba_dos_filemode?: string

	// Allow anonymous read-only access with a guest user.

	samba_public?: string

	// Host FQDN (server which provides the share), e.g. C({{ ansible_fqdn }}). Required if C(state=present).

	host?: string

	// Hide files.

	samba_hide_files?: string

	// Oplocks.

	samba_oplocks?: string

	// Hide unreadable files/directories.

	samba_hide_unreadable?: string

	// Preexec script.

	samba_preexec?: string

	// Organisational unit, inside the LDAP Base DN.

	ou: string

	// Directory owner of the share's root directory.

	owner?: string

	// Show in Windows network environment.

	samba_browseable?: string
}

udm_user :: {

	// Samba privilege, like allow printer administration, do domain join.

	samba_privileges?: string

	// Allow the authentication only on this Microsoft Windows host.

	samba_user_workstations?: string

	// Birthday

	birthday?: string

	// GECOS

	gecos?: string

	// List of alternative e-mail addresses.

	mail_alternative_address?: string

	// List of pager telephone numbers.

	pager_telephonenumber?: string

	// Postal code of users business address.

	postcode?: string

	// Login shell

	shell?: string

	// LDAP subpath inside the organizational unit, e.g. C(cn=teachers,cn=users) for LDAP container C(cn=teachers,cn=users,dc=example,dc=com).

	subpath?: string

	// C(always) will update passwords if they differ. C(on_create) will only set the password for newly created users.

	update_password?: string

	// Description (not gecos)

	description?: string

	// List of private telephone numbers.

	home_telephone_number?: string

	// Last name. Required if C(state=present).

	lastname?: string

	// Mobile phone number

	mobile_telephone_number?: string

	// Path to home NFS share, inside the homeShare.

	home_share_path?: string

	// Windows logon script.

	scriptpath?: string

	// A list of superiors as LDAP DNs.

	secretary?: string

	// Windows home drive, e.g. C("H:").

	homedrive?: string

	// Override password check

	override_pw_length?: bool

	// Street of users business address.

	street?: string

	// Account expiry date, e.g. C(1999-12-31).

	userexpiry?: string

	// Display name (not gecos)

	display_name?: string

	// Employee type

	employee_type?: string

	// First name. Required if C(state=present).

	firstname?: string

	// Home NFS share. Must be a LDAP DN, e.g. C(cn=home,cn=shares,ou=school,dc=example,dc=com).

	home_share?: string

	// Department number of users business address.

	department_number?: string

	// Primary group. This must be the group LDAP DN.

	primary_group?: string

	// Title, e.g. C(Prof.).

	title?: string

	// Unix home directory

	unixhome?: string

	// Password. Required if C(state=present).

	password?: string

	// Windows profile directory

	profilepath?: string

	// Enable user for the following service providers.

	serviceprovider?: string

	// City of users business address.

	city?: string

	// A list of e-mail addresses.

	email?: string

	// Primary e-mail address

	mail_primary_address?: string

	// Organizational Unit inside the LDAP Base DN, e.g. C(school) for LDAP OU C(ou=school,dc=example,dc=com).

	ou?: string

	// Country of users business address.

	country?: string

	// POSIX groups, the LDAP DNs of the groups will be found with the LDAP filter for each group as $GROUP: C((&(objectClass=posixGroup)(cn=$GROUP))).

	groups?: string

	// Change password on next login.

	pwd_change_next_login?: string

	// Room number of users business address.

	room_number?: string

	// List of telephone numbers.

	phone?: string

	// Define the whole position of users object inside the LDAP tree, e.g. C(cn=employee,cn=users,ou=school,dc=example,dc=com).

	position?: string

	// Windows home path, e.g. C('\\$FQDN\$USERNAME').

	sambahome?: string

	// Whether the user is present or not.

	state?: string

	// Employee number

	employee_number?: string

	// FQDN of mail server

	mail_home_server?: string

	// Organisation

	organisation?: string

	// Override password history

	override_pw_history?: bool

	// User name

	username: string
}

udm_dns_record :: {

	// Additional data for this record, e.g. ['a': '192.0.2.1']. Required if C(state=present).

	data?: string

	// Name of the record, this is also the DNS record. E.g. www for www.example.com.

	name: string

	// Whether the dns record is present or not.

	state?: string

	// Define the record type. C(host_record) is a A or AAAA record, C(alias) is a CNAME, C(ptr_record) is a PTR record, C(srv_record) is a SRV record and C(txt_record) is a TXT record.

	type: string

	// Corresponding DNS zone for this record, e.g. example.com.

	zone: string
}

udm_dns_zone :: {

	// List of interface IP addresses, on which the server should response this zone. Required if C(state=present).

	interfaces?: string

	// List of MX servers. (Must declared as A or AAAA records).

	mx?: string

	// List of appropriate name servers. Required if C(state=present).

	nameserver?: string

	// Interval before the zone should be refreshed.

	refresh?: string

	// Whether the dns zone is present or not.

	state?: string

	// Contact person in the SOA record.

	contact?: string

	// Interval that should elapse before a failed refresh should be retried.

	retry?: string

	// Minimum TTL field that should be exported with any RR from this zone.

	ttl?: string

	// Define if the zone is a forward or reverse DNS zone.

	type: string

	// DNS zone name, e.g. C(example.com).

	zone: string

	// Specifies the upper limit on the time interval that can elapse before the zone is no longer authoritative.

	expire?: string
}
