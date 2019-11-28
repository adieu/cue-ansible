package ipa

ipa_sudocmd :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	ipa_sudocmd: {

		// A description of this command.

		description?: string

		// State to ensure

		state?: string

		// Sudo Command.

		sudocmd: string
	}
}

ipa_sudorule :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	ipa_sudorule: {

		// List of options to add to the sudo rule.

		sudoopt?: string

		// Canonical name.
		// Can not be changed as it is the unique identifier.

		cn: string

		// List of host groups assigned to the rule.
		// If an empty list is passed all host groups will be removed from the rule.
		// If option is omitted host groups will not be checked or changed.
		// Option C(hostcategory) must be omitted to assign host groups.

		hostgroup?: string

		// State to ensure

		state?: string

		// Description of the sudo rule.

		description?: string

		// Host category the rule applies to.
		// If 'all' is passed one must omit C(host) and C(hostgroup).
		// Option C(host) and C(hostgroup) must be omitted to assign 'all'.

		hostcategory?: string

		// List of commands assigned to the rule.
		// If an empty list is passed all commands will be removed from the rule.
		// If option is omitted commands will not be checked or changed.

		cmd?: string

		// RunAs Group category the rule applies to.

		runasgroupcategory?: string

		// RunAs User category the rule applies to.

		runasusercategory?: string

		// List of users assigned to the rule.
		// If an empty list is passed all users will be removed from the rule.
		// If option is omitted users will not be checked or changed.

		user?: string

		// User category the rule applies to.

		usercategory?: string

		// List of user groups assigned to the rule.
		// If an empty list is passed all user groups will be removed from the rule.
		// If option is omitted user groups will not be checked or changed.

		usergroup?: string

		// Command category the rule applies to.

		cmdcategory?: string

		// List of hosts assigned to the rule.
		// If an empty list is passed all hosts will be removed from the rule.
		// If option is omitted hosts will not be checked or changed.
		// Option C(hostcategory) must be omitted to assign hosts.

		host?: string
	}
}

ipa_role :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	ipa_role: {

		// A description of this role-group.

		description?: string

		// List of group names assign to this role.
		// If an empty list is passed all assigned groups will be unassigned from the role.
		// If option is omitted groups will not be checked or changed.
		// If option is passed all assigned groups that are not passed will be unassigned from the role.

		group?: string

		// List of user names to assign.
		// If an empty list is passed all assigned users will be removed from the role.
		// If option is omitted users will not be checked or changed.

		user?: string

		// Role name.
		// Can not be changed as it is the unique identifier.

		cn: string

		// List of host group names to assign.
		// If an empty list is passed all assigned host groups will be removed from the role.
		// If option is omitted host groups will not be checked or changed.
		// If option is passed all assigned hostgroups that are not passed will be unassigned from the role.

		hostgroup?: string

		// List of privileges granted to the role.
		// If an empty list is passed all assigned privileges will be removed.
		// If option is omitted privileges will not be checked or changed.
		// If option is passed all assigned privileges that are not passed will be removed.

		privilege?: string

		// List of service names to assign.
		// If an empty list is passed all assigned services will be removed from the role.
		// If option is omitted services will not be checked or changed.
		// If option is passed all assigned services that are not passed will be removed from the role.

		service?: string

		// State to ensure

		state?: string

		// List of host names to assign.
		// If an empty list is passed all assigned hosts will be unassigned from the role.
		// If option is omitted hosts will not be checked or changed.
		// If option is passed all assigned hosts that are not passed will be unassigned from the role.

		host?: string
	}
}

ipa_user :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	ipa_user: {

		// Date at which the user password will expire
		// In the format YYYYMMddHHmmss
		// e.g. 20180121182022 will expire on 21 January 2018 at 18:20:22

		krbpasswordexpiration?: string

		// Login shell

		loginshell?: string

		// Surname

		sn?: string

		// Title

		title?: string

		// Password for a user. Will not be set for an existing user unless C(update_password) is set to C(always), which is the default.

		password?: string

		// State to ensure

		state?: string

		// Account Settings UID/Posix User ID number

		uidnumber?: string

		// First name

		givenname?: string

		// List of telephone numbers assigned to the user.
		// If an empty list is passed all assigned telephone numbers will be deleted.
		// If None is passed telephone numbers will not be checked or changed.

		telephonenumber?: string

		// Set password for a user.

		update_password?: string

		// uid of the user

		uid: string

		// Display name

		displayname?: string

		// Posix Group ID

		gidnumber?: string

		// List of mail addresses assigned to the user.
		// If an empty list is passed all assigned email addresses will be deleted.
		// If None is passed email addresses will not be checked or changed.

		mail?: string

		// List of public SSH key.
		// If an empty list is passed all assigned public keys will be deleted.
		// If None is passed SSH public keys will not be checked or changed.

		sshpubkey?: string
	}
}

ipa_vault :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	ipa_vault: {

		// Vault Salt.

		ipavaultsalt?: string

		// Vault types are based on security level.

		ipavaulttype: string

		// State to ensure.

		state?: string

		// Description.

		description?: string

		// Public key.

		ipavaultpublickey?: string

		// Any service can own one or more service vaults.
		// Mutually exclusive with user.

		service?: string

		// Any user can own one or more user vaults.
		// Mutually exclusive with service.

		username?: string

		// Validate IPA server certificates.

		validate_certs?: bool

		// Vault name.
		// Can not be changed as it is the unique identifier.

		cn: string

		// Force replace the existant vault on IPA server.

		replace?: bool
	}
}

ipa_config :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	ipa_config: {

		// Default e-mail domain for new users.

		ipadefaultemaildomain?: string

		// Default shell for new users.

		ipadefaultloginshell?: string
	}
}

ipa_dnsrecord :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	ipa_dnsrecord: {

		// Manage DNS record name with this value.
		// In the case of 'A' or 'AAAA' record types, this will be the IP address.
		// In the case of 'A6' record type, this will be the A6 Record data.
		// In the case of 'CNAME' record type, this will be the hostname.
		// In the case of 'DNAME' record type, this will be the DNAME target.
		// In the case of 'PTR' record type, this will be the hostname.
		// In the case of 'TXT' record type, this will be a text.
		// In the case of 'SRV' record type, this will be a service record.
		// In the case of 'MX' record type, this will be a mail exchanger record.

		record_value: string

		// State to ensure

		state?: string

		// The DNS zone name to which DNS record needs to be managed.

		zone_name: string

		// The DNS record name to manage.

		record_name: string

		// Set the TTL for the record.
		// Applies only when adding a new or changing the value of record_value.

		record_ttl?: string

		// The type of DNS record name.
		// Currently, 'A', 'AAAA', 'A6', 'CNAME', 'DNAME', 'PTR', 'TXT', 'SRV' and 'MX' are supported.
		// 'A6', 'CNAME', 'DNAME' and 'TXT' are added in version 2.5.
		// 'SRV' and 'MX' are added in version 2.8.

		record_type?: string
	}
}

ipa_group :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	ipa_group: {

		// Allow adding external non-IPA members from trusted domains.

		external?: bool

		// GID (use this option to set it manually).

		gidnumber?: string

		// List of group names assigned to this group.
		// If an empty list is passed all groups will be removed from this group.
		// If option is omitted assigned groups will not be checked or changed.
		// Groups that are already assigned but not passed will be removed.

		group?: string

		// Create as a non-POSIX group.

		nonposix?: bool

		// State to ensure

		state?: string

		// List of user names assigned to this group.
		// If an empty list is passed all users will be removed from this group.
		// If option is omitted assigned users will not be checked or changed.
		// Users that are already assigned but not passed will be removed.

		user?: string

		// Canonical name.
		// Can not be changed as it is the unique identifier.

		cn: string

		// Description of the group.

		description?: string
	}
}

ipa_hbacrule :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	ipa_hbacrule: {

		// List of source host group names to assign.
		// If an empty list if passed all assigned source host groups will be removed from the rule.
		// If option is omitted source host groups will not be checked or changed.

		sourcehostgroup?: string

		// List of user names to assign.
		// If an empty list if passed all assigned users will be removed from the rule.
		// If option is omitted users will not be checked or changed.

		user?: string

		// List of service group names to assign.
		// If an empty list is passed all assigned service groups will be removed from the rule.
		// If option is omitted service groups will not be checked or changed.

		servicegroup?: string

		// Host category

		hostcategory?: string

		// List of service names to assign.
		// If an empty list is passed all services will be removed from the rule.
		// If option is omitted services will not be checked or changed.

		service?: string

		// State to ensure

		state?: string

		// User category

		usercategory?: string

		// List of host names to assign.
		// If an empty list is passed all hosts will be removed from the rule.
		// If option is omitted hosts will not be checked or changed.

		host?: string

		// Description

		description?: string

		// List of hostgroup names to assign.
		// If an empty list is passed all hostgroups will be removed. from the rule
		// If option is omitted hostgroups will not be checked or changed.

		hostgroup?: string

		// Service category

		servicecategory?: string

		// List of source host names to assign.
		// If an empty list if passed all assigned source hosts will be removed from the rule.
		// If option is omitted source hosts will not be checked or changed.

		sourcehost?: string

		// Source host category

		sourcehostcategory?: string

		// List of user group names to assign.
		// If an empty list if passed all assigned user groups will be removed from the rule.
		// If option is omitted user groups will not be checked or changed.

		usergroup?: string

		// Canonical name.
		// Can not be changed as it is the unique identifier.

		cn: string
	}
}

ipa_host :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	ipa_host: {

		// Host hardware platform (e.g. "Lenovo T61")

		ns_hardware_platform?: string

		// Host operating system and version (e.g. "Fedora 9")

		ns_os_version?: string

		// If set C("True") with state as C("absent"), then removes DNS records of the host managed by FreeIPA DNS.
		// This option has no effect for states other than "absent".

		update_dns?: bool

		// List of Hardware MAC address(es) off this host.
		// If option is omitted MAC addresses will not be checked or changed.
		// If an empty list is passed all assigned MAC addresses will be removed.
		// MAC addresses that are already assigned but not passed will be removed.

		mac_address?: string

		// Force host name even if not in DNS.

		force?: bool

		// Full qualified domain name.
		// Can not be changed as it is the unique identifier.

		fqdn: string

		// Add the host to DNS with this IP address.

		ip_address?: string

		// Host location (e.g. "Lab 2")

		ns_host_location?: string

		// Generate a random password to be used in bulk enrollment

		random_password?: bool

		// State to ensure

		state?: string

		// List of Base-64 encoded server certificates.
		// If option is omitted certificates will not be checked or changed.
		// If an empty list is passed all assigned certificates will be removed.
		// Certificates already assigned but not passed will be removed.

		user_certificate?: string

		// A description of this host.

		description?: string
	}
}

ipa_service :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	ipa_service: {

		// Force principal name even if host is not in DNS.

		force?: bool

		// defines the list of 'ManagedBy' hosts

		hosts?: string

		// principal of the service
		// Can not be changed as it is the unique identifier.

		krbcanonicalname: string

		// State to ensure

		state?: string
	}
}

ipa_subca :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	ipa_subca: {

		// State to ensure
		// State 'disable' and 'enable' is available for FreeIPA 4.4.2 version and onwards

		state?: string

		// The Sub Certificate Authority's description.

		subca_desc: string

		// The Sub Certificate Authority name which needs to be managed.

		subca_name: string

		// The Sub Certificate Authority's Subject. e.g., 'CN=SampleSubCA1,O=testrelm.test'

		subca_subject: string
	}
}

onepassword_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	onepassword_info: {

		// A dictionary containing authentication details. If this is set, M(onepassword_info) will attempt to sign in to 1Password automatically.
		// Without this option, you must have already logged in via the 1Password CLI before running Ansible.
		// It is B(highly) recommended to store 1Password credentials in an Ansible Vault. Ensure that the key used to encrypt the Ansible Vault is equal to or greater in strength than the 1Password master password.

		auto_login?: {...}

		// Used to specify the exact path to the C(op) command line interface

		cli_path?: string

		// A list of one or more search terms.
		// Each search term can either be a simple string or it can be a dictionary for more control.
		// When passing a simple string, I(field) is assumed to be C(password).
		// When passing a dictionary, the following fields are available.

		search_terms: [...]
	}
}

ipa_dnszone :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	ipa_dnszone: {

		// Apply dynamic update to zone

		dynamicupdate?: string

		// State to ensure

		state?: string

		// The DNS zone name to which needs to be managed.

		zone_name: string
	}
}

ipa_hostgroup :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	ipa_hostgroup: {

		// Description

		description?: string

		// List of hosts that belong to the host-group.
		// If an empty list is passed all hosts will be removed from the group.
		// If option is omitted hosts will not be checked or changed.
		// If option is passed all assigned hosts that are not passed will be unassigned from the group.

		host?: string

		// List of host-groups than belong to that host-group.
		// If an empty list is passed all host-groups will be removed from the group.
		// If option is omitted host-groups will not be checked or changed.
		// If option is passed all assigned hostgroups that are not passed will be unassigned from the group.

		hostgroup?: string

		// State to ensure.

		state?: string

		// Name of host-group.
		// Can not be changed as it is the unique identifier.

		cn: string
	}
}

ipa_sudocmdgroup :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	ipa_sudocmdgroup: {

		// Sudo Command Group.

		cn: string

		// Group description.

		description?: string

		// State to ensure

		state?: string

		// List of sudo commands to assign to the group.
		// If an empty list is passed all assigned commands will be removed from the group.
		// If option is omitted sudo commands will not be checked or changed.

		sudocmd?: string
	}
}
