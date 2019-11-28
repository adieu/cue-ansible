package univention

udm_dns_record :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	udm_dns_record: {

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
}

udm_dns_zone :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	udm_dns_zone: {

		// Define if the zone is a forward or reverse DNS zone.

		type: string

		// List of interface IP addresses, on which the server should response this zone. Required if C(state=present).

		interfaces?: string

		// List of MX servers. (Must declared as A or AAAA records).

		mx?: string

		// Whether the dns zone is present or not.

		state?: string

		// Interval before the zone should be refreshed.

		refresh?: string

		// Interval that should elapse before a failed refresh should be retried.

		retry?: string

		// Minimum TTL field that should be exported with any RR from this zone.

		ttl?: string

		// DNS zone name, e.g. C(example.com).

		zone: string

		// Contact person in the SOA record.

		contact?: string

		// Specifies the upper limit on the time interval that can elapse before the zone is no longer authoritative.

		expire?: string

		// List of appropriate name servers. Required if C(state=present).

		nameserver?: string
	}
}

udm_group :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	udm_group: {

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
}

udm_share :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	udm_share: {

		// Level 2 oplocks.

		samba_level_2_oplocks?: string

		// Windows name. Required if C(state=present).

		samba_name?: string

		// Strict locking.

		samba_strict_locking?: string

		// Directory security mode.

		samba_directory_security_mode?: string

		// Force group.

		samba_force_group?: string

		// Create files/directories with the owner of the parent directory.

		samba_inherit_owner?: string

		// Blocking locks.

		samba_blocking_locks?: string

		// Denied host/network.

		samba_hosts_deny?: string

		// Inherit ACLs.

		samba_inherit_acls?: string

		// Option name in smb.conf and its value.

		samba_custom_settings?: string

		// Directory mode.

		samba_directory_mode?: string

		// Only allow access for this host, IP address or network.

		nfs_hosts?: string

		// Directory owner of the share's root directory.

		owner?: string

		// Allowed host/network.

		samba_hosts_allow?: string

		// Permissions for the share's root directory.

		directorymode?: string

		// Show in Windows network environment.

		samba_browseable?: string

		// Force directory security mode.

		samba_force_directory_security_mode?: string

		// Force file mode.

		samba_force_create_mode?: string

		// Host FQDN (server which provides the share), e.g. C({{ ansible_fqdn }}). Required if C(state=present).

		host?: string

		// Client-side caching policy.

		samba_csc_policy?: string

		// Locking.

		samba_locking?: string

		// Whether the share is present or not.

		state?: string

		// Directory owner group of the share's root directory.

		group?: string

		// Directory on the providing server, e.g. C(/home). Required if C(state=present).

		path?: string

		// Modify user ID for root user (root squashing).

		root_squash?: string

		// Force directory mode.

		samba_force_directory_mode?: string

		// Create files/directories with permissions of the parent directory.

		samba_inherit_permissions?: string

		// NT ACL support.

		samba_nt_acl_support?: string

		// Option name in exports file.

		nfs_custom_settings?: string

		// Force security mode.

		samba_force_security_mode?: string

		// Allow anonymous read-only access with a guest user.

		samba_public?: string

		// File mode.

		samba_create_mode?: string

		// Restrict write access to these users/groups.

		samba_write_list?: string

		// Invalid users or groups.

		samba_invalid_users?: string

		// Users with write access may modify permissions.

		samba_dos_filemode?: string

		// Force user.

		samba_force_user?: string

		// Security mode.

		samba_security_mode?: string

		// Subtree checking.

		subtree_checking?: string

		// Name

		name: string

		// NFS synchronisation.

		sync?: string

		// Samba write access.

		samba_writeable?: string

		// NFS write access.

		writeable?: string

		// Hide files.

		samba_hide_files?: string

		// Hide unreadable files/directories.

		samba_hide_unreadable?: string

		// Blocking size.

		samba_block_size?: string

		// MSDFS root.

		samba_msdfs_root?: string

		// Oplocks.

		samba_oplocks?: string

		// Preexec script.

		samba_preexec?: string

		// Postexec script.

		samba_postexec?: string

		// Valid users or groups.

		samba_valid_users?: string

		// Organisational unit, inside the LDAP Base DN.

		ou: string

		// Fake oplocks.

		samba_fake_oplocks?: string

		// VFS objects.

		samba_vfs_objects?: string
	}
}

udm_user :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	udm_user: {

		// Country of users business address.

		country?: string

		// Employee number

		employee_number?: string

		// Home NFS share. Must be a LDAP DN, e.g. C(cn=home,cn=shares,ou=school,dc=example,dc=com).

		home_share?: string

		// Password. Required if C(state=present).

		password?: string

		// Define the whole position of users object inside the LDAP tree, e.g. C(cn=employee,cn=users,ou=school,dc=example,dc=com).

		position?: string

		// Primary group. This must be the group LDAP DN.

		primary_group?: string

		// C(always) will update passwords if they differ. C(on_create) will only set the password for newly created users.

		update_password?: string

		// Description (not gecos)

		description?: string

		// A list of e-mail addresses.

		email?: string

		// Path to home NFS share, inside the homeShare.

		home_share_path?: string

		// List of private telephone numbers.

		home_telephone_number?: string

		// Primary e-mail address

		mail_primary_address?: string

		// Samba privilege, like allow printer administration, do domain join.

		samba_privileges?: string

		// City of users business address.

		city?: string

		// List of pager telephone numbers.

		pager_telephonenumber?: string

		// Login shell

		shell?: string

		// Title, e.g. C(Prof.).

		title?: string

		// Last name. Required if C(state=present).

		lastname?: string

		// Windows home path, e.g. C('\\$FQDN\$USERNAME').

		sambahome?: string

		// A list of superiors as LDAP DNs.

		secretary?: string

		// Account expiry date, e.g. C(1999-12-31).

		userexpiry?: string

		// Display name (not gecos)

		display_name?: string

		// Mobile phone number

		mobile_telephone_number?: string

		// Whether the user is present or not.

		state?: string

		// Allow the authentication only on this Microsoft Windows host.

		samba_user_workstations?: string

		// Birthday

		birthday?: string

		// Department number of users business address.

		department_number?: string

		// Employee type

		employee_type?: string

		// Windows home drive, e.g. C("H:").

		homedrive?: string

		// List of alternative e-mail addresses.

		mail_alternative_address?: string

		// Override password history

		override_pw_history?: bool

		// Room number of users business address.

		room_number?: string

		// Windows logon script.

		scriptpath?: string

		// Enable user for the following service providers.

		serviceprovider?: string

		// LDAP subpath inside the organizational unit, e.g. C(cn=teachers,cn=users) for LDAP container C(cn=teachers,cn=users,dc=example,dc=com).

		subpath?: string

		// First name. Required if C(state=present).

		firstname?: string

		// Organisation

		organisation?: string

		// Organizational Unit inside the LDAP Base DN, e.g. C(school) for LDAP OU C(ou=school,dc=example,dc=com).

		ou?: string

		// Override password check

		override_pw_length?: bool

		// List of telephone numbers.

		phone?: string

		// Postal code of users business address.

		postcode?: string

		// Windows profile directory

		profilepath?: string

		// Unix home directory

		unixhome?: string

		// GECOS

		gecos?: string

		// POSIX groups, the LDAP DNs of the groups will be found with the LDAP filter for each group as $GROUP: C((&(objectClass=posixGroup)(cn=$GROUP))).

		groups?: string

		// FQDN of mail server

		mail_home_server?: string

		// Change password on next login.

		pwd_change_next_login?: string

		// Street of users business address.

		street?: string

		// User name

		username: string
	}
}
