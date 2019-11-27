package check_point

cp_mgmt_group_facts :: {

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// When true, the group's matched content is displayed as ranges of IP addresses rather than network objects.<br />Objects that are not represented using IP addresses are presented as objects.<br />The 'members' parameter is omitted from the response and instead the 'ranges' parameter is displayed.

	show_as_ranges?: bool

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool

	// Indicates whether to dereference "members" field by details level for every object in reply.

	dereference_group_members?: bool

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string
}

cp_mgmt_host_facts :: {

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int
}

cp_mgmt_service_icmp6 :: {

	// Color of the object. Should be one of existing colors.

	color?: string

	// Comments string.

	comments?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// As listed in, <a href="http,//www.iana.org/assignments/icmp-parameters" target="_blank">RFC 792</a>.

	icmp_type?: int

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

	keep_connections_open_after_policy_installation?: bool

	// Collection of tag identifiers.

	tags?: [..._]

	// Collection of group identifiers.

	groups?: [..._]

	// As listed in, <a href="http,//www.iana.org/assignments/icmp-parameters" target="_blank">RFC 792</a>.

	icmp_code?: int

	// Object name.

	name: string
}

cp_mgmt_service_sctp :: {

	// Indicates whether this service is used when 'Any' is set as the rule's service and there are several service objects with the same source port and protocol.

	match_for_any?: bool

	// Port number. To specify a port range add a hyphen between the lowest and the highest port numbers, for example 44-45.

	port?: string

	// Source port number. To specify a port range add a hyphen between the lowest and the highest port numbers, for example 44-45.

	source_port?: string

	// Collection of group identifiers.

	groups?: [..._]

	// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

	keep_connections_open_after_policy_installation?: bool

	// Object name.

	name: string

	// Use default virtual session timeout.

	use_default_session_timeout?: bool

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Enables state-synchronized High Availability or Load Sharing on a ClusterXL or OPSEC-certified cluster.

	sync_connections_on_cluster?: bool

	// Color of the object. Should be one of existing colors.

	color?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Time (in seconds) before the session times out.

	session_timeout?: int

	// Collection of tag identifiers.

	tags?: [..._]

	// Sets short (aggressive) timeouts for idle connections.

	aggressive_aging?: {...}

	// Comments string.

	comments?: string
}

cp_mgmt_simple_gateway_facts :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool
}

cp_mgmt_vpn_community_meshed :: {

	// Color of the object. Should be one of existing colors.

	color?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// The encryption suite to be used.

	encryption_suite?: string

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Indicates whether the shared secret should be used for all external gateways.

	use_shared_secret?: bool

	// Comments string.

	comments?: string

	// Shared secrets for external gateways.

	shared_secrets?: [..._]

	// Collection of tag identifiers.

	tags?: [..._]

	// Ike Phase 1 settings. Only applicable when the encryption-suite is set to [custom].

	ike_phase_1?: {...}

	// Ike Phase 2 settings. Only applicable when the encryption-suite is set to [custom].

	ike_phase_2?: {...}

	// Object name.

	name: string

	// The encryption method to be used.

	encryption_method?: string

	// Collection of Gateway objects identified by the name or UID.

	gateways?: [..._]

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool
}

checkpoint_host_facts :: {

	// Name of the host object. If name is not provided, UID is required.

	name?: string

	// UID of the host object. If UID is not provided, name is required.

	uid?: string
}

checkpoint_object_facts :: {

	// Filter only by IP address.

	ip_only?: bool

	// Filter expression for search. It accepts AND/OR logical operators and performs a textual and IP address search. To search only by IP address, set ip_only argument to True. which can be filtered with the filter argument.

	object_filter?: string

	// Type of the object to search. Must be a valid API resource name

	object_type?: string

	// UID of the object. If UID is not provided, it will do a full search which can be filtered with the filter argument.

	uid?: string
}

cp_mgmt_discard :: {

	// Session unique identifier. Specify it to discard a different session than the one you currently use.

	uid?: string
}

cp_mgmt_dynamic_object_facts :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool
}

cp_mgmt_run_script :: {

	// Script arguments.

	args?: string

	// Comments string.

	comments?: string

	// Script body.

	script?: string

	// Script name.

	script_name?: string

	// On what targets to execute this command. Targets may be identified by their name, or object unique identifier.

	targets?: [..._]
}

cp_mgmt_service_group :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Collection of group identifiers.

	groups?: [..._]

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Collection of tag identifiers.

	tags?: [..._]

	// Color of the object. Should be one of existing colors.

	color?: string

	// Comments string.

	comments?: string

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Collection of Network objects identified by the name or UID.

	members?: [..._]

	// Object name.

	name: string
}

cp_mgmt_service_rpc_facts :: {

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int
}

cp_mgmt_threat_indicator :: {

	// Comments string.

	comments?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Profiles in which to override the indicator's default action.

	profile_overrides?: [..._]

	// The indicator's action.

	action?: string

	// Color of the object. Should be one of existing colors.

	color?: string

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Object name.

	name: string

	// The indicator's observables.

	observables?: [..._]

	// The contents of a file containing the indicator's observables.

	observables_raw_data?: string

	// Collection of tag identifiers.

	tags?: [..._]
}

checkpoint_access_layer_facts :: {

	// UID of access layer object.

	uid?: string

	// Name of the access layer object.

	name?: string
}

cp_mgmt_access_role_facts :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]
}

cp_mgmt_application_site :: {

	// States whether the URL is defined as a Regular Expression or not.

	urls_defined_as_regular_expression?: bool

	// Application signature generated by <a href="https,//supportcenter.checkpoint.com/supportcenter/portal?eventSubmit_doGoviewsolutiondetails=&solutionid=sk103051">Signature Tool</a>.

	application_signature?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Collection of group identifiers.

	groups?: [..._]

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Each application is assigned to one primary category based on its most defining aspect.

	primary_category?: string

	// URLs that determine this particular application.

	url_list?: [..._]

	// Used to configure or edit the additional categories of a custom application / site used in the Application and URL Filtering or Threat Prevention.

	additional_categories?: [..._]

	// Color of the object. Should be one of existing colors.

	color?: string

	// Comments string.

	comments?: string

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// A description for the application.

	description?: string

	// Object name.

	name: string

	// Collection of tag identifiers.

	tags?: [..._]
}

cp_mgmt_dns_domain :: {

	// Collection of tag identifiers.

	tags?: [..._]

	// Color of the object. Should be one of existing colors.

	color?: string

	// Comments string.

	comments?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Whether to match sub-domains in addition to the domain itself.

	is_sub_domain?: bool

	// Object name.

	name: string
}

cp_mgmt_dns_domain_facts :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool
}

cp_mgmt_security_zone_facts :: {

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]
}

cp_mgmt_access_layer :: {

	// Indicates whether to include a cleanup rule in the new layer.

	add_default_rule?: bool

	// Color of the object. Should be one of existing colors.

	color?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// The default "catch-all" action for traffic that does not match any explicit or implied rules in the layer.

	implicit_cleanup_action?: string

	// Whether to enable Applications & URL Filtering blade on the layer.

	applications_and_url_filtering?: bool

	// Comments string.

	comments?: string

	// Whether this layer is shared.

	shared?: bool

	// Whether to use X-Forward-For HTTP header, which is added by the  proxy server to keep track of the original source IP.

	detect_using_x_forward_for?: bool

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Whether to enable Mobile Access blade on the layer.

	mobile_access?: bool

	// Collection of tag identifiers.

	tags?: [..._]

	// Whether to enable Content Awareness blade on the layer.

	content_awareness?: bool

	// Whether to enable Firewall blade on the layer.

	firewall?: bool

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Object name.

	name: string
}

cp_mgmt_address_range_facts :: {

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int
}

cp_mgmt_service_tcp_facts :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool
}

checkpoint_host :: {

	// Package policy name to be installed.

	policy_package?: string

	// State of the access rule (present or absent). Defaults to present.

	state?: string

	// Targets to install the package policy on.

	targets?: [..._]

	// Install the package policy if changes have been performed after the task completes.

	auto_install_policy?: bool

	// Publish the current session if changes have been performed after task completes.

	auto_publish_session?: bool

	// IP address of the host object.

	ip_address?: string

	// Name of the access rule.

	name: string
}

cp_mgmt_access_role :: {

	// Color of the object. Should be one of existing colors.

	color?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Object name.

	name: string

	// Collection of Network objects identified by the name or UID that can access the system.

	networks?: [..._]

	// Collection of tag identifiers.

	tags?: [..._]

	// Users that can access the system.

	users?: [..._]

	// Comments string.

	comments?: string

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Machines that can access the system.

	machines?: [..._]

	// Remote access clients identified by name or UID.

	remote_access_clients?: string
}

cp_mgmt_application_site_group_facts :: {

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool

	// Indicates whether to dereference "members" field by details level for every object in reply.

	dereference_group_members?: bool

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string
}

cp_mgmt_exception_group :: {

	// Object name.

	name: string

	// An exception group can be set to apply on all threat rules, all threat rules which have a specific profile, or those rules manually chosen by the user.

	apply_on?: string

	// Color of the object. Should be one of existing colors.

	color?: string

	// Comments string.

	comments?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// The threat profile to apply this group to in the case of apply-on threat-rules-with-specific-profile.

	applied_profile?: string

	// The threat rules to apply this group on in the case of apply-on manually-select-threat-rules.

	applied_threat_rules?: {...}

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Collection of tag identifiers.

	tags?: [..._]
}

cp_mgmt_global_assignment :: {

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// N/A

	manage_protection_actions?: bool

	// N/A

	dependent_domain?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Global domain access policy that is assigned to a dependent domain.

	global_access_policy?: string

	// N/A

	global_domain?: string

	// Global domain threat prevention policy that is assigned to a dependent domain.

	global_threat_prevention_policy?: string

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool
}

cp_mgmt_group :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Collection of group identifiers.

	groups?: [..._]

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Color of the object. Should be one of existing colors.

	color?: string

	// Comments string.

	comments?: string

	// Collection of Network objects identified by the name or UID.

	members?: [..._]

	// Object name.

	name: string

	// Collection of tag identifiers.

	tags?: [..._]
}

cp_mgmt_host :: {

	// Color of the object. Should be one of existing colors.

	color?: string

	// Comments string.

	comments?: string

	// IPv4 or IPv6 address. If both addresses are required use ipv4-address and ipv6-address fields explicitly.

	ip_address?: string

	// NAT settings.

	nat_settings?: {...}

	// Collection of group identifiers.

	groups?: [..._]

	// Servers Configuration.

	host_servers?: {...}

	// IPv4 address.

	ipv4_address?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Object name.

	name: string

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Host interfaces.

	interfaces?: [..._]

	// IPv6 address.

	ipv6_address?: string

	// Collection of tag identifiers.

	tags?: [..._]
}

cp_mgmt_network_facts :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool
}

cp_mgmt_service_tcp :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Time (in seconds) before the session times out.

	session_timeout?: int

	// Collection of tag identifiers.

	tags?: [..._]

	// Comments string.

	comments?: string

	// Collection of group identifiers.

	groups?: [..._]

	// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

	keep_connections_open_after_policy_installation?: bool

	// Object name.

	name: string

	// Indicates whether this service is a Data Domain service which has been overridden.

	override_default_settings?: bool

	// Enables state-synchronized High Availability or Load Sharing on a ClusterXL or OPSEC-certified cluster.

	sync_connections_on_cluster?: bool

	// Use default virtual session timeout.

	use_default_session_timeout?: bool

	// The number of the port used to provide this service. To specify a port range, place a hyphen between the lowest and highest port numbers, for example 44-55.

	port?: string

	// Select the protocol type associated with the service, and by implication, the management server (if any) that enforces Content Security and Authentication for the service. Selecting a Protocol Type invokes the specific protocol handlers for each protocol type, thus enabling higher level of security by parsing the protocol, and higher level of connectivity by tracking dynamic actions (such as opening of ports).

	protocol?: string

	// Port number for the client side service. If specified, only those Source port Numbers will be Accepted, Dropped, or Rejected during packet inspection. Otherwise, the source port is not inspected.

	source_port?: string

	// Sets short (aggressive) timeouts for idle connections.

	aggressive_aging?: {...}

	// Color of the object. Should be one of existing colors.

	color?: string

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// A value of true enables matching by the selected protocol's signature - the signature identifies the protocol as genuine. Select this option to limit the port to the specified protocol. If the selected protocol does not support matching by signature, this field cannot be set to true.

	match_by_protocol_signature?: bool

	// Indicates whether this service is used when 'Any' is set as the rule's service and there are several service objects with the same source port and protocol.

	match_for_any?: bool
}

cp_mgmt_tag_facts :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]
}

cp_mgmt_threat_exception :: {

	// Packet tracking.

	track?: string

	// Collection of Network objects identified by the name or UID.

	destination?: [..._]

	// The UID of the exception-group.

	exception_group_uid?: string

	// Name of the protection or site.

	protection_or_site?: [..._]

	// Collection of Network objects identified by the name or UID.

	service?: [..._]

	// True if negate is set for source.

	source_negate?: bool

	// Action-the enforced profile.

	action?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Collection of objects defining Protected Scope identified by the name or UID.

	protected_scope?: [..._]

	// Enable/Disable the rule.

	enabled?: bool

	// The name of the parent rule.

	rule_name?: string

	// Collection of Network objects identified by the name or UID.

	source?: [..._]

	// Layer that the rule belongs to identified by the name or UID.

	layer?: string

	// The name of the exception.

	name: string

	// Position in the rulebase.

	position?: string

	// Comments string.

	comments?: string

	// True if negate is set for destination.

	destination_negate?: bool

	// The name of the exception-group.

	exception_group_name?: string

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Which Gateways identified by the name or UID to install the policy on.

	install_on?: [..._]

	// True if negate is set for Protected Scope.

	protected_scope_negate?: bool

	// True if negate is set for Service.

	service_negate?: bool
}

cp_mgmt_threat_indicator_facts :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]
}

cp_mgmt_verify_policy :: {

	// Policy package identified by the name or UID.

	policy_package?: string
}

cp_mgmt_vpn_community_meshed_facts :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]
}

cp_mgmt_assign_global_assignment :: {

	// N/A

	global_domains?: [..._]

	// N/A

	dependent_domains?: [..._]

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string
}

cp_mgmt_exception_group_facts :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]
}

cp_mgmt_package_facts :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]
}

cp_mgmt_security_zone :: {

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Object name.

	name: string

	// Collection of tag identifiers.

	tags?: [..._]

	// Color of the object. Should be one of existing colors.

	color?: string

	// Comments string.

	comments?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool
}

cp_mgmt_service_icmp_facts :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool
}

cp_mgmt_service_udp_facts :: {

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int
}

cp_mgmt_threat_profile_facts :: {

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int
}

cp_mgmt_threat_rule_facts :: {

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Name of the package.

	package?: string

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool

	// Indicates whether to dereference "members" field by details level for every object in reply.

	dereference_group_members?: bool

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Search expression to filter the rulebase. The provided text should be exactly the same as it would be given in Smart Console. The logical operators in the expression ('AND', 'OR') should be provided in capital letters. If an operator is not used, the default OR operator applies.

	filter?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. Should be unique in the domain.

	name?: string

	// Sets filter preferences.

	filter_settings?: {...}

	// Layer that the rule belongs to identified by the name or UID.

	layer?: string

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// N/A

	use_object_dictionary?: bool
}

checkpoint_run_script :: {

	// Script body contents.

	script: string

	// Name of the script.

	script_name: string

	// Targets the script should be run against. Can reference either name or UID.

	targets: [..._]
}

cp_mgmt_run_ips_update :: {

	// Offline update package path.

	package_path?: string
}

cp_mgmt_service_icmp6_facts :: {

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string
}

cp_mgmt_service_other_facts :: {

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int
}

cp_mgmt_address_range :: {

	// First IP address in the range. If both IPv4 and IPv6 address ranges are required, use the ipv4-address-first and the ipv6-address-first fields instead.

	ip_address_first?: string

	// Last IP address in the range. If both IPv4 and IPv6 address ranges are required, use the ipv4-address-first and the ipv6-address-first fields instead.

	ip_address_last?: string

	// Last IPv4 address in the range.

	ipv4_address_last?: string

	// Color of the object. Should be one of existing colors.

	color?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Collection of group identifiers.

	groups?: [..._]

	// First IPv4 address in the range.

	ipv4_address_first?: string

	// First IPv6 address in the range.

	ipv6_address_first?: string

	// Last IPv6 address in the range.

	ipv6_address_last?: string

	// NAT settings.

	nat_settings?: {...}

	// Comments string.

	comments?: string

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Object name.

	name: string

	// Collection of tag identifiers.

	tags?: [..._]

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool
}

cp_mgmt_network :: {

	// IPv4 or IPv6 network mask length. If both masks are required use mask-length4 and mask-length6 fields explicitly. Instead of IPv4 mask length it is possible to specify IPv4 mask itself in subnet-mask field.

	mask_length?: int

	// IPv4 or IPv6 network address. If both addresses are required use subnet4 and subnet6 fields explicitly.

	subnet?: string

	// IPv4 network mask.

	subnet_mask?: string

	// IPv4 network address.

	subnet4?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Object name.

	name: string

	// Allow broadcast address inclusion.

	broadcast?: string

	// Comments string.

	comments?: string

	// IPv4 network mask length.

	mask_length4?: int

	// IPv6 network mask length.

	mask_length6?: int

	// NAT settings.

	nat_settings?: {...}

	// IPv6 network address.

	subnet6?: string

	// Color of the object. Should be one of existing colors.

	color?: string

	// Collection of group identifiers.

	groups?: [..._]

	// Collection of tag identifiers.

	tags?: [..._]
}

cp_mgmt_session_facts :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the descending order by the session publish time. This parameter is relevant only for getting few objects.

	order?: [..._]

	// Show a list of published sessions.

	view_published_sessions?: bool
}

cp_mgmt_access_rule :: {

	// List of processed file types that this rule applies on.

	content?: [..._]

	// Custom fields.

	custom_fields?: {...}

	// Layer that the rule belongs to identified by the name or UID.

	layer?: string

	// List of time objects. For example, "Weekend", "Off-Work", "Every-Day".

	time?: [..._]

	// Action settings.

	action_settings?: {...}

	// Enable/Disable the rule.

	enabled?: bool

	// Which Gateways identified by the name or UID to install the policy on.

	install_on?: [..._]

	// Collection of Network objects identified by the name or UID.

	source?: [..._]

	// True if negate is set for source.

	source_negate?: bool

	// User check settings.

	user_check?: {...}

	// Communities or Directional.

	vpn?: [..._]

	// Comments string.

	comments?: string

	// On which direction the file types processing is applied.

	content_direction?: string

	// True if negate is set for data.

	content_negate?: bool

	// Collection of Network objects identified by the name or UID.

	destination?: [..._]

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Inline Layer identified by the name or UID. Relevant only if "Action" was set to "Apply Layer".

	inline_layer?: string

	// Collection of Network objects identified by the name or UID.

	service?: [..._]

	// a "Accept", "Drop", "Ask", "Inform", "Reject", "User Auth", "Client Auth", "Apply Layer".

	action?: string

	// Track Settings.

	track?: {...}

	// True if negate is set for service.

	service_negate?: bool

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Object name.

	name: string

	// Position in the rulebase.

	position?: string

	// True if negate is set for destination.

	destination_negate?: bool
}

cp_mgmt_application_site_facts :: {

	// Object application identifier.

	application_id?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool
}

cp_mgmt_multicast_address_range_facts :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool
}

cp_mgmt_service_icmp :: {

	// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

	keep_connections_open_after_policy_installation?: bool

	// Object name.

	name: string

	// Collection of tag identifiers.

	tags?: [..._]

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// As listed in, <a href="http,//www.iana.org/assignments/icmp-parameters" target="_blank">RFC 792</a>.

	icmp_type?: int

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// As listed in, <a href="http,//www.iana.org/assignments/icmp-parameters" target="_blank">RFC 792</a>.

	icmp_code?: int

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Color of the object. Should be one of existing colors.

	color?: string

	// Comments string.

	comments?: string

	// Collection of group identifiers.

	groups?: [..._]
}

checkpoint_task_facts :: {

	// ID of the task object.

	task_id: string
}

cp_mgmt_administrator :: {

	// Object name.

	name: string

	// Color of the object. Should be one of existing colors.

	color?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// RADIUS server object identified by the name or UID. Must be set when "authentication-method" was selected to be "RADIUS".

	radius_server?: string

	// TACACS server object identified by the name or UID. Must be set when "authentication-method" was selected to be "TACACS".

	tacacs_server?: string

	// Authentication method.

	authentication_method?: string

	// Comments string.

	comments?: string

	// Format, YYYY-MM-DD, YYYY-mm-ddThh,mm,ss.

	expiration_date?: string

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// True if administrator must change password on the next login.

	must_change_password?: bool

	// Administrator password hash.

	password_hash?: string

	// Administrator phone number.

	phone_number?: string

	// Collection of tag identifiers.

	tags?: [..._]

	// Administrator email.

	email?: string

	// Administrator multi-domain profile.

	multi_domain_profile?: string

	// Administrator password.

	password?: string

	// Administrator permissions profile. Permissions profile should not be provided when multi-domain-profile is set to "Multi-Domain Super User" or "Domain Super User".

	permissions_profile?: [..._]
}

cp_mgmt_application_site_group :: {

	// Collection of application and URL filtering objects identified by the name or UID.

	members?: [..._]

	// Object name.

	name: string

	// Comments string.

	comments?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Collection of group identifiers.

	groups?: [..._]

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Color of the object. Should be one of existing colors.

	color?: string

	// Collection of tag identifiers.

	tags?: [..._]
}

checkpoint_access_rule_facts :: {

	// Layer the access rule is attached to.

	layer: string

	// Name of the access rule. If not provided, UID is required.

	name?: string

	// UID of the access rule. If not provided, name is required.

	uid?: string
}

cp_mgmt_access_layer_facts :: {

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string
}

cp_mgmt_group_with_exclusion :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Name or UID of an object which the group excludes.

	except?: string

	// Collection of group identifiers.

	groups?: [..._]

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Object name.

	name: string

	// Color of the object. Should be one of existing colors.

	color?: string

	// Comments string.

	comments?: string

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Name or UID of an object which the group includes.

	include?: string

	// Collection of tag identifiers.

	tags?: [..._]
}

cp_mgmt_service_dce_rpc :: {

	// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

	keep_connections_open_after_policy_installation?: bool

	// Object name.

	name: string

	// Collection of tag identifiers.

	tags?: [..._]

	// Comments string.

	comments?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Color of the object. Should be one of existing colors.

	color?: string

	// Collection of group identifiers.

	groups?: [..._]

	// Network interface UUID.

	interface_uuid?: string
}

cp_mgmt_service_group_facts :: {

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool

	// Indicates whether to dereference "members" field by details level for every object in reply.

	dereference_group_members?: bool

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// When true, the service group's matched content is displayed as ranges of port numbers rather than service objects.<br />Objects that are not represented using port numbers are presented as objects.<br />The 'members' parameter is omitted from the response and instead the 'ranges' parameter is displayed.

	show_as_ranges?: bool
}

cp_mgmt_service_other :: {

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Specifies whether Other Service replies are to be accepted.

	accept_replies?: bool

	// Contains an INSPECT expression that defines the action to take if a rule containing this service is matched. Example, set r_mhandler &open_ssl_handler sets a handler on the connection.

	action?: string

	// Color of the object. Should be one of existing colors.

	color?: string

	// Object name.

	name: string

	// Time (in seconds) before the session times out.

	session_timeout?: int

	// Collection of tag identifiers.

	tags?: [..._]

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Collection of group identifiers.

	groups?: [..._]

	// Indicates whether this service is used when 'Any' is set as the rule's service and there are several service objects with the same source port and protocol.

	match_for_any?: bool

	// Indicates whether this service is a Data Domain service which has been overridden.

	override_default_settings?: bool

	// Enables state-synchronized High Availability or Load Sharing on a ClusterXL or OPSEC-certified cluster.

	sync_connections_on_cluster?: bool

	// Comments string.

	comments?: string

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

	keep_connections_open_after_policy_installation?: bool

	// Use default virtual session timeout.

	use_default_session_timeout?: bool

	// Sets short (aggressive) timeouts for idle connections.

	aggressive_aging?: {...}

	// IP protocol number.

	ip_protocol?: int

	// Contains an INSPECT expression that defines the matching criteria. The connection is examined against the expression during the first packet. Example, tcp, dport = 21, direction = 0 matches incoming FTP control connections.

	match?: string
}

cp_mgmt_tag :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Object name.

	name: string

	// Collection of tag identifiers.

	tags?: [..._]

	// Color of the object. Should be one of existing colors.

	color?: string

	// Comments string.

	comments?: string
}

cp_mgmt_threat_layer_facts :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]
}

cp_mgmt_threat_protection_override :: {

	// Protection comments.

	comments?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Tag the protection with pre-defined follow-up flag.

	follow_up?: bool

	// Object name.

	name?: string

	// Overrides per profile for this protection<br> Note, Remove override for Core protections removes only the action's override. Remove override for Threat Cloud protections removes the action, track and packet captures.

	overrides?: [..._]
}

cp_mgmt_time_facts :: {

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string
}

checkpoint_session :: {

	// Action to perform on the session object. Valid choices are published and discarded.

	state?: string

	// UID of the session.

	uid: string
}

cp_mgmt_application_site_category_facts :: {

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int
}

cp_mgmt_install_policy :: {

	// Relevant for the gateway clusters. If true, the policy is installed on all the cluster members. If the installation on a cluster member fails, don't install on that cluster.

	install_on_all_cluster_members_or_fail?: bool

	// The name of the Policy Package to be installed.

	policy_package?: string

	// If true, prepares the policy for the installation, but doesn't install it on an installation target.

	prepare_only?: bool

	// Set to be true in order to install the QoS policy. By default, the value is true if Quality-of-Service policy is enabled on the input policy package, otherwise false.

	qos?: bool

	// The UID of the revision of the policy to install.

	revision?: string

	// On what targets to execute this command. Targets may be identified by their name, or object unique identifier.

	targets?: [..._]

	// Set to be true in order to install the Threat Prevention policy. By default, the value is true if Threat Prevention policy is enabled on the input policy package, otherwise false.

	threat_prevention?: bool

	// Set to be true in order to install the Desktop Security policy. By default, the value is true if desktop security policy is enabled on the input policy package, otherwise false.

	desktop_security?: bool

	// Set to be true in order to install the Access Control policy. By default, the value is true if Access Control policy is enabled on the input policy package, otherwise false.

	access?: bool
}

cp_mgmt_put_file :: {

	// N/A

	file_path?: string

	// On what targets to execute this command. Targets may be identified by their name, or object unique identifier.

	targets?: [..._]

	// Comments string.

	comments?: string

	// N/A

	file_content?: string

	// N/A

	file_name?: string
}

cp_mgmt_service_rpc :: {

	// Color of the object. Should be one of existing colors.

	color?: string

	// Comments string.

	comments?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

	keep_connections_open_after_policy_installation?: bool

	// Collection of tag identifiers.

	tags?: [..._]

	// Collection of group identifiers.

	groups?: [..._]

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Object name.

	name: string

	// N/A

	program_number?: int
}

cp_mgmt_simple_gateway :: {

	// IPv6 address.

	ipv6_address?: string

	// Backup server(s) to send logs to.

	send_logs_to_backup_server?: [..._]

	// Gateway platform version.

	version?: string

	// VPN blade enabled.

	vpn?: bool

	// Anti-Bot blade enabled.

	anti_bot?: bool

	// Color of the object. Should be one of existing colors.

	color?: string

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// N/A

	firewall_settings?: {...}

	// IPv4 address.

	ipv4_address?: string

	// Application Control blade enabled.

	application_control?: bool

	// Collection of group identifiers.

	groups?: [..._]

	// Threat Emulation blade enabled.

	threat_emulation?: bool

	// Server(s) to send alerts to.

	send_alerts_to_server?: [..._]

	// URL Filtering blade enabled.

	url_filtering?: bool

	// Content Awareness blade enabled.

	content_awareness?: bool

	// Network interfaces. When a gateway is updated with a new interfaces, the existing interfaces are removed.

	interfaces?: [..._]

	// IPv4 or IPv6 address. If both addresses are required use ipv4-address and ipv6-address fields explicitly.

	ip_address?: string

	// Server(s) to send logs to.

	send_logs_to_server?: [..._]

	// Gateway VPN settings.

	vpn_settings?: {...}

	// N/A

	one_time_password?: string

	// Gateway platform operating system.

	os_name?: string

	// Firewall blade enabled.

	firewall?: bool

	// Intrusion Prevention System blade enabled.

	ips?: bool

	// N/A

	logs_settings?: {...}

	// Anti-Virus blade enabled.

	anti_virus?: bool

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Collection of tag identifiers.

	tags?: [..._]

	// Threat Extraction blade enabled.

	threat_extraction?: bool

	// Comments string.

	comments?: string

	// Object name.

	name: string

	// Save logs locally on the gateway.

	save_logs_locally?: bool
}

cp_mgmt_vpn_community_star_facts :: {

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string
}

cp_publish :: {

	// Session unique identifier. Specify it to publish a different session than the one you currently use.

	uid?: string
}

cp_mgmt_access_rule_facts :: {

	// Sets filter preferences.

	filter_settings?: {...}

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// N/A

	use_object_dictionary?: bool

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Name of the package.

	package?: string

	// N/A

	hits_settings?: {...}

	// Search expression to filter the rulebase. The provided text should be exactly the same as it would be given in Smart Console. The logical operators in the expression ('AND', 'OR') should be provided in capital letters. If an operator is not used, the default OR operator applies.

	filter?: string

	// Layer that the rule belongs to identified by the name or UID.

	layer?: string

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool

	// Indicates whether to dereference "members" field by details level for every object in reply.

	dereference_group_members?: bool

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// When true, the source, destination and services & applications parameters are displayed as ranges of IP addresses and port numbers rather than network objects.<br /> Objects that are not represented using IP addresses or port numbers are presented as objects.<br /> In addition, the response of each rule does not contain the parameters, source, source-negate, destination, destination-negate, service and service-negate, but instead it contains the parameters, source-ranges, destination-ranges and service-ranges.<br /><br /> Note, Requesting to show rules as ranges is limited up to 20 rules per request, otherwise an error is returned. If you wish to request more rules, use the offset and limit parameters to limit your request.

	show_as_ranges?: bool

	// N/A

	show_hits?: bool

	// Object name. Should be unique in the domain.

	name?: string
}

cp_mgmt_administrator_facts :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]
}

cp_mgmt_dynamic_object :: {

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Object name.

	name: string

	// Collection of tag identifiers.

	tags?: [..._]

	// Color of the object. Should be one of existing colors.

	color?: string

	// Comments string.

	comments?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string
}

cp_mgmt_global_assignment_facts :: {

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// N/A

	dependent_domain?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// N/A

	global_domain?: string
}

cp_mgmt_service_sctp_facts :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool
}

cp_mgmt_threat_layer :: {

	// Collection of tag identifiers.

	tags?: [..._]

	// Indicates whether to include a default rule in the new layer.

	add_default_rule?: bool

	// Color of the object. Should be one of existing colors.

	color?: string

	// Comments string.

	comments?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Object name.

	name: string
}

cp_mgmt_mds_facts :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]
}

cp_mgmt_multicast_address_range :: {

	// Last IP address in the range. If both IPv4 and IPv6 address ranges are required, use the ipv4-address-first and the ipv6-address-first fields instead.

	ip_address_last?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Collection of group identifiers.

	groups?: [..._]

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// IPv4 or IPv6 address. If both addresses are required use ipv4-address and ipv6-address fields explicitly.

	ip_address?: string

	// IPv4 address.

	ipv4_address?: string

	// IPv6 address.

	ipv6_address?: string

	// First IPv6 address in the range.

	ipv6_address_first?: string

	// Color of the object. Should be one of existing colors.

	color?: string

	// Comments string.

	comments?: string

	// Collection of tag identifiers.

	tags?: [..._]

	// Last IPv4 address in the range.

	ipv4_address_last?: string

	// Last IPv6 address in the range.

	ipv6_address_last?: string

	// Object name.

	name: string

	// First IP address in the range. If both IPv4 and IPv6 address ranges are required, use the ipv4-address-first and the ipv6-address-first fields instead.

	ip_address_first?: string

	// First IPv4 address in the range.

	ipv4_address_first?: string
}

cp_mgmt_threat_exception_facts :: {

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool

	// The name of the layer containing the parent threat rule. This parameter is relevant only for getting few objects.

	name?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// The UID of the exception-group.

	exception_group_uid?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Indicates whether to dereference "members" field by details level for every object in reply.

	dereference_group_members?: bool

	// Layer that the rule belongs to identified by the name or UID.

	layer?: string

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// Name of the package.

	package?: string

	// The name of the parent rule.

	rule_name?: string

	// The name of the exception-group.

	exception_group_name?: string

	// Sets filter preferences.

	filter_settings?: {...}

	// N/A

	use_object_dictionary?: bool

	// Search expression to filter the rulebase. The provided text should be exactly the same as it would be given in Smart Console. The logical operators in the expression ('AND', 'OR') should be provided in capital letters. If an operator is not used, the default OR operator applies.

	filter?: string
}

cp_mgmt_threat_profile :: {

	// Collection of tag identifiers.

	tags?: [..._]

	// Protections with this performance impact only will be activated in the profile.

	active_protections_performance_impact?: string

	// Color of the object. Should be one of existing colors.

	color?: string

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Indicators whose action will be overridden in this profile.

	indicator_overrides?: [..._]

	// Object name.

	name: string

	// Overrides per profile for this protection.

	overrides?: [..._]

	// Activate protections by these extended attributes.

	activate_protections_by_extended_attributes?: [..._]

	// Is Anti-Bot blade activated.

	anti_bot?: bool

	// Action for protections with medium confidence level.

	confidence_level_medium?: string

	// Is IPS blade activated.

	ips?: bool

	// Whether to activate/deactivate IPS protections according to the extended attributes.

	use_extended_attributes?: bool

	// Indicates whether the profile should make use of indicators.

	use_indicators?: bool

	// Protections with this severity only will be activated in the profile.

	active_protections_severity?: string

	// Is Anti-Virus blade activated.

	anti_virus?: bool

	// Comments string.

	comments?: string

	// Action for protections with low confidence level.

	confidence_level_low?: string

	// Deactivate protections by these extended attributes.

	deactivate_protections_by_extended_attributes?: [..._]

	// Malicious Mail Policy for MTA Gateways.

	malicious_mail_policy_settings?: {...}

	// Action for protections with high confidence level.

	confidence_level_high?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// IPS blade settings.

	ips_settings?: {...}

	// Is Threat Emulation blade activated.

	threat_emulation?: bool
}

cp_mgmt_wildcard_facts :: {

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]
}

checkpoint_access_rule :: {

	// Layer to attach the access rule to.

	layer: string

	// Name of the access rule.

	name?: string

	// Package policy name to be installed.

	policy_package?: string

	// State of the access rule (present or absent). Defaults to present.

	state?: string

	// Action of the access rule (accept, drop, inform, etc).

	action?: string

	// Install the package policy if changes have been performed after the task completes.

	auto_install_policy?: bool

	// Publish the current session if changes have been performed after task completes.

	auto_publish_session?: bool

	// Destination object of the access rule.

	destination?: string

	// Enabled or disabled flag.

	enabled?: bool

	// Position of the access rule.

	position?: string

	// Source object of the access rule.

	source?: string

	// Targets to install the package policy on.

	targets?: [..._]
}

cp_mgmt_application_site_category :: {

	// Color of the object. Should be one of existing colors.

	color?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Collection of group identifiers.

	groups?: [..._]

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Collection of tag identifiers.

	tags?: [..._]

	// Comments string.

	comments?: string

	// N/A

	description?: string

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Object name.

	name: string
}

cp_mgmt_group_with_exclusion_facts :: {

	// When true, the group with exclusion's matched content is displayed as ranges of IP addresses rather than network objects.<br />Objects that are not represented using IP addresses are presented as objects.<br />The 'include' and 'except' parameters are omitted from the response and instead the 'ranges' parameter is displayed.

	show_as_ranges?: bool

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]
}

cp_mgmt_package :: {

	// True - enables, False - disables access & NAT policies, empty - nothing is changed.

	access?: bool

	// Object name.

	name: string

	// Threat policy layers.

	threat_layers?: {...}

	// Comments string.

	comments?: string

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Which Gateways identified by the name or UID to install the policy on.

	installation_targets?: [..._]

	// True - enables, False - disables Threat policy, empty - nothing is changed.

	threat_prevention?: bool

	// Access policy layers.

	access_layers?: {...}

	// True - enables, False - disables Desktop security policy, empty - nothing is changed.

	desktop_security?: bool

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// True - enables, False - disables QoS policy, empty - nothing is changed.

	qos?: bool

	// Color of the object. Should be one of existing colors.

	color?: string

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// QoS policy type.

	qos_policy_type?: string

	// Collection of tag identifiers.

	tags?: [..._]

	// True - enables, False - disables VPN traditional mode, empty - nothing is changed.

	vpn_traditional_mode?: bool
}

cp_mgmt_service_dce_rpc_facts :: {

	// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

	offset?: int

	// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

	order?: [..._]

	// Indicates whether to calculate and show "groups" field for every object in reply.

	show_membership?: bool

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// No more than that many results will be returned. This parameter is relevant only for getting few objects.

	limit?: int

	// Object name. This parameter is relevant only for getting a specific object.

	name?: string
}

cp_mgmt_time :: {

	// Color of the object. Should be one of existing colors.

	color?: string

	// Comments string.

	comments?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Hours recurrence. Note, Each gateway may interpret this time differently according to its time zone.

	hours_ranges?: [..._]

	// Collection of tag identifiers.

	tags?: [..._]

	// End never.

	end_never?: bool

	// Collection of group identifiers.

	groups?: [..._]

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Starting time. Note, Each gateway may interpret this time differently according to its time zone.

	start?: {...}

	// Start immediately.

	start_now?: bool

	// End time. Note, Each gateway may interpret this time differently according to its time zone.

	end?: {...}

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Object name.

	name: string

	// Days recurrence.

	recurrence?: {...}
}

cp_mgmt_publish :: {

	// Session unique identifier. Specify it to publish a different session than the one you currently use.

	uid?: string
}

cp_mgmt_service_udp :: {

	// Color of the object. Should be one of existing colors.

	color?: string

	// Comments string.

	comments?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

	keep_connections_open_after_policy_installation?: bool

	// A value of true enables matching by the selected protocol's signature - the signature identifies the protocol as genuine. Select this option to limit the port to the specified protocol. If the selected protocol does not support matching by signature, this field cannot be set to true.

	match_by_protocol_signature?: bool

	// Enables state-synchronized High Availability or Load Sharing on a ClusterXL or OPSEC-certified cluster.

	sync_connections_on_cluster?: bool

	// Use default virtual session timeout.

	use_default_session_timeout?: bool

	// N/A

	accept_replies?: bool

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Indicates whether this service is used when 'Any' is set as the rule's service and there are several service objects with the same source port and protocol.

	match_for_any?: bool

	// Object name.

	name: string

	// The number of the port used to provide this service. To specify a port range, place a hyphen between the lowest and highest port numbers, for example 44-55.

	port?: string

	// Time (in seconds) before the session times out.

	session_timeout?: int

	// Port number for the client side service. If specified, only those Source port Numbers will be Accepted, Dropped, or Rejected during packet inspection. Otherwise, the source port is not inspected.

	source_port?: string

	// Collection of tag identifiers.

	tags?: [..._]

	// Sets short (aggressive) timeouts for idle connections.

	aggressive_aging?: {...}

	// Collection of group identifiers.

	groups?: [..._]

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Indicates whether this service is a Data Domain service which has been overridden.

	override_default_settings?: bool

	// Select the protocol type associated with the service, and by implication, the management server (if any) that enforces Content Security and Authentication for the service. Selecting a Protocol Type invokes the specific protocol handlers for each protocol type, thus enabling higher level of security by parsing the protocol, and higher level of connectivity by tracking dynamic actions (such as opening of ports).

	protocol?: string
}

cp_mgmt_threat_rule :: {

	// Action-the enforced profile.

	action?: string

	// Enable/Disable the rule.

	enabled?: bool

	// Collection of Network objects identified by the name or UID.

	source?: [..._]

	// True if negate is set for destination.

	destination_negate?: bool

	// Which Gateways identified by the name or UID to install the policy on.

	install_on?: [..._]

	// Layer that the rule belongs to identified by the name or UID.

	layer?: string

	// Position in the rulebase.

	position?: string

	// Packet tracking.

	track?: string

	// Comments string.

	comments?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// True if negate is set for Protected Scope.

	protected_scope_negate?: bool

	// True if negate is set for source.

	source_negate?: bool

	// Threat rule track settings.

	track_settings?: {...}

	// Collection of Network objects identified by the name or UID.

	destination?: [..._]

	// Object name.

	name: string

	// Collection of objects defining Protected Scope identified by the name or UID.

	protected_scope?: [..._]

	// Collection of Network objects identified by the name or UID.

	service?: [..._]

	// True if negate is set for Service.

	service_negate?: bool
}

cp_mgmt_vpn_community_star :: {

	// The encryption suite to be used.

	encryption_suite?: string

	// Collection of Gateway objects representing satellite gateways identified by the name or UID.

	satellite_gateways?: [..._]

	// Indicates whether the shared secret should be used for all external gateways.

	use_shared_secret?: bool

	// Color of the object. Should be one of existing colors.

	color?: string

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Ike Phase 1 settings. Only applicable when the encryption-suite is set to [custom].

	ike_phase_1?: {...}

	// Ike Phase 2 settings. Only applicable when the encryption-suite is set to [custom].

	ike_phase_2?: {...}

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Indicates whether the meshed community is in center.

	mesh_center_gateways?: bool

	// Object name.

	name: string

	// Shared secrets for external gateways.

	shared_secrets?: [..._]

	// Collection of tag identifiers.

	tags?: [..._]

	// Collection of Gateway objects representing center gateways identified by the name or UID.

	center_gateways?: [..._]

	// Comments string.

	comments?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// The encryption method to be used.

	encryption_method?: string
}

cp_mgmt_wildcard :: {

	// IPv4 address.

	ipv4_address?: string

	// IPv6 address.

	ipv6_address?: string

	// IPv6 mask wildcard.

	ipv6_mask_wildcard?: string

	// Comments string.

	comments?: string

	// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

	details_level?: string

	// Collection of group identifiers.

	groups?: [..._]

	// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

	ignore_errors?: bool

	// Apply changes ignoring warnings.

	ignore_warnings?: bool

	// Object name.

	name: string

	// Collection of tag identifiers.

	tags?: [..._]

	// Color of the object. Should be one of existing colors.

	color?: string

	// IPv4 mask wildcard.

	ipv4_mask_wildcard?: string
}
