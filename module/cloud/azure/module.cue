package azure

azure_rm_postgresqlserver_info :: {

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: [..._]

	// The name of the server.

	name?: string

	// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.

	resource_group: string
}

azure_rm_roledefinition_info :: {

	// Role name.

	role_name?: string

	// The scope of role definition.

	scope: string

	// Type of role.

	type?: string

	// Role definition id.

	id?: string
}

azure_rm_trafficmanagerprofile_info :: {

	// Limit results to a specific Traffic Manager profile.

	name?: string

	// The resource group to search for the desired Traffic Manager profile.

	resource_group?: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string
}

azure_rm_iothub_info :: {

	// The resource group to search for the desired IoT Hub.

	resource_group?: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: [..._]

	// Show the statistics for IoT Hub.
	// Note this will have network overhead for each IoT Hub.

	show_stats?: bool

	// Test routes message. It will be used to test all routes.

	test_route_message?: string

	// List the consumer group of the built-in event hub.

	list_consumer_groups?: bool

	// List the keys of IoT Hub.
	// Note this will have network overhead for each IoT Hub.

	list_keys?: bool

	// Limit results to a specific resource group.

	name?: string

	// Get the health for routing endpoints.
	// Note this will have network overhead for each IoT Hub.

	show_endpoint_health?: bool

	// Get the quota metrics for an IoT hub.
	// Note this will have network overhead for each IoT Hub.

	show_quota_metrics?: bool
}

azure_rm_loganalyticsworkspace :: {

	// Manage intelligence packs possible for this workspace.
	// Enable one pack by setting it to C(true). For example "Backup:true".
	// Disable one pack by setting it to C(false). For example "Backup:false".
	// Other intelligence packs not list in this property will not be changed.

	intelligence_packs?: {...}

	// Resource location.

	location?: string

	// Name of the workspace.

	name: string

	// Name of resource group.

	resource_group: string

	// The workspace data retention in days.
	// -1 means Unlimited retention for I(sku=unlimited).
	// 730 days is the maximum allowed for all other SKUs.

	retention_in_days?: string

	// The SKU of the workspace.

	sku?: string

	// Assert the state of the image. Use C(present) to create or update a image and C(absent) to delete an image.

	state?: string
}

azure_rm_postgresqlfirewallrule_info :: {

	// The name of the server firewall rule.

	name?: string

	// The name of the resource group.

	resource_group: string

	// The name of the server.

	server_name: string
}

azure_rm_subnet :: {

	// The reference of the RouteTable resource.
	// Can be the name or resource ID of the route table.
	// Can be a dict containing the I(name) and I(resource_group) of the route table.

	route_table?: string

	// Existing security group with which to associate the subnet.
	// It can be the security group name which is in the same resource group.
	// Can be the resource ID of the security group.
	// Can be a dict containing the I(name) and I(resource_group) of the security group.

	security_group?: string

	// An array of service endpoints.

	service_endpoints?: [..._]

	// Assert the state of the subnet. Use C(present) to create or update a subnet and use C(absent) to delete a subnet.

	state?: string

	// Name of an existing virtual network with which the subnet is or will be associated.

	virtual_network_name: string

	// CIDR defining the IPv4 address space of the subnet. Must be valid within the context of the virtual network.

	address_prefix_cidr?: string

	// Name of the subnet.

	name: string

	// Name of resource group.

	resource_group: string
}

azure_rm_batchaccount :: {

	// The name of the resource group in which to create the Batch Account.

	resource_group: string

	// Assert the state of the Batch Account.
	// Use C(present) to create or update a Batch Account and C(absent) to delete it.

	state?: string

	// Existing storage account with which to associate the Batch Account.
	// It can be the storage account name which is in the same resource group.
	// It can be the storage account ID. Fox example "/subscriptions/{subscription_id}/resourceGroups/ {resource_group}/providers/Microsoft.Storage/storageAccounts/{name}".
	// It can be a dict which contains I(name) and I(resource_group) of the storage account.

	auto_storage_account?: string

	// Existing key vault with which to associate the Batch Account.
	// It can be the key vault name which is in the same resource group.
	// It can be the key vault ID. For example "/subscriptions/{subscription_id}/resourceGroups/ {resource_group}/providers/Microsoft.KeyVault/vaults/{name}".
	// It can be a dict which contains I(name) and I(resource_group) of the key vault.

	key_vault?: string

	// Specifies the supported Azure location where the resource exists.

	location?: string

	// The name of the Batch Account.

	name: string

	// The pool acclocation mode of the Batch Account.

	pool_allocation_mode?: string
}

azure_rm_devtestlabarmtemplate_info :: {

	// The name of the artifact source.

	artifact_source_name: string

	// The name of the lab.

	lab_name: string

	// The name of the ARM template.

	name?: string

	// The name of the resource group.

	resource_group: string
}

azure_rm_iotdevicemodule :: {

	// Name of IoT Hub.

	hub: string

	// Key of the I(hub_policy_name).

	hub_policy_key: string

	// Name of the IoT hub device identity.

	name: string

	// Explicit self-signed certificate thumbprint to use for secondary key.
	// Explicit Shared Private Key to use for secondary key.

	secondary_key?: string

	// A section that the solution back end can read from and write to.
	// Tags are not visible to device apps.
	// The tag can be nested dictionary, '.', '$', '#', ' ' is not allowed in the key.
	// List is not supported.

	twin_tags?: {...}

	// State of the IoT hub. Use C(present) to create or update an IoT hub device and C(absent) to delete an IoT hub device.

	state?: string

	// The authorization type an entity is to be created with.

	auth_method?: string

	// Used along with reported properties to synchronize device configuration or conditions.
	// The tag can be nested dictionary, '.', '$', '#', ' ' is not allowed in the key.
	// List is not supported.

	desired?: {...}

	// Device name the module associate with.

	device: string

	// Policy name of the IoT Hub which will be used to query from IoT hub.
	// This policy should have at least 'Registry Read' access.

	hub_policy_name: string

	// Explicit self-signed certificate thumbprint to use for primary key.
	// Explicit Shared Private Key to use for primary key.

	primary_key?: string
}

azure_rm_gallery_info :: {

	// Resource name

	name?: string

	// The name of the resource group.

	resource_group?: string
}

azure_rm_iotdevice_info :: {

	// Key of the I(hub_policy_name).

	hub_policy_key: string

	// Policy name of the IoT Hub which will be used to query from IoT hub.
	// This policy should have at least 'Registry Read' access.

	hub_policy_name: string

	// Name of the IoT hub device module.
	// Must use with I(device_id) defined.

	module_id?: string

	// Name of the IoT hub device identity.

	name?: string

	// Query an IoT hub to retrieve information regarding device twins using a SQL-like language.
	// See U(https://docs.microsoft.com/en-us/azure/iot-hub/iot-hub-devguide-query-language).

	query?: string

	// Used when I(name) not defined.
	// List the top n devices in the query.

	top?: int

	// Name of IoT Hub.

	hub: string
}

azure_rm_monitorlogprofile :: {

	// Resource location.

	location?: string

	// List of regions for which Activity Log events should be stored.

	locations?: [..._]

	// Unique name of the log profile to create or update.

	name: string

	// Retention policy for events in the log.

	retention_policy?: {...}

	// The service bus rule  ID of the service bus namespace in which you would like to have Event Hubs created for streaming in the Activity Log.
	// Format like {service_bus_resource_id}/authorizationrules{key_name}.

	service_bus_rule_id?: string

	// Assert the state of the log profile.
	// Use C(present) to create or update a log profile and C(absent) to delete it.

	state?: string

	// The storage account to which send the Activity Log.
	// It could be a resource ID.
	// It could be a dict containing I(resource_grorup) and I(name).

	storage_account?: _

	// List of categories of logs. These categories are created as is convenient to  user. Some Values are C(Write), C(Delete) and/or C(Action).

	categories?: [..._]
}

azure_rm_trafficmanagerendpoint :: {

	// The priority of this endpoint when traffic manager profile has routing_method of I(priority).
	// Possible values are from 1 to 1000, lower values represent higher priority.
	// This is an optional parameter. If specified, it must be specified on all endpoints.
	// No two endpoints can share the same priority value.

	priority?: int

	// Name of Traffic Manager profile where this endpoints attaches to.

	profile_name: string

	// Name of a resource group where the Traffic Manager endpoint exists or will be created.

	resource_group: string

	// Assert the state of the Traffic Manager endpoint. Use C(present) to create or update a Traffic Manager endpoint and C(absent) to delete it.

	state?: string

	// The list of countries/regions mapped to this endpoint when traffic manager profile has routing_method of C(geographic).

	geo_mapping?: [..._]

	// Specifies the location of the external or nested endpoints when using the 'Performance' traffic routing method.

	location?: string

	// The minimum number of endpoints that must be available in the child profile in order for the parent profile to be considered available.
	// Only applicable to endpoint of I(type=nested_endpoints).

	min_child_endpoints?: int

	// The name of the endpoint.

	name: string

	// The weight of this endpoint when traffic manager profile has routing_method of C(weighted).
	// Possible values are from 1 to 1000.

	weight?: int

	// The status of the endpoint.

	enabled?: bool

	// The fully-qualified DNS name of the endpoint.

	target?: string

	// The Azure Resource URI of the of the endpoint.
	// Not applicable to endpoints of I(type=external_endpoints).

	target_resource_id?: string

	// The type of the endpoint.

	type: string
}

azure_rm_virtualnetwork :: {

	// Valid Azure location. Defaults to location of the resource group.

	location?: string

	// Name of the virtual network.

	name: string

	// Use with I(state=present) to remove any existing I(address_prefixes).

	purge_address_prefixes?: bool

	// Use with I(state=present) to remove existing DNS servers, reverting to default Azure servers. Mutually exclusive with DNS servers.

	purge_dns_servers?: bool

	// Name of resource group.

	resource_group: string

	// State of the virtual network. Use C(present) to create or update and C(absent) to delete.

	state?: string

	// List of IPv4 address ranges where each is formatted using CIDR notation.
	// Required when creating a new virtual network or using I(purge_address_prefixes).

	address_prefixes_cidr?: string

	// Custom list of DNS servers. Maximum length of two.
	// The first server in the list will be treated as the Primary server. This is an explicit list.
	// Existing DNS servers will be replaced with the specified list.
	// Use the I(purge_dns_servers) option to remove all custom DNS servers and revert to default Azure servers.

	dns_servers?: string
}

azure_rm_aks_info :: {

	// Limit results to a specific resource group.

	name?: string

	// The resource group to search for the desired Azure Kubernetes Service

	resource_group?: string

	// Show kubeconfig of the AKS cluster.
	// Note the operation will cost more network overhead, not recommended when listing AKS.

	show_kubeconfig?: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string
}

azure_rm_autoscale_info :: {

	// The name of the Auto Scale Setting.

	name?: string

	// The name of the resource group.

	resource_group: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string
}

azure_rm_functionapp_info :: {

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string

	// Only show results for a specific Function App.

	name?: string

	// Limit results to a resource group. Required when filtering by name.

	resource_group?: string
}

azure_rm_cdnprofile_info :: {

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string

	// Limit results to a specific CDN profile.

	name?: string

	// The resource group to search for the desired CDN profile.

	resource_group?: string
}

azure_rm_route :: {

	// Name of resource group.

	resource_group: string

	// The name of the route table.

	route_table_name: string

	// Assert the state of the route. Use C(present) to create or update and C(absent) to delete.

	state?: string

	// The destination CIDR to which the route applies.

	address_prefix?: string

	// Name of the route.

	name: string

	// The IP address packets should be forwarded to.
	// Next hop values are only allowed in routes where the next hop type is VirtualAppliance.

	next_hop_ip_address?: string

	// The type of Azure hop the packet should be sent to.

	next_hop_type?: string
}

azure_rm_sqlserver :: {

	// The name of the server.

	name: string

	// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.

	resource_group: string

	// State of the SQL server. Use C(present) to create or update a server and use C(absent) to delete a server.

	state?: string

	// The version of the server. For example C(12.0).

	version?: string

	// The administrator login password (required for server creation).

	admin_password?: string

	// Administrator username for the server. Once created it cannot be changed.

	admin_username?: string

	// The identity type. Set this to C(SystemAssigned) in order to automatically create and assign an Azure Active Directory principal for the resource.
	// Possible values include C(SystemAssigned).

	identity?: string

	// Resource location.

	location?: string
}

azure_rm_devtestlabvirtualnetwork :: {

	// Assert the state of the Virtual Network.
	// Use C(present) to create or update an Virtual Network and C(absent) to delete it.

	state?: string

	// The description of the virtual network.

	description?: string

	// The name of the lab.

	lab_name: string

	// The location of the resource.

	location?: string

	// The name of the virtual network.

	name: string

	// The name of the resource group.

	resource_group: string
}

azure_rm_dnszone_info :: {

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string

	// Only show results for a specific zone.

	name?: string

	// Limit results by resource group. Required when filtering by name.

	resource_group?: string
}

azure_rm_lock_info :: {

	// Name of the lock.

	name: string

	// Resource group name where need to manage the lock.
	// The lock is in the resource group level.
	// Cannot be set mutual with I(managed_resource_id).
	// Query subscription if both I(managed_resource_id) and I(resource_group) not defined.
	// Can get all locks with 'child scope' in this resource group, use the I(managed_resource_id) in response for further management.

	resource_group?: string

	// ID of the resource where need to manage the lock.
	// Get this via facts module.
	// Cannot be set mutual with I(resource_group).
	// Manage subscription if both I(managed_resource_id) and I(resource_group) not defined.
	// '/subscriptions/{subscriptionId}' for subscriptions.
	// '/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}' for resource groups.
	// '/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{namespace}/{resourceType}/{resourceName}' for resources.
	// Can get all locks with 'child scope' for this resource, use I(managed_resource_id) in response for further management.

	managed_resource_id?: string
}

azure_rm_networkinterface :: {

	// Determines any rules to be added to a default security group.
	// When creating a network interface, if no security group name is provided, a default security group will be created.
	// If the I(os_type=Windows), a rule allowing RDP access will be added.
	// If the I(os_type=Linux), a rule allowing SSH access will be added.

	os_type?: string

	// (Deprecate) Valid IPv4 address that falls within the specified subnet.
	// This option will be deprecated in 2.9, use I(ip_configurations) instead.

	private_ip_address?: string

	// (Deprecate) If a I(public_ip_address_name) is not provided, a default public IP address will be created.
	// The allocation method determines whether or not the public IP address assigned to the network interface is permanent.
	// This option will be deprecated in 2.9, use I(ip_configurations) instead.

	public_ip_allocation_method?: string

	// Name of a resource group where the network interface exists or will be created.

	resource_group: string

	// An existing security group with which to associate the network interface.
	// If not provided, a default security group will be created when I(create_with_security_group=true).
	// It can be the name of security group.
	// Make sure the security group is in the same resource group when you only give its name.
	// It can be the resource id.
	// It can be a dict contains security_group's I(name) and I(resource_group).

	security_group?: string

	// List of IP configurations. Each configuration object should include field I(private_ip_address), I(private_ip_allocation_method), I(public_ip_address_name), I(public_ip), I(public_ip_allocation_method), I(name).

	ip_configurations?: string

	// Name of the network interface.

	name: string

	// When a default security group is created for a Linux host a rule will be added allowing inbound TCP connections to the default SSH port C(22), and for a Windows host rules will be added allowing inbound access to RDP ports C(3389) and C(5986). Override the default ports by providing a list of open ports.

	open_ports?: string

	// An existing virtual network with which the network interface will be associated. Required when creating a network interface.
	// It can be the virtual network's name.
	// Make sure your virtual network is in the same resource group as NIC when you give only the name.
	// It can be the virtual network's resource id.
	// It can be a dict which contains I(name) and I(resource_group) of the virtual network.

	virtual_network: string

	// (Deprecate) Name of an existing public IP address object to associate with the security group.
	// This option will be deprecated in 2.9, use I(ip_configurations) instead.

	public_ip_address_name?: string

	// Assert the state of the network interface. Use C(present) to create or update an interface and C(absent) to delete an interface.

	state?: string

	// Whether to enable IP forwarding.

	enable_ip_forwarding?: bool

	// (Deprecate) Whether or not the assigned IP address is permanent.
	// When creating a network interface, if you specify I(private_ip_address=Static), you must provide a value for I(private_ip_address).
	// You can update the allocation method to C(Static) after a dynamic private IP address has been assigned.
	// This option will be deprecated in 2.9, use I(ip_configurations) instead.

	private_ip_allocation_method?: string

	// (Deprecate) When creating a network interface, if no public IP address name is provided a default public IP address will be created.
	// Set to C(false) if you do not want a public IP address automatically created.
	// This option will be deprecated in 2.9, use I(ip_configurations) instead.

	public_ip?: bool

	// Which DNS servers should the NIC lookup.
	// List of IP addresses.

	dns_servers?: [..._]

	// Name of an existing subnet within the specified virtual network. Required when creating a network interface.
	// Use the C(virtual_network)'s resource group.

	subnet_name: string

	// Whether a security group should be be created with the NIC.
	// If this flag set to C(True) and no I(security_group) set, a default security group will be created.

	create_with_security_group?: bool

	// Whether the network interface should be created with the accelerated networking feature or not.

	enable_accelerated_networking?: bool

	// Valid Azure location. Defaults to location of the resource group.

	location?: string
}

azure_rm_roleassignment_info :: {

	// Resource id of role definition.

	role_definition_id?: string

	// The scope that the role assignment applies to.
	// For example, use /subscriptions/{subscription-id}/ for a subscription.
	// /subscriptions/{subscription-id}/resourceGroups/{resourcegroup-name} for a resource group.
	// /subscriptions/{subscription-id}/resourceGroups/{resourcegroup-name}/providers/{resource-provider}/{resource-type}/{resource-name} for a resource.

	scope?: string

	// Object id of a user, group or service principal.
	// Mutually exclusive with I(name).

	assignee?: string

	// Name of role assignment.
	// Mutual exclusive with I(assignee).

	name?: string
}

azure_rm_aksversion_info :: {

	// Get the upgrade versions available for a managed Kubernetes cluster version.

	version?: string

	// Get the versions available for creating a managed Kubernetes cluster.

	location: string
}

azure_rm_containerinstance :: {

	// The IP address type of the container group.
	// Default is C(none) and creating an instance without public IP.

	ip_address?: string

	// The container image registry login server.

	registry_login_server?: string

	// The username to log in container image registry server.

	registry_username?: string

	// The Dns name label for the IP.

	dns_name_label?: string

	// Name of resource group.

	resource_group: string

	// Assert the state of the container instance. Use C(present) to create or update an container instance and C(absent) to delete it.

	state?: string

	// List of ports exposed within the container group.
	// This option is deprecated, using I(ports) under I(containers)".

	ports?: [..._]

	// Force update of existing container instance. Any update will result in deletion and recreation of existing containers.

	force_update?: bool

	// Valid azure location. Defaults to location of the resource group.

	location?: string

	// The OS type of containers.

	os_type?: string

	// Restart policy for all containers within the container group.

	restart_policy?: string

	// List of containers.
	// Required when creation.

	containers?: string

	// The password to log in container image registry server.

	registry_password?: string

	// The name of the container group.

	name: string
}

azure_rm_devtestlabpolicy_info :: {

	// The name of the policy set.

	policy_set_name: string

	// The name of the resource group.

	resource_group: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: [..._]

	// The name of the lab.

	lab_name: string

	// The name of the policy.

	name?: string
}

azure_rm_servicebusqueue :: {

	// Queue or topic name to forward the Dead Letter message for a queue.

	forward_dead_lettered_messages_to?: string

	// Queue or topic name to forward the messages for a queue.

	forward_to?: string

	// Timespan duration of a peek-lock.
	// The amount of time that the message is locked for other receivers.
	// The maximum value for LockDuration is 5 minutes.

	lock_duration_in_seconds?: int

	// The maximum delivery count.
	// A message is automatically deadlettered after this number of deliveries.

	max_delivery_count?: int

	// Name of the queue.

	name: string

	// Status of the entity.

	status?: string

	// Default message timespan to live value.
	// This is the duration after which the message expires, starting from when the message is sent to Service Bus.
	// This is the default value used when TimeToLive is not set on a message itself.

	default_message_time_to_live_seconds?: int

	// TimeSpan structure that defines the duration of the duplicate detection history.

	duplicate_detection_time_in_seconds?: int

	// Value that indicates whether server-side batched operations are enabled.

	enable_batched_operations?: bool

	// Value that indicates whether Express Entities are enabled.
	// An express topic or queue holds a message in memory temporarily before writing it to persistent storage.

	enable_express?: bool

	// The maximum size of the queue in megabytes, which is the size of memory allocated for the queue.

	max_size_in_mb?: int

	// Time idle interval after which a queue is automatically deleted.
	// The minimum duration is 5 minutes.

	auto_delete_on_idle_in_seconds?: int

	// A value that indicates whether the topic or queue is to be partitioned across multiple message brokers.

	enable_partitioning?: bool

	// Servicebus namespace name.
	// A namespace is a scoping container for all messaging components.
	// Multiple queues and topics can reside within a single namespace, and namespaces often serve as application containers.

	namespace: string

	// A value indicating if this queue or topic requires duplicate detection.

	requires_duplicate_detection?: bool

	// A value that indicates whether the queue supports the concept of sessions.

	requires_session?: bool

	// Name of resource group.

	resource_group: string

	// Assert the state of the queue. Use C(present) to create or update and use C(absent) to delete.

	state?: string

	// A value that indicates whether a queue has dead letter support when a message expires.

	dead_lettering_on_message_expiration?: bool
}

azure_rm_postgresqlconfiguration_info :: {

	// Setting name.

	name?: string

	// The name of the resource group that contains the resource.

	resource_group: string

	// The name of the server.

	server_name: string
}

azure_rm_roledefinition :: {

	// List of assignable scopes of this definition.

	assignable_scopes?: string

	// The role definition description.

	description?: string

	// Unique name of role definition.

	name: string

	// Set of role definition permissions.
	// See U(https://docs.microsoft.com/en-us/azure/app-service/app-service-web-overview) for more info.

	permissions?: string

	// The scope of the role definition.

	scope?: string

	// Assert the state of the role definition.
	// Use C(present) to create or update a role definition; use C(absent) to delete it.

	state?: string
}

azure_rm_appserviceplan_info :: {

	// Only show results for a specific app service plan.

	name?: string

	// Limit results by resource group.

	resource_group?: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string
}

azure_rm_cdnendpoint :: {

	// Indicates whether content compression is enabled on CDN.

	is_compression_enabled?: bool

	// A directory path on the origin that CDN can use to retrieve content from.
	// E.g. contoso.cloudapp.net/originpath.

	origin_path?: string

	// Use with I(state=present) to purge the endpoint.

	purge?: bool

	// Assert the state of the Azure CDN endpoint. Use C(present) to create or update a Azure CDN endpoint and C(absent) to delete it.

	state?: string

	// List of content types on which compression applies.
	// This value should be a valid MIME type.

	content_types_to_compress?: [..._]

	// Set of source of the content being delivered via CDN.

	origins: string

	// Indicates whether HTTP traffic is allowed on the endpoint.

	is_http_allowed?: bool

	// Valid azure location. Defaults to location of the resource group.

	location?: string

	// Name of the Azure CDN endpoint.

	name: string

	// Name of the CDN profile where the endpoint attached to.

	profile_name: string

	// Defines how CDN caches requests that include query strings.

	query_string_caching_behavior?: string

	// Name of a resource group where the Azure CDN endpoint exists or will be created.

	resource_group: string

	// Indicates whether HTTPS traffic is allowed on the endpoint.

	is_https_allowed?: bool

	// The host header value sent to the origin with each request.

	origin_host_header?: string

	// Use with I(state=present) and I(purge=true) to specify content paths to be purged.

	purge_content_paths?: [..._]

	// Use with I(state=present) to start the endpoint.

	started?: bool
}

azure_rm_hdinsightcluster_info :: {

	// HDInsight cluster name.

	name?: string

	// Name of an Azure resource group.

	resource_group?: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string
}

azure_rm_servicebustopic :: {

	// Value that indicates whether the topic supports ordering.

	support_ordering?: bool

	// Name of resource group.

	resource_group: string

	// Servicebus namespace name.
	// A namespace is a scoping container for all messaging components.
	// Multipletopics can reside within a single namespace.

	namespace: string

	// Assert the state of the topic. Use C(present) to create or update and use C(absent) to delete.

	state?: string

	// Time idle interval after which a topic is automatically deleted.
	// The minimum duration is 5 minutes.

	auto_delete_on_idle_in_seconds?: int

	// TimeSpan structure that defines the duration of the duplicate detection history.

	duplicate_detection_time_in_seconds?: int

	// A value indicating if this topic requires duplicate detection.

	requires_duplicate_detection?: bool

	// Default message timespan to live value.
	// This is the duration after which the message expires, starting from when the message is sent to Service Bus.
	// This is the default value used when TimeToLive is not set on a message itself.

	default_message_time_to_live_seconds?: int

	// Value that indicates whether Express Entities are enabled.
	// An express topic holds a message in memory temporarily before writing it to persistent storage.

	enable_express?: bool

	// A value that indicates whether the topic is to be partitioned across multiple message brokers.

	enable_partitioning?: bool

	// The maximum size of the topic in megabytes, which is the size of memory allocated for the topic.

	max_size_in_mb?: int

	// Name of the topic.

	name: string

	// Status of the entity.

	status?: string

	// Value that indicates whether server-side batched operations are enabled.

	enable_batched_operations?: bool
}

azure_rm_dnsrecordset_info :: {

	// Limit the maximum number of record sets to return.

	top?: int

	// Limit results by zones. Required when filtering by name or type.

	zone_name?: string

	// Limit record sets by record type.

	record_type?: string

	// Only show results for a Record Set.

	relative_name?: string

	// Limit results by resource group. Required when filtering by name or type.

	resource_group?: string
}

azure_rm_hdinsightcluster :: {

	// The name of the cluster.

	name: string

	// The cluster tier.

	tier?: string

	// The version of the cluster. For example C(3.6).

	cluster_version?: string

	// The list of roles in the cluster.

	compute_profile_roles?: [..._]

	// Resource location. If not set, location from the resource group will be used as default.

	location?: string

	// Assert the state of the cluster.
	// Use C(present) to create or update a cluster and C(absent) to delete it.

	state?: string

	// The list of storage accounts in the cluster.

	storage_accounts?: [..._]

	// The cluster definition.

	cluster_definition?: string

	// The type of operating system.

	os_type?: string

	// The name of the resource group.

	resource_group: string
}

azure_rm_postgresqldatabase_info :: {

	// The name of the database.

	name?: string

	// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.

	resource_group: string

	// The name of the server.

	server_name: string
}

azure_rm_devtestlab_info :: {

	// The name of the lab.

	name?: string

	// The name of the resource group.

	resource_group?: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: [..._]
}

azure_rm_servicebustopicsubscription :: {

	// Status of the entity.

	status?: string

	// Value that indicates whether a subscription has dead letter support on filter evaluation exceptions.

	dead_lettering_on_filter_evaluation_exceptions?: bool

	// Timespan duration of a peek-lock.
	// The amount of time that the message is locked for other receivers.
	// The maximum value for LockDuration is 5 minutes.

	lock_duration_in_seconds?: int

	// he maximum delivery count.
	// A message is automatically deadlettered after this number of deliveries.

	max_delivery_count?: int

	// Servicebus namespace name.
	// A namespace is a scoping container for all messaging components.
	// Multiple subscriptions and topics can reside within a single namespace, and namespaces often serve as application containers.

	namespace: string

	// Assert the state of the servicebus subscription. Use C(present) to create or update and use C(absent) to delete.

	state?: string

	// Time idle interval after which a subscription is automatically deleted.
	// The minimum duration is 5 minutes.

	auto_delete_on_idle_in_seconds?: int

	// Queue or topic name to forward the Dead Letter message for a subscription.

	forward_dead_lettered_messages_to?: string

	// Queue or topic name to forward the messages for a subscription.

	forward_to?: string

	// TimeSpan structure that defines the duration of the duplicate detection history.

	duplicate_detection_time_in_seconds?: int

	// Default message timespan to live value.
	// This is the duration after which the message expires, starting from when the message is sent to Service Bus.
	// This is the default value used when TimeToLive is not set on a message itself.

	default_message_time_to_live_seconds?: int

	// Value that indicates whether server-side batched operations are enabled.

	enable_batched_operations?: bool

	// Name of the servicebus subscription.

	name: string

	// A value that indicates whether the subscription supports the concept of sessions.

	requires_session?: bool

	// Name of resource group.

	resource_group: string

	// Topic name which the subscription subscribe to.

	topic: string

	// A value that indicates whether a subscription has dead letter support when a message expires.

	dead_lettering_on_message_expiration?: bool
}

azure_rm_storageaccount :: {

	// Type of storage account. Required when creating a storage account.
	// C(Standard_ZRS) and C(Premium_LRS) accounts cannot be changed to other account types.
	// Other account types cannot be changed to C(Standard_ZRS) or C(Premium_LRS).

	account_type?: string

	// Attempt deletion if resource already exists and cannot be updated.

	force_delete_nonempty?: bool

	// Name of the storage account to update or create.

	name?: string

	// State of the storage account. Use C(present) to create or update a storage account and use C(absent) to delete an account.

	state?: string

	// The access tier for this storage account. Required when I(kind=BlobStorage).

	access_tier?: string

	// User domain assigned to the storage account.
	// Must be a dictionary with I(name) and I(use_sub_domain) keys where I(name) is the CNAME source.
	// Only one custom domain is supported per storage account at this time.
	// To clear the existing custom domain, use an empty string for the custom domain name property.
	// Can be added to an existing storage account. Will be ignored during storage account creation.

	custom_domain?: string

	// Allows https traffic only to storage service when set to C(true).

	https_only?: bool

	// The kind of storage.

	kind?: string

	// Valid Azure location. Defaults to location of the resource group.

	location?: string

	// Name of the resource group to use.

	resource_group: string

	// Specifies CORS rules for the Blob service.
	// You can include up to five CorsRule elements in the request.
	// If no blob_cors elements are included in the argument list, nothing about CORS will be changed.
	// If you want to delete all CORS rules and disable CORS for the Blob service, explicitly set I(blob_cors=[]).

	blob_cors?: [..._]
}

azure_rm_mariadbconfiguration_info :: {

	// Setting name.

	name?: string

	// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.

	resource_group: string

	// The name of the server.

	server_name: string
}

azure_rm_postgresqldatabase :: {

	// Assert the state of the PostgreSQL database. Use C(present) to create or update a database and C(absent) to delete it.

	state?: string

	// The charset of the database. Check PostgreSQL documentation for possible values.
	// This is only set on creation, use I(force_update) to recreate a database if the values don't match.

	charset?: string

	// The collation of the database. Check PostgreSQL documentation for possible values.
	// This is only set on creation, use I(force_update) to recreate a database if the values don't match.

	collation?: string

	// When set to C(true), will delete and recreate the existing PostgreSQL database if any of the properties don't match what is set.
	// When set to C(false), no change will occur to the database even if any of the properties do not match.

	force_update?: bool

	// The name of the database.

	name: string

	// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.

	resource_group: string

	// The name of the server.

	server_name: string
}

azure_rm_resourcegroup :: {

	// Remove a resource group and all associated resources.
	// Use with I(state=absent) to delete a resource group that contains resources.

	force_delete_nonempty?: bool

	// Azure location for the resource group. Required when creating a new resource group.
	// Cannot be changed once resource group is created.

	location?: string

	// Name of the resource group.

	name: string

	// Assert the state of the resource group. Use C(present) to create or update and C(absent) to delete.
	// When C(absent) a resource group containing resources will not be removed unless the I(force) option is used.

	state?: string
}

azure_rm_servicebus :: {

	// Name of the servicebus namespace.

	name: string

	// Name of resource group.

	resource_group: string

	// Namespace SKU.

	sku?: string

	// Assert the state of the servicebus. Use C(present) to create or update and use C(absen) to delete.

	state?: string

	// The servicebus's location.

	location?: string
}

azure_rm_webapp :: {

	// Web app container settings.

	container_settings?: string

	// Set of run time framework settings. Each setting is a dictionary.
	// See U(https://docs.microsoft.com/en-us/azure/app-service/app-service-web-overview) for more info.

	frameworks?: string

	// Configures web site to accept only https requests.

	https_only?: bool

	// Resource location. If not set, location from the resource group will be used as default.

	location?: string

	// Unique name of the app to create or update. To create or update a deployment slot, use the {slot} parameter.

	name: string

	// App service plan. Required for creation.
	// Can be name of existing app service plan in same resource group as web app.
	// Can be the resource ID of an existing app service plan. For example /subscriptions/<subs_id>/resourceGroups/<resource_group>/providers/Microsoft.Web/serverFarms/<plan_name>.
	// Can be a dict containing five parameters, defined below.
	// C(name), name of app service plan.
	// C(resource_group), resource group of the app service plan.
	// C(sku), SKU of app service plan, allowed values listed on U(https://azure.microsoft.com/en-us/pricing/details/app-service/linux/).
	// C(is_linux), whether or not the app service plan is Linux. defaults to C(False).
	// C(number_of_workers), number of workers for app service plan.

	plan?: string

	// Repository type of deployment source, for example C(LocalGit), C(GitHub).
	// List of supported values maintained at U(https://docs.microsoft.com/en-us/rest/api/appservice/webapps/createorupdate#scmtype).

	scm_type?: string

	// Time to live in seconds for web app default domain name.

	ttl_in_seconds?: string

	// Start/Stop/Restart the web app.

	app_state?: string

	// Deployment source for git.

	deployment_source?: string

	// Whether or not the web app hostname is registered with DNS on creation. Set to C(false) to register.

	dns_registration?: bool

	// Purge any existing application settings. Replace web app application settings with app_settings.

	purge_app_settings?: bool

	// State of the Web App.
	// Use C(present) to create or update a Web App and C(absent) to delete it.

	state?: string

	// Configure web app application settings. Suboptions are in key value pair format.

	app_settings?: string

	// Whether or not to send session affinity cookies, which route client requests in the same session to the same instance.

	client_affinity_enabled?: bool

	// Name of the resource group to which the resource belongs.

	resource_group: string

	// Whether or not to skip verification of custom (non *.azurewebsites.net) domains associated with web app. Set to C(true) to skip.

	skip_custom_domain_verification?: bool

	// The web's startup file.
	// Used only for Linux web apps.

	startup_file?: string
}

azure_rm_azurefirewall :: {

	// The name of the resource group.

	resource_group: string

	// Assert the state of the AzureFirewall.
	// Use C(present) to create or update an AzureFirewall and C(absent) to delete it.

	state?: string

	// Collection of application rule collections used by Azure Firewall.

	application_rule_collections?: [..._]

	// IP configuration of the Azure Firewall resource.

	ip_configurations?: [..._]

	// Resource location.

	location?: string

	// The name of the Azure Firewall.

	name: string

	// Collection of NAT rule collections used by Azure Firewall.

	nat_rule_collections?: [..._]

	// Collection of network rule collections used by Azure Firewall.

	network_rule_collections?: [..._]
}

azure_rm_devtestlabschedule :: {

	// Assert the state of the Schedule.
	// Use C(present) to create or update an Schedule and C(absent) to delete it.

	state?: string

	// The time of day the schedule will occur.

	time?: string

	// The time zone ID.

	time_zone_id?: string

	// The name of the lab.

	lab_name: string

	// The name of the schedule.

	name: string

	// The name of the resource group.

	resource_group: string
}

azure_rm_image_info :: {

	// List of tags to be matched.

	tags?: string

	// Name of the image to filter from existing images.

	name?: string

	// Name of resource group.

	resource_group?: string
}

azure_rm_mysqlserver_info :: {

	// The name of the server.

	name?: string

	// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.

	resource_group: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: [..._]
}

azure_rm_webapp_info :: {

	// Indicate whether to return publishing profile of the web app.

	return_publish_profile?: bool

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string

	// Only show results for a specific web app.

	name?: string

	// Limit results by resource group.

	resource_group?: string
}

azure_rm_availabilityset :: {

	// Name of the availability set.

	name: string

	// Fault domains define the group of virtual machines that share a common power source and network switch.
	// Should be between C(1) and C(3).

	platform_fault_domain_count?: int

	// Update domains indicate groups of virtual machines and underlying physical hardware that can be rebooted at the same time.

	platform_update_domain_count?: int

	// Name of a resource group where the availability set exists or will be created.

	resource_group: string

	// Define if the availability set supports managed disks.

	sku?: string

	// Assert the state of the availability set.
	// Use C(present) to create or update a availability set and C(absent) to delete a availability set.

	state?: string

	// Valid Azure location. Defaults to location of the resource group.

	location?: string
}

azure_rm_iothubconsumergroup :: {

	// Event hub endpoint name.

	event_hub?: string

	// Name of the IoT hub.

	hub: string

	// Name of the consumer group.

	name?: string

	// Name of resource group.

	resource_group: string

	// State of the IoT hub. Use C(present) to create or update an IoT hub and C(absent) to delete an IoT hub.

	state?: string
}

azure_rm_mysqldatabase :: {

	// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.

	resource_group: string

	// The name of the server.

	server_name: string

	// Assert the state of the MySQL Database. Use C(present) to create or update a database and C(absent) to delete it.

	state?: string

	// The charset of the database. Check MySQL documentation for possible values.
	// This is only set on creation, use I(force_update) to recreate a database if the values don't match.

	charset?: string

	// The collation of the database. Check MySQL documentation for possible values.
	// This is only set on creation, use I(force_update) to recreate a database if the values don't match.

	collation?: string

	// When set to C(true), will delete and recreate the existing MySQL database if any of the properties don't match what is set.
	// When set to C(false), no change will occur to the database even if any of the properties do not match.

	force_update?: bool

	// The name of the database.

	name: string
}

azure_rm_securitygroup :: {

	// Remove any existing rules not matching those defined in the rules parameters.

	purge_rules?: bool

	// Name of the resource group the security group belongs to.

	resource_group: string

	// Set of rules shaping traffic flow to or from a subnet or NIC. Each rule is a dictionary.

	rules?: string

	// Assert the state of the security group. Set to C(present) to create or update a security group. Set to C(absent) to remove a security group.

	state?: string

	// The set of default rules automatically added to a security group at creation.
	// In general default rules will not be modified. Modify rules to shape the flow of traffic to or from a subnet or NIC.
	// See rules below for the makeup of a rule dict.

	default_rules?: string

	// Valid azure location. Defaults to location of the resource group.

	location?: string

	// Name of the security group to operate on.

	name?: string

	// Remove any existing rules not matching those defined in the default_rules parameter.

	purge_default_rules?: bool
}

azure_rm_storageblob :: {

	// Overwrite existing blob or file when uploading or downloading. Force deletion of a container that contains blobs.

	force?: bool

	// Source file path. Use with state C(present) to upload a blob.

	src?: string

	// Set the blob cache-control header.

	cache_control?: string

	// Name of a blob container within the storage account.

	container: string

	// A container's level of public access. By default containers are private.
	// Can only be set at time of container creation.

	public_access?: string

	// State of a container or blob.
	// Use state C(absent) with a container value only to delete a container. Include a blob value to remove a specific blob. A container will not be deleted, if it contains blobs. Use the I(force) option to override, deleting the container and all associated blobs.
	// Use state C(present) to create or update a container and upload or download a blob. If the container does not exist, it will be created. If it exists, it will be updated with configuration options. Provide a blob name and either src or dest to upload or download. Provide a src path to upload and a dest path to download. If a blob (uploading) or a file (downloading) already exists, it will not be overwritten unless I(force=true).

	state?: string

	// Name of the resource group to use.

	resource_group: string

	// Name of the storage account to use.

	storage_account_name: string

	// Name of a blob object within the container.

	blob?: string

	// Set the blob content-disposition header.

	content_disposition?: string

	// Set the blob encoding header.

	content_encoding?: string

	// Destination file path. Use with state C(present) to download a blob.

	dest?: string

	// Type of blob object.

	blob_type?: string

	// Set the blob content-language header.

	content_language?: string

	// Set the blob md5 hash value.

	content_md5?: string

	// Set the blob content-type header. For example C(image/png).

	content_type?: string
}

azure_rm_deployment :: {

	// In incremental mode, resources are deployed without deleting existing resources that are not included in the template.
	// In complete mode resources are deployed and existing resources in the resource group not included in the template are deleted.

	deployment_mode?: string

	// The geo-locations in which the resource group will be located.

	location?: string

	// A hash of all the required template variables for the deployment template. This parameter is mutually exclusive with I(parameters_link).
	// Either I(parameters_link) or I(parameters) is required if I(state=present).

	parameters?: {...}

	// A hash containing the templates inline. This parameter is mutually exclusive with I(template_link).
	// Either I(template) or I(template_link) is required if I(state=present).

	template?: {...}

	// Whether or not to block until the deployment has completed.

	wait_for_deployment_completion?: bool

	// Time (in seconds) to wait between polls when waiting for deployment completion.

	wait_for_deployment_polling_period?: string

	// The name of the deployment to be tracked in the resource group deployment history.
	// Re-using a deployment name will overwrite the previous value in the resource group's deployment history.

	name?: string

	// Uri of file containing the parameters body. This parameter is mutually exclusive with I(parameters).
	// Either I(parameters_link) or I(parameters) is required if I(state=present).

	parameters_link?: string

	// The resource group name to use or create to host the deployed template.

	resource_group: string

	// If I(state=present), template will be created.
	// If I(state=present) and deployment exists, it will be updated.
	// If I(state=absent), stack will be removed.

	state?: string

	// Uri of file containing the template body. This parameter is mutually exclusive with I(template).
	// Either I(template) or I(template_link) is required if I(state=present).

	template_link?: string
}

azure_rm_manageddisk_info :: {

	// Limit results to a specific managed disk.

	name?: string

	// Limit results to a specific resource group.

	resource_group?: string

	// Limit results by providing a list of tags.
	// Format tags as 'key' or 'key:value'.

	tags?: [..._]
}

azure_rm_publicipaddress_info :: {

	// Limit results by resource group. Required when using name parameter.

	resource_group?: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string

	// Only show results for a specific Public IP.

	name?: string
}

azure_rm_galleryimage_info :: {

	// The name of the shared image gallery from which the image definitions are to be retrieved.

	gallery_name: string

	// Resource name.

	name?: string

	// The name of the resource group.

	resource_group: string
}

azure_rm_virtualmachineextension_info :: {

	// The name of the virtual machine extension.

	name?: string

	// The name of the resource group.

	resource_group: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string

	// The name of the virtual machine containing the extension.

	virtual_machine_name: string
}

azure_rm_mysqldatabase_info :: {

	// The name of the database.

	name?: string

	// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.

	resource_group: string

	// The name of the server.

	server_name: string
}

azure_rm_virtualnetworkpeering_info :: {

	// Name of a resource group where the vnet exists.

	resource_group: string

	// Name or resource ID of a virtual network.

	virtual_network: string

	// Name of the virtual network peering.

	name?: string
}

azure_rm_iothub :: {

	// Pricing tier for Azure IoT Hub.
	// Note that only one free IoT hub instance is allowed in each subscription. Exception will be thrown if free instances exceed one.
	// Default is C(s1) when creation.

	sku?: string

	// The Event Hub-compatible endpoint property.

	event_endpoint?: {...}

	// Configure rules for rejecting or accepting traffic from specific IPv4 addresses.

	ip_filters?: [..._]

	// Route device-to-cloud messages to service-facing endpoints.

	routes?: [..._]

	// Custom endpoints.

	routing_endpoints?: [..._]

	// State of the IoT hub. Use C(present) to create or update an IoT hub and C(absent) to delete an IoT hub.

	state?: string

	// Units in your IoT Hub.
	// Default is C(1).

	unit?: int

	// File upload notifications are enabled if set to C(True).

	enable_file_upload_notifications?: bool

	// Location of the IoT hub.

	location?: string

	// Name of the IoT hub.

	name: string

	// Name of resource group.

	resource_group: string
}

azure_rm_keyvault :: {

	// The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault.

	vault_tenant?: string

	// An array of 0 to 16 identities that have access to the key vault.
	// All identities in the array must use the same tenant ID as the key vault's tenant ID.

	access_policies?: string

	// Property to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault.

	enabled_for_deployment?: bool

	// Resource location. If not set, location from the resource group will be used as default.

	location?: string

	// The name of the Resource Group to which the server belongs.

	resource_group: string

	// SKU details.

	sku?: string

	// Name of the vault.

	vault_name: string

	// Property to specify whether the soft delete functionality is enabled for this key vault.

	enable_soft_delete?: bool

	// Property to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys.

	enabled_for_disk_encryption?: bool

	// Property to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault.

	enabled_for_template_deployment?: bool

	// Create vault in recovery mode.

	recover_mode?: bool

	// Assert the state of the KeyVault. Use C(present) to create or update an KeyVault and C(absent) to delete it.

	state?: string
}

azure_rm_loadbalancer_info :: {

	// The resource group to search for the desired load balancer.

	resource_group?: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string

	// Limit results to a specific resource group.

	name?: string
}

azure_rm_mariadbdatabase_info :: {

	// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.

	resource_group: string

	// The name of the server.

	server_name: string

	// The name of the database.

	name?: string
}

azure_rm_mysqlserver :: {

	// Enable SSL enforcement.

	enforce_ssl?: bool

	// Resource location. If not set, location from the resource group will be used as default.

	location?: string

	// The SKU (pricing tier) of the server.

	sku?: string

	// Assert the state of the MySQL Server. Use C(present) to create or update a server and C(absent) to delete it.

	state?: string

	// Server version.

	version?: string

	// The password of the administrator login.

	admin_password?: string

	// The administrator's login name of a server. Can only be specified when the server is being created (and is required for creation).

	admin_username?: string

	// Create mode of SQL Server.

	create_mode?: string

	// The name of the server.

	name: string

	// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.

	resource_group: string

	// The maximum storage allowed for a server.

	storage_mb?: int
}

azure_rm_appgateway :: {

	// Resource location. If not set, location from the resource group will be used as default.

	location?: string

	// Probes available to the application gateway resource.

	probes?: string

	// The name of the resource group.

	resource_group: string

	// SSL certificates of the application gateway resource.

	ssl_certificates?: string

	// Authentication certificates of the application gateway resource.

	authentication_certificates?: string

	// Backend http settings of the application gateway resource.

	backend_http_settings_collection?: string

	// List of HTTP listeners of the application gateway resource.

	http_listeners?: string

	// List of backend address pool of the application gateway resource.

	backend_address_pools?: string

	// Frontend IP addresses of the application gateway resource.

	frontend_ip_configurations?: string

	// Redirect configurations of the application gateway resource.

	redirect_configurations?: string

	// SKU of the application gateway resource.

	sku?: string

	// Assert the state of the Public IP. Use C(present) to create or update a and C(absent) to delete.

	state?: string

	// List of frontend ports of the application gateway resource.

	frontend_ports?: string

	// List of subnets used by the application gateway.

	gateway_ip_configurations?: string

	// The name of the application gateway.

	name: string

	// List of request routing rules of the application gateway resource.

	request_routing_rules?: string

	// SSL policy of the application gateway resource.

	ssl_policy?: string
}

azure_rm_devtestlabvirtualmachine :: {

	// The notes of the virtual machine.

	notes?: string

	// The password of the virtual machine administrator.

	password?: string

	// The name of the resource group.

	resource_group: string

	// Storage type to use for virtual machine.

	storage_type?: string

	// The user name of the virtual machine.

	user_name?: string

	// A valid Azure VM size value. For example, C(Standard_D4).
	// The list of choices varies depending on the subscription and location. Check your subscription for available choices.
	// Available values can be found on this website, link U(https://docs.microsoft.com/en-us/azure/virtual-machines/windows/sizes-general).
	// Required when I(state=present).

	vm_size?: string

	// Indicates whether another user can take ownership of the virtual machine.

	allow_claim?: string

	// An existing subnet within lab's virtual network.
	// It can be the subnet's resource id.
	// It can be a dict which contains C(virtual_network_name) and C(name).

	lab_subnet?: string

	// The SSH key of the virtual machine administrator.

	ssh_key?: string

	// Assert the state of the Virtual Machine.
	// Use C(present) to create or update an Virtual Machine and C(absent) to delete it.

	state?: string

	// The artifacts to be installed on the virtual machine.

	artifacts?: [..._]

	// The Microsoft Azure Marketplace image reference of the virtual machine.

	image?: string

	// The name of the virtual machine.

	name: string

	// Indicates whether the virtual machine is to be created without a public IP address.

	disallow_public_ip_address?: string

	// The expiration date for VM.

	expiration_date?: string

	// The name of the lab.

	lab_name: string

	// Base type of operating system.

	os_type?: string
}

azure_rm_galleryimageversion_info :: {

	// The name of the gallery Image Definition in which the Image Version resides.

	gallery_image_name: string

	// The name of the Shared Image Gallery in which the Image Definition resides.

	gallery_name: string

	// Resource name.

	name?: string

	// The name of the resource group.

	resource_group: string
}

azure_rm_postgresqlfirewallrule :: {

	// Assert the state of the PostgreSQL firewall rule. Use C(present) to create or update a PostgreSQL firewall rule and C(absent) to delete it.

	state?: string

	// The end IP address of the PostgreSQL firewall rule. Must be IPv4 format.

	end_ip_address?: string

	// The name of the PostgreSQL firewall rule.

	name: string

	// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.

	resource_group: string

	// The name of the server.

	server_name: string

	// The start IP address of the PostgreSQL firewall rule. Must be IPv4 format.

	start_ip_address?: string
}

azure_rm_trafficmanagerprofile :: {

	// Name of a resource group where the Traffic Manager profile exists or will be created.

	resource_group: string

	// The traffic routing method of the Traffic Manager profile.

	routing_method?: string

	// Assert the state of the Traffic Manager profile. Use C(present) to create or update a Traffic Manager profile and C(absent) to delete it.

	state?: string

	// The DNS settings of the Traffic Manager profile.

	dns_config?: string

	// Valid Azure location. Defaults to C(global) because in default public Azure cloud, Traffic Manager profile can only be deployed globally.
	// Reference U(https://docs.microsoft.com/en-us/azure/traffic-manager/quickstart-create-traffic-manager-profile#create-a-traffic-manager-profile).

	location?: string

	// The endpoint monitoring settings of the Traffic Manager profile.

	monitor_config?: string

	// Name of the Traffic Manager profile.

	name: string

	// The status of the Traffic Manager profile.

	profile_status?: string
}

azure_rm_storageaccount_info :: {

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string

	// Only show results for a specific account.

	name?: string

	// Limit results to a resource group. Required when filtering by name.

	resource_group?: string

	// Show the blob CORS settings for each blob related to the storage account.
	// Querying all storage accounts will take a long time.

	show_blob_cors?: bool

	// Show the connection string for each of the storageaccount's endpoints.
	// For convenient usage, C(show_connection_string) will also show the access keys for each of the storageaccount's endpoints.
	// Note that it will cost a lot of time when list all storageaccount rather than query a single one.

	show_connection_string?: bool
}

azure_rm_subnet_info :: {

	// The name of the subnet.

	name?: string

	// The name of the resource group.

	resource_group: string

	// The name of the virtual network.

	virtual_network_name: string
}

azure_rm_virtualmachinescalesetextension :: {

	// Whether the extension handler should be automatically upgraded across minor versions.

	auto_upgrade_minor_version?: bool

	// Name of the VMSS extension.

	name?: string

	// Assert the state of the extension.
	// Use C(present) to create or update an extension and C(absent) to delete it.

	state?: string

	// The type of the extension handler.

	type?: string

	// The name of the virtual machine where the extension should be create or updated.

	vmss_name: string

	// The type version of the extension handler.

	type_handler_version?: string

	// Valid Azure location. Defaults to location of the resource group.

	location?: string

	// A dictionary containing protected extension settings.
	// Settings depend on extension type.
	// Refer to U(https://docs.microsoft.com/en-us/azure/virtual-machines/extensions/overview) for more information.

	protected_settings?: string

	// The name of the extension handler publisher.

	publisher?: string

	// Name of a resource group where the VMSS extension exists or will be created.

	resource_group: string

	// A dictionary containing extension settings.
	// Settings depend on extension type.
	// Refer to U(https://docs.microsoft.com/en-us/azure/virtual-machines/extensions/overview) for more information.

	settings?: string
}

azure_rm_autoscale :: {

	// The identifier of the resource to apply autoscale setting.
	// It could be the resource id string.
	// It also could be a dict contains the C(name), C(subscription_id), C(namespace), C(types), C(resource_group) of the resource.

	target?: string

	// Specifies whether automatic scaling is enabled for the resource.

	enabled?: bool

	// location of the resource.

	location?: string

	// name of the resource.

	name: string

	// The collection of notifications.

	notifications?: string

	// The collection of automatic scaling profiles that specify different scaling parameters for different time periods.
	// A maximum of 20 profiles can be specified.

	profiles?: string

	// Resource group of the resource.

	resource_group: string

	// Assert the state of the virtual network. Use C(present) to create or update and C(absent) to delete.

	state?: string
}

azure_rm_devtestlab :: {

	// Allow creation of premium data disks.

	premium_data_disks?: bool

	// The name of the resource group.

	resource_group: string

	// Assert the state of the DevTest Lab.
	// Use C(present) to create or update an DevTest Lab and C(absent) to delete it.

	state?: string

	// Type of storage used by the lab. It can be either C(premium) or C(standard).

	storage_type?: string

	// The location of the resource.

	location?: string

	// The name of the lab.

	name: string
}

azure_rm_roleassignment :: {

	// The scope of the role assignment to create.
	// For example, use /subscriptions/{subscription-id}/ for subscription.
	// /subscriptions/{subscription-id}/resourceGroups/{resource-group-name} for resource group.
	// /subscriptions/{subscription-id}/resourceGroups/{resource-group-name}/providers/{resource-provider}/{resource-type}/{resource-name} for resource.

	scope?: string

	// Assert the state of the role assignment.
	// Use C(present) to create or update a role assignment and C(absent) to delete it.

	state?: string

	// The object id of assignee. This maps to the ID inside the Active Directory.
	// It can point to a user, service principal or security group.
	// Required when creating role assignment.

	assignee_object_id?: string

	// Unique name of role assignment.

	name?: string

	// The role definition id used in the role assignment.
	// Required when creating role assignment.

	role_definition_id?: string
}

azure_rm_galleryimage :: {

	// The Eula agreement for the gallery Image Definition.

	eula?: string

	// The name of the Shared Image Gallery in which the Image Definition is to be created.

	gallery_name: string

	// Image identifier.

	identifier: {...}

	// Resource location.

	location?: string

	// The name of the gallery Image Definition to be created or updated.
	// The allowed characters are alphabets and numbers with dots, dashes, and periods allowed in the middle.
	// The maximum length is 80 characters.

	name: string

	// This property allows you to specify the type of the OS that is included in the disk when creating a VM from a managed image.

	os_type: string

	// Recommended parameter values.

	recommended?: {...}

	// Disallowed parameter values.

	disallowed?: {...}

	// Assert the state of the GalleryImage.
	// Use C(present) to create or update an GalleryImage and C(absent) to delete it.

	state?: string

	// The release note uri.

	release_note_uri?: string

	// Purchase plan.

	purchase_plan?: {...}

	// The end of life date of the gallery Image Definition.
	// This property can be used for decommissioning purposes.
	// This property is updatable.
	// Format should be according to ISO-8601, for instance "2019-06-26".

	end_of_life_date?: string

	// The allowed values for OS State are C(generalized).

	os_state: string

	// The privacy statement uri.

	privacy_statement_uri?: string

	// The name of the resource group.

	resource_group: string

	// The description of this gallery Image Definition resource. This property is updatable.

	description?: string
}

azure_rm_rediscache :: {

	// SKU info of Azure Cache for Redis.

	sku?: string

	// Subnet in a virtual network to deploy the Azure Cache for Redis in.
	// It can be resource id of subnet, for example /subscriptions/{subid}/resourceGroups/{resourceGroupName}/Microsoft.{Network|ClassicNetwork}/VirtualNetworks/vnet1/subnets/subnet1.
	// It can be a dictionary where contains I(name), I(virtual_network_name) and I(resource_group).
	// I(name). Name of the subnet.
	// I(resource_group). Resource group name of the subnet.
	// I(virtual_network_name). Name of virtual network to which this subnet belongs.

	subnet?: string

	// Resource location. If not set, location from the resource group will be used as default.

	location?: string

	// Configures the eviction policy of the cache.
	// Please see U(https://docs.microsoft.com/en-us/azure/redis-cache/cache-configure#advanced-settings) for more detail.

	maxmemory_policy?: string

	// Reboot specified Redis node(s). There can be potential data loss.

	reboot?: string

	// The number of shards to be created when I(sku=premium).

	shard_count?: int

	// Wait till the Azure Cache for Redis instance provisioning_state is Succeeded.
	// It takes several minutes for Azure Cache for Redis to be provisioned ready for use after creating/updating/rebooting.
	// Set this option to C(true) to wait for provisioning_state. Set to C(false) if you don't care about provisioning_state.
	// Poll wait timeout is 60 minutes.

	wait_for_provisioning?: bool

	// Unique name of the Azure Cache for Redis to create or update.

	name: string

	// Allows clients to receive notifications when certain events occur.
	// Please see U(https://docs.microsoft.com/en-us/azure/redis-cache/cache-configure#advanced-settings) for more detail.

	notify_keyspace_events?: string

	// Regenerate Redis cache's access keys.

	regenerate_key?: string

	// Dict of tenant settings.

	tenant_settings?: {...}

	// Configures the amount of memory in MB that is reserved for non-cache operations.
	// Please see U(https://docs.microsoft.com/en-us/azure/redis-cache/cache-configure#advanced-settings) for more detail.

	maxmemory_reserved?: string

	// Assert the state of the Azure Cache for Redis.
	// Use C(present) to create or update an Azure Cache for Redis and C(absent) to delete it.

	state?: string

	// Static IP address. Required when deploying an Azure Cache for Redis inside an existing Azure virtual network.

	static_ip?: string

	// When set I(enable_non_ssl_port=true), the non-ssl Redis server port 6379 will be enabled.

	enable_non_ssl_port?: bool

	// Configures the amount of memory in MB that is reserved to accommodate for memory fragmentation.
	// Please see U(https://docs.microsoft.com/en-us/azure/redis-cache/cache-configure#advanced-settings) for more detail.

	maxfragmentationmemory_reserved?: string

	// Name of the resource group to which the resource belongs.

	resource_group: string
}

azure_rm_acs :: {

	// The agent pool profile suboptions.

	agent_pool_profiles: string

	// The Linux profile suboptions.

	linux_profile: string

	// Master profile suboptions.

	master_profile: string

	// Specifies the Container Orchestration Platform to use. Currently can be either C(DCOS), C(Kubernetes) or C(Swarm).
	// The I(service_principal) must be defined if set to C(Kubernetes).

	orchestration_platform: string

	// The service principal suboptions.
	// Required when I(orchestration_platform=Kubernetes).

	service_principal?: string

	// Should VM Diagnostics be enabled for the Container Service VM's.

	diagnostics_profile: bool

	// Valid azure location. Defaults to location of the resource group.

	location?: string

	// Name of the Azure Container Services(ACS) instance.

	name: string

	// Name of a resource group where the Container Services exists or will be created.

	resource_group: string

	// Assert the state of the ACS. Use C(present) to create or update an ACS and C(absent) to delete it.

	state?: string
}

azure_rm_automationaccount_info :: {

	// List statistics details for a automation account.
	// Note this will cost network overhead, suggest only used when I(name) set.

	list_statistics?: bool

	// List usage details for a automation account.
	// Note this will cost network overhead, suggest only used when I(name) set.

	list_usages?: bool

	// The name of the automation account.

	name?: string

	// The name of the resource group.

	resource_group: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: [..._]

	// List keys for a automation account.
	// Note this will cost network overhead, suggest only used when I(name) set.

	list_keys?: bool
}

azure_rm_gallery :: {

	// Resource location.

	location?: string

	// The name of the Shared Image Gallery.
	// Valid names consist of less than 80 alphanumeric characters, underscores and periods.

	name: string

	// The name of the resource group.

	resource_group: string

	// Assert the state of the Gallery.
	// Use C(present) to create or update an Gallery and C(absent) to delete it.

	state?: string

	// The description of this Shared Image Gallery resource. This property is updatable.

	description?: string
}

azure_rm_mysqlfirewallrule_info :: {

	// The name of the server firewall rule.

	name?: string

	// The name of the resource group.

	resource_group: string

	// The name of the server.

	server_name: string
}

azure_rm_rediscachefirewallrule :: {

	// Name of the Firewall rule.

	name: string

	// Name of the resource group to which the resource belongs.

	resource_group: string

	// The start IP address of the Azure Cache for Redis Firewall rule. Must be IPv4 format.
	// Required when creating Firewall rule.

	start_ip_address?: string

	// Assert the state of the Firewall rule of Azure Cache for Redis.
	// Use C(present) to create or update Firewall rule of Azure Cache for Redis and C(absent) to delete it.

	state?: string

	// Name of the Azure Cache for Redis.

	cache_name: string

	// The end IP address of the Azure Cache for Redis Firewall rule. Must be IPv4 format.
	// Required when creating Firewall rule.

	end_ip_address?: string
}

azure_rm_sqlfirewallrule :: {

	// State of the SQL Database. Use C(present) to create or update an SQL Database and C(absent) to delete it.

	state?: string

	// The end IP address of the firewall rule.
	// Must be IPv4 format. Must be greater than or equal to I(start_ip_address). Use value C(0.0.0.0) to represent all Azure-internal IP addresses.

	end_ip_address?: string

	// The name of the firewall rule.

	name: string

	// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.

	resource_group: string

	// The name of the server.

	server_name: string

	// The start IP address of the firewall rule.
	// Must be IPv4 format. Use value C(0.0.0.0) to represent all Azure-internal IP addresses.

	start_ip_address?: string
}

azure_rm_virtualmachineimage_info :: {

	// Azure location value, for example C(westus), C(eastus), C(eastus2), C(northcentralus), etc.
	// Supplying only a location value will yield a list of available publishers for the location.

	location: string

	// Name of an image offering. Combine with SKU to see a list of available image versions.

	offer?: string

	// Name of an image publisher. List image offerings associated with a particular publisher.

	publisher?: string

	// Image offering SKU. Combine with offer to see a list of available versions.

	sku?: string

	// Specific version number of an image.

	version?: string
}

azure_rm_cosmosdbaccount_info :: {

	// Name of an Azure resource group.

	resource_group?: string

	// Retrieve connection strings.

	retrieve_connection_strings?: bool

	// Retrieve keys and connection strings.

	retrieve_keys?: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string

	// Cosmos DB database account name.

	name?: string
}

azure_rm_devtestlabcustomimage_info :: {

	// The name of the lab.

	lab_name: string

	// The name of the custom image.

	name?: string

	// The name of the resource group.

	resource_group: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: [..._]
}

azure_rm_lock :: {

	// Name of the lock.

	name: string

	// Manage a lock for the named resource group.
	// Mutually exclusive with I(managed_resource_id).
	// If neither I(managed_resource_id) or I(resource_group) are specified, manage a lock for the current subscription.

	resource_group?: string

	// State of the lock.
	// Use C(present) to create or update a lock and C(absent) to delete a lock.

	state?: string

	// The lock level type.

	level?: string

	// Manage a lock for the specified resource ID.
	// Mutually exclusive with I(resource_group).
	// If neither I(managed_resource_id) or I(resource_group) are specified, manage a lock for the current subscription.
	// '/subscriptions/{subscriptionId}' for subscriptions.
	// '/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}' for resource groups.
	// '/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{namespace}/{resourceType}/{resourceName}' for resources.

	managed_resource_id?: string
}

azure_rm_virtualmachinescalesetinstance :: {

	// The instance ID of the virtual machine.

	instance_id: string

	// Set to C(yes) to upgrade to the latest model.

	latest_model?: bool

	// Use this option to change power state of the instance.

	power_state: string

	// The name of the resource group.

	resource_group: string

	// State of the VMSS instance. Use C(present) to update an instance and C(absent) to delete an instance.

	state?: string

	// The name of the VM scale set.

	vmss_name: string
}

azure_rm_applicationsecuritygroup :: {

	// Resource location. If not set, location from the resource group will be used as default.

	location?: string

	// The name of the application security group.

	name: string

	// The name of the resource group.

	resource_group: string

	// Assert the state of the Application Security Group.
	// Use C(present) to create or update an Application Security Group and C(absent) to delete it.

	state?: string
}

azure_rm_devtestlabschedule_info :: {

	// The name of the lab.

	lab_name: string

	// The name of the schedule.

	name?: string

	// The name of the resource group.

	resource_group: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: [..._]
}

azure_rm_iotdevice :: {

	// Explicit self-signed certificate thumbprint to use for primary key.
	// Explicit Shared Private Key to use for primary key.

	primary_key?: string

	// State of the IoT hub. Use C(present) to create or update an IoT hub device and C(absent) to delete an IoT hub device.

	state?: string

	// A section that the solution back end can read from and write to.
	// Tags are not visible to device apps.
	// The tag can be nested dictionary, '.', '$', '#', ' ' is not allowed in the key.
	// List is not supported.
	// Not supported in IoT Hub with Basic tier.

	twin_tags?: {...}

	// Flag indicating edge enablement.
	// Not supported in IoT Hub with Basic tier.

	edge_enabled?: bool

	// Name of the IoT hub device identity.

	name: string

	// Name of IoT Hub.

	hub: string

	// Key of the I(hub_policy_name).

	hub_policy_key: string

	// Policy name of the IoT Hub which will be used to query from IoT hub.
	// This policy should have 'RegistryWrite, ServiceConnect, DeviceConnect' accesses. You may get 401 error when you lack any of these.

	hub_policy_name: string

	// Explicit self-signed certificate thumbprint to use for secondary key.
	// Explicit Shared Private Key to use for secondary key.

	secondary_key?: string

	// Set device status upon creation.

	status?: bool

	// The authorization type an entity is to be created with.

	auth_method?: string

	// Used along with reported properties to synchronize device configuration or conditions.
	// The tag can be nested dictionary, '.', '$', '#', ' ' is not allowed in the key.
	// List is not supported.
	// Not supported in IoT Hub with Basic tier.

	desired?: {...}
}

azure_rm_containerregistry_info :: {

	// The name of the container registry.

	name?: string

	// The name of the resource group to which the container registry belongs.

	resource_group: string

	// Retrieve credentials for container registry.

	retrieve_credentials?: bool

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string
}

azure_rm_deployment_info :: {

	// The name of the deployment.

	name?: string

	// The name of the resource group.

	resource_group: string
}

azure_rm_devtestlabvirtualmachine_info :: {

	// The name of the lab.

	lab_name: string

	// The name of the virtual machine.

	name?: string

	// The name of the resource group.

	resource_group: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: [..._]
}

azure_rm_devtestlabvirtualnetwork_info :: {

	// The name of DevTest Lab.

	lab_name: string

	// The name of DevTest Lab Virtual Network.

	name?: string

	// The name of the resource group.

	resource_group: string
}

azure_rm_keyvault_info :: {

	// The name of the key vault.

	name?: string

	// The name of the resource group to which the key vault belongs.

	resource_group?: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string
}

azure_rm_aks :: {

	// Profile of Azure Active Directory configuration.

	aad_profile?: string

	// Profile of managed cluster add-on.
	// Key can be C(http_application_routing), C(monitoring), C(virtual_node).
	// Value must be a dict contains a bool variable C(enabled).

	addon?: {...}

	// The agent pool profile suboptions.

	agent_pool_profiles?: string

	// The Linux profile suboptions.

	linux_profile?: string

	// Profile of network configuration.

	network_profile?: string

	// The service principal suboptions.

	service_principal?: string

	// DNS prefix specified when creating the managed cluster.

	dns_prefix?: string

	// Enable RBAC.
	// Existing non-RBAC enabled AKS clusters cannot currently be updated for RBAC use.

	enable_rbac?: bool

	// Version of Kubernetes specified when creating the managed cluster.

	kubernetes_version?: string

	// Valid azure location. Defaults to location of the resource group.

	location?: string

	// Name of the managed Azure Container Services (AKS) instance.

	name: string

	// Name of a resource group where the managed Azure Container Services (AKS) exists or will be created.

	resource_group: string

	// Assert the state of the AKS. Use C(present) to create or update an AKS and C(absent) to delete it.

	state?: string
}

azure_rm_applicationsecuritygroup_info :: {

	// The name of the application security group.

	name?: string

	// The name of the resource group.

	resource_group?: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string
}

azure_rm_containerinstance_info :: {

	// The name of the container instance.

	name?: string

	// The name of the resource group.

	resource_group: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string
}

azure_rm_loganalyticsworkspace_info :: {

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string

	// Name of the workspace.

	name?: string

	// Name of resource group.

	resource_group: string

	// Show the intelligence packs for a workspace.
	// Note this will cost one more network overhead for each workspace, expected slow response.

	show_intelligence_packs?: string

	// Show the management groups for a workspace.
	// Note this will cost one more network overhead for each workspace, expected slow response.

	show_management_groups?: string

	// Show the shared keys for a workspace.
	// Note this will cost one more network overhead for each workspace, expected slow response.

	show_shared_keys?: string

	// Show the list of usages for a workspace.
	// Note this will cost one more network overhead for each workspace, expected slow response.

	show_usages?: string
}

azure_rm_postgresqlconfiguration :: {

	// Assert the state of the PostgreSQL setting. Use C(present) to update setting, or C(absent) to reset to default value.

	state?: string

	// Setting value.

	value?: string

	// Setting name.

	name: string

	// The name of the resource group that contains the resource.

	resource_group: string

	// The name of the server.

	server_name: string
}

azure_rm_keyvaultkey :: {

	// BYOK file.

	byok_file?: string

	// Name of the keyvault key.

	key_name: string

	// URI of the keyvault endpoint.

	keyvault_uri: string

	// PEM file.

	pem_file?: string

	// PEM password.

	pem_password?: string

	// Assert the state of the key. Use C(present) to create a key and C(absent) to delete a key.

	state?: string
}

azure_rm_routetable :: {

	// Specified whether to disable the routes learned by BGP on that route table.

	disable_bgp_route_propagation?: bool

	// Region of the resource.
	// Derived from I(resource_group) if not specified.

	location?: string

	// Name of the route table.

	name: string

	// Name of resource group.

	resource_group: string

	// Assert the state of the route table. Use C(present) to create or update and C(absent) to delete.

	state?: string
}

azure_rm_sqlfirewallrule_info :: {

	// The name of the firewall rule.

	name?: string

	// The name of the resource group that contains the server.

	resource_group: string

	// The name of the server.

	server_name: string
}

azure_rm_virtualnetworkgateway :: {

	// The type of this virtual network gateway.

	gateway_type?: string

	// List of IP configurations.

	ip_configurations?: string

	// The type of this virtual private network.

	vpn_type?: string

	// Virtual network gateway's BGP speaker settings.

	bgp_settings?: string

	// Valid Azure location. Defaults to location of the resource group.

	location?: string

	// Name of VPN Gateway.

	name: string

	// Name of a resource group where VPN Gateway exists or will be created.

	resource_group: string

	// The reference of the VirtualNetworkGatewaySku resource which represents the SKU selected for Virtual network gateway.

	sku?: string

	// State of the VPN Gateway. Use C(present) to create or update VPN gateway and C(absent) to delete VPN gateway.

	state?: string

	// An existing virtual network with which the VPN Gateway will be associated.
	// Required when creating a VPN Gateway.
	// Can be the name of the virtual network.
	// Must be in the same resource group as VPN gateway when specified by name.
	// Can be the resource ID of the virtual network.
	// Can be a dict which contains I(name) and I(resource_group) of the virtual network.

	virtual_network: string

	// Whether BGP is enabled for this virtual network gateway or not.

	enable_bgp?: string
}

azure_rm_availabilityset_info :: {

	// Limit results to a specific availability set.

	name?: string

	// The resource group to search for the desired availability set.

	resource_group?: string

	// List of tags to be matched.

	tags?: string
}

azure_rm_devtestlabartifact_info :: {

	// The name of the artifact source.

	artifact_source_name: string

	// The name of the lab.

	lab_name: string

	// The name of the artifact.

	name?: string

	// The name of the resource group.

	resource_group: string
}

azure_rm_devtestlabenvironment :: {

	// The parameters of the Azure Resource Manager template.

	deployment_parameters?: [..._]

	// The Azure Resource Manager template's identifier.

	deployment_template?: string

	// The name of the lab.

	lab_name: string

	// The location of the resource.

	location?: string

	// The name of the environment.

	name: string

	// The name of the resource group.

	resource_group: string

	// Assert the state of the Environment.
	// Use C((present) to create or update an Environment and C(absent) to delete it.

	state?: string

	// The name of the user profile.

	user_name: string
}

azure_rm_virtualnetwork_info :: {

	// Only show results for a specific security group.

	name?: string

	// Limit results by resource group. Required when filtering by name.

	resource_group?: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string
}

azure_rm_cdnendpoint_info :: {

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string

	// Limit results to a specific Azure CDN endpoint.

	name?: string

	// Name of CDN profile.

	profile_name: string

	// Name of resource group where this CDN profile belongs to.

	resource_group: string
}

azure_rm_devtestlabenvironment_info :: {

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: [..._]

	// The name of the user profile.

	user_name: string

	// The name of the lab.

	lab_name: string

	// The name of the environment.

	name?: string

	// The name of the resource group.

	resource_group: string
}

azure_rm_resource :: {

	// If enabled, idempotency check will be done by using I(method=GET) first and then comparing with I(body).

	idempotency?: bool

	// The HTTP method of the request or response. It must be uppercase.

	method?: string

	// Resource group to be used.
	// Required if URL is not specified.

	resource_group?: string

	// The body of the HTTP request/response to the web service.

	body?: string

	// A valid, numeric, HTTP status code that signifies success of the request. Can also be comma separated list of status codes.

	status_code?: [..._]

	// Azure RM Resource URL.

	url?: string

	// Specific API version to be used.

	api_version?: string

	// If enabled, idempotency check will be done by using I(method=GET) first and then comparing with I(body).

	polling_timeout?: int

	// Provider type.
	// Required if URL is not specified.

	provider?: string

	// Resource name.
	// Required if URL Is not specified.

	resource_name?: string

	// Resource type.
	// Required if URL is not specified.

	resource_type?: string

	// Assert the state of the resource. Use C(present) to create or update resource or C(absent) to delete resource.

	state?: string

	// List of subresources.

	subresource?: string

	// If enabled, idempotency check will be done by using I(method=GET) first and then comparing with I(body).

	polling_interval?: int
}

azure_rm_snapshot :: {

	// The snapshots SKU.

	sku?: {...}

	// Assert the state of the Snapshot.
	// Use C(present) to create or update an Snapshot and C(absent) to delete it.

	state?: string

	// Disk source information.
	// CreationData information cannot be changed after the disk has been created.

	creation_data?: {...}

	// Resource location.

	location?: string

	// Resource name.

	name?: string

	// The Operating System type.

	os_type?: string

	// The name of the resource group.

	resource_group: string
}

azure_rm_trafficmanagerendpoint_info :: {

	// Limit results to a specific Traffic Manager endpoint.

	name?: string

	// Name of Traffic Manager Profile.

	profile_name: string

	// The resource group to search for the desired Traffic Manager profile.

	resource_group: string

	// Type of endpoint.

	type?: string
}

azure_rm_virtualmachinescalesetinstance_info :: {

	// The instance ID of the virtual machine.

	instance_id?: string

	// The name of the resource group.

	resource_group: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string

	// The name of the VM scale set.

	vmss_name: string
}

azure_rm_mariadbdatabase :: {

	// The name of the server.

	server_name: string

	// Assert the state of the MariaDB Database. Use C(present) to create or update a database and C(absent) to delete it.

	state?: string

	// The charset of the database. Check MariaDB documentation for possible values.
	// This is only set on creation, use I(force_update) to recreate a database if the values don't match.

	charset?: string

	// The collation of the database. Check MariaDB documentation for possible values.
	// This is only set on creation, use I(force_update) to recreate a database if the values don't match.

	collation?: string

	// When set to C(true), will delete and recreate the existing MariaDB database if any of the properties don't match what is set.
	// When set to C(false), no change will occur to the database even if any of the properties do not match.

	force_update?: bool

	// The name of the database.

	name: string

	// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.

	resource_group: string
}

azure_rm_sqlserver_info :: {

	// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.

	resource_group: string

	// The name of the server.

	server_name?: string
}

azure_rm_virtualmachinescalesetextension_info :: {

	// The name of VMSS containing the extension.

	vmss_name: string

	// The name of the virtual machine extension.

	name?: string

	// The name of the resource group.

	resource_group: string
}

azure_rm_mysqlconfiguration_info :: {

	// The name of the server.

	server_name: string

	// Setting name.

	name?: string

	// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.

	resource_group: string
}

azure_rm_publicipaddress :: {

	// Control whether the assigned Public IP remains permanently assigned to the object.
	// If not set to C(Static), the IP address my changed anytime an associated virtual machine is power cycled.

	allocation_method?: string

	// The customizable portion of the FQDN assigned to public IP address. This is an explicit setting.
	// If no value is provided, any existing value will be removed on an existing public IP.

	domain_name?: string

	// Idle timeout in minutes.

	idle_timeout?: int

	// Assert the state of the Public IP. Use C(present) to create or update a and C(absent) to delete.

	state?: string

	// The public IP address SKU.

	sku?: string

	// The public IP address version.

	version?: string

	// List of IpTag associated with the public IP address.
	// Each element should contain type:value pair.

	ip_tags?: string

	// Valid Azure location. Defaults to location of the resource group.

	location?: string

	// Name of the Public IP.

	name: string

	// Name of resource group with which the Public IP is associated.

	resource_group: string
}

azure_rm_sqldatabase_info :: {

	// The name of the elastic pool.

	elastic_pool_name?: string

	// The name of the database.

	name?: string

	// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.

	resource_group: string

	// The name of the server.

	server_name: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string
}

azure_rm_virtualmachine_info :: {

	// Name of the virtual machine.

	name?: string

	// Name of the resource group containing the virtual machines (required when filtering by vm name).

	resource_group?: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string
}

azure_rm_appserviceplan :: {

	// The pricing tiers, e.g., C(F1), C(D1), C(B1), C(B2), C(B3), C(S1), C(P1), C(P1V2) etc.
	// Please see U(https://azure.microsoft.com/en-us/pricing/details/app-service/plans/) for more detail.
	// For Linux app service plan, please see U(https://azure.microsoft.com/en-us/pricing/details/app-service/linux/) for more detail.

	sku?: string

	// Assert the state of the app service plan.
	// Use C(present) to create or update an app service plan and C(absent) to delete it.

	state?: string

	// Describe whether to host webapp on Linux worker.

	is_linux?: bool

	// Resource location. If not set, location from the resource group will be used as default.

	location?: string

	// Unique name of the app service plan to create or update.

	name: string

	// Describe number of workers to be allocated.

	number_of_workers?: string

	// Name of the resource group to which the resource belongs.

	resource_group: string
}

azure_rm_devtestlabartifactsource_info :: {

	// The name of DevTest Lab.

	lab_name: string

	// The name of DevTest Lab Artifact Source.

	name?: string

	// The name of the resource group.

	resource_group: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: [..._]
}

azure_rm_dnszone :: {

	// The type of this DNS zone (C(public) or C(private)).

	type?: string

	// Name of the DNS zone.

	name: string

	// A list of references to virtual networks that register hostnames in this DNS zone.
	// This is a only when I(type=private).
	// Each element can be the name or resource id, or a dict contains C(name), C(resource_group) information of the virtual network.

	registration_virtual_networks?: [..._]

	// A list of references to virtual networks that resolve records in this DNS zone.
	// This is a only when I(type=private).
	// Each element can be the name or resource id, or a dict contains C(name), C(resource_group) information of the virtual network.

	resolution_virtual_networks?: [..._]

	// name of resource group.

	resource_group: string

	// Assert the state of the zone. Use C(present) to create or update and C(absent) to delete.

	state?: string
}

azure_rm_mariadbserver_info :: {

	// The name of the server.

	name?: string

	// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.

	resource_group: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: [..._]
}

azure_rm_networkinterface_info :: {

	// Only show results for a specific network interface.

	name?: string

	// Name of the resource group containing the network interface(s). Required when searching by name.

	resource_group?: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string
}

azure_rm_resourcegroup_info :: {

	// List all resources under the resource group.
	// Note this will cost network overhead for each resource group. Suggest use this when I(name) set.

	list_resources?: string

	// Limit results to a specific resource group.

	name?: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string
}

azure_rm_devtestlabcustomimage :: {

	// The author of the custom image.

	author?: string

	// The description of the custom image.

	description?: string

	// The name of the lab.

	lab_name: string

	// The state of the Linux OS.

	linux_os_state?: string

	// The state of the Windows OS.

	windows_os_state?: string

	// The name of the custom image.

	name: string

	// The name of the resource group.

	resource_group: string

	// Source DevTest Lab virtual machine name.

	source_vm?: string

	// Assert the state of the Custom Image.
	// Use C(present) to create or update an Custom Image and C(absent) to delete it.

	state?: string
}

azure_rm_galleryimageversion :: {

	// The name of the gallery Image Definition in which the Image Version is to be created.

	gallery_image_name: string

	// The name of the Shared Image Gallery in which the Image Definition resides.

	gallery_name: string

	// Resource location.

	location?: string

	// The name of the gallery Image Version to be created.
	// Needs to follow semantic version name pattern, The allowed characters are digit and period.
	// Digits must be within the range of a 32-bit integer. For example <MajorVersion>.<MinorVersion>.<Patch>.

	name: string

	// Publishing profile.

	publishing_profile: {...}

	// The name of the resource group.

	resource_group: string

	// Assert the state of the GalleryImageVersion.
	// Use C(present) to create or update an GalleryImageVersion and C(absent) to delete it.

	state?: string
}

azure_rm_mariadbserver :: {

	// The administrator's login name of a server. Can only be specified when the server is being created (and is required for creation).

	admin_username?: string

	// Create mode of SQL Server.

	create_mode?: string

	// Enable SSL enforcement.

	enforce_ssl?: bool

	// The name of the server.

	name: string

	// The SKU (pricing tier) of the server.

	sku?: string

	// The maximum storage allowed for a server.

	storage_mb?: int

	// Server version.

	version?: string

	// The password of the administrator login.

	admin_password?: string

	// Resource location. If not set, location from the resource group will be used as default.

	location?: string

	// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.

	resource_group: string

	// Assert the state of the MariaDB Server. Use C(present) to create or update a server and C(absent) to delete it.

	state?: string
}

azure_rm_mariadbfirewallrule :: {

	// The start IP address of the MariaDB firewall rule. Must be IPv4 format.

	start_ip_address?: string

	// Assert the state of the MariaDB firewall rule. Use C(present) to create or update a rule and C(absent) to ensure it is not present.

	state?: string

	// The end IP address of the MariaDB firewall rule. Must be IPv4 format.

	end_ip_address?: string

	// The name of the MariaDB firewall rule.

	name: string

	// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.

	resource_group: string

	// The name of the server.

	server_name: string
}

azure_rm_postgresqlserver :: {

	// The name of the server.

	name: string

	// The SKU (pricing tier) of the server.

	sku?: string

	// Enable SSL enforcement.

	enforce_ssl?: bool

	// Resource location. If not set, location from the resource group will be used as default.

	location?: string

	// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.

	resource_group: string

	// Assert the state of the PostgreSQL server. Use C(present) to create or update a server and C(absent) to delete it.

	state?: string

	// The maximum storage allowed for a server.

	storage_mb?: int

	// The password of the administrator login.

	admin_password?: string

	// The administrator's login name of a server. Can only be specified when the server is being created (and is required for creation).

	admin_username?: string

	// Create mode of SQL Server.

	create_mode?: string

	// Server version.

	version?: string
}

azure_rm_sqldatabase :: {

	// Specifies the mode of database creation.
	// C(default), regular database creation.
	// C(copy), creates a database as a copy of an existing database.
	// C(online_secondary)/C(non_readable_secondary), creates a database as a (readable or nonreadable) secondary replica of an existing database.
	// C(point_in_time_restore), Creates a database by restoring a point in time backup of an existing database.
	// C(recovery), Creates a database by restoring a geo-replicated backup.
	// C(restore), Creates a database by restoring a backup of a deleted database.
	// C(restore_long_term_retention_backup), Creates a database by restoring from a long term retention vault.
	// C(copy), C(non_readable_secondary), C(online_secondary) and C(restore_long_term_retention_backup) are not supported for C(data_warehouse) edition.

	create_mode?: string

	// The name of the elastic pool the database is in. Not supported for I(edition=data_warehouse).

	elastic_pool_name?: string

	// Required if I(create_mode=point_in_time_restore), this value is required. If I(create_mode=restore), this value is optional.
	// Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database.
	// Must be greater than or equal to the source database's earliestRestoreDate value.

	restore_point_in_time?: string

	// The name of the server.

	server_name: string

	// Required if I(create_mode=restore) and I(source_database_id) is the deleted database's original resource id when it existed (as opposed to its current restorable dropped database ID), then this value is required. Specifies the time that the database was deleted.

	source_database_deletion_date?: string

	// The edition of the database. The DatabaseEditions enumeration contains all the valid editions.
	// If I(create_mode=non_readable_secondary) or I(create_mode=online_secondary), this value is ignored.
	// To see possible values, query the capabilities API (/subscriptions/{subscriptionId}/providers/Microsoft.Sql/locations/{locationID}/capabilities) referred to by operationId:'Capabilities_ListByLocation'.

	edition?: string

	// The name of the database to be operated on (updated or created).

	name: string

	// Required if I(create_mode=restore_long_term_retention_backup), then this value is required.
	// Specifies the resource ID of the recovery point to restore from.

	recovery_services_recovery_point_resource_id?: string

	// Indicates the name of the sample schema to apply when creating this database.
	// If not I(create_mode=default), this value is ignored.
	// Not supported for I(edition=data_warehouse).

	sample_name?: string

	// Assert the state of the SQL Database. Use C(present) to create or update an SQL Database and C(absent) to delete it.

	state?: string

	// Is this database is zone redundant? It means the replicas of this database will be spread across multiple availability zones.

	zone_redundant?: bool

	// The collation of the database. If not I(create_mode=default), this value is ignored.

	collation?: string

	// Resource location. If not set, location from the resource group will be used as default.

	location?: string

	// Required unless I(create_mode=default) or I(create_mode=restore_long_term_retention_backup).
	// Specifies the resource ID of the source database.

	source_database_id?: string

	// SQL Database will be updated if given parameters differ from existing resource state.
	// To force SQL Database update in any circumstances set this parameter to True.

	force_update?: bool

	// The max size of the database expressed in bytes.
	// If not I(create_mode=default), this value is ignored.
	// To see possible values, query the capabilities API (/subscriptions/{subscriptionId}/providers/Microsoft.Sql/locations/{locationID}/capabilities). referred to by operationId:'Capabilities_ListByLocation'.

	max_size_bytes?: string

	// If the database is a geo-secondary, indicates whether read-only connections are allowed to this database or not.
	// Not supported for I(edition=data_warehouse).

	read_scale?: bool

	// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.

	resource_group: string
}

azure_rm_virtualmachinescaleset :: {

	// When removing a VM using I(state=absent), also remove associated resources.
	// It can be C(all) or a list with any of the following ['network_interfaces', 'virtual_storage', 'public_ips'].
	// Any other input will be ignored.

	remove_on_absent?: string

	// Subnet name.

	subnet_name?: string

	// Name of the virtual machine.

	name: string

	// Type of OS disk caching.

	os_disk_caching?: string

	// When creating a virtual machine, if a specific virtual network from another resource group should be used.
	// Use this parameter to specify the resource group to use.

	virtual_network_resource_group?: string

	// Admin username used to access the host after it is created. Required when creating a VM.

	admin_username?: string

	// Describes list of data disks.

	data_disks?: string

	// Specifies the image used to build the VM.
	// If a string, the image is sourced from a custom image based on the name.
	// If a dict with the keys I(publisher), I(offer), I(sku), and I(version), the image is sourced from a Marketplace image. Note that set I(version=latest) to get the most recent version of a given image.
	// If a dict with the keys I(name) and I(resource_group), the image is sourced from a custom image based on the I(name) and I(resource_group) set. Note that the key I(resource_group) is optional and if omitted, all images in the subscription will be searched for by I(name).
	// Custom image support was added in Ansible 2.5.

	image: string

	// Existing security group with which to associate the subnet.
	// It can be the security group name which is in the same resource group.
	// It can be the resource ID.
	// It can be a dict which contains I(name) and I(resource_group) of the security group.

	security_group?: string

	// For I(os_type=Linux) provide a list of SSH keys.
	// Each item in the list should be a dictionary where the dictionary contains two keys, C(path) and C(key_data).
	// Set the C(path) to the default location of the authorized_keys files.
	// On an Enterprise Linux host, for example, the I(path=/home/<admin username>/.ssh/authorized_keys). Set C(key_data) to the actual value of the public key.

	ssh_public_keys?: string

	// SKU Tier.

	tier?: string

	// Password for the admin username.
	// Not required if the os_type is Linux and SSH password authentication is disabled by setting I(ssh_password_enabled=false).

	admin_password?: string

	// Indicates whether user wants to allow accelerated networking for virtual machines in scaleset being created.

	enable_accelerated_networking?: bool

	// Name of the resource group containing the virtual machine scale set.

	resource_group: string

	// Valid Azure location. Defaults to location of the resource group.

	location?: string

	// A list of Availability Zones for your virtual machine scale set.

	zones?: [..._]

	// Short host name.

	short_hostname?: string

	// Assert the state of the virtual machine scale set.
	// State C(present) will check that the machine exists with the requested configuration. If the configuration of the existing machine does not match, the machine will be updated.
	// State C(absent) will remove the virtual machine scale set.

	state?: string

	// A valid Azure VM size value. For example, C(Standard_D4).
	// The list of choices varies depending on the subscription and location. Check your subscription for available choices.

	vm_size?: string

	// Capacity of VMSS.

	capacity?: string

	// Managed disk type.

	managed_disk_type?: string

	// Base type of operating system.

	os_type?: string

	// When the os_type is Linux, setting I(ssh_password_enabled=false) will disable SSH password authentication and require use of SSH keys.

	ssh_password_enabled?: bool

	// Virtual Network name.

	virtual_network_name?: string

	// Specifies whether the Virtual Machine Scale Set should be overprovisioned.

	overprovision?: bool

	// When true this limits the scale set to a single placement group, of max size 100 virtual machines.

	single_placement_group?: bool

	// Upgrade policy.
	// Required when creating the Azure virtual machine scale sets.

	upgrade_policy?: string

	// Application gateway name.

	application_gateway?: string

	// Data which is made available to the virtual machine and used by e.g., C(cloud-init).
	// Many images in the marketplace are not cloud-init ready. Thus, data sent to I(custom_data) would be ignored.
	// If the image you are attempting to use is not listed in U(https://docs.microsoft.com/en-us/azure/virtual-machines/linux/using-cloud-init#cloud-init-overview), follow these steps U(https://docs.microsoft.com/en-us/azure/virtual-machines/linux/cloudinit-prepare-custom-image).

	custom_data?: string

	// Load balancer name.

	load_balancer?: string
}

azure_rm_automationaccount :: {

	// Location of the resource.
	// If not specified, use resource group location.

	location?: string

	// Name of the automation account.

	name: string

	// Name of resource group.

	resource_group: string

	// State of the automation account. Use C(present) to create or update a automation account and C(absent) to delete an automation account.

	state?: string
}

azure_rm_cdnprofile :: {

	// The pricing tier, defines a CDN provider, feature list and rate of the CDN profile.
	// Detailed pricing can be find at U(https://azure.microsoft.com/en-us/pricing/details/cdn/).

	sku?: string

	// Assert the state of the CDN profile. Use C(present) to create or update a CDN profile and C(absent) to delete it.

	state?: string

	// Valid Azure location. Defaults to location of the resource group.

	location?: string

	// Name of the CDN profile.

	name: string

	// Name of a resource group where the CDN profile exists or will be created.

	resource_group: string
}

azure_rm_containerregistry :: {

	// If enabled, you can use the registry name as username and admin user access key as password to docker login to your container registry.

	admin_user_enabled?: bool

	// Valid azure location. Defaults to location of the resource group.

	location?: string

	// Name of the Container Registry.

	name: string

	// Name of a resource group where the Container Registry exists or will be created.

	resource_group: string

	// Specifies the SKU to use. Currently can be either C(Basic), C(Standard) or C(Premium).

	sku?: string

	// Assert the state of the container registry. Use C(present) to create or update an container registry and C(absent) to delete it.

	state?: string
}

azure_rm_virtualnetworkpeering :: {

	// Allows forwarded traffic from the VMs in the remote VNet.

	allow_forwarded_traffic?: bool

	// Allows VMs in the remote VNet to access all VMs in the local VNet.

	allow_virtual_network_access?: bool

	// Name of the virtual network peering.

	name: string

	// Remote virtual network to be peered.
	// It can be name of remote virtual network in same resource group.
	// It can be remote virtual network resource ID.
	// It can be a dict which contains I(name) and I(resource_group) of remote virtual network.
	// Required when creating.

	remote_virtual_network?: string

	// Allows VNet to use the remote VNet's gateway. Remote VNet gateway must have --allow-gateway-transit enabled for remote peering.
	// Only 1 peering can have this flag enabled. Cannot be set if the VNet already has a gateway.

	allow_gateway_transit?: bool

	// Name of a resource group where the vnet exists.

	resource_group: string

	// State of the virtual network peering. Use C(present) to create or update a peering and C(absent) to delete it.

	state?: string

	// If remote gateways can be used on this virtual network.

	use_remote_gateways?: bool

	// Name or resource ID of the virtual network to be peered.

	virtual_network: string
}

azure_rm_webappslot :: {

	// Web app slot container settings.

	container_settings?: string

	// The slot startup file.
	// This only applies for Linux web app slot.

	startup_file?: string

	// Source slot to clone configurations from when creating slot. Use webapp's name to refer to the production slot.

	configuration_source?: string

	// Deployment source for git.

	deployment_source?: string

	// Swap deployment slots of a web app.

	swap?: string

	// Used to configure target slot name to auto swap, or disable auto swap.
	// Set it target slot name to auto swap.
	// Set it to False to disable auto slot swap.

	auto_swap_slot_name?: string

	// Resource location. If not set, location from the resource group will be used as default.

	location?: string

	// Unique name of the deployment slot to create or update.

	name: string

	// Purge any existing application settings. Replace slot application settings with app_settings.

	purge_app_settings?: bool

	// Name of the resource group to which the resource belongs.

	resource_group: string

	// State of the Web App deployment slot.
	// Use C(present) to create or update a  slot and C(absent) to delete it.

	state?: string

	// Configure web app slot application settings. Suboptions are in key value pair format.

	app_settings?: string

	// Start/Stop/Restart the slot.

	app_state?: string

	// Set of run time framework settings. Each setting is a dictionary.
	// See U(https://docs.microsoft.com/en-us/azure/app-service/app-service-web-overview) for more info.

	frameworks?: string

	// Web app name which this deployment slot belongs to.

	webapp_name: string
}

azure_rm_resource_info :: {

	// Resource type.

	resource_type?: string

	// List of subresources.

	subresource?: string

	// Azure RM Resource URL.

	url?: string

	// Specific API version to be used.

	api_version?: string

	// Provider type, should be specified in no URL is given.

	provider?: string

	// Resource group to be used.
	// Required if URL is not specified.

	resource_group?: string

	// Resource name.

	resource_name?: string
}

azure_rm_securitygroup_info :: {

	// Only show results for a specific security group.

	name?: string

	// Name of the resource group to use.

	resource_group: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string
}

azure_rm_virtualmachineextension :: {

	// Whether the extension handler should be automatically upgraded across minor versions.

	auto_upgrade_minor_version?: bool

	// Name of the vm extension.

	name: string

	// Json formatted protected settings for the extension.

	protected_settings?: string

	// The name of the extension handler publisher.

	publisher?: string

	// State of the vm extension. Use C(present) to create or update a vm extension and C(absent) to delete a vm extension.

	state?: string

	// Valid Azure location. Defaults to location of the resource group.

	location?: string

	// Name of a resource group where the vm extension exists or will be created.

	resource_group: string

	// Json formatted public settings for the extension.

	settings?: string

	// The type version of the extension handler.

	type_handler_version?: string

	// The type of the extension handler.

	virtual_machine_extension_type?: string

	// The name of the virtual machine where the extension should be create or updated.

	virtual_machine_name?: string
}

azure_rm_azurefirewall_info :: {

	// Resource name.

	name?: string

	// The name of the resource group.

	resource_group?: string
}

azure_rm_devtestlabpolicy :: {

	// The name of the policy set.

	policy_set_name: string

	// The name of the resource group.

	resource_group: string

	// Assert the state of the Policy.
	// Use C(present) to create or update an Policy and C(absent) to delete it.

	state?: string

	// The threshold of the policy (it could be either a maximum value or a list of allowed values).

	threshold?: _

	// The description of the policy.

	description?: string

	// The fact name of the policy (e.g. C(lab_vm_count), C(lab_vm_size)), MaxVmsAllowedPerLab, etc.

	fact_name?: string

	// The name of the lab.

	lab_name: string

	// The name of the policy.

	name: string
}

azure_rm_dnsrecordset :: {

	// Name of the existing DNS zone in which to manage the record set.

	zone_name: string

	// Whether existing record values not sent to the module should be purged.

	record_mode?: string

	// The type of record set to create or delete.

	record_type: string

	// List of records to be created depending on the type of record (set).

	records?: string

	// Relative name of the record set.

	relative_name: string

	// Name of resource group.

	resource_group: string

	// Assert the state of the record set. Use C(present) to create or update and C(absent) to delete.

	state?: string

	// Time to live of the record set in seconds.

	time_to_live?: string
}

azure_rm_mysqlconfiguration :: {

	// Value of the configuration.

	value?: string

	// The name of the server configuration.

	name: string

	// The name of the resource group that contains the resource.

	resource_group: string

	// The name of the server.

	server_name: string

	// Assert the state of the MySQL configuration. Use C(present) to update setting, or C(absent) to reset to default value.

	state?: string
}

azure_rm_rediscache_info :: {

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string

	// Limit results to a specific Azure Cache for Redis.

	name?: string

	// The resource group to search for the desired Azure Cache for Redis.

	resource_group: string

	// Indicate weather to return access keys of the Azure Cache for Redis.

	return_access_keys?: bool
}

azure_rm_devtestlabartifactsource :: {

	// The security token to authenticate to the artifact source.

	security_token?: string

	// Assert the state of the DevTest Labs Artifacts Source.
	// Use C(present) to create or update an DevTest Labs Artifacts Source and C(absent) to delete it.

	state?: string

	// The artifact source's URI.

	uri?: string

	// The folder containing Azure Resource Manager templates.

	arm_template_folder_path?: string

	// The folder containing artifacts.

	folder_path?: string

	// Indicates whether the artifact source is enabled.

	is_enabled?: bool

	// The name of the resource group.

	resource_group: string

	// The artifact source's type.

	source_type?: string

	// The artifact source's branch reference.

	branch_ref?: string

	// The artifact source's display name.

	display_name?: string

	// The name of the lab.

	lab_name: string

	// The name of the artifact source.

	name: string
}

azure_rm_functionapp :: {

	// Assert the state of the Function App. Use C(present) to create or update a Function App and C(absent) to delete.

	state?: string

	// Name of the storage account to use.

	storage_account: string

	// Dictionary containing application settings.

	app_settings?: string

	// Web app container settings.

	container_settings?: string

	// Valid Azure location. Defaults to location of the resource group.

	location?: string

	// Name of the Azure Function App.

	name: string

	// App service plan.
	// It can be name of existing app service plan in same resource group as function app.
	// It can be resource id of existing app service plan.
	// Resource id. For example /subscriptions/<subs_id>/resourceGroups/<resource_group>/providers/Microsoft.Web/serverFarms/<plan_name>.
	// It can be a dict which contains C(name), C(resource_group).
	// C(name). Name of app service plan.
	// C(resource_group). Resource group name of app service plan.

	plan?: string

	// Name of resource group.

	resource_group: string
}

azure_rm_keyvaultkey_info :: {

	// Key name. If not set, will list all keys in I(vault_uri).

	name?: string

	// Set to C(true) to show deleted keys. Set to C(false) to show not deleted keys.

	show_deleted_key?: bool

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: [..._]

	// Vault uri where the key stored in.

	vault_uri: string

	// Key version.
	// Set it to C(current) to show latest version of a key.
	// Set it to C(all) to list all versions of a key.
	// Set it to specific version to list specific version of a key. eg. fd2682392a504455b79c90dd04a1bf46.

	version?: string
}

azure_rm_loadbalancer :: {

	// (deprecated) The protocol to use for the health probe.
	// This option has been deprecated, and will be removed in 2.9. Use I(probes) instead.

	probe_protocol?: string

	// (deprecated) The protocol (TCP or UDP) that the load balancer will use.
	// This option has been deprecated, and will be removed in 2.9. Use I(load_balancing_rules) instead.

	protocol?: string

	// (deprecated) The type of load distribution that the load balancer will employ.
	// This option has been deprecated, and will be removed in 2.9. Use I(load_balancing_rules) instead.

	load_distribution?: string

	// Valid Azure location. Defaults to location of the resource group.

	location?: string

	// Object collection representing the load balancing rules Gets the provisioning.

	load_balancing_rules?: string

	// Name of the load balancer.

	name: string

	// (deprecated) Backend port used by the NAT pool.
	// This option has been deprecated, and will be removed in 2.9. Use I(inbound_nat_pools) instead.

	natpool_backend_port?: string

	// (deprecated) Start of the port range for a NAT pool.
	// This option has been deprecated, and will be removed in 2.9. Use I(inbound_nat_pools) instead.

	natpool_frontend_port_start?: string

	// (deprecated) The port that the health probe will use.
	// This option has been deprecated, and will be removed in 2.9. Use I(probes) instead.

	probe_port?: string

	// (deprecated) Name of an existing public IP address object to associate with the security group.
	// This option has been deprecated, and will be removed in 2.9. Use I(frontend_ip_configurations) instead.

	public_ip_address_name?: string

	// List of backend address pools.

	backend_address_pools?: string

	// Collection of inbound NAT Rules used by a load balancer.
	// Defining inbound NAT rules on your load balancer is mutually exclusive with defining an inbound NAT pool.
	// Inbound NAT pools are referenced from virtual machine scale sets.
	// NICs that are associated with individual virtual machines cannot reference an Inbound NAT pool.
	// They have to reference individual inbound NAT rules.

	inbound_nat_rules?: string

	// (deprecated) Frontend port that will be exposed for the load balancer.
	// This option has been deprecated, and will be removed in 2.9. Use I(load_balancing_rules) instead.

	frontend_port?: string

	// (deprecated) Timeout for TCP idle connection in minutes.
	// This option has been deprecated, and will be removed in 2.9. Use I(load_balancing_rules) instead.

	idle_timeout?: string

	// Defines an external port range for inbound NAT to a single backend port on NICs associated with a load balancer.
	// Inbound NAT rules are created automatically for each NIC associated with the Load Balancer using an external port from this range.
	// Defining an Inbound NAT pool on your Load Balancer is mutually exclusive with defining inbound Nat rules.
	// Inbound NAT pools are referenced from virtual machine scale sets.
	// NICs that are associated with individual virtual machines cannot reference an inbound NAT pool.
	// They have to reference individual inbound NAT rules.

	inbound_nat_pools?: string

	// (deprecated) End of the port range for a NAT pool.
	// This option has been deprecated, and will be removed in 2.9. Use I(inbound_nat_pools) instead.

	natpool_frontend_port_end?: string

	// (deprecated) The amount of probe failures for the load balancer to make a health determination.
	// This option has been deprecated, and will be removed in 2.9. Use I(probes) instead.

	probe_fail_count?: string

	// (deprecated) Time (in seconds) between endpoint health probes.
	// This option has been deprecated, and will be removed in 2.9. Use I(probes) instead.

	probe_interval?: string

	// (deprecated) Backend port that will be exposed for the load balancer.
	// This option has been deprecated, and will be removed in 2.9. Use I(load_balancing_rules) instead.

	backend_port?: string

	// List of frontend IPs to be used.

	frontend_ip_configurations?: string

	// The load balancer SKU.

	sku?: string

	// List of probe definitions used to check endpoint health.

	probes?: string

	// Name of a resource group where the load balancer exists or will be created.

	resource_group: string

	// Assert the state of the load balancer. Use C(present) to create/update a load balancer, or C(absent) to delete one.

	state?: string

	// (deprecated) The protocol for the NAT pool.
	// This option has been deprecated, and will be removed in 2.9. Use I(inbound_nat_pools) instead.

	natpool_protocol?: string

	// (deprecated) The URL that an HTTP probe or HTTPS probe will use (only relevant if I(probe_protocol=Http) or I(probe_protocol=Https)).
	// This option has been deprecated, and will be removed in 2.9. Use I(probes) instead.

	probe_request_path?: string
}

azure_rm_mariadbfirewallrule_info :: {

	// The name of the server firewall rule.

	name?: string

	// The name of the resource group.

	resource_group: string

	// The name of the server.

	server_name: string
}

azure_rm_servicebussaspolicy :: {

	// Name of the SAS policy.

	name: string

	// Manage SAS policy for a namespace without C(queue) or C(topic) set.
	// Manage SAS policy for a queue or topic under this namespace.

	namespace: string

	// Type of the messaging queue.
	// Cannot set C(topc) when this field set.

	queue?: string

	// Regenerate the SAS policy secondary key.

	regenerate_secondary_key?: bool

	// Assert the state of the route. Use C(present) to create or update and C(absent) to delete.

	state?: string

	// Name of the messaging topic.
	// Cannot set C(queue) when this field set.

	topic?: string

	// Regenerate the SAS policy primary key.

	regenerate_primary_key?: bool

	// Name of resource group.

	resource_group: string

	// Claim rights of the SAS policy.

	rights: string
}

azure_rm_virtualmachine :: {

	// List of ports to open in the security group for the VM, when a security group and network interface are created with a VM.
	// For Linux hosts, defaults to allowing inbound TCP connections to port 22.
	// For Windows hosts, defaults to opening ports 3389 and 5986.

	open_ports?: string

	// Subnet for the VM.
	// Defaults to the first subnet found in the virtual network or the subnet of the I(network_interface_name), if provided.
	// If the subnet is in another resource group, specify the resource group with I(virtual_network_resource_group).

	subnet_name?: string

	// Identity for the VM.

	vm_identity?: string

	// State of the VM.
	// Set to C(present) to create a VM with the configuration specified by other options, or to update the configuration of an existing VM.
	// Set to C(absent) to remove a VM.
	// Does not affect power state. Use I(started)/I(allocated)/I(restarted) parameters to change the power state of a VM.

	state?: string

	// A list of Availability Zones for your VM.

	zones?: [..._]

	// Name or ID of an existing availability set to add the VM to. The I(availability_set) should be in the same resource group as VM.

	availability_set?: string

	// Network interface names to add to the VM.
	// Can be a string of name or resource ID of the network interface.
	// Can be a dict containing I(resource_group) and I(name) of the network interface.
	// If a network interface name is not provided when the VM is created, a default network interface will be created.
	// To create a new network interface, at least one Virtual Network with one Subnet must exist.

	network_interface_names?: [..._]

	// Type of OS disk size in GB.

	os_disk_size_gb?: string

	// Associated resources to remove when removing a VM using I(state=absent).
	// To remove all resources related to the VM being removed, including auto-created resources, set to C(all).
	// To remove only resources that were automatically created while provisioning the VM being removed, set to C(all_autocreated).
	// To remove only specific resources, set to C(network_interfaces), C(virtual_storage) or C(public_ips).
	// Any other input will be ignored.

	remove_on_absent?: [..._]

	// Allocation method for the public IP of the VM.
	// Used only if a network interface is not specified.
	// When set to C(Dynamic), the public IP address may change any time the VM is rebooted or power cycled.
	// The C(Disabled) choice was added in Ansible 2.6.

	public_ip_allocation_method?: string

	// Name of the storage blob used to hold the OS disk image of the VM.
	// Must end with '.vhd'.
	// If not specified, defaults to the VM name + '.vhd'.

	storage_blob_name?: string

	// Valid Azure location for the VM. Defaults to location of the resource group.

	location?: string

	// Name of the VM.

	name: string

	// Base type of operating system.

	os_type?: string

	// Third-party billing plan for the VM.

	plan?: {...}

	// Type of OS disk caching.

	os_disk_caching?: string

	// For I(os_type=Linux) provide a list of SSH keys.
	// Accepts a list of dicts where each dictionary contains two keys, I(path) and I(key_data).
	// Set I(path) to the default location of the authorized_keys files. For example, I(path=/home/<admin username>/.ssh/authorized_keys).
	// Set I(key_data) to the actual value of the public key.

	ssh_public_keys?: string

	// Whether the VM is started or stopped.
	// Set to (true) with I(state=present) to start the VM.
	// Set to C(false) to stop the VM.

	started?: bool

	// The virtual network to use when creating a VM.
	// If not specified, a new network interface will be created and assigned to the first virtual network found in the resource group.
	// Use with I(virtual_network_resource_group) to place the virtual network in another resource group.

	virtual_network_name?: string

	// The image used to build the VM.
	// For custom images, the name of the image. To narrow the search to a specific resource group, a dict with the keys I(name) and I(resource_group).
	// For Marketplace images, a dict with the keys I(publisher), I(offer), I(sku), and I(version).
	// Set I(version=latest) to get the most recent version of a given image.

	image: string

	// Managed OS disk type.
	// Create OS disk with managed disk if defined.
	// If not defined, the OS disk will be created with virtual hard disk (VHD).

	managed_disk_type?: string

	// Name of the resource group containing the VM.

	resource_group: string

	// Name of a storage account that supports creation of VHD blobs.
	// If not specified for a new VM, a new storage account named <vm name>01 will be created using storage type C(Standard_LRS).

	storage_account_name?: string

	// Whether to enable or disable SSH passwords.
	// When I(os_type=Linux), set to C(false) to disable SSH password authentication and require use of SSH keys.

	ssh_password_enabled?: bool

	// List of Windows Remote Management configurations of the VM.

	winrm?: string

	// Admin username used to access the VM after it is created.
	// Required when creating a VM.

	admin_username?: string

	// Describes list of data disks.
	// Use M(azure_rm_mangeddisk) to manage the specific disk.

	data_disks?: string

	// Whether the VM is generalized or not.
	// Set to C(true) with I(state=present) to generalize the VM.
	// Generalizing a VM is irreversible.

	generalized?: bool

	// Name assigned internally to the host. On a Linux VM this is the name returned by the C(hostname) command.
	// When creating a VM, short_hostname defaults to I(name).

	short_hostname?: string

	// Password for the admin username.
	// Not required if the I(os_type=Linux) and SSH password authentication is disabled by setting I(ssh_password_enabled=false).

	admin_password?: string

	// Data made available to the VM and used by C(cloud-init).
	// Only used on Linux images with C(cloud-init) enabled.
	// Consult U(https://docs.microsoft.com/en-us/azure/virtual-machines/linux/using-cloud-init#cloud-init-overview) for cloud-init ready images.
	// To enable cloud-init on a Linux image, follow U(https://docs.microsoft.com/en-us/azure/virtual-machines/linux/cloudinit-prepare-custom-image).

	custom_data?: string

	// On-premise license for the image or disk.
	// Only used for images that contain the Windows Server operating system.
	// To remove all license type settings, set to the string C(None).

	license_type?: string

	// Set to C(true) with I(state=present) to restart a running VM.

	restarted?: bool

	// Name of the container to use within the storage account to store VHD blobs.
	// If not specified, a default container will be created.

	storage_container_name?: string

	// The resource group to use when creating a VM with another resource group's virtual network.

	virtual_network_resource_group?: string

	// A valid Azure VM size value. For example, C(Standard_D4).
	// Choices vary depending on the subscription and location. Check your subscription for available choices.
	// Required when creating a VM.

	vm_size?: string

	// Accept terms for Marketplace images that require it.
	// Only Azure service admin/account admin users can purchase images from the Marketplace.
	// Only valid when a I(plan) is specified.

	accept_terms?: bool

	// Whether the VM is allocated or deallocated, only useful with I(state=present).

	allocated?: bool

	// Manage boot diagnostics settings for a VM.
	// Boot diagnostics includes a serial console and remote console screenshots.

	boot_diagnostics?: string

	// OS disk name.

	os_disk_name?: string
}

azure_rm_virtualmachinescaleset_info :: {

	// The resource group to search for the desired virtual machine scale set.

	resource_group?: string

	// List of tags to be matched.

	tags?: string

	// Format of the data returned.
	// If C(raw) is selected information will be returned in raw format from Azure Python SDK.
	// If C(curated) is selected the structure will be identical to input parameters of M(azure_rm_virtualmachinescaleset) module.
	// In Ansible 2.5 and lower facts are always returned in raw format.
	// Please note that this option will be deprecated in 2.10 when curated format will become the only supported format.

	format?: string

	// Limit results to a specific virtual machine scale set.

	name?: string
}

azure_rm_cosmosdbaccount :: {

	// Enable Cassandra.

	enable_cassandra?: bool

	// Enables the account to write in multiple locations

	enable_multiple_write_locations?: bool

	// An array that contains the georeplication locations enabled for the Cosmos DB account.
	// Required when I(state=present).

	geo_rep_locations?: [..._]

	// The location of the resource group to which the resource belongs.
	// Required when I(state=present).

	location?: string

	// Cosmos DB database account name.

	name: string

	// Name of an Azure resource group.

	resource_group: string

	// Database account offer type, for example I(Standard)
	// Required when I(state=present).

	database_account_offer_type?: string

	// Enables automatic failover of the write region in the rare event that the region is unavailable due to an outage.
	// Automatic failover will result in a new write region for the account and is chosen based on the failover priorities configured for the account.

	enable_automatic_failover?: bool

	// Cosmos DB Firewall support. This value specifies the set of IP addresses or IP address ranges.
	// In CIDR form to be included as the allowed list of client IPs for a given database account.
	// IP addresses/ranges must be comma separated and must not contain any spaces.

	ip_range_filter?: string

	// List of Virtual Network ACL rules configured for the Cosmos DB account.

	virtual_network_rules?: [..._]

	// Enable Gremlin.

	enable_gremlin?: bool

	// Enable Table.

	enable_table?: bool

	// The consistency policy for the Cosmos DB account.

	consistency_policy?: string

	// Indicates the type of database account. This can only be set at database account creation.

	kind?: string

	// Flag to indicate whether to enable/disable Virtual Network ACL rules.

	is_virtual_network_filter_enabled?: bool

	// Assert the state of the Database Account.
	// Use C(present) to create or update an Database Account and C(absent) to delete it.

	state?: string
}

azure_rm_image :: {

	// Name of resource group.

	resource_group: string

	// OS disk source from the same region.
	// It can be a virtual machine, OS disk blob URI, managed OS disk, or OS snapshot.
	// Each type of source except for blob URI can be given as resource id, name or a dict contains C(resource_group), C(name) and C(type).
	// If source type is blob URI, the source should be the full URI of the blob in string type.
	// If you specify the I(type) in a dict, acceptable value contains C(disks), C(virtual_machines) and C(snapshots).

	source: _

	// Assert the state of the image. Use C(present) to create or update a image and C(absent) to delete an image.

	state?: string

	// List of data disk sources, including unmanaged blob URI, managed disk id or name, or snapshot id or name.

	data_disk_sources?: [..._]

	// Location of the image. Derived from I(resource_group) if not specified.

	location?: string

	// Name of the image.

	name: string

	// The OS type of image.

	os_type?: string
}

azure_rm_keyvaultsecret :: {

	// Name of the keyvault secret.

	secret_name: string

	// Secret to be secured by keyvault.

	secret_value?: string

	// Assert the state of the subnet. Use C(present) to create or update a secret and C(absent) to delete a secret .

	state?: string

	// URI of the keyvault endpoint.

	keyvault_uri: string
}

azure_rm_routetable_info :: {

	// Limit results to a specific route table.

	name?: string

	// Limit results in a specific resource group.

	resource_group?: string

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string
}

azure_rm_servicebus_info :: {

	// Limit results to a specific servicebus.

	name?: string

	// Servicebus namespace name.
	// A namespace is a scoping container for all messaging components.
	// Multiple queues and topics can reside within a single namespace, and namespaces often serve as application containers.
	// Required when I(type=namespace).

	namespace?: string

	// Limit results in a specific resource group.

	resource_group?: string

	// Whether to show the SAS policies.
	// Not support when I(type=subscription).
	// Note if enable this option, the facts module will raise two more HTTP call for each resources, need more network overhead.

	show_sas_policies?: bool

	// Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.

	tags?: string

	// Topic name.
	// Required when I(type=subscription).

	topic?: string

	// Type of the resource.

	type?: string
}

azure_rm_manageddisk :: {

	// Name of the managed disk.

	name: string

	// Type of Operating System.
	// Used when I(create_option=copy) or I(create_option=import) and the source is an OS disk.
	// If omitted during creation, no value is set.
	// If omitted during an update, no change is made.
	// Once set, this value cannot be cleared.

	os_type?: string

	// URI to a valid VHD file to be used or the resource ID of the managed disk to copy.

	source_uri?: string

	// Assert the state of the managed disk. Use C(present) to create or update a managed disk and C(absent) to delete a managed disk.

	state?: string

	// Type of storage for the managed disk.
	// If not specified, the disk is created as C(Standard_LRS).
	// C(Standard_LRS) is for Standard HDD.
	// C(StandardSSD_LRS) (added in 2.8) is for Standard SSD.
	// C(Premium_LRS) is for Premium SSD.
	// C(UltraSSD_LRS) (added in 2.8) is for Ultra SSD, which is in preview mode, and only available on select instance types.
	// See U(https://docs.microsoft.com/en-us/azure/virtual-machines/windows/disks-types) for more information about disk types.

	storage_account_type?: string

	// C(import) from a VHD file in I(source_uri) and C(copy) from previous managed disk I(source_uri).

	create_option?: string

	// Valid Azure location. Defaults to location of the resource group.

	location?: string

	// Name of an existing virtual machine with which the disk is or will be associated, this VM should be in the same resource group.
	// To detach a disk from a vm, explicitly set to ''.
	// If this option is unset, the value will not be changed.

	managed_by?: string

	// Tags to assign to the managed disk.
	// Format tags as 'key' or 'key:value'.

	tags?: string

	// The Azure managed disk's zone.
	// Allowed values are C(1), C(2), C(3) and C(' ').

	zone?: string

	// Disk caching policy controlled by VM. Will be used when attached to the VM defined by C(managed_by).
	// If this option is different from the current caching policy, the managed disk will be deattached and attached with current caching option again.

	attach_caching?: string

	// Size in GB of the managed disk to be created.
	// If I(create_option=copy) then the value must be greater than or equal to the source's size.

	disk_size_gb?: string

	// Name of a resource group where the managed disk exists or will be created.

	resource_group: string
}

azure_rm_mariadbconfiguration :: {

	// Assert the state of the MariaDB configuration. Use C(present) to update setting, or C(absent) to reset to default value.

	state?: string

	// Value of the configuration.

	value?: string

	// The name of the server configuration.

	name: string

	// The name of the resource group that contains the resource.

	resource_group: string

	// The name of the server.

	server_name: string
}

azure_rm_mysqlfirewallrule :: {

	// The end IP address of the MySQL firewall rule. Must be IPv4 format.

	end_ip_address: string

	// The name of the MySQL firewall rule.

	name: string

	// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.

	resource_group: string

	// The name of the server.

	server_name: string

	// The start IP address of the MySQL firewall rule. Must be IPv4 format.

	start_ip_address: string

	// Assert the state of the MySQL firewall rule. Use C(present) to create or update a rule and C(absent) to ensure it is not present.

	state?: string
}
