package manageiq

manageiq_alert_profiles :: {

	// The resource type for the alert profile in ManageIQ. Required when state is "present".

	resource_type?: string

	// absent - alert profile should not exist,
	// present - alert profile should exist,

	state?: string

	// List of alert descriptions to assign to this profile.
	// Required if state is "present"

	alerts?: string

	// The unique alert profile name in ManageIQ.
	// Required when state is "absent" or "present".

	name?: string

	// Optional notes for this profile

	notes?: string
}

manageiq_group :: {

	// In merge mode existing settings are merged with the supplied C(belongsto_filters).
	// In replace mode current values are replaced with the supplied C(belongsto_filters).

	belongsto_filters_merge_mode?: string

	// The the group role name
	// The C(role_id) has precedence over the C(role) when supplied.

	role?: string

	// The the group role id

	role_id?: string

	// absent - group should not exist, present - group should be.

	state?: string

	// A list of strings with a reference to the allowed host, cluster or folder

	belongsto_filters?: [..._]

	// The tag values per category

	managed_filters?: {...}

	// In merge mode existing categories are kept or updated, new categories are added.
	// In replace mode all categories will be replaced with the supplied C(managed_filters).

	managed_filters_merge_mode?: string

	// The tenant for the group identified by the tenant name.
	// The C(tenant_id) has precedence over the C(tenant) when supplied.
	// Tenant names are case sensitive.

	tenant?: string

	// The tenant for the group identified by the tenant id.

	tenant_id?: string

	// The group description.

	description: string
}

manageiq_tags :: {

	// the relevant resource name in manageiq

	resource_name: string

	// the relevant resource type in manageiq

	resource_type: string

	// absent - tags should not exist,
	// present - tags should exist,
	// list - list current tags.

	state?: string

	// tags - list of dictionaries, each includes 'name' and 'category' keys.
	// required if state is present or absent.

	tags?: string
}

wakeonlan :: {

	// Network broadcast address to use for broadcasting magic Wake-on-LAN packet.

	broadcast?: string

	// MAC address to send Wake-on-LAN broadcast packet for.

	mac: string

	// UDP port to use for magic Wake-on-LAN packet.

	port?: string
}

manageiq_alerts :: {

	// Additional alert options, such as notification type and frequency

	options?: string

	// The entity type for the alert in ManageIQ. Required when state is "present".

	resource_type?: string

	// absent - alert should not exist,
	// present - alert should exist,

	state?: string

	// The unique alert description in ManageIQ.
	// Required when state is "absent" or "present".

	description?: string

	// Enable or disable the alert. Required if state is "present".

	enabled?: bool

	// The alert expression for ManageIQ.
	// Can either be in the "Miq Expression" format or the "Hash Expression format".
	// Required if state is "present".

	expression?: string

	// Expression type.

	expression_type?: string
}

manageiq_policies :: {

	// list of dictionaries, each includes the policy_profile 'name' key.
	// required if state is present or absent.

	policy_profiles?: string

	// the name of the resource to which the profile should be [un]assigned

	resource_name: string

	// the type of the resource to which the profile should be [un]assigned

	resource_type: string

	// absent - policy_profiles should not exist,
	// present - policy_profiles should exist,
	// list - list current policy_profiles and policies.

	state?: string
}

manageiq_provider :: {

	// Default endpoint connection information, required if state is true.

	provider?: string

	// SSH key pair used for SSH connections to all hosts in this provider.

	ssh_keypair?: string

	// Whether to enable mapping of existing tenants. defaults to False.

	tenant_mapping_enabled?: bool

	// The ManageIQ zone name that will manage the provider.

	zone?: string

	// Tenant ID. defaults to None.

	azure_tenant_id?: string

	// The provider region name to connect to (e.g. AWS region for Amazon).

	provider_region?: string

	// Microsoft Azure subscription ID. defaults to None.

	subscription?: string

	// Alerts endpoint connection information.

	alerts?: string

	// The last port in the host VNC range. defaults to None.

	host_default_vnc_port_end?: string

	// The first port in the host VNC range. defaults to None.

	host_default_vnc_port_start?: string

	// The provider's name.

	name: string

	// absent - provider should not exist, present - provider should be present, refresh - provider will be refreshed

	state?: string

	// The OpenStack Keystone API version. defaults to None.

	api_version?: string

	// Metrics endpoint connection information.

	metrics?: string

	// Google Compute Engine Project ID. defaults to None.

	project?: string

	// The provider's type.

	type: string
}

manageiq_tenant :: {

	// absent - tenant should not exist, present - tenant should be.

	state?: string

	// The tenant description.

	description: string

	// The tenant name.

	name: string

	// The name of the parent tenant. If not supplied and no C(parent_id) is supplied the root tenant is used.

	parent?: string

	// The id of the parent tenant. If not supplied the root tenant is used.
	// The C(parent_id) takes president over C(parent) when supplied

	parent_id?: string

	// The tenant quotas.
	// All parameters case sensitive.
	// Valid attributes are:
	//  - C(cpu_allocated) (int): use null to remove the quota.
	//  - C(mem_allocated) (GB): use null to remove the quota.
	//  - C(storage_allocated) (GB): use null to remove the quota.
	//  - C(vms_allocated) (int): use null to remove the quota.
	//  - C(templates_allocated) (int): use null to remove the quota.

	quotas?: string
}

manageiq_user :: {

	// The users' E-mail address.

	email?: string

	// The name of the group to which the user belongs.

	group?: string

	// The users' full name.

	name?: string

	// The users' password.

	password?: string

	// absent - user should not exist, present - user should be.

	state?: string

	// C(always) will update passwords unconditionally.  C(on_create) will only set the password for a newly created user.

	update_password?: string

	// The unique userid in manageiq, often mentioned as username.

	userid: string
}
