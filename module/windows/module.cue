package windows

win_path :: {

	// A single path element, or a list of path elements (ie, directories) to add or remove.
	// When multiple elements are included in the list (and C(state) is C(present)), the elements are guaranteed to appear in the same relative order in the resultant path value.
	// Variable expansions (eg, C(%VARNAME%)) are allowed, and are stored unexpanded in the target path element.
	// Any existing path elements not mentioned in C(elements) are always preserved in their current order.
	// New path elements are appended to the path, and existing path elements may be moved closer to the end to satisfy the requested ordering.
	// Paths are compared in a case-insensitive fashion, and trailing backslashes are ignored for comparison purposes. However, note that trailing backslashes in YAML require quotes.

	elements: [..._]

	// Target path environment variable name.

	name?: string

	// The level at which the environment variable specified by C(name) should be managed (either for the current user or global machine scope).

	scope?: string

	// Whether the path elements specified in C(elements) should be present or absent.

	state?: string
}

win_robocopy :: {

	// Destination file/directory to sync (Will receive contents of src).

	dest: string

	// Directly supply Robocopy flags.
	// If set, C(purge) and C(recurse) will be ignored.

	flags?: string

	// Deletes any files/directories found in the destination that do not exist in the source.
	// Toggles the C(/purge) flag to RoboCopy.
	// If C(flags) is set, this will be ignored.

	purge?: bool

	// Includes all subdirectories (Toggles the C(/e) flag to RoboCopy).
	// If C(flags) is set, this will be ignored.

	recurse?: bool

	// Source file/directory to sync.

	src: string
}

win_route :: {

	// Destination IP address in CIDR format (ip address/prefix length).

	destination: string

	// The gateway used by the static route.
	// If C(gateway) is not provided it will be set to C(0.0.0.0).

	gateway?: string

	// Metric used by the static route.

	metric?: int

	// If C(absent), it removes a network static route.
	// If C(present), it adds a network static route.

	state?: string
}

win_domain_computer :: {

	// Specifies the Active Directory Domain Services instance to connect to.
	// Can be in the form of an FQDN or NetBIOS name.
	// If not specified then the value is based on the domain of the computer running PowerShell.

	domain_server?: string

	// Specifies the X.500 path of the Organizational Unit (OU) or container where the new object is created. Required when I(state=present).

	ou?: string

	// Specified whether the computer should be C(present) or C(absent) in Active Directory.

	state?: string

	// The username to use when interacting with AD.
	// If this is not set then the user Ansible used to log in with will be used instead when using CredSSP or Kerberos with credential delegation.

	domain_username?: string

	// Specifies if an account is enabled.
	// An enabled account requires a password.
	// This parameter sets the Enabled property for an account object.
	// This parameter also sets the ADS_UF_ACCOUNTDISABLE flag of the Active Directory User Account Control (UAC) attribute.

	enabled?: bool

	// Specifies the name of the object.
	// This parameter sets the Name property of the Active Directory object.
	// The LDAP display name (ldapDisplayName) of this property is name.

	name: string

	// Specifies the Security Account Manager (SAM) account name of the computer.
	// It maximum is 256 characters, 15 is advised for older operating systems compatibility.
	// The LDAP display name (ldapDisplayName) for this property is sAMAccountName.
	// If ommitted the value is the same as C(name).
	// Note that all computer SAMAccountNames need to end with a $.

	sam_account_name?: string

	// Specifies a description of the object.
	// This parameter sets the value of the Description property for the object.
	// The LDAP display name (ldapDisplayName) for this property is description.

	description?: string

	// Specifies the fully qualified domain name (FQDN) of the computer.
	// This parameter sets the DNSHostName property for a computer object.
	// The LDAP display name for this property is dNSHostName.
	// Required when I(state=present).

	dns_hostname?: string

	// The password for I(username).

	domain_password?: string
}

win_domain_group_membership :: {

	// Desired state of the members in the group.
	// When C(state) is C(pure), only the members specified will exist, and all other existing members not specified are removed.

	state?: string

	// The password for I(username).

	domain_password?: string

	// Specifies the Active Directory Domain Services instance to connect to.
	// Can be in the form of an FQDN or NetBIOS name.
	// If not specified then the value is based on the domain of the computer running PowerShell.

	domain_server?: string

	// The username to use when interacting with AD.
	// If this is not set then the user Ansible used to log in with will be used instead when using CredSSP or Kerberos with credential delegation.

	domain_username?: string

	// A list of members to ensure are present/absent from the group.
	// The given names must be a SamAccountName of a user, group, service account, or computer.
	// For computers, you must add "$" after the name; for example, to add "Mycomputer" to a group, use "Mycomputer$" as the member.

	members: [..._]

	// Name of the domain group to manage membership on.

	name: string
}

win_find :: {

	// Will set patterns to run as a regex check if set to C(yes).

	use_regex?: bool

	// List of paths of directories to search for files or folders in.
	// This can be supplied as a single path or a list of paths.

	paths: [..._]

	// One or more (powershell or regex) patterns to compare filenames with.
	// The type of pattern matching is controlled by C(use_regex) option.
	// The patterns restrict the list of files or folders to be returned based on the filenames.
	// For a file to be matched it only has to match with one pattern in a list provided.

	patterns?: [..._]

	// Select files or folders whose size is equal to or greater than the specified size.
	// Use a negative value to find files equal to or less than the specified size.
	// You can specify the size with a suffix of the byte type i.e. kilo = k, mega = m...
	// Size is not evaluated for symbolic links.

	size?: string

	// Type of file to search for.

	file_type?: string

	// Set this to C(yes) to follow symlinks in the path.
	// This needs to be used in conjunction with C(recurse).

	follow?: bool

	// Whether to return a checksum of the file in the return info (default sha1), use C(checksum_algorithm) to change from the default.

	get_checksum?: bool

	// Set this to include hidden files or folders.

	hidden?: bool

	// Will recursively descend into the directory looking for files or folders.

	recurse?: bool

	// Select files or folders whose age is equal to or greater than the specified time.
	// Use a negative age to find files equal to or less than the specified time.
	// You can choose seconds, minutes, hours, days or weeks by specifying the first letter of an of those words (e.g., "2s", "10d", 1w").

	age?: string

	// Choose the file property against which we compare C(age).
	// The default attribute we compare with is the last modification time.

	age_stamp?: string

	// Algorithm to determine the checksum of a file.
	// Will throw an error if the host is unable to use specified algorithm.

	checksum_algorithm?: string
}

win_iis_website :: {

	// The IP address to bind to / use for the new site.

	ip?: string

	// The physical path on the remote host to use for the new site.
	// The specified folder must already exist.

	physical_path?: string

	// The port to bind to / use for the new site.

	port?: int

	// Explicitly set the IIS numeric ID for a site.
	// Note that this value cannot be changed after the website has been created.

	site_id?: string

	// State of the web site

	state?: string

	// The application pool in which the new site executes.

	application_pool?: string

	// The host header to bind to / use for the new site.

	hostname?: string

	// Names of web site.

	name: string

	// Custom site Parameters from string where properties are separated by a pipe and property name/values by colon Ex. "foo:1|bar:2"

	parameters?: string

	// Enables HTTPS binding on the site..

	ssl?: string
}

win_audit_rule :: {

	// Propagation flag on the audit rules.
	// This value is ignored when the path type is a file.
	// For more information on the choices see MSDN PropagationFlags enumeration at U(https://msdn.microsoft.com/en-us/library/system.security.accesscontrol.propagationflags.aspx).

	propagation_flags?: string

	// Comma separated list of the rights desired. Only required for adding a rule.
	// If I(path) is a file or directory, rights can be any right under MSDN FileSystemRights U(https://msdn.microsoft.com/en-us/library/system.security.accesscontrol.filesystemrights.aspx).
	// If I(path) is a registry key, rights can be any right under MSDN RegistryRights U(https://msdn.microsoft.com/en-us/library/system.security.accesscontrol.registryrights.aspx).

	rights: [..._]

	// Whether the rule should be C(present) or C(absent).
	// For absent, only I(path), I(user), and I(state) are required.
	// Specifying C(absent) will remove all rules matching the defined I(user).

	state?: string

	// The user or group to adjust rules for.

	user: string

	// Defines whether to log on failure, success, or both.
	// To log both define as comma separated list "Success, Failure".

	audit_flags: [..._]

	// Defines what objects inside of a folder or registry key will inherit the settings.
	// If you are setting a rule on a file, this value has to be changed to C(none).
	// For more information on the choices see MSDN PropagationFlags enumeration at U(https://msdn.microsoft.com/en-us/library/system.security.accesscontrol.inheritanceflags.aspx).

	inheritance_flags?: [..._]

	// Path to the file, folder, or registry key.
	// Registry paths should be in Powershell format, beginning with an abbreviation for the root such as, C(HKLM:\Software).

	path: string
}

win_hostname :: {

	// The hostname to set for the computer.

	name: string
}

win_wakeonlan :: {

	// MAC address to send Wake-on-LAN broadcast packet for.

	mac: string

	// UDP port to use for magic Wake-on-LAN packet.

	port?: int

	// Network broadcast address to use for broadcasting magic Wake-on-LAN packet.

	broadcast?: string
}

win_scheduled_task_stat :: {

	// The name of the scheduled task to get information for.
	// If C(name) is set and exists, will return information on the task itself.

	name?: string

	// The folder path where the task lives.

	path?: string
}

win_updates :: {

	// A scalar or list of categories to install updates from. To get the list of categories, run the module with C(state=searched). The category must be the full category string, but is case insensitive.
	// Some possible categories are Application, Connectors, Critical Updates, Definition Updates, Developer Kits, Feature Packs, Guidance, Security Updates, Service Packs, Tools, Update Rollups and Updates.

	category_names?: [..._]

	// Ansible will automatically reboot the remote host if it is required and continue to install updates after the reboot.
	// This can be used instead of using a M(win_reboot) task after this one and ensures all updates for that category is installed in one go.
	// Async does not work when C(reboot=yes).

	reboot?: bool

	// The time in seconds to wait until the host is back online from a reboot.
	// This is only used if C(reboot=yes) and a reboot is required.

	reboot_timeout?: string

	// Will not auto elevate the remote process with I(become) and use a scheduled task instead.
	// Set this to C(yes) when using this module with async on Server 2008, 2008 R2, or Windows 7, or on Server 2008 that is not authenticated with basic or credssp.
	// Can also be set to C(yes) on newer hosts where become does not work due to further privilege restrictions from the OS defaults.

	use_scheduled_task?: bool

	// A list of update titles or KB numbers that can be used to specify which updates are to be searched or installed.
	// If an available update does not match one of the entries, then it is skipped and not installed.
	// Each entry can either be the KB article or Update title as a regex according to the PowerShell regex rules.
	// The whitelist is only validated on updates that were found based on I(category_names). It will not force the module to install an update if it was not in the category specified.

	whitelist?: [..._]

	// A list of update titles or KB numbers that can be used to specify which updates are to be excluded from installation.
	// If an available update does match one of the entries, then it is skipped and not installed.
	// Each entry can either be the KB article or Update title as a regex according to the PowerShell regex rules.

	blacklist?: [..._]

	// Defines the Windows Update source catalog.
	// C(default) Use the default search source. For many systems default is set to the Microsoft Windows Update catalog. Systems participating in Windows Server Update Services (WSUS), Systems Center Configuration Manager (SCCM), or similar corporate update server environments may default to those managed update sources instead of the Windows Update catalog.
	// C(managed_server) Use a managed server catalog. For environments utilizing Windows Server Update Services (WSUS), Systems Center Configuration Manager (SCCM), or similar corporate update servers, this option selects the defined corporate update source.
	// C(windows_update) Use the Microsoft Windows Update catalog.

	server_selection?: string

	// Controls whether found updates are downloaded or installed or listed
	// This module also supports Ansible check mode, which has the same effect as setting state=searched

	state?: string

	// If set, C(win_updates) will append update progress to the specified file. The directory must already exist.

	log_path?: string
}

win_wait_for_process :: {

	// Number of seconds to sleep between checks.
	// Only applies when waiting for a process to start.  Waiting for a process to start does not have a native non-polling mechanism. Waiting for a stop uses native PowerShell and does not require polling.

	sleep?: int

	// When checking for a running process C(present) will block execution until the process exists, or until the timeout has been reached. C(absent) will block execution until the process no longer exists, or until the timeout has been reached.
	// When waiting for C(present), the module will return changed only if the process was not present on the initial check but became present on subsequent checks.
	// If, while waiting for C(absent), new processes matching the supplied pattern are started, these new processes will not be included in the action.

	state?: string

	// The maximum number of seconds to wait for a for a process to start or stop before erroring out.

	timeout?: int

	// The owner of the process.
	// Requires PowerShell version 4.0 or newer.

	owner?: string

	// Seconds to wait after checking for processes.

	post_wait_delay?: int

	// Minimum number of process matching the supplied pattern to satisfy C(present) condition.
	// Only applies to C(present).

	process_min_count?: int

	// RegEx pattern matching desired process(es).

	process_name_pattern?: string

	// The PID of the process.

	pid?: int

	// Seconds to wait before checking processes.

	pre_wait_delay?: int

	// The name of the process(es) for which to wait.  The name of the process(es) should not include the file extension suffix.

	process_name_exact?: [..._]
}

win_chocolatey_source :: {

	// The username used to access I(source).

	source_username?: string

	// When C(absent), will remove the source.
	// When C(disabled), will ensure the source exists but is disabled.
	// When C(present), will ensure the source exists and is enabled.

	state?: string

	// Makes the source visible to Administrators only.
	// Requires Chocolatey >= 0.10.8.
	// When creating a new source, this defaults to C(no).

	admin_only?: bool

	// Bypass the proxy when using this source.
	// Requires Chocolatey >= 0.10.4.
	// When creating a new source, this defaults to C(no).

	bypass_proxy?: bool

	// The path to a .pfx file to use for X509 authenticated feeds.
	// Requires Chocolatey >= 0.9.10.

	certificate?: string

	// The name of the source to configure.

	name: string

	// The file/folder/url of the source.
	// Required when I(state) is C(present) or C(disabled) and the source does not already exist.

	source?: string

	// Allow the source to be used with self-service
	// Requires Chocolatey >= 0.10.4.
	// When creating a new source, this defaults to C(no).

	allow_self_service?: bool

	// The password for I(certificate) if required.
	// Requires Chocolatey >= 0.9.10.

	certificate_password?: string

	// The priority order of this source compared to other sources, lower is better.
	// All priorities above C(0) will be evaluated first, then zero-based values will be evaluated in config file order.
	// Requires Chocolatey >= 0.9.9.9.
	// When creating a new source, this defaults to C(0).

	priority?: int

	// The password for I(source_username).
	// Required if I(source_username) is set.

	source_password?: string

	// When C(always), the module will always set the password and report a change if I(certificate_password) or I(source_password) is set.
	// When C(on_create), the module will only set the password if the source is being created.

	update_password?: string
}

win_defrag :: {

	// Run the operation at low or normal priority.

	priority?: string

	// A list of drive letters or mount point paths to exclude from defragmentation.

	exclude_volumes?: [..._]

	// Perform free space consolidation on the specified volumes.

	freespace_consolidation?: bool

	// A list of drive letters or mount point paths of the volumes to be defragmented.
	// If this parameter is omitted, all volumes (not excluded) will be fragmented.

	include_volumes?: [..._]

	// Run the operation on each volume in parallel in the background.

	parallel?: bool
}

win_owner :: {

	// Path to be used for changing owner.

	path: string

	// Indicates if the owner should be changed recursively.

	recurse?: bool

	// Name to be used for changing owner.

	user: string
}

win_ping :: {

	// Alternate data to return instead of 'pong'.
	// If this parameter is set to C(crash), the module will cause an exception.

	data?: string
}

win_rds_rap :: {

	// The computer group name that is associated with this resource authorization policy (RAP).
	// This is required when I(computer_group_type) is C(rdg_group) or C(ad_network_resource_group).

	computer_group?: string

	// The computer group type:
	// C(rdg_group): RD Gateway-managed group
	// C(ad_network_resource_group): Active Directory Domain Services network resource group
	// C(allow_any): Allow users to connect to any network resource.

	computer_group_type?: string

	// Optional description of the resource authorization policy.

	description?: string

	// Name of the resource authorization policy.

	name: string

	// The state of resource authorization policy.
	// If C(absent) will ensure the policy is removed.
	// If C(present) will ensure the policy is configured and exists.
	// If C(enabled) will ensure the policy is configured, exists and enabled.
	// If C(disabled) will ensure the policy is configured, exists, but disabled.

	state?: string

	// List of user groups that are associated with this resource authorization policy (RAP). A user must belong to one of these groups to access the RD Gateway server.
	// Required when a new RAP is created.

	user_groups?: [..._]

	// List of port numbers through which connections are allowed for this policy.
	// To allow connections through any port, specify 'any'.

	allowed_ports?: [..._]
}

win_tempfile :: {

	// Whether to create file or directory.

	state?: string

	// Suffix of file/directory name created by module.

	suffix?: string

	// Location where temporary file or directory should be created.
	// If path is not specified default system temporary directory (%TEMP%) will be used.

	path?: string

	// Prefix of file/directory name created by module.

	prefix?: string
}

win_uri :: {
	client_cert_password?: string

	// A filename, when it already exists, this step will be skipped.

	creates?: string

	// A valid, numeric, HTTP status code that signifies success of the request.
	// Can also be comma separated list of status codes.

	status_code?:         [..._]
	follow_redirects?:    string
	maximum_redirection?: string
	proxy_password?:      string

	// A filename, when it does not exist, this step will be skipped.

	removes?: string

	// The password for I(url_username).
	// Was originally called I(password) but was changed to I(url_password) in Ansible 2.9.

	url_password?: string
	use_proxy?:    string

	// Sets the "Content-Type" header.

	content_type?: string

	// The HTTP Method of the request or response.

	method?:    string
	proxy_url?: string

	// Whether or not to return the body of the response as a "content" key in the dictionary result. If the reported Content-type is "application/json", then the JSON is additionally loaded into a key called C(json) in the dictionary results.

	return_content?: bool

	// Supports FTP, HTTP or HTTPS URLs in the form of (ftp|http|https)://host.domain:port/path.

	url: string

	// The body of the HTTP request/response to the web service.

	body?:        _
	client_cert?: string

	// Output the response body to a file.

	dest?:           string
	proxy_username?: string

	// The username to use for authentication.
	// Was originally called I(user) but was changed to I(url_username) in Ansible 2.9.

	url_username?: string
}

win_domain_user :: {

	// Configures the user's country code.
	// Note that this is a two-character ISO 3166 code.

	country?: string

	// Configures the user's first name (given name).

	firstname?: string

	// Adds or removes the user from this list of groups, depending on the value of I(groups_action).
	// To remove all but the Principal Group, set C(groups=<principal group name>) and I(groups_action=replace).
	// Note that users cannot be removed from their principal group (for example, "Domain Users").

	groups?: [..._]

	// C(yes) will set the password to never expire.
	// C(no) will allow the password to expire.
	// This is mutually exclusive with I(password_expired).

	password_never_expires?: bool

	// Container or OU for the new user; if you do not specify this, the user will be placed in the default container for users in the domain.
	// Setting the path is only available when a new user is created; if you specify a path on an existing user, the user's path will not be updated - you must delete (e.g., C(state=absent)) the user and then re-add the user with the appropriate path.

	path?: string

	// Configures the user's street address.

	street?: string

	// Configures the User Principal Name (UPN) for the account.
	// This is not required, but is best practice to configure for modern versions of Active Directory.
	// The format is C(<username>@<domain>).

	upn?: string

	// Configures the user's city.

	city?: string

	// When C(present), creates or updates the user account.
	// When C(absent), removes the user account if it exists.
	// When C(query), retrieves the user account details without making any changes.

	state?: string

	// Configures the user's last name (surname).

	surname?: string

	// Description of the user

	description?: string

	// Specifies the Active Directory Domain Services instance to connect to.
	// Can be in the form of an FQDN or NetBIOS name.
	// If not specified then the value is based on the domain of the computer running PowerShell.

	domain_server?: string

	// Configures the user's postal code / zip code.

	postal_code?: string

	// Configures the user's state or province.

	state_province?: string

	// C(always) will always update passwords.
	// C(on_create) will only set the password for newly created users.
	// C(when_changed) will only set the password when changed (added in ansible 2.9).

	update_password?: string

	// The password for I(username).

	domain_password?: string

	// A dict of custom LDAP attributes to set on the user.
	// This can be used to set custom attributes that are not exposed as module parameters, e.g. C(telephoneNumber).
	// See the examples on how to format this parameter.

	attributes?: string

	// The username to use when interacting with AD.
	// If this is not set then the user Ansible used to log in with will be used instead when using CredSSP or Kerberos with credential delegation.

	domain_username?: string

	// C(no) will unlock the user account if locked.
	// Note that there is not a way to lock an account as an administrator.
	// Accounts are locked due to user actions; as an admin, you may only unlock a locked account.
	// If you wish to administratively disable an account, set I(enabled) to C(no).

	account_locked?: string

	// Identity parameter used to find the User in the Active Directory.
	// This value can be in the forms C(Distinguished Name), C(objectGUID), C(objectSid) or C(sAMAccountName).
	// Default to C(name) if not set.

	identity?: string

	// If C(add), the user is added to each group in I(groups) where not already a member.
	// If C(remove), the user is removed from each group in I(groups).
	// If C(replace), the user is added as a member of each group in I(groups) and removed from any other groups.

	groups_action?: string

	// Name of the user to create, remove or modify.

	name: string

	// Optionally set the user's password to this (plain text) value.
	// To enable an account - I(enabled) - a password must already be configured on the account, or you must provide a password here.

	password?: string

	// C(yes) will prevent the user from changing their password.
	// C(no) will allow the user to change their password.

	user_cannot_change_password?: bool

	// Configures the user's email address.
	// This is a record in AD and does not do anything to configure any email servers or systems.

	email?: string

	// C(yes) will enable the user account.
	// C(no) will disable the account.

	enabled?: bool

	// C(yes) will require the user to change their password at next login.
	// C(no) will clear the expired password flag.
	// This is mutually exclusive with I(password_never_expires).

	password_expired?: bool

	// Configures the user's company name.

	company?: string
}

win_mapped_drive :: {

	// The password for C(username) that is used when testing the initial connection.
	// This is never saved with a mapped drive, use the M(win_credential) module to persist a username and password for a host.

	password?: string

	// The UNC path to map the drive to.
	// This is required if C(state=present).
	// If C(state=absent) and I(path) is not set, the module will delete the mapped drive regardless of the target.
	// If C(state=absent) and the I(path) is set, the module will throw an error if path does not match the target of the mapped drive.

	path?: string

	// If C(present) will ensure the mapped drive exists.
	// If C(absent) will ensure the mapped drive does not exist.

	state?: string

	// The username that is used when testing the initial connection.
	// This is never saved with a mapped drive, the the M(win_credential) module to persist a username and password for a host.
	// This is required if the mapped drive requires authentication with custom credentials and become, or CredSSP cannot be used.
	// If become or CredSSP is used, any credentials saved with M(win_credential) will automatically be used instead.

	username?: string

	// The letter of the network path to map to.
	// This letter must not already be in use with Windows.

	letter: string
}

win_get_url :: {
	client_cert_password?: string
	follow_redirects?:     string
	proxy_url?:            string
	proxy_username?:       string

	// Specifies a URL that contains the checksum values for the resource at I(url).
	// Like C(checksum), this is used to verify the integrity of the remote transfer.
	// This option cannot be set with I(checksum).

	checksum_url?:        string
	client_cert?:         string
	maximum_redirection?: string

	// This option is not for use with C(win_get_url) and should be ignored.

	method?:         string
	proxy_password?: string

	// If a I(checksum) is passed to this parameter, the digest of the destination file will be calculated after it is downloaded to ensure its integrity and verify that the transfer completed successfully.
	// This option cannot be set with I(checksum_url).

	checksum?: string

	// The location to save the file at the URL.
	// Be sure to include a filename and extension as appropriate.

	dest: string

	// Specifies the hashing algorithm used when calculating the checksum of the remote and destination file.

	checksum_algorithm?: string

	// If C(yes), will download the file every time and replace the file if the contents change. If C(no), will only download the file if it does not exist or the remote file has been modified more recently than the local file.
	// This works by sending an http HEAD request to retrieve last modified time of the requested resource, so for this to work, the remote web server must support HEAD requests.

	force?:   bool
	headers?: string

	// The full URL of a file to download.

	url:        string
	use_proxy?: string
}

win_nssm :: {

	// If C(auto) is selected, the service will start at bootup.
	// C(delayed) causes a delayed but automatic start after boot (added in version 2.5).
	// C(manual) means that the service will start only when another service needs it.
	// C(disabled) means that the service will stay off, regardless if it is needed or not.
	// DEPRECATED since v2.8, please use the M(win_service) module instead.

	start_mode?: string

	// State of the service on the system.
	// Values C(started), C(stopped), and C(restarted) are deprecated since v2.8, please use the M(win_service) module instead to start, stop or restart the service.

	state?: string

	// A string representing a dictionary of parameters to be passed to the application when it starts.
	// DEPRECATED since v2.8, please use I(arguments) instead.
	// This is mutually exclusive with I(arguments).

	app_parameters?: string

	// Service dependencies that has to be started to trigger startup, separated by comma.
	// DEPRECATED since v2.8, please use the M(win_service) module instead.

	dependencies?: [..._]

	// The description to set for the service.

	description?: string

	// The location of the NSSM utility (in case it is not located in your PATH).

	executable?: string

	// Name of the service to operate on.

	name: string

	// The display name to set for the service.

	display_name?: string

	// The application binary to run as a service
	// Required when I(state) is C(present), C(started), C(stopped), or C(restarted).

	application?: string

	// User to be used for service startup.
	// DEPRECATED since v2.8, please use the M(win_service) module instead.

	user?: string

	// Parameters to be passed to the application when it starts.
	// This can be either a simple string or a list.
	// This parameter was renamed from I(app_parameters_free_form) in 2.8.
	// This is mutually exclusive with I(app_parameters).

	arguments?: string

	// Password to be used for service startup.
	// DEPRECATED since v2.8, please use the M(win_service) module instead.

	password?: string

	// Path to receive error output.

	stderr_file?: string

	// Path to receive output.

	stdout_file?: string

	// The working directory to run the service executable from (defaults to the directory containing the application binary)

	working_directory?: string
}

win_credential :: {

	// The secret for the credential.
	// When omitted, then no secret is used for the credential if a new credentials is created.
	// When I(type) is a password type, this is the password for I(username).
	// When I(type) is a certificate type, this is the pin for the certificate.

	secret?: string

	// When C(always), the secret will always be updated if they differ.
	// When C(on_create), the secret will only be checked/updated when it is first created.
	// If the secret cannot be retrieved and this is set to C(always), the module will always result in a change.

	update_secret?: string

	// When I(type) is a password type, then this is the username to store for the credential.
	// When I(type) is a credential type, then this is the thumbprint as a hex string of the certificate to use.
	// When C(type=domain_password), this should be in the form of a Netlogon (DOMAIN\Username) or a UPN (username@DOMAIN).
	// If using a certificate thumbprint, the certificate must exist in the C(CurrentUser\My) certificate store for the executing user.

	username?: string

	// Adds an alias for the credential.
	// Typically this is the NetBIOS name of a host if I(name) is set to the DNS name.

	alias?: string

	// The target that identifies the server or servers that the credential is to be used for.
	// If the value can be a NetBIOS name, DNS server name, DNS host name suffix with a wildcard character (C(*)), a NetBIOS of DNS domain name that contains a wildcard character sequence, or an asterisk.
	// See C(TargetName) in U(https://docs.microsoft.com/en-us/windows/desktop/api/wincred/ns-wincred-_credentiala) for more details on what this value can be.
	// This is used with I(type) to produce a unique credential.

	name: string

	// Defines the persistence of the credential.
	// If C(local), the credential will persist for all logons of the same user on the same host.
	// C(enterprise) is the same as C(local) but the credential is visible to the same domain user when running on other hosts and not just localhost.

	persistence?: string

	// When C(absent), the credential specified by I(name) and I(type) is removed.
	// When C(present), the credential specified by I(name) and I(type) is removed.

	state?: string

	// The type of credential to store.
	// This is used with I(name) to produce a unique credential.
	// When the type is a C(domain) type, the credential is used by Microsoft authentication packages like Negotiate.
	// When the type is a C(generic) type, the credential is not used by any particular authentication package.
	// It is recommended to use a C(domain) type as only authentication providers can access the secret.

	type: string

	// A list of dicts that set application specific attributes for a credential.
	// When set, existing attributes will be compared to the list as a whole, any differences means all attributes will be replaced.

	attributes?: string

	// A user defined comment for the credential.

	comment?: string

	// Controls the input type for I(secret).
	// If C(text), I(secret) is a text string that is UTF-16LE encoded to bytes.
	// If C(base64), I(secret) is a base64 string that is base64 decoded to bytes.

	secret_format?: string
}

win_domain_controller :: {

	// Specifies the name of an existing site where you can place the new domain controller.
	// This option is required when I(read_only) is C(yes).

	site_name?: string

	// Whether the target host should be a domain controller or a member server.

	state?: string

	// The path to a directory on a fixed disk of the Windows host where the Sysvol folder will be created.
	// If not set then the default path is C(%SYSTEMROOT%\SYSVOL).

	sysvol_path?: string

	// The path to a directory on a fixed disk of the Windows host where the domain database will be created..
	// If not set then the default path is C(%SYSTEMROOT%\NTDS).

	database_path?: string

	// When C(state) is C(domain_controller), the DNS name of the domain for which the targeted Windows host should be a DC.

	dns_domain_name?: string

	// Password for the specified C(domain_admin_user).

	domain_admin_password: string

	// Username of a domain admin for the target domain (necessary to promote or demote a domain controller).

	domain_admin_user: string

	// Whether to install the domain controller as a read only replica for an existing domain.

	read_only?: bool

	// Whether to install the DNS service when creating the domain controller.
	// If not specified then the C(-InstallDns) option is not supplied to C(Install-ADDSDomainController) command, see U(https://docs.microsoft.com/en-us/powershell/module/addsdeployment/install-addsdomaincontroller).

	install_dns?: bool

	// Password to be assigned to the local C(Administrator) user (required when C(state) is C(member_server)).

	local_admin_password?: string

	// Safe mode password for the domain controller (required when C(state) is C(domain_controller)).

	safe_mode_password?: string
}

win_say :: {

	// Full path to a C(.wav) file containing a sound to play before the text is spoken.
	// Useful on conference calls to alert other speakers that ansible has something to say.

	start_sound_path?: string

	// Which voice to use. See notes for how to discover installed voices.
	// If the requested voice is not available the default voice will be used. Example voice names from Windows 10 are C(Microsoft Zira Desktop) and C(Microsoft Hazel Desktop).

	voice?: string

	// Full path to a C(.wav) file containing a sound to play after the text has been spoken.
	// Useful on conference calls to alert other speakers that ansible has finished speaking.

	end_sound_path?: string

	// The text to be spoken.
	// Use either C(msg) or C(msg_file).
	// Optional so that you can use this module just to play sounds.

	msg?: string

	// Full path to a windows format text file containing the text to be spoken.
	// Use either C(msg) or C(msg_file).
	// Optional so that you can use this module just to play sounds.

	msg_file?: string

	// How fast or slow to speak the text.
	// Must be an integer value in the range -10 to 10.
	// -10 is slowest, 10 is fastest.

	speech_speed?: int
}

win_user_profile :: {

	// Specifies the base name for the profile path.
	// When I(state) is C(present) this is used to create the profile for I(username) at a specific path within the profile directory.
	// This cannot be used to specify a path outside of the profile directory but rather it specifies a folder(s) within this directory.
	// If a profile for another user already exists at the same path, then a 3 digit incremental number is appended by Windows automatically.
	// When I(state) is C(absent) and I(username) is not set, then the module will remove all profiles that point to the profile path derived by this value.
	// This is useful if the account no longer exists but the profile still remains.

	name?: string

	// When I(state) is C(absent) and the value for I(name) matches multiple profiles the module will fail.
	// Set this value to C(yes) to force the module to delete all the profiles found.

	remove_multiple?: bool

	// Will ensure the profile exists when set to C(present).
	// When creating a profile the I(username) option must be set to a valid account.
	// Will remove the profile(s) when set to C(absent).
	// When removing a profile either I(username) must be set to a valid account, or I(name) is set to the profile's base name.

	state?: string

	// The account name of security identifier (SID) for the profile.
	// This must be set when I(state) is C(present) and must be a valid account or the SID of a valid account.
	// When I(state) is C(absent) then this must still be a valid account number but the SID can be a deleted user's SID.

	username?: string
}

win_wait_for :: {

	// Number of seconds to sleep between checks.

	sleep?: int

	// The maximum number of seconds to wait for.

	timeout?: int

	// The maximum number of seconds to wait for a connection to happen before closing and retrying.

	connect_timeout?: int

	// The number of seconds to wait before starting to poll.

	delay?: int

	// The path to a file on the filesystem to check.
	// If C(state) is present or started then it will wait until the file exists.
	// If C(state) is absent then it will wait until the file does not exist.

	path?: string

	// The port number to poll on C(host).

	port?: int

	// Can be used to match a string in a file.
	// If C(state) is present or started then it will wait until the regex matches.
	// If C(state) is absent then it will wait until the regex does not match.
	// Defaults to a multiline regex.

	regex?: string

	// When checking a port, C(started) will ensure the port is open, C(stopped) will check that is it closed and C(drained) will check for active connections.
	// When checking for a file or a search string C(present) or C(started) will ensure that the file or string is present, C(absent) will check that the file or search string is absent or removed.

	state?: string

	// The list of hosts or IPs to ignore when looking for active TCP connections when C(state=drained).

	exclude_hosts?: [..._]

	// A resolvable hostname or IP address to wait for.
	// If C(state=drained) then it will only check for connections on the IP specified, you can use '0.0.0.0' to use all host IPs.

	host?: string
}

win_whoami :: {
}

win_firewall :: {

	// Set state of firewall for given profile.

	state?: string

	// Specify one or more profiles to change.

	profiles?: [..._]
}

win_security_policy :: {

	// The ini key of the section or policy name to modify.
	// The module will return an error if this key is invalid.

	key: string

	// The ini section the key exists in.
	// If the section does not exist then the module will return an error.
	// Example sections to use are 'Account Policies', 'Local Policies', 'Event Log', 'Restricted Groups', 'System Services', 'Registry' and 'File System'
	// If wanting to edit the C(Privilege Rights) section, use the M(win_user_right) module instead.

	section: string

	// The value for the ini key or policy name.
	// If the key takes in a boolean value then 0 = False and 1 = True.

	value: string
}

win_shell :: {

	// A path or path filter pattern; when the referenced path B(does not) exist on the target host, the task will be skipped.

	removes?: string

	// Set the stdin of the command directly to the specified value.

	stdin?: string

	// Set the specified path as the current working directory before executing a command

	chdir?: string

	// A path or path filter pattern; when the referenced path exists on the target host, the task will be skipped.

	creates?: string

	// Change the shell used to execute the command (eg, C(cmd)).
	// The target shell must accept a C(/c) parameter followed by the raw command line to be executed.

	executable?: string

	// The C(win_shell) module takes a free form command to run.
	// There is no parameter actually named 'free form'. See the examples!

	free_form: string

	// Do not load the user profile before running a command. This is only valid when using PowerShell as the executable.

	no_profile?: bool

	// This option overrides the encoding of stdout/stderr output.
	// You can use this option when you need to run a command which ignore the console's codepage.
	// You should only need to use this option in very rare circumstances.
	// This value can be any valid encoding C(Name) based on the output of C([System.Text.Encoding]::GetEncodings()). See U(https://docs.microsoft.com/dotnet/api/system.text.encoding.getencodings).

	output_encoding_override?: string
}

win_psrepository :: {

	// Sets the C(InstallationPolicy) of a repository.
	// Will default to C(trusted) when creating a new repository.

	installation_policy?: string

	// Name of the repository to work with.

	name: string

	// Specifies the URI for discovering and installing modules from this repository.
	// A URI can be a NuGet server feed (most common situation), HTTP, HTTPS, FTP or file location.

	source?: string

	// If C(present) a new repository is added or updated.
	// If C(absent) a repository is removed.

	state?: string
}

win_chocolatey :: {

	// A username to use with I(source) when accessing a feed that requires authentication.
	// It is recommended you define the credentials on a source with M(win_chocolatey_source) instead of passing it per task.

	source_username?: string

	// State of the package on the system.
	// When C(absent), will ensure the package is not installed.
	// When C(present), will ensure the package is installed.
	// When C(downgrade), will allow Chocolatey to downgrade a package if I(version) is older than the installed version.
	// When C(latest), will ensure the package is installed to the latest available version.
	// When C(reinstalled), will uninstall and reinstall the package.

	state?: string

	// Used when downloading the Chocolatey install script if Chocolatey is not already installed, this does not affect the Chocolatey package install process.
	// When C(no), no SSL certificates will be validated.
	// This should only be used on personally controlled sites using self-signed certificate.

	validate_certs?: bool

	// Name of the package(s) to be installed.
	// Set to C(all) to run the action on all the installed packages.

	name: [..._]

	// Proxy username used to install Chocolatey and the package.
	// Before Ansible 2.7, users with double quote characters C(") would need to be escaped with C(\) beforehand. This is no longer necessary.
	// Use M(win_chocolatey_config) with the name C(proxyUser) to control this option globally.

	proxy_username?: string

	// Forces the install of a package, even if it already is installed.
	// Using I(force) will cause Ansible to always report that a change was made.

	force?: bool

	// Ignore the checksums provided by the package.
	// Use M(win_chocolatey_feature) with the name C(checksumFiles) to control this option globally.

	ignore_checksums?: bool

	// Arguments to pass to the native installer.
	// These are arguments that are passed directly to the installer the Chocolatey package runs, this is generally an advanced option.

	install_args?: string

	// Whether to pin the Chocolatey package or not.
	// If omitted then no checks on package pins are done.
	// Will pin/unpin the specific version if I(version) is set.
	// Will pin the latest version of a package if C(yes), I(version) is not set and and no pin already exists.
	// Will unpin all versions of a package if C(no) and I(version) is not set.
	// This is ignored when C(state=absent).

	pinned?: bool

	// Proxy password used to install Chocolatey and the package.
	// This value is exposed as a command argument and any privileged account can see this value when the module is running Chocolatey, define the password on the global config level with M(win_chocolatey_config) with name C(proxyPassword) to avoid this.

	proxy_password?: string

	// Specific version of the package to be installed.
	// When I(state) is set to C(absent), will uninstall the specific version otherwise all versions of that package will be removed.
	// If a different version of package is installed, I(state) must be C(latest) or I(force) set to C(yes) to install the desired version.
	// Provide as a string (e.g. C('6.1')), otherwise it is considered to be a floating-point number and depending on the locale could become C(6,1), which will cause a failure.
	// If I(name) is set to C(chocolatey) and Chocolatey is not installed on the host, this will be the version of Chocolatey that is installed. You can also set the C(chocolateyVersion) environment var.

	version?: string

	// Allow the installation of multiple packages when I(version) is specified.
	// Having multiple packages at different versions can cause issues if the package doesn't support this. Use at your own risk.

	allow_multiple?: bool

	// Allow the installation of pre-release packages.
	// If I(state) is C(latest), the latest pre-release package will be installed.

	allow_prerelease?: bool

	// Specify the source to retrieve the package from.
	// Use M(win_chocolatey_source) to manage global sources.
	// This value can either be the URL to a Chocolatey feed, a path to a folder containing C(.nupkg) packages or the name of a source defined by M(win_chocolatey_source).
	// This value is also used when Chocolatey is not installed as the location of the install.ps1 script and only supports URLs for this case.

	source?: string

	// The time to allow chocolatey to finish before timing out.

	timeout?: int

	// Force Chocolatey to install the package of a specific process architecture.
	// When setting C(x86), will ensure Chocolatey installs the x86 package even when on an x64 bit OS.

	architecture?: string

	// Do not run I(chocolateyInstall.ps1) or I(chocolateyUninstall.ps1) scripts when installing a package.

	skip_scripts?: bool

	// Parameters to pass to the package.
	// These are parameters specific to the Chocolatey package and are generally documented by the package itself.
	// Before Ansible 2.7, this option was just I(params).

	package_params?: string

	// Proxy URL used to install chocolatey and the package.
	// Use M(win_chocolatey_config) with the name C(proxy) to control this option globally.

	proxy_url?: string

	// The password for I(source_username).
	// This value is exposed as a command argument and any privileged account can see this value when the module is running Chocolatey, define the credentials with a source with M(win_chocolatey_source) to avoid this.

	source_password?: string

	// Allow empty checksums to be used for downloaded resource from non-secure locations.
	// Use M(win_chocolatey_feature) with the name C(allowEmptyChecksums) to control this option globally.

	allow_empty_checksums?: bool

	// Ignore dependencies, only install/upgrade the package itself.

	ignore_dependencies?: bool
}

win_domain_group :: {

	// Will set the C(ProtectedFromAccidentalDeletion) flag based on this value.
	// This flag stops a user from deleting or moving a group to a different path.

	protect?: bool

	// If C(state=present) this module will ensure the group is created and is configured accordingly.
	// If C(state=absent) this module will delete the group if it exists

	state?: string

	// A dict of custom LDAP attributes to set on the group.
	// This can be used to set custom attributes that are not exposed as module parameters, e.g. C(mail).
	// See the examples on how to format this parameter.

	attributes?: {...}

	// The value to be assigned to the LDAP C(description) attribute.

	description?: string

	// The name of the group to create, modify or remove.
	// This value can be in the forms C(Distinguished Name), C(objectGUID), C(objectSid) or C(sAMAccountName), see examples for more details.

	name: string

	// The username to use when interacting with AD.
	// If this is not set then the user Ansible used to log in with will be used instead.

	domain_username?: string

	// The category of the group, this is the value to assign to the LDAP C(groupType) attribute.
	// If a new group is created then C(security) will be used by default.

	category?: string

	// The value to assign to the LDAP C(displayName) attribute.

	display_name?: string

	// The scope of the group.
	// If C(state=present) and the group doesn't exist then this must be set.

	scope?: string

	// The value to be assigned to the LDAP C(managedBy) attribute.
	// This value can be in the forms C(Distinguished Name), C(objectGUID), C(objectSid) or C(sAMAccountName), see examples for more details.

	managed_by?: string

	// The full LDAP path to create or move the group to.
	// This should be the path to the parent object to create or move the group to.
	// See examples for details of how this path is formed.

	organizational_unit?: string

	// The password for C(username).

	domain_password?: string

	// Specifies the Active Directory Domain Services instance to connect to.
	// Can be in the form of an FQDN or NetBIOS name.
	// If not specified then the value is based on the domain of the computer running PowerShell.

	domain_server?: string

	// Will ignore the C(ProtectedFromAccidentalDeletion) flag when deleting or moving a group.
	// The module will fail if one of these actions need to occur and this value is set to C(no).

	ignore_protection?: bool
}

win_package :: {

	// Will check the file version property of the file at C(creates_path) and use the result to determine whether the package is already installed.
	// C(creates_path) MUST be set and is a file.
	// You can use this in conjunction with C(product_id) and other C(creates_*).

	creates_version?: string

	// The password for C(user_name), must be set when C(user_name) is.

	password?: string

	// Location of the package to be installed or uninstalled.
	// This package can either be on the local file system, network share or a url.
	// If the path is on a network share and the current WinRM transport doesn't support credential delegation, then C(user_name) and C(user_password) must be set to access the file.
	// There are cases where this file will be copied locally to the server so it can access it, see the notes for more info.
	// If C(state=present) then this value MUST be set.
	// If C(state=absent) then this value does not need to be set if C(product_id) is.

	path?: string

	// The product id of the installed packaged.
	// This is used for checking whether the product is already installed and getting the uninstall information if C(state=absent).
	// You can find product ids for installed programs in the Windows registry editor either at C(HKLM:Software\Microsoft\Windows\CurrentVersion\Uninstall) or for 32 bit programs at C(HKLM:Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall).
	// This SHOULD be set when the package is not an MSI, or the path is a url or a network share and credential delegation is not being used. The C(creates_*) options can be used instead but is not recommended.

	product_id?: string

	// Will check the existence of the path specified and use the result to determine whether the package is already installed.
	// You can use this in conjunction with C(product_id) and other C(creates_*).

	creates_path?: string

	// Set the specified path as the current working directory before installing or uninstalling a package.

	chdir?: string

	// Will check the existing of the service specified and use the result to determine whether the package is already installed.
	// You can use this in conjunction with C(product_id) and other C(creates_*).

	creates_service?: string

	// One or more return codes from the package installation that indicates success.
	// Before Ansible 2.4 this was just 0 but since Ansible 2.4 this is both C(0) and C(3010).
	// A return code of C(3010) usually means that a reboot is required, the C(reboot_required) return value is set if the return code is C(3010).

	expected_return_code?: [..._]

	// Specifies the path to a log file that is persisted after an MSI package is installed or uninstalled.
	// When omitted, a temporary log file is used for MSI packages.
	// This is only valid for MSI files, use C(arguments) for other package types.

	log_path?: string

	// Whether to install or uninstall the package.
	// The module uses C(product_id) and whether it exists at the registry path to see whether it needs to install or uninstall the package.

	state?: string

	// Username of an account with access to the package if it is located on a file share.
	// This is only needed if the WinRM transport is over an auth method that does not support credential delegation like Basic or NTLM.

	username?: string

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
	// Before Ansible 2.4 this defaulted to C(no).

	validate_certs?: bool

	// Any arguments the installer needs to either install or uninstall the package.
	// If the package is an MSI do not supply the C(/qn), C(/log) or C(/norestart) arguments.
	// As of Ansible 2.5, this parameter can be a list of arguments and the module will escape the arguments as necessary, it is recommended to use a string when dealing with MSI packages due to the unique escaping issues with msiexec.

	arguments?: _
}

win_user_right :: {

	// C(add) will add the users/groups to the existing right.
	// C(remove) will remove the users/groups from the existing right.
	// C(set) will replace the users/groups of the existing right.

	action?: string

	// The name of the User Right as shown by the C(Constant Name) value from U(https://technet.microsoft.com/en-us/library/dd349804.aspx).
	// The module will return an error if the right is invalid.

	name: string

	// A list of users or groups to add/remove on the User Right.
	// These can be in the form DOMAIN\user-group, user-group@DOMAIN.COM for domain users/groups.
	// For local users/groups it can be in the form user-group, .\user-group, SERVERNAME\user-group where SERVERNAME is the name of the remote server.
	// You can also add special local accounts like SYSTEM and others.

	users: [..._]
}

win_http_proxy :: {

	// A list of hosts that will bypass the set proxy when being accessed.
	// Use C(<local>) to match hostnames that are not fully qualified domain names. This is useful when needing to connect to intranet sites using just the hostname.
	// Omit, set to null or an empty string/list to remove the bypass list.
	// If this is set then I(proxy) must also be set.

	bypass?: [..._]

	// A string or dict that specifies the proxy to be set.
	// If setting a string, should be in the form C(hostname), C(hostname:port), or C(protocol=hostname:port).
	// If the port is undefined, the default port for the protocol in use is used.
	// If setting a dict, the keys should be the protocol and the values should be the hostname and/or port for that protocol.
	// Valid protocols are C(http), C(https), C(ftp), and C(socks).
	// Omit, set to null or an empty string to remove the proxy settings.

	proxy?: string

	// Instead of manually specifying the I(proxy) and/or I(bypass), set this to import the proxy from a set source like Internet Explorer.
	// Using C(ie) will import the Internet Explorer proxy settings for the current active network connection of the current user.
	// Only IE's proxy URL and bypass list will be imported into WinHTTP.
	// This is like running C(netsh winhttp import proxy source=ie).
	// The value is imported when the module runs and will not automatically be updated if the IE configuration changes in the future. The module will have to be run again to sync the latest changes.

	source?: string
}

win_reg_stat :: {

	// The registry property name to get information for, the return json will not include the sub_keys and properties entries for the I(key) specified.
	// Set to an empty string to target the registry key's C((Default)) property value.

	name?: string

	// The full registry key path including the hive to search for.

	path: string
}

win_partition :: {

	// Hides the target partition, making it undetectable by the mount manager.

	hidden?: bool

	// Sets the partition offline.
	// Adding a mount point (such as a drive letter) will cause the partition to go online again.

	offline?: bool

	// Used in conjunction with I(disk_number) to uniquely identify a partition.

	partition_number?: int

	// Specify size of the partition in B, KB, KiB, MB, MiB, GB, GiB, TB or TiB. Use -1 to specify maximum supported size.
	// Partition size is mandatory for creating a new partition but not for updating or deleting a partition.
	// The decimal SI prefixes kilo, mega, giga, tera, etc., are powers of 10^3 = 1000. The binary prefixes kibi, mebi, gibi, tebi, etc. respectively refer to the corresponding power of 2^10 = 1024. Thus, a gigabyte (GB) is 1000000000 (1000^3) bytes while 1 gibibyte (GiB) is 1073741824 (1024^3) bytes.

	partition_size?: string

	// Used for accessing partitions if I(disk_number) and I(partition_number) are not provided.
	// Use C(auto) for automatically assigning a drive letter, or a letter A-Z for manually assigning a drive letter to a new partition. If not specified, no drive letter is assigned when creating a new partition.

	drive_letter?: string

	// Specify the partition's GPT type if the disk's partition style is GPT.
	// This only applies to new partitions.
	// This does not relate to the partitions file system formatting.

	gpt_type?: string

	// Specify the partition's MBR type if the disk's partition style is MBR.
	// This only applies to new partitions.
	// This does not relate to the partitions file system formatting.

	mbr_type?: string

	// Make the partition read only, restricting changes from being made to the partition.

	read_only?: bool

	// Used to specify the state of the partition. Use C(absent) to specify if a partition should be removed and C(present) to specify if the partition should be created or updated.

	state?: string

	// Specifies if the partition is active and can be used to start the system. This property is only valid when the disk's partition style is MBR.

	active?: bool

	// Disk number is mandatory for creating new partitions.
	// A combination of I(disk_number) and I(partition_number) can be used to specify the partition instead of I(drive_letter) if required.

	disk_number?: int
}

win_psmodule :: {

	// Name of the Windows PowerShell module that has to be installed.

	name: string

	// If C(yes), allows you to install a different version of a module that already exists on your computer in the case when a different one is not digitally signed by a trusted publisher and the newest existing module is digitally signed by a trusted publisher.

	skip_publisher_check?: bool

	// If C(present) a new module is installed.
	// If C(absent) a module is removed.
	// If C(latest) a module is updated to the newest version. This option was added in version 2.8.

	state?: string

	// URL of the custom repository to register.
	// This option is deprecated and will be removed in Ansible 2.12. Use the M(win_psrepository) module instead.

	url?: string

	// If C(yes) allows install modules that contains commands those have the same names as commands that already exists.

	allow_clobber?: bool

	// If C(yes) installs modules marked as prereleases.
	// It doesn't work with the parameters C(minimum_version) and/or C(maximum_version).
	// It doesn't work with the C(state) set to absent.

	allow_prerelease?: bool

	// The maximum version of the PowerShell module that has to be installed.

	maximum_version?: string

	// The minimum version of the PowerShell module that has to be installed.

	minimum_version?: string

	// Name of the custom repository to use.

	repository?: string

	// The exact version of the PowerShell module that has to be installed.

	required_version?: string
}

win_timezone :: {

	// Timezone to set to.
	// Example: Central Standard Time

	timezone: string
}

win_domain_membership :: {

	// The desired OU path for adding the computer object.
	// This is only used when adding the target host to a domain, if it is already a member then it is ignored.

	domain_ou_path?: string

	// The desired hostname for the Windows host.

	hostname?: string

	// Whether the target host should be a member of a domain or workgroup.

	state?: string

	// When C(state) is C(workgroup), the name of the workgroup that the Windows host should be in.

	workgroup_name?: string

	// When C(state) is C(domain), the DNS name of the domain to which the targeted Windows host should be joined.

	dns_domain_name?: string

	// Password for the specified C(domain_admin_user).

	domain_admin_password?: string

	// Username of a domain admin for the target domain (required to join or leave the domain).

	domain_admin_user: string
}

win_msg :: {

	// How long to wait for receiver to acknowledge message, in seconds.

	display_seconds?: int

	// The text of the message to be displayed.
	// The message must be less than 256 characters.

	msg?: string

	// Who to send the message to. Can be a username, sessionname or sessionid.

	to?: string

	// Whether to wait for users to respond.  Module will only wait for the number of seconds specified in display_seconds or 10 seconds if not specified. However, if I(wait) is C(yes), the message is sent to each logged on user in turn, waiting for the user to either press 'ok' or for the timeout to elapse before moving on to the next user.

	wait?: bool
}

win_pester :: {

	// Allows to specify parameters to the test script.

	test_parameters?: {...}

	// Minimum version of the pester module that has to be available on the remote host.

	version?: string

	// Generates an output test report.

	output_file?: string

	// Format of the test report to be generated.
	// This parameter is to be used with output_file option.

	output_format?: string

	// Path to a pester test file or a folder where tests can be found.
	// If the path is a folder, the module will consider all ps1 files as Pester tests.

	path: string

	// Runs only tests in Describe blocks with specified Tags values.
	// Accepts multiple comma separated tags.

	tags?: [..._]
}

win_rabbitmq_plugin :: {

	// Specify if plugins are to be enabled or disabled.

	state?: string

	// Comma-separated list of plugin names.

	names: string

	// Only enable missing plugins.
	// Does not disable plugins that are not in the names list.

	new_only?: bool

	// Specify a custom install prefix to a Rabbit.

	prefix?: string
}

win_unzip :: {

	// If this file or directory exists the specified src will not be extracted.

	creates?: string

	// Remove the zip file, after unzipping.

	delete_archive?: bool

	// Destination of zip file (provide absolute path of directory). If it does not exist, the directory will be created.

	dest: string

	// Recursively expand zipped files within the src file.
	// Setting to a value of C(yes) requires the PSCX module to be installed.

	recurse?: bool

	// File to be unzipped (provide absolute path).

	src: string
}

win_firewall_rule :: {

	// What to do with the items this rule is for.
	// Defaults to C(allow) when creating a new rule.

	action?: string

	// The service this rule applies to.
	// Set to C(any) to apply to all services.
	// Defaults to C(any) when creating a new rule.

	service?: string

	// The ICMP types and codes for the rule.
	// This is only valid when I(protocol) is C(icmpv4) or C(icmpv6).
	// Each entry follows the format C(type:code) where C(type) is the type number and C(code) is the code number for that type or C(*) for all codes.
	// Set the value to just C(*) to apply the rule for all ICMP type codes.
	// See U(https://www.iana.org/assignments/icmp-parameters/icmp-parameters.xhtml) for a list of ICMP types and the codes that apply to them.

	icmp_type_code?: [..._]

	// The local port this rule applies to.
	// Set to C(any) to apply to all local ports.
	// Defaults to C(any) when creating a new rule.
	// Must have I(protocol) set

	localport?: string

	// The protocol this rule applies to.
	// Set to C(any) to apply to all services.
	// Defaults to C(any) when creating a new rule.

	protocol?: string

	// Whether this rule is for inbound or outbound traffic.
	// Defaults to C(in) when creating a new rule.

	direction?: string

	// Whether this firewall rule is enabled or disabled.
	// Defaults to C(true) when creating a new rule.

	enabled?: bool

	// The group name for the rule.

	group?: string

	// The rule's display name.

	name: string

	// The profile this rule applies to.
	// Defaults to C(domain,private,public) when creating a new rule.

	profiles?: [..._]

	// The remote ip address/range this rule applies to.
	// Set to C(any) to apply to all remote ip addresses.
	// Defaults to C(any) when creating a new rule.

	remoteip?: string

	// Description for the firewall rule.

	description?: string

	// The local ip address this rule applies to.
	// Set to C(any) to apply to all local ip addresses.
	// Defaults to C(any) when creating a new rule.

	localip?: string

	// The program this rule applies to.
	// Set to C(any) to apply to all programs.
	// Defaults to C(any) when creating a new rule.

	program?: string

	// The remote port this rule applies to.
	// Set to C(any) to apply to all remote ports.
	// Defaults to C(any) when creating a new rule.
	// Must have I(protocol) set

	remoteport?: string

	// Should this rule be added or removed.

	state?: string
}

win_dotnet_ngen :: {
}

win_iis_virtualdirectory :: {

	// The physical path to the folder in which the new virtual directory is created.
	// The specified folder must already exist.

	physical_path?: string

	// The site name under which the virtual directory is created or exists.

	site: string

	// Whether to add or remove the specified virtual directory.
	// Removing will remove the virtual directory and all under it (Recursively).

	state?: string

	// The application under which the virtual directory is created or exists.

	application?: string

	// The name of the virtual directory to create or remove.

	name: string
}

win_share :: {

	// Specify user list that should get read and write access on share, separated by comma.

	change?: string

	// Share description.

	description?: string

	// Share name.

	name: string

	// Share directory.

	path: string

	// Specify user list that should get read access on share, separated by comma.

	read?: string

	// Set the CachingMode for this share.

	caching_mode?: string

	// Specify user list that should get no access, regardless of implied access on share, separated by comma.

	deny?: string

	// Sets whether to encrypt the traffic to the share or not.

	encrypt?: bool

	// Specify user list that should get full access on share, separated by comma.

	full?: string

	// Specify whether to allow or deny file listing, in case user has no permission on share. Also known as Access-Based Enumeration.

	list?: bool

	// Specify whether to add C(present) or remove C(absent) the specified share.

	state?: string
}

win_template :: {

	// Determine whether a backup should be created.
	// When set to C(yes), create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.

	backup?:           bool
	force?:            string
	newline_sequence?: string
}

win_acl_inheritance :: {

	// Specify whether to enable I(present) or disable I(absent) ACL inheritance.

	state?: string

	// Path to be used for changing inheritance

	path: string

	// For P(state) = I(absent), indicates if the inherited ACE's should be copied from the parent directory. This is necessary (in combination with removal) for a simple ACL instead of using multiple ACE deny entries.
	// For P(state) = I(present), indicates if the inherited ACE's should be deduplicated compared to the parent directory. This removes complexity of the ACL structure.

	reorganize?: bool
}

win_audit_policy_system :: {

	// The type of event you would like to audit for.
	// Accepts a list. See examples.

	audit_type: [..._]

	// Single string value for the category you would like to adjust the policy on.
	// Cannot be used with I(subcategory). You must define one or the other.
	// Changing this setting causes all subcategories to be adjusted to the defined I(audit_type).

	category?: string

	// Single string value for the subcategory you would like to adjust the policy on.
	// Cannot be used with I(category). You must define one or the other.

	subcategory?: string
}

win_feature :: {

	// State of the features or roles on the system.

	state?: string

	// Adds the corresponding management tools to the specified feature.
	// Not supported in Windows 2008 R2 and will be ignored.

	include_management_tools?: bool

	// Adds all subfeatures of the specified feature.

	include_sub_features?: bool

	// Names of roles or features to install as a single feature or a comma-separated list of features.
	// To list all available features use the PowerShell command C(Get-WindowsFeature).

	name: [..._]

	// Specify a source to install the feature from.
	// Not supported in Windows 2008 R2 and will be ignored.
	// Can either be C({driveletter}:\sources\sxs) or C(\\{IP}\share\sources\sxs).

	source?: string
}

win_iis_webapplication :: {

	// The physical path on the remote host to use for the new application.
	// The specified folder must already exist.

	physical_path?: string

	// Name of the site on which the application is created.

	site: string

	// State of the web application.

	state?: string

	// Specifies the user name of an account that can access configuration files and content for this application.
	// Required when I(connect_as) is set to C(specific_user).

	username?: string

	// The application pool in which the new site executes.
	// If not specified, the application pool of the current website will be used.

	application_pool?: string

	// The type of authentication to use for this application. Either C(pass_through) or C(specific_user)
	// If C(pass_through), IIS will use the identity of the user or application pool identity to access the file system or network.
	// If C(specific_user), IIS will use the credentials provided in I(username) and I(password) to access the file system or network.

	connect_as?: string

	// Name of the web application.

	name: string

	// The password associated with I(username).
	// Required when I(connect_as) is set to C(specific_user).

	password?: string
}

win_iis_webbinding :: {

	// State of the binding.

	state?: string

	// Name of the certificate store where the certificate for the binding is located.

	certificate_store_name?: string

	// Names of web site.

	name: string

	// The IP address to bind to / use for the new site.

	ip?: string

	// The port to bind to / use for the new site.

	port?: string

	// The protocol to be used for the Web binding (usually HTTP, HTTPS, or FTP).

	protocol?: string

	// This parameter is only valid on Server 2012 and newer.
	// Primarily used for enabling and disabling server name indication (SNI).
	// Set to C(0) to disable SNI.
	// Set to C(1) to enable SNI.

	ssl_flags?: string

	// Certificate hash (thumbprint) for the SSL binding. The certificate hash is the unique identifier for the certificate.

	certificate_hash?: string

	// The host header to bind to / use for the new site.
	// If you are creating/removing a catch-all binding, omit this parameter rather than defining it as '*'.

	host_header?: string
}

win_psexec :: {

	// The hostnames to run the command.
	// If not provided, the command is run locally.

	hostnames?: [..._]

	// The password for the (remote) user to run the command as.
	// This is mandatory in order authenticate yourself.

	password?: string

	// Used to run the command at a different priority.

	priority?: string

	// Specifies the session ID to use.
	// This parameter works in conjunction with I(interactive).
	// It has no effect when I(interactive) is set to C(no).

	session?: int

	// Run the remote command in the System account.

	system?: bool

	// Wait for the application to terminate.
	// Only use for non-interactive applications.

	wait?: bool

	// Run the command without loading the account's profile.

	noprofile?: bool

	// The command line to run through PsExec (limited to 260 characters).

	command: string

	// Run the command with elevated privileges.

	elevated?: bool

	// The location of the PsExec utility (in case it is not located in your PATH).

	executable?: string

	// Specify additional options to add onto the PsExec invocation.
	// This module was undocumented in older releases and will be removed in Ansible 2.10.

	extra_opts?: [..._]

	// Run the program so that it interacts with the desktop on the remote system.

	interactive?: bool

	// Run the command as limited user (strips the Administrators group and allows only privileges assigned to the Users group).

	limited?: bool

	// Do not display the startup banner and copyright message.
	// This only works for specific versions of the PsExec binary.

	nobanner?: bool

	// Run the command from this (remote) directory.

	chdir?: string

	// The (remote) user to run the command as.
	// If not provided, the current user is used.

	username?: string

	// The connection timeout in seconds

	timeout?: int
}

win_disk_facts :: {
}

win_hosts :: {

	// A canonical name for the host entry.
	// required for C(state=present).

	canonical_name?: string

	// The ip address for the host entry.
	// Can be either IPv4 (A record) or IPv6 (AAAA record).
	// Required for C(state=present).

	ip_address?: string

	// Whether the entry should be present or absent.
	// If only I(canonical_name) is provided when C(state=absent), then all hosts entries with the canonical name of I(canonical_name) will be removed.
	// If only I(ip_address) is provided when C(state=absent), then all hosts entries with the ip address of I(ip_address) will be removed.
	// If I(ip_address) and I(canonical_name) are both omitted when C(state=absent), then all hosts entries will be removed.

	state?: string

	// Controls the behavior of I(aliases).
	// Only applicable when C(state=present).
	// If C(add), each alias in I(aliases) will be added to the host entry.
	// If C(set), each alias in I(aliases) will be added to the host entry, and other aliases will be removed from the entry.

	action?: string

	// A list of additional names (cname records) for the host entry.
	// Only applicable when C(state=present).

	aliases?: [..._]
}

win_reboot :: {

	// Message to display to users.

	msg?: string

	// Seconds to wait after the reboot command was successful before attempting to validate the system rebooted successfully.
	// This is useful if you want wait for something to settle despite your connection already working.

	post_reboot_delay?: int

	// Seconds to wait before reboot. Passed as a parameter to the reboot command.

	pre_reboot_delay?: int

	// Maximum seconds to wait for machine to re-appear on the network and respond to a test command.
	// This timeout is evaluated separately for both reboot verification and test command success so maximum clock time is actually twice this value.

	reboot_timeout?: int

	// Maximum seconds to wait for shutdown to occur.
	// Increase this timeout for very slow hardware, large update applications, etc.
	// This option has been removed since Ansible 2.5 as the win_reboot behavior has changed.

	shutdown_timeout?: int

	// Command to expect success for to determine the machine is ready for management.

	test_command?: string

	// Maximum seconds to wait for a single successful TCP connection to the WinRM endpoint before trying again.

	connect_timeout?: int
}

win_stat :: {

	// Algorithm to determine checksum of file.
	// Will throw an error if the host is unable to use specified algorithm.

	checksum_algorithm?: string

	// Whether to follow symlinks or junction points.
	// In the case of C(path) pointing to another link, then that will be followed until no more links are found.

	follow?: bool

	// Whether to return a checksum of the file (default sha1)

	get_checksum?: bool

	// Whether to return the checksum sum of the file. Between Ansible 1.9 and Ansible 2.2 this is no longer an MD5, but a SHA1 instead. As of Ansible 2.3 this is back to an MD5. Will return None if host is unable to use specified algorithm.
	// The default of this option changed from C(yes) to C(no) in Ansible 2.5 and will be removed altogether in Ansible 2.9.
	// Use C(get_checksum=yes) with C(checksum_algorithm=md5) to return an md5 hash under the C(checksum) return value.

	get_md5?: bool

	// The full path of the file/object to get the facts of; both forward and back slashes are accepted.

	path: string
}

win_pagefile :: {

	// The drive of the pagefile.

	drive?: string

	// The initial size of the pagefile in megabytes.

	initial_size?: int

	// The maximum size of the pagefile in megabytes.

	maximum_size?: int

	// State of the pagefile.

	state?: string

	// Configures current pagefile to be managed by the system.

	system_managed?: bool

	// Configures AutomaticManagedPagefile for the entire system.

	automatic?: bool

	// Override the current pagefile on the drive.

	override?: bool

	// Remove all pagefiles in the system, not including automatic managed.

	remove_all?: bool

	// Use Test-Path on the drive to make sure the drive is accessible before creating the pagefile.

	test_path?: bool
}

win_domain :: {

	// The path to a directory on a fixed disk of the Windows host where the domain database will be created.
	// If not set then the default path is C(%SYSTEMROOT%\NTDS).

	database_path?: string

	// The DNS name of the domain which should exist and be reachable or reside on the target Windows host.

	dns_domain_name: string

	// Specifies the domain functional level of the first domain in the creation of a new forest.
	// The domain functional level cannot be lower than the forest functional level, but it can be higher.
	// The default is automatically computed and set.

	domain_mode?: string

	// The NetBIOS name for the root domain in the new forest.
	// For NetBIOS names to be valid for use with this parameter they must be single label names of 15 characters or less, if not it will fail.
	// If this parameter is not set, then the default is automatically computed from the value of the I(domain_name) parameter.

	domain_netbios_name?: string

	// Specifies the forest functional level for the new forest.
	// The default forest functional level in Windows Server is typically the same as the version you are running.

	forest_mode?: string

	// Whether to create a DNS delegation that references the new DNS server that you install along with the domain controller.
	// Valid for Active Directory-integrated DNS only.
	// The default is computed automatically based on the environment.

	create_dns_delegation?: bool

	// Whether to install the DNS service when creating the domain controller.

	install_dns?: bool

	// Safe mode password for the domain controller.

	safe_mode_password: string

	// The path to a directory on a fixed disk of the Windows host where the Sysvol file will be created.
	// If not set then the default path is C(%SYSTEMROOT%\SYSVOL).

	sysvol_path?: string
}

win_dns_record :: {

	// Whether the record should exist or not.

	state?: string

	// The "time to live" of the record, in seconds.
	// Ignored when C(state=absent).
	// Valid range is 1 - 31557600.
	// Note that an Active Directory forest can specify a minimum TTL, and will dynamically "round up" other values to that minimum.

	ttl?: int

	// The type of DNS record to manage.

	type: string

	// The value(s) to specify. Required when C(state=present).
	// When C(type=PTR) only the partial part of the IP should be given.

	value?: [..._]

	// The name of the zone to manage (eg C(example.com)).
	// The zone must already exist.

	zone: string

	// Specifies a DNS server.
	// You can specify an IP address or any value that resolves to an IP address, such as a fully qualified domain name (FQDN), host name, or NETBIOS name.

	computer_name?: string

	// The name of the record.

	name: string
}

win_regedit :: {

	// Value of the registry entry C(name) in C(path).
	// If not specified then the value for the property will be null for the corresponding C(type).
	// Binary and None data should be expressed in a yaml byte array or as comma separated hex values.
	// An easy way to generate this is to run C(regedit.exe) and use the I(export) option to save the registry values to a file.
	// In the exported file, binary value will look like C(hex:be,ef,be,ef), the C(hex:) prefix is optional.
	// DWORD and QWORD values should either be represented as a decimal number or a hex value.
	// Multistring values should be passed in as a list.
	// See the examples for more details on how to format this data.

	data?: string

	// When C(state) is 'absent' then this will delete the entire key.
	// If C(no) then it will only clear out the '(Default)' property for that key.

	delete_key?: bool

	// A path to a hive key like C:\Users\Default\NTUSER.DAT to load in the registry.
	// This hive is loaded under the HKLM:\ANSIBLE key which can then be used in I(name) like any other path.
	// This can be used to load the default user profile registry hive or any other hive saved as a file.
	// Using this function requires the user to have the C(SeRestorePrivilege) and C(SeBackupPrivilege) privileges enabled.

	hive?: string

	// Name of the registry entry in the above C(path) parameters.
	// If not provided, or empty then the '(Default)' property for the key will be used.

	name?: string

	// Name of the registry path.
	// Should be in one of the following registry hives: HKCC, HKCR, HKCU, HKLM, HKU.

	path: string

	// The state of the registry entry.

	state?: string

	// The registry value data type.

	type?: string
}

win_xml :: {

	// The type of XML node you are working with.

	type: string

	// Xpath to select the node or nodes to operate on.

	xpath: string

	// The attribute name if the type is 'attribute'.
	// Required if C(type=attribute).

	attribute?: string

	// Determine whether a backup should be created.
	// When set to C(yes), create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.

	backup?: bool

	// When set to C(yes), return the number of nodes matched by I(xpath).

	count?: bool

	// The string representation of the XML fragment expected at xpath.  Since ansible 2.9 not required when I(state=absent), or when I(count=yes).

	fragment?: string

	// Path to the file to operate on.

	path: string

	// Set or remove the nodes (or attributes) matched by I(xpath).

	state?: string
}

win_chocolatey_feature :: {

	// The name of the feature to manage.
	// Run C(choco.exe feature list) to get a list of features that can be managed.

	name: string

	// When C(disabled) then the feature will be disabled.
	// When C(enabled) then the feature will be enabled.

	state?: string
}

win_netbios :: {

	// List of adapter names for which to manage NetBIOS settings. If this option is omitted then configuration is applied to all adapters on the system.
	// The adapter name used is the connection caption in the Network Control Panel or via C(Get-NetAdapter), eg C(Ethernet 2).

	adapter_names?: [..._]

	// Whether NetBIOS should be enabled, disabled, or default (use setting from DHCP server or if static IP address is assigned enable NetBIOS).

	state: string
}

win_shortcut :: {

	// When C(absent), removes the shortcut if it exists.
	// When C(present), creates or updates the shortcut.

	state?: string

	// Additional arguments for the executable defined in C(src).
	// Was originally just C(args) but renamed in Ansible 2.8.

	arguments?: string

	// Icon used for the shortcut.
	// File name should have a C(.ico) extension.
	// The file name is followed by a comma and the number in the library file (.dll) or use 0 for an image file.

	icon?: string

	// Working directory for executable defined in C(src).

	directory?: string

	// Key combination for the shortcut.
	// This is a combination of one or more modifiers and a key.
	// Possible modifiers are Alt, Ctrl, Shift, Ext.
	// Possible keys are [A-Z] and [0-9].

	hotkey?: string

	// When C(src) is an executable, this can control whether the shortcut will be opened as an administrator or not.

	run_as_admin?: bool

	// Executable or URL the shortcut points to.
	// The executable needs to be in your PATH, or has to be an absolute path to the executable.

	src?: string

	// Influences how the application is displayed when it is launched.

	windowstyle?: string

	// Description for the shortcut.
	// This is usually shown when hoovering the icon.

	description?: string

	// Destination file for the shortcuting file.
	// File name should have a C(.lnk) or C(.url) extension.

	dest: string
}

win_iis_webapppool :: {

	// This field is a free form dictionary value for the application pool attributes.
	// These attributes are based on the naming standard at U(https://www.iis.net/configreference/system.applicationhost/applicationpools/add#005), see the examples section for more details on how to set this.
	// You can also set the attributes of child elements like cpu and processModel, see the examples to see how it is done.
	// While you can use the numeric values for enums it is recommended to use the enum name itself, e.g. use SpecificUser instead of 3 for processModel.identityType.
	// managedPipelineMode may be either "Integrated" or "Classic".
	// startMode may be either "OnDemand" or "AlwaysRunning".
	// Use C(state) module parameter to modify the state of the app pool.
	// When trying to set 'processModel.password' and you receive a 'Value does fall within the expected range' error, you have a corrupted keystore. Please follow U(http://structuredsight.com/2014/10/26/im-out-of-range-youre-out-of-range/) to help fix your host.

	attributes?: string

	// Name of the application pool.

	name: string

	// The state of the application pool.
	// If C(absent) will ensure the app pool is removed.
	// If C(present) will ensure the app pool is configured and exists.
	// If C(restarted) will ensure the app pool exists and will restart, this is never idempotent.
	// If C(started) will ensure the app pool exists and is started.
	// If C(stopped) will ensure the app pool exists and is stopped.

	state?: string
}

win_chocolatey_facts :: {
}

win_eventlog :: {

	// The minimum number of days event entries must remain in the log.
	// This option is only used when C(overflow_action) is C(OverwriteOlder).

	retention_days?: int

	// Desired state of the log and/or sources.
	// When C(sources) is populated, state is checked for sources.
	// When C(sources) is not populated, state is checked for the specified log itself.
	// If C(state) is C(clear), event log entries are cleared for the target log.

	state?: string

	// For one or more sources specified, the path to a custom event message resource file.

	message_file?: string

	// Name of the event log to manage.

	name: string

	// The action for the log to take once it reaches its maximum size.
	// For C(DoNotOverwrite), all existing entries are kept and new entries are not retained.
	// For C(OverwriteAsNeeded), each new entry overwrites the oldest entry.
	// For C(OverwriteOlder), new log entries overwrite those older than the C(retention_days) value.

	overflow_action?: string

	// For one or more sources specified, the path to a custom parameter resource file.

	parameter_file?: string

	// A list of one or more sources to ensure are present/absent in the log.
	// When C(category_file), C(message_file) and/or C(parameter_file) are specified, these values are applied across all sources.

	sources?: [..._]

	// For one or more sources specified, the path to a custom category resource file.

	category_file?: string

	// The maximum size of the event log.
	// Value must be between 64KB and 4GB, and divisible by 64KB.
	// Size can be specified in KB, MB or GB (e.g. 128KB, 16MB, 2.5GB).

	maximum_size?: string
}

win_eventlog_entry :: {

	// A numeric task category associated with the category message file for the log source.

	category?: int

	// Indicates the entry being written to the log is of a specific type.

	entry_type?: string

	// The numeric event identifier for the entry.
	// Value must be between 0 and 65535.

	event_id: int

	// Name of the event log to write an entry to.

	log: string

	// The message for the given log entry.

	message: string

	// Binary data associated with the log entry.
	// Value must be a comma-separated array of 8-bit unsigned integers (0 to 255).

	raw_data?: string

	// Name of the log source to indicate where the entry is from.

	source: string
}

win_regmerge :: {

	// The parent key to use when comparing the contents of the registry to the contents of the file.  Needs to be in HKLM or HKCU part of registry. Use a PS-Drive style path for example HKLM:\SOFTWARE not HKEY_LOCAL_MACHINE\SOFTWARE If not supplied, or the registry key is not found, no comparison will be made, and the module will report changed.

	compare_key?: string

	// The full path including file name to the registry file on the remote machine to be merged

	path: string
}

win_certificate_store :: {

	// If C(present), will ensure that the certificate at I(path) is imported into the certificate store specified.
	// If C(absent), will ensure that the certificate specified by I(thumbprint) or the thumbprint of the cert at I(path) is removed from the store specified.
	// If C(exported), will ensure the file at I(path) is a certificate specified by I(thumbprint).
	// When exporting a certificate, if I(path) is a directory then the module will fail, otherwise the file will be replaced if needed.

	state?: string

	// The store location to use when importing a certificate or searching for a certificate.

	store_location?: string

	// The thumbprint as a hex string to either export or remove.
	// See the examples for how to specify the thumbprint.

	thumbprint?: string

	// The file type to export the certificate as when C(state=exported).
	// C(der) is a binary ASN.1 encoded file.
	// C(pem) is a base64 encoded file of a der file in the OpenSSL form.
	// C(pkcs12) (also known as pfx) is a binary container that contains both the certificate and private key unlike the other options.
	// When C(pkcs12) is set and the private key is not exportable or accessible by the current user, it will throw an exception.

	file_type?: string

	// Whether to allow the private key to be exported.
	// If C(no), then this module and other process will only be able to export the certificate and the private key cannot be exported.
	// Used when C(state=present) only.

	key_exportable?: bool

	// The password of the pkcs12 certificate key.
	// This is used when reading a pkcs12 certificate file or the password to set when C(state=exported) and C(file_type=pkcs12).
	// If the pkcs12 file has no password set or no password should be set on the exported file, do not set this option.

	password?: string

	// The path to a certificate file.
	// This is required when I(state) is C(present) or C(exported).
	// When I(state) is C(absent) and I(thumbprint) is not specified, the thumbprint is derived from the certificate at this path.

	path?: string

	// Specifies where Windows will store the private key when it is imported.
	// When set to C(default), the default option as set by Windows is used, typically C(user).
	// When set to C(machine), the key is stored in a path accessible by various users.
	// When set to C(user), the key is stored in a path only accessible by the current user.
	// Used when C(state=present) only and cannot be changed once imported.
	// See U(https://msdn.microsoft.com/en-us/library/system.security.cryptography.x509certificates.x509keystorageflags.aspx) for more details.

	key_storage?: string

	// The store name to use when importing a certificate or searching for a certificate.
	// C(AddressBook): The X.509 certificate store for other users
	// C(AuthRoot): The X.509 certificate store for third-party certificate authorities (CAs)
	// C(CertificateAuthority): The X.509 certificate store for intermediate certificate authorities (CAs)
	// C(Disallowed): The X.509 certificate store for revoked certificates
	// C(My): The X.509 certificate store for personal certificates
	// C(Root): The X.509 certificate store for trusted root certificate authorities (CAs)
	// C(TrustedPeople): The X.509 certificate store for directly trusted people and resources
	// C(TrustedPublisher): The X.509 certificate store for directly trusted publishers

	store_name?: string
}

win_service :: {

	// The path to the executable to set for the service.

	path?: string

	// Set the startup type for the service.
	// A newly created service will default to C(auto).
	// C(delayed) added in Ansible 2.3

	start_mode?: string

	// The desired state of the service.
	// C(started)/C(stopped)/C(absent)/C(paused) are idempotent actions that will not run commands unless necessary.
	// C(restarted) will always bounce the service.
	// C(absent) was added in Ansible 2.3
	// C(paused) was added in Ansible 2.4
	// Only services that support the paused state can be paused, you can check the return value C(can_pause_and_continue).
	// You can only pause a service that is already started.
	// A newly created service will default to C(stopped).

	state?: string

	// Used in conjunction with C(dependency) to either add the dependencies to the existing service dependencies.
	// Remove the dependencies to the existing dependencies.
	// Set the dependencies to only the values in the list replacing the existing dependencies.

	dependency_action?: string

	// Whether to allow the service user to interact with the desktop.
	// This should only be set to C(yes) when using the C(LocalSystem) username.

	desktop_interact?: bool

	// If C(yes), stopping or restarting a service with dependent services will force the dependent services to stop or restart also.
	// If C(no), stopping or restarting a service with dependent services may fail.

	force_dependent_services?: bool

	// Name of the service.
	// If only the name parameter is specified, the module will report on whether the service exists or not without making any changes.

	name: string

	// The password to set the service to start as.
	// This and the C(username) argument must be supplied together.
	// If specifying C(LocalSystem), C(NetworkService) or C(LocalService) this field must be an empty string and not null.

	password?: string

	// The username to set the service to start as.
	// This and the C(password) argument must be supplied together when using a local or domain account.
	// Set to C(LocalSystem) to use the SYSTEM account.
	// A newly created service will default to C(LocalSystem).
	// If using a custom user account, it must have the C(SeServiceLogonRight) granted to be able to start up. You can use the M(win_user_right) module to grant this user right for you.

	username?: string

	// A list of service dependencies to set for this particular service.
	// This should be a list of service names and not the display name of the service.
	// This works by C(dependency_action) to either add/remove or set the services in this list.

	dependencies?: [..._]

	// The description to set for the service.

	description?: string

	// The display name to set for the service.

	display_name?: string
}

win_power_plan :: {

	// String value that indicates the desired power plan.
	// The power plan must already be present on the system.
	// Commonly there will be options for C(balanced) and C(high performance).

	name: string
}

win_webpicmd :: {

	// Name of the package to be installed.

	name: string
}

win_file :: {

	// Path to the file being managed.

	path: string

	// If C(directory), all immediate subdirectories will be created if they do not exist.
	// If C(file), the file will NOT be created if it does not exist, see the M(copy) or M(template) module if you want that behavior.  If C(absent), directories will be recursively deleted, and files will be removed.
	// If C(touch), an empty file will be created if the C(path) does not exist, while an existing file or directory will receive updated file access and modification times (similar to the way C(touch) works from the command line).

	state?: string
}

win_hotfix :: {

	// The name of the hotfix as shown in DISM, see examples for details.
	// This or C(hotfix_kb) MUST be set when C(state=absent).
	// If C(state=present) then the hotfix at C(source) will be validated against this value, if it does not match an error will occur.
	// You can get the identifier by running 'Get-WindowsPackage -Online -PackagePath path-to-cab-in-msu' after expanding the msu file.

	hotfix_identifier?: string

	// The name of the KB the hotfix relates to, see examples for details.
	// This or C(hotfix_identifier) MUST be set when C(state=absent).
	// If C(state=present) then the hotfix at C(source) will be validated against this value, if it does not match an error will occur.
	// Because DISM uses the identifier as a key and doesn't refer to a KB in all cases it is recommended to use C(hotfix_identifier) instead.

	hotfix_kb?: string

	// The path to the downloaded hotfix .msu file.
	// This MUST be set if C(state=present) and MUST be a .msu hotfix file.

	source?: string

	// Whether to install or uninstall the hotfix.
	// When C(present), C(source) MUST be set.
	// When C(absent), C(hotfix_identifier) or C(hotfix_kb) MUST be set.

	state?: string
}

win_dns_client :: {

	// Adapter name or list of adapter names for which to manage DNS settings ('*' is supported as a wildcard value).
	// The adapter name used is the connection caption in the Network Control Panel or the InterfaceAlias of C(Get-DnsClientServerAddress).

	adapter_names: [..._]

	// Single or ordered list of DNS servers (IPv4 and IPv6 addresses) to configure for lookup. An empty list will configure the adapter to use the DHCP-assigned values on connections where DHCP is enabled, or disable DNS lookup on statically-configured connections.
	// IPv6 DNS servers can only be set on Windows Server 2012 or newer, older hosts can only set IPv4 addresses.
	// Before 2.10 use ipv4_addresses instead.

	dns_servers: [..._]
}

win_optional_feature :: {

	// The name(s) of the feature to install.
	// This relates to C(FeatureName) in the Powershell cmdlet.
	// To list all available features use the PowerShell command C(Get-WindowsOptionalFeature).

	name: [..._]

	// Specify a source to install the feature from.
	// Can either be C({driveletter}:\sources\sxs) or C(\\{IP}\share\sources\sxs).

	source?: string

	// Whether to ensure the feature is absent or present on the system.

	state?: string

	// Whether to enable the parent feature and the parent's dependencies.

	include_parent?: bool
}

win_toast :: {

	// How long in seconds before the notification expires.

	expire?: int

	// Which notification group to add the notification to.

	group?: string

	// The message to appear inside the notification.
	// May include \n to format the message to appear within the Action Center.

	msg?: string

	// If C(no), the notification will not pop up and will only appear in the Action Center.

	popup?: bool

	// The tag to add to the notification.

	tag?: string

	// The notification title, which appears in the pop up..

	title?: string
}

win_acl :: {

	// The rights/permissions that are to be allowed/denied for the specified user or group for the item at C(path).
	// If C(path) is a file or directory, rights can be any right under MSDN FileSystemRights U(https://msdn.microsoft.com/en-us/library/system.security.accesscontrol.filesystemrights.aspx).
	// If C(path) is a registry key, rights can be any right under MSDN RegistryRights U(https://msdn.microsoft.com/en-us/library/system.security.accesscontrol.registryrights.aspx).

	rights: string

	// Specify whether to add C(present) or remove C(absent) the specified access rule.

	state?: string

	// Specify whether to allow or deny the rights specified.

	type: string

	// User or Group to add specified rights to act on src file/folder or registry key.

	user: string

	// Inherit flags on the ACL rules.
	// Can be specified as a comma separated list, e.g. C(ContainerInherit), C(ObjectInherit).
	// For more information on the choices see MSDN InheritanceFlags enumeration at U(https://msdn.microsoft.com/en-us/library/system.security.accesscontrol.inheritanceflags.aspx).
	// Defaults to C(ContainerInherit, ObjectInherit) for Directories.

	inherit?: string

	// The path to the file or directory.

	path: string

	// Propagation flag on the ACL rules.
	// For more information on the choices see MSDN PropagationFlags enumeration at U(https://msdn.microsoft.com/en-us/library/system.security.accesscontrol.propagationflags.aspx).

	propagation?: string
}

win_command :: {

	// Set the stdin of the command directly to the specified value.

	stdin?: string

	// Set the specified path as the current working directory before executing a command.

	chdir?: string

	// A path or path filter pattern; when the referenced path exists on the target host, the task will be skipped.

	creates?: string

	// The C(win_command) module takes a free form command to run.
	// There is no parameter actually named 'free form'. See the examples!

	free_form: string

	// This option overrides the encoding of stdout/stderr output.
	// You can use this option when you need to run a command which ignore the console's codepage.
	// You should only need to use this option in very rare circumstances.
	// This value can be any valid encoding C(Name) based on the output of C([System.Text.Encoding]::GetEncodings()). See U(https://docs.microsoft.com/dotnet/api/system.text.encoding.getencodings).

	output_encoding_override?: string

	// A path or path filter pattern; when the referenced path B(does not) exist on the target host, the task will be skipped.

	removes?: string
}

win_group :: {

	// Name of the group.

	name: string

	// Create or remove the group.

	state?: string

	// Description of the group.

	description?: string
}

win_group_membership :: {

	// Name of the local group to manage membership on.

	name: string

	// Desired state of the members in the group.
	// C(pure) was added in Ansible 2.8.
	// When C(state) is C(pure), only the members specified will exist, and all other existing members not specified are removed.

	state?: string

	// A list of members to ensure are present/absent from the group.
	// Accepts local users as .\username, and SERVERNAME\username.
	// Accepts domain users and groups as DOMAIN\username and username@DOMAIN.
	// Accepts service users as NT AUTHORITY\username.
	// Accepts all local, domain and service user types as username, favoring domain lookups when in a domain.

	members: [..._]
}

win_rds_settings :: {

	// The maximum number of connections allowed.
	// If set to C(0), no new connections are allowed.
	// If set to C(-1), the number of connections is unlimited.

	max_connections?: int

	// Specifies whether to use SSL Bridging.
	// C(none): no SSL bridging.
	// C(https_http): HTTPS-HTTP bridging.
	// C(https_https): HTTPS-HTTPS bridging.

	ssl_bridging?: string

	// Certificate hash (thumbprint) for the Remote Desktop Gateway server. The certificate hash is the unique identifier for the certificate.

	certificate_hash?: string

	// If enabled, only clients that support logon messages and administrator messages can connect.

	enable_only_messaging_capable_clients?: bool
}

win_disk_image :: {

	// Path to an ISO, VHD, or VHDX image on the target Windows host (the file cannot reside on a network share)

	image_path: string

	// Whether the image should be present as a drive-letter mount or not.

	state?: string
}

win_dsc :: {

	// The M(win_dsc) module takes in multiple free form options based on the DSC resource being invoked by I(resource_name).
	// There is no option actually named C(free_form) so see the examples.
	// This module will try and convert the option to the correct type required by the DSC resource and throw a warning if it fails.
	// If the type of the DSC resource option is a C(CimInstance) or C(CimInstance[]), this means the value should be a dictionary or list of dictionaries based on the values required by that option.
	// If the type of the DSC resource option is a C(PSCredential) then there needs to be 2 options set in the Ansible task definition suffixed with C(_username) and C(_password).
	// If the type of the DSC resource option is an array, then a list should be provided but a comma separated string also work. Use a list where possible as no escaping is required and it works with more complex types list C(CimInstance[]).
	// If the type of the DSC resource option is a C(DateTime), you should use a string in the form of an ISO 8901 string to ensure the exact date is used.
	// Since Ansible 2.8, Ansible will now validate the input fields against the DSC resource definition automatically. Older versions will silently ignore invalid fields.

	free_form: string

	// Can be used to configure the exact version of the DSC resource to be invoked.
	// Useful if the target node has multiple versions installed of the module containing the DSC resource.
	// If not specified, the module will follow standard PowerShell convention and use the highest version available.

	module_version?: string

	// The name of the DSC Resource to use.
	// Must be accessible to PowerShell using any of the default paths.

	resource_name: string
}

win_environment :: {

	// The level at which to set the environment variable.
	// Use C(machine) to set for all users.
	// Use C(user) to set for the current user that ansible is connected as.
	// Use C(process) to set for the current process.  Probably not that useful.

	level: string

	// The name of the environment variable.

	name: string

	// Set to C(present) to ensure environment variable is set.
	// Set to C(absent) to ensure it is removed.

	state?: string

	// The value to store in the environment variable.
	// Must be set when C(state=present) and cannot be an empty string.
	// Can be omitted for C(state=absent).

	value?: string
}

win_format :: {

	// Used to specify the drive letter of the volume to be formatted.

	drive_letter?: string

	// Specifies that large File Record System (FRS) should be used.

	large_frs?: bool

	// Enable integrity streams on the resulting ReFS volume.

	integrity_streams?: bool

	// Used to specify the label of the volume to be formatted.

	label?: string

	// Used to specify the new file system label of the formatted volume.

	new_label?: string

	// Specifies the cluster size to use when formatting the volume.
	// If no cluster size is specified when you format a partition, defaults are selected based on the size of the partition.
	// This value must be a multiple of the physical sector size of the disk.

	allocation_unit_size?: int

	// Enable compression on the resulting NTFS volume.
	// NTFS compression is not supported where I(allocation_unit_size) is more than 4096.

	compress?: bool

	// Used to specify the file system to be used when formatting the target volume.

	file_system?: string

	// Specify if formatting should be forced for volumes that are not created from new partitions or if the source and target file system are different.

	force?: bool

	// A full format writes to every sector of the disk, takes much longer to perform than the default (quick) format, and is not recommended on storage that is thinly provisioned.
	// Specify C(true) for full format.

	full?: bool

	// Used to specify the path to the volume to be formatted.

	path?: string
}

win_region :: {

	// This will copy the current format and location values to new user profiles and the welcome screen. This will only run if C(location), C(format) or C(unicode_language) has resulted in a change. If this process runs then it will always result in a change.

	copy_settings?: bool

	// The language format to set for the current user, see U(https://msdn.microsoft.com/en-us/library/system.globalization.cultureinfo.aspx) for a list of culture names to use.
	// This needs to be set if C(location) or C(unicode_language) is not set.

	format?: string

	// The location to set for the current user, see U(https://msdn.microsoft.com/en-us/library/dd374073.aspx) for a list of GeoIDs you can use and what location it relates to.
	// This needs to be set if C(format) or C(unicode_language) is not set.

	location?: string

	// The unicode language format to set for all users, see U(https://msdn.microsoft.com/en-us/library/system.globalization.cultureinfo.aspx) for a list of culture names to use.
	// This needs to be set if C(location) or C(format) is not set. After setting this value a reboot is required for it to take effect.

	unicode_language?: string
}

win_scheduled_task :: {

	// The amount of time that the Task Scheduler will wait before deleting the task after it expires.
	// A task expires after the end_boundary has been exceeded for all triggers associated with the task.
	// This is in the ISO 8601 Duration format C(P[n]Y[n]M[n]DT[n]H[n]M[n]S).

	delete_expired_task_after?: string

	// Task folder in which this task will be stored.
	// Will create the folder when C(state=present) and the folder does not already exist.
	// Will remove the folder when C(state=absent) and there are no tasks left in the folder.

	path?: string

	// When C(state=present) will ensure the task exists.
	// When C(state=absent) will ensure the task does not exist.

	state?: string

	// A list of action to configure for the task.
	// See suboptions for details on how to construct each list entry.
	// When creating a task there MUST be at least one action but when deleting a task this can be a null or an empty list.
	// The ordering of this list is important, the module will ensure the order is kept when modifying the task.
	// This module only supports the C(ExecAction) type but can still delete the older legacy types.

	actions?: [..._]

	// The author of the task.

	author?: string

	// The integer value with indicates which version of Task Scheduler a task is compatible with.
	// C(0) means the task is compatible with the AT command.
	// C(1) means the task is compatible with Task Scheduler 1.0.
	// C(2) means the task is compatible with Task Scheduler 2.0.

	compatibility?: int

	// The date when the task was registered.

	date?: string

	// The description of the task.

	description?: string

	// The name of the user/group that is displayed in the Task Scheduler UI.

	display_name?: string

	// The number of times that the Task Scheduler will attempt to restart the task.

	restart_count?: int

	// Whether the task will run only when a network is available.

	run_only_if_network_available?: bool

	// Whether the task can be terminated by using TerminateProcess.

	allow_hard_terminate?: bool

	// Whether the task will wake the computer when it is time to run the task.

	wake_to_run?: bool

	// A list of triggers to configure for the task.
	// See suboptions for details on how to construct each list entry.
	// The ordering of this list is important, the module will ensure the order is kept when modifying the task.
	// There are multiple types of triggers, see U(https://msdn.microsoft.com/en-us/library/windows/desktop/aa383868.aspx) for a list of trigger types and their options.
	// The suboption options listed below are not required for all trigger types, read the description for more details.

	triggers?: [..._]

	// The level of user rights used to run the task.
	// If not specified the task will be created with limited rights.

	run_level?: string

	// The logon method that the task will run with.
	// C(password) means the password will be stored and the task has access to network resources.
	// C(s4u) means the existing token will be used to run the task and no password will be stored with the task. Means no network or encrypted files access.
	// C(interactive_token) means the user must already be logged on interactively and will run in an existing interactive session.
	// C(group) means that the task will run as a group.
	// C(service_account) means that a service account like System, Local Service or Network Service will run the task.

	logon_type?: string

	// Whether to update the password even when not other changes have occurred.
	// When C(yes) will always result in a change when executing the module.

	update_password?: bool

	// The name of the scheduled task without the path.

	name: string

	// Whether the task will run the task only if the computer is in an idle state.

	run_only_if_idle?: bool

	// The source of the task.

	source?: string

	// Whether the task can start at any time after its scheduled time has passed.

	start_when_available?: bool

	// Whether the task is enabled, the task can only run when C(yes).

	enabled?: bool

	// The amount of time allowed to complete the task.
	// When not set, the time limit is infinite.
	// This is in the ISO 8601 Duration format C(P[n]Y[n]M[n]DT[n]H[n]M[n]S).

	execution_time_limit?: string

	// The password for the user account to run the scheduled task as.
	// This is required when running a task without the user being logged in, excluding the builtin service accounts and Group Managed Service Accounts (gMSA).
	// If set, will always result in a change unless C(update_password) is set to C(no) and no other changes are required for the service.

	password?: string

	// The priority level (0-10) of the task.
	// When creating a new task the default is C(7).
	// See U(https://msdn.microsoft.com/en-us/library/windows/desktop/aa383512.aspx) for details on the priority levels.

	priority?: int

	// How long the Task Scheduler will attempt to restart the task.
	// If this is set then C(restart_count) must also be set.
	// The maximum allowed time is 31 days.
	// The minimum allowed time is 1 minute.
	// This is in the ISO 8601 Duration format C(P[n]Y[n]M[n]DT[n]H[n]M[n]S).

	restart_interval?: string

	// Whether the task can be started by using either the Run command or the Context menu.

	allow_demand_start?: bool

	// The user to run the scheduled task as.
	// Will default to the current user under an interactive token if not specified during creation.
	// The user account specified must have the C(SeBatchLogonRight) logon right which can be added with M(win_user_right).

	username?: string

	// Whether the task will be stopped if the computer begins to run on battery power.

	stop_if_going_on_batteries?: bool

	// The group that will run the task.
	// C(group) and C(username) are exclusive to each other and cannot be set at the same time.
	// C(logon_type) can either be not set or equal C(group).

	group?: string

	// Whether the task will be hidden in the UI.

	hidden?: bool

	// An integer that indicates the behaviour when starting a task that is already running.
	// C(0) will start a new instance in parallel with existing instances of that task.
	// C(1) will wait until other instances of that task to finish running before starting itself.
	// C(2) will not start a new instance if another is running.
	// C(3) will stop other instances of the task and start the new one.

	multiple_instances?: int

	// The version number of the task.

	version?: string

	// Whether the task will not be started if the computer is running on battery power.

	disallow_start_if_on_batteries?: bool
}

win_snmp :: {

	// The list of permitted SNMP managers.

	permitted_managers?: [..._]

	// C(add) will add new SNMP community strings and/or SNMP managers
	// C(set) will replace SNMP community strings and/or SNMP managers. An empty list for either C(community_strings) or C(permitted_managers) will result in the respective lists being removed entirely.
	// C(remove) will remove SNMP community strings and/or SNMP managers

	action?: string

	// The list of read-only SNMP community strings.

	community_strings?: [..._]
}

win_chocolatey_config :: {

	// The name of the config setting to manage.
	// See U(https://chocolatey.org/docs/chocolatey-configuration) for a list of valid configuration settings that can be changed.
	// Any config values that contain encrypted values like a password are not idempotent as the plaintext value cannot be read.

	name: string

	// When C(absent), it will ensure the setting is unset or blank.
	// When C(present), it will ensure the setting is set to the value of I(value).

	state?: string

	// Used when C(state=present) that contains the value to set for the config setting.
	// Cannot be null or an empty string, use C(state=absent) to unset a config value instead.

	value?: string
}

win_copy :: {

	// This option controls the autodecryption of source files using vault.

	decrypt?: bool

	// Remote absolute path where the file should be copied to.
	// If C(src) is a directory, this must be a directory too.
	// Use \ for path separators or \\ when in "double quotes".
	// If C(dest) ends with \ then source or the contents of source will be copied to the directory without renaming.
	// If C(dest) is a nonexistent path, it will only be created if C(dest) ends with "/" or "\", or C(src) is a directory.
	// If C(src) and C(dest) are files and if the parent directory of C(dest) doesn't exist, then the task will fail.

	dest: string

	// If set to C(yes), the file will only be transferred if the content is different than destination.
	// If set to C(no), the file will only be transferred if the destination does not exist.
	// If set to C(no), no checksuming of the content is performed which can help improve performance on larger files.

	force?: bool

	// This flag indicates that filesystem links in the source tree, if they exist, should be followed.

	local_follow?: bool

	// If C(no), it will search for src at originating/master machine.
	// If C(yes), it will go to the remote/target machine for the src.

	remote_src?: bool

	// Local path to a file to copy to the remote server; can be absolute or relative.
	// If path is a directory, it is copied (including the source folder name) recursively to C(dest).
	// If path is a directory and ends with "/", only the inside contents of that directory are copied to the destination. Otherwise, if it does not end with "/", the directory itself with all contents is copied.
	// If path is a file and dest ends with "\", the file is copied to the folder with the same filename.
	// Required unless using C(content).

	src?: string

	// Determine whether a backup should be created.
	// When set to C(yes), create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.
	// No backup is taken when C(remote_src=False) and multiple files are being copied.

	backup?: bool

	// When used instead of C(src), sets the contents of a file directly to the specified value.
	// This is for simple values, for anything complex or with formatting please switch to the M(template) module.

	content?: string
}

win_inet_proxy :: {

	// Whether to configure WinINet to automatically detect proxy settings through Web Proxy Auto-Detection C(WPAD).
	// This corresponds to the checkbox I(Automatically detect settings) in the connection settings window.

	auto_detect?: bool

	// A list of hosts that will bypass the set proxy when being accessed.
	// Use C(<local>) to match hostnames that are not fully qualified domain names. This is useful when needing to connect to intranet sites using just the hostname. If defined, this should be the last entry in the bypass list.
	// Use C(<-loopback>) to stop automatically bypassing the proxy when connecting through any loopback address like C(127.0.0.1), C(localhost), or the local hostname.
	// Omit, set to null or an empty string/list to remove the bypass list.
	// If this is set then I(proxy) must also be set.

	bypass?: [..._]

	// The name of the IE connection to set the proxy settings for.
	// These are the connections under the I(Dial-up and Virtual Private Network) header in the IE settings.
	// When omitted, the default LAN connection is used.

	connection?: string

	// A string or dict that specifies the proxy to be set.
	// If setting a string, should be in the form C(hostname), C(hostname:port), or C(protocol=hostname:port).
	// If the port is undefined, the default port for the protocol in use is used.
	// If setting a dict, the keys should be the protocol and the values should be the hostname and/or port for that protocol.
	// Valid protocols are C(http), C(https), C(ftp), and C(socks).
	// Omit, set to null or an empty string to remove the proxy settings.

	proxy?: string

	// The URL of a proxy configuration script.
	// Proxy configuration scripts are typically JavaScript files with the C(.pac) extension that implement the C(FindProxyForURL(url, host) function.
	// Omit, set to null or an empty string to remove the auto config URL.
	// This corresponds to the checkbox I(Use automatic configuration script) in the connection settings window.

	auto_config_url?: string
}

win_rds_cap :: {

	// Allow disk drive redirection.

	redirect_drives?: bool

	// Allow Plug and Play devices redirection.

	redirect_pnp?: bool

	// Allow serial port redirection.

	redirect_serial?: bool

	// The action the server takes when a session times out.
	// C(disconnect): disconnect the session.
	// C(reauth): silently reauthenticate and reauthorize the session.

	session_timeout_action?: string

	// Name of the connection authorization policy.

	name: string

	// Evaluation order of the policy.
	// The CAP in which I(order) is set to a value of '1' is evaluated first.
	// By default, a newly created CAP will take the first position.
	// If the given value exceed the total number of existing policies, the policy will take the last position but the evaluation order will be capped to this number.

	order?: int

	// Allow clipboard redirection.

	redirect_clipboard?: bool

	// Allow printers redirection.

	redirect_printers?: bool

	// The maximum time, in minutes, that a session can be idle.
	// A value of zero disables session timeout.

	session_timeout?: int

	// The state of connection authorization policy.
	// If C(absent) will ensure the policy is removed.
	// If C(present) will ensure the policy is configured and exists.
	// If C(enabled) will ensure the policy is configured, exists and enabled.
	// If C(disabled) will ensure the policy is configured, exists, but disabled.

	state?: string

	// A list of user groups that is allowed to connect to the Remote Gateway server.
	// Required when a new CAP is created.

	user_groups?: [..._]

	// A list of computer groups that is allowed to connect to the Remote Gateway server.

	computer_groups?: [..._]

	// Specifies the time interval, in minutes, after which an idle session is disconnected.
	// A value of zero disables idle timeout.

	idle_timeout?: int

	// Specifies whether connections are allowed only to Remote Desktop Session Host servers that enforce Remote Desktop Gateway redirection policy.

	allow_only_sdrts_servers?: bool

	// Specifies how the RD Gateway server authenticates users.
	// When a new CAP is created, the default value is C(password).

	auth_method?: string
}

win_user :: {

	// C(always) will update passwords if they differ.  C(on_create) will only set the password for newly created users.

	update_password?: string

	// C(yes) will disable the user account.
	// C(no) will clear the disabled flag.

	account_disabled?: bool

	// Adds or removes the user from this comma-separated list of groups, depending on the value of I(groups_action).
	// When I(groups_action) is C(replace) and I(groups) is set to the empty string ('groups='), the user is removed from all groups.

	groups?: string

	// If C(add), the user is added to each group in I(groups) where not already a member.
	// If C(replace), the user is added as a member of each group in I(groups) and removed from any other groups.
	// If C(remove), the user is removed from each group in I(groups).

	groups_action?: string

	// Name of the user to create, remove or modify.

	name: string

	// C(yes) will set the password to never expire.
	// C(no) will allow the password to expire.

	password_never_expires?: bool

	// When C(absent), removes the user account if it exists.
	// When C(present), creates or updates the user account.
	// When C(query) (new in 1.9), retrieves the user account details without making any changes.

	state?: string

	// C(no) will unlock the user account if locked.

	account_locked?: string

	// Description of the user.

	description?: string

	// Full name of the user.

	fullname?: string

	// Optionally set the user's password to this (plain text) value.

	password?: string

	// C(yes) will require the user to change their password at next login.
	// C(no) will clear the expired password flag.

	password_expired?: bool

	// C(yes) will prevent the user from changing their password.
	// C(no) will allow the user to change their password.

	user_cannot_change_password?: bool
}

win_lineinfile :: {

	// Used with C(state=present). If set, line can contain backreferences (both positional and named) that will get populated if the C(regexp) matches. This flag changes the operation of the module slightly; C(insertbefore) and C(insertafter) will be ignored, and if the C(regexp) doesn't match anywhere in the file, the file will be left unchanged.
	// If the C(regexp) does match, the last matching line will be replaced by the expanded line parameter.

	backrefs?: bool

	// Used with C(state=present). If specified, the line will be inserted after the last match of specified regular expression. A special value is available; C(EOF) for inserting the line at the end of the file.
	// If specified regular expression has no matches, EOF will be used instead. May not be used with C(backrefs).

	insertafter?: string

	// Required for C(state=present). The line to insert/replace into the file. If C(backrefs) is set, may contain backreferences that will get expanded with the C(regexp) capture groups if the regexp matches.
	// Be aware that the line is processed first on the controller and thus is dependent on yaml quoting rules. Any double quoted line will have control characters, such as '\r\n', expanded. To print such characters literally, use single or no quotes.

	line?: string

	// The regular expression to look for in every line of the file. For C(state=present), the pattern to replace if found; only the last line found will be replaced. For C(state=absent), the pattern of the line to remove. Uses .NET compatible regular expressions; see U(https://msdn.microsoft.com/en-us/library/hs600312%28v=vs.110%29.aspx).

	regex?: string

	// Whether the line should be there or not.

	state?: string

	// Validation to run before copying into place. Use %s in the command to indicate the current file to validate.
	// The command is passed securely so shell features like expansion and pipes won't work.

	validate?: string

	// Determine whether a backup should be created.
	// When set to C(yes), create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.

	backup?: bool

	// Used with C(state=present). If specified, the file will be created if it does not already exist. By default it will fail if the file is missing.

	create?: bool

	// Specifies the encoding of the source text file to operate on (and thus what the output encoding will be). The default of C(auto) will cause the module to auto-detect the encoding of the source file and ensure that the modified file is written with the same encoding.
	// An explicit encoding can be passed as a string that is a valid value to pass to the .NET framework System.Text.Encoding.GetEncoding() method - see U(https://msdn.microsoft.com/en-us/library/system.text.encoding%28v=vs.110%29.aspx).
	// This is mostly useful with C(create=yes) if you want to create a new file with a specific encoding. If C(create=yes) is specified without a specific encoding, the default encoding (UTF-8, no BOM) will be used.

	encoding?: string

	// Used with C(state=present). If specified, the line will be inserted before the last match of specified regular expression. A value is available; C(BOF) for inserting the line at the beginning of the file.
	// If specified regular expression has no matches, the line will be inserted at the end of the file. May not be used with C(backrefs).

	insertbefore?: string

	// Specifies the line separator style to use for the modified file. This defaults to the windows line separator (C(\r\n)). Note that the indicated line separator will be used for file output regardless of the original line separator that appears in the input file.

	newline?: string

	// The path of the file to modify.
	// Note that the Windows path delimiter C(\) must be escaped as C(\\) when the line is double quoted.
	// Before Ansible 2.3 this option was only usable as I(dest), I(destfile) and I(name).

	path: string
}

win_product_facts :: {
}

win_file_version :: {

	// File to get version.
	// Always provide absolute path.

	path: string
}
