package check_point

cp_mgmt_vpn_community_star :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_vpn_community_star: {

		// Collection of Gateway objects representing satellite gateways identified by the name or UID.

		satellite_gateways?: [...]

		// Shared secrets for external gateways.

		shared_secrets?: [...]

		// The encryption method to be used.

		encryption_method?: string

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Ike Phase 2 settings. Only applicable when the encryption-suite is set to [custom].

		ike_phase_2?: {...}

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// The encryption suite to be used.

		encryption_suite?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Ike Phase 1 settings. Only applicable when the encryption-suite is set to [custom].

		ike_phase_1?: {...}

		// Object name.

		name: string

		// Comments string.

		comments?: string

		// Color of the object. Should be one of existing colors.

		color?: string

		// Indicates whether the meshed community is in center.

		mesh_center_gateways?: bool

		// Collection of tag identifiers.

		tags?: [...]

		// Indicates whether the shared secret should be used for all external gateways.

		use_shared_secret?: bool

		// Collection of Gateway objects representing center gateways identified by the name or UID.

		center_gateways?: [...]
	}
}

cp_mgmt_run_ips_update :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_run_ips_update: {

		package_path?: string

		// Offline update package path.
	}
}

cp_mgmt_service_icmp_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_service_icmp_facts: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// Indicates whether to calculate and show "groups" field for every object in reply.

		show_membership?: bool
	}
}

cp_mgmt_service_other_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_service_other_facts: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// Indicates whether to calculate and show "groups" field for every object in reply.

		show_membership?: bool
	}
}

cp_mgmt_service_udp_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_service_udp_facts: {

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// Indicates whether to calculate and show "groups" field for every object in reply.

		show_membership?: bool

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int
	}
}

cp_mgmt_application_site_group :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_application_site_group: {

		// Collection of group identifiers.

		groups?: [...]

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Collection of tag identifiers.

		tags?: [...]

		// Color of the object. Should be one of existing colors.

		color?: string

		// Comments string.

		comments?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Collection of application and URL filtering objects identified by the name or UID.

		members?: [...]

		// Object name.

		name: string
	}
}

cp_mgmt_dns_domain :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_dns_domain: {

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Whether to match sub-domains in addition to the domain itself.

		is_sub_domain?: bool

		// Object name.

		name: string

		// Collection of tag identifiers.

		tags?: [...]

		// Color of the object. Should be one of existing colors.

		color?: string

		// Comments string.

		comments?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string
	}
}

cp_mgmt_package_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_package_facts: {

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string
	}
}

cp_mgmt_service_dce_rpc_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_service_dce_rpc_facts: {

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

		order?: [...]
	}
}

cp_mgmt_service_sctp :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_service_sctp: {

		// Enables state-synchronized High Availability or Load Sharing on a ClusterXL or OPSEC-certified cluster.

		sync_connections_on_cluster?: bool

		// Use default virtual session timeout.

		use_default_session_timeout?: bool

		// Color of the object. Should be one of existing colors.

		color?: string

		// Comments string.

		comments?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

		keep_connections_open_after_policy_installation?: bool

		// Indicates whether this service is used when 'Any' is set as the rule's service and there are several service objects with the same source port and protocol.

		match_for_any?: bool

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Collection of group identifiers.

		groups?: [...]

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Time (in seconds) before the session times out.

		session_timeout?: int

		// Source port number. To specify a port range add a hyphen between the lowest and the highest port numbers, for example 44-45.

		source_port?: string

		// Sets short (aggressive) timeouts for idle connections.

		aggressive_aging?: {...}

		// Object name.

		name: string

		// Port number. To specify a port range add a hyphen between the lowest and the highest port numbers, for example 44-45.

		port?: string

		// Collection of tag identifiers.

		tags?: [...]
	}
}

cp_mgmt_threat_protection_override :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_threat_protection_override: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Tag the protection with pre-defined follow-up flag.

		follow_up?: bool

		// Object name.

		name?: string

		// Overrides per profile for this protection<br> Note, Remove override for Core protections removes only the action's override. Remove override for Threat Cloud protections removes the action, track and packet captures.

		overrides?: [...]

		// Protection comments.

		comments?: string
	}
}

cp_mgmt_time_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_time_facts: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]
	}
}

cp_mgmt_address_range_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_address_range_facts: {

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// Indicates whether to calculate and show "groups" field for every object in reply.

		show_membership?: bool

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string
	}
}

cp_mgmt_package :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_package: {

		// Comments string.

		comments?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Which Gateways identified by the name or UID to install the policy on.

		installation_targets?: [...]

		// Collection of tag identifiers.

		tags?: [...]

		// True - enables, False - disables VPN traditional mode, empty - nothing is changed.

		vpn_traditional_mode?: bool

		// True - enables, False - disables access & NAT policies, empty - nothing is changed.

		access?: bool

		// True - enables, False - disables QoS policy, empty - nothing is changed.

		qos?: bool

		// QoS policy type.

		qos_policy_type?: string

		// True - enables, False - disables Desktop security policy, empty - nothing is changed.

		desktop_security?: bool

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Threat policy layers.

		threat_layers?: {...}

		// True - enables, False - disables Threat policy, empty - nothing is changed.

		threat_prevention?: bool

		// Access policy layers.

		access_layers?: {...}

		// Color of the object. Should be one of existing colors.

		color?: string

		// Object name.

		name: string
	}
}

cp_mgmt_security_zone_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_security_zone_facts: {

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// Indicates whether to calculate and show "groups" field for every object in reply.

		show_membership?: bool

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string
	}
}

cp_mgmt_global_assignment_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_global_assignment_facts: {

		// N/A

		dependent_domain?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// N/A

		global_domain?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]
	}
}

cp_mgmt_install_policy :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_install_policy: {

		// Set to be true in order to install the Access Control policy. By default, the value is true if Access Control policy is enabled on the input policy package, otherwise false.

		access?: bool

		// Set to be true in order to install the QoS policy. By default, the value is true if Quality-of-Service policy is enabled on the input policy package, otherwise false.

		qos?: bool

		// The UID of the revision of the policy to install.

		revision?: string

		// On what targets to execute this command. Targets may be identified by their name, or object unique identifier.

		targets?: [...]

		// Set to be true in order to install the Threat Prevention policy. By default, the value is true if Threat Prevention policy is enabled on the input policy package, otherwise false.

		threat_prevention?: bool

		// Set to be true in order to install the Desktop Security policy. By default, the value is true if desktop security policy is enabled on the input policy package, otherwise false.

		desktop_security?: bool

		// Relevant for the gateway clusters. If true, the policy is installed on all the cluster members. If the installation on a cluster member fails, don't install on that cluster.

		install_on_all_cluster_members_or_fail?: bool

		// The name of the Policy Package to be installed.

		policy_package?: string

		// If true, prepares the policy for the installation, but doesn't install it on an installation target.

		prepare_only?: bool
	}
}

cp_mgmt_service_tcp_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_service_tcp_facts: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// Indicates whether to calculate and show "groups" field for every object in reply.

		show_membership?: bool
	}
}

cp_mgmt_simple_gateway_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_simple_gateway_facts: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// Indicates whether to calculate and show "groups" field for every object in reply.

		show_membership?: bool
	}
}

cp_mgmt_threat_indicator :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_threat_indicator: {

		// Collection of tag identifiers.

		tags?: [...]

		// Comments string.

		comments?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Object name.

		name: string

		// The indicator's observables.

		observables?: [...]

		// Profiles in which to override the indicator's default action.

		profile_overrides?: [...]

		// The indicator's action.

		action?: string

		// Color of the object. Should be one of existing colors.

		color?: string

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// The contents of a file containing the indicator's observables.

		observables_raw_data?: string
	}
}

checkpoint_session :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	checkpoint_session: {

		// Action to perform on the session object. Valid choices are published and discarded.

		state?: string

		// UID of the session.

		uid: string
	}
}

checkpoint_task_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	checkpoint_task_facts: {

		task_id: string

		// ID of the task object.
	}
}

cp_mgmt_application_site :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_application_site: {

		// Application signature generated by <a href="https,//supportcenter.checkpoint.com/supportcenter/portal?eventSubmit_doGoviewsolutiondetails=&solutionid=sk103051">Signature Tool</a>.

		application_signature?: string

		// Color of the object. Should be one of existing colors.

		color?: string

		// Collection of tag identifiers.

		tags?: [...]

		// States whether the URL is defined as a Regular Expression or not.

		urls_defined_as_regular_expression?: bool

		// Used to configure or edit the additional categories of a custom application / site used in the Application and URL Filtering or Threat Prevention.

		additional_categories?: [...]

		// Collection of group identifiers.

		groups?: [...]

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Each application is assigned to one primary category based on its most defining aspect.

		primary_category?: string

		// URLs that determine this particular application.

		url_list?: [...]

		// Comments string.

		comments?: string

		// A description for the application.

		description?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Object name.

		name: string
	}
}

cp_mgmt_vpn_community_meshed :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_vpn_community_meshed: {

		// Color of the object. Should be one of existing colors.

		color?: string

		// Comments string.

		comments?: string

		// The encryption method to be used.

		encryption_method?: string

		// The encryption suite to be used.

		encryption_suite?: string

		// Indicates whether the shared secret should be used for all external gateways.

		use_shared_secret?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Ike Phase 2 settings. Only applicable when the encryption-suite is set to [custom].

		ike_phase_2?: {...}

		// Object name.

		name: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Collection of tag identifiers.

		tags?: [...]

		// Collection of Gateway objects identified by the name or UID.

		gateways?: [...]

		// Ike Phase 1 settings. Only applicable when the encryption-suite is set to [custom].

		ike_phase_1?: {...}

		// Shared secrets for external gateways.

		shared_secrets?: [...]
	}
}

cp_mgmt_vpn_community_meshed_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_vpn_community_meshed_facts: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]
	}
}

cp_publish :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_publish: {

		uid?: string

		// Session unique identifier. Specify it to publish a different session than the one you currently use.
	}
}

cp_mgmt_dynamic_object_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_dynamic_object_facts: {

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

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
}

cp_mgmt_threat_exception_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_threat_exception_facts: {

		// The name of the exception-group.

		exception_group_name?: string

		// The UID of the exception-group.

		exception_group_uid?: string

		// Name of the package.

		package?: string

		// N/A

		use_object_dictionary?: bool

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Search expression to filter the rulebase. The provided text should be exactly the same as it would be given in Smart Console. The logical operators in the expression ('AND', 'OR') should be provided in capital letters. If an operator is not used, the default OR operator applies.

		filter?: string

		// Indicates whether to dereference "members" field by details level for every object in reply.

		dereference_group_members?: bool

		// Sets filter preferences.

		filter_settings?: {...}

		// Layer that the rule belongs to identified by the name or UID.

		layer?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// The name of the parent rule.

		rule_name?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// The name of the layer containing the parent threat rule. This parameter is relevant only for getting few objects.

		name?: string

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// Indicates whether to calculate and show "groups" field for every object in reply.

		show_membership?: bool
	}
}

cp_mgmt_threat_layer :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_threat_layer: {

		// Collection of tag identifiers.

		tags?: [...]

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
}

cp_mgmt_assign_global_assignment :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_assign_global_assignment: {

		// N/A

		dependent_domains?: [...]

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// N/A

		global_domains?: [...]
	}
}

cp_mgmt_verify_policy :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_verify_policy: {

		policy_package?: string

		// Policy package identified by the name or UID.
	}
}

cp_mgmt_access_rule :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_access_rule: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// True if negate is set for data.

		content_negate?: bool

		// True if negate is set for destination.

		destination_negate?: bool

		// Layer that the rule belongs to identified by the name or UID.

		layer?: string

		// Collection of Network objects identified by the name or UID.

		service?: [...]

		// On which direction the file types processing is applied.

		content_direction?: string

		// List of processed file types that this rule applies on.

		content?: [...]

		// Custom fields.

		custom_fields?: {...}

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Inline Layer identified by the name or UID. Relevant only if "Action" was set to "Apply Layer".

		inline_layer?: string

		// Which Gateways identified by the name or UID to install the policy on.

		install_on?: [...]

		// Object name.

		name: string

		// Position in the rulebase.

		position?: string

		// Comments string.

		comments?: string

		// True if negate is set for source.

		source_negate?: bool

		// List of time objects. For example, "Weekend", "Off-Work", "Every-Day".

		time?: [...]

		// Communities or Directional.

		vpn?: [...]

		// True if negate is set for service.

		service_negate?: bool

		// Action settings.

		action_settings?: {...}

		// Collection of Network objects identified by the name or UID.

		destination?: [...]

		// Enable/Disable the rule.

		enabled?: bool

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Collection of Network objects identified by the name or UID.

		source?: [...]

		// Track Settings.

		track?: {...}

		// User check settings.

		user_check?: {...}

		// a "Accept", "Drop", "Ask", "Inform", "Reject", "User Auth", "Client Auth", "Apply Layer".

		action?: string
	}
}

cp_mgmt_address_range :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_address_range: {

		// NAT settings.

		nat_settings?: {...}

		// Collection of group identifiers.

		groups?: [...]

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Last IPv4 address in the range.

		ipv4_address_last?: string

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Last IPv6 address in the range.

		ipv6_address_last?: string

		// Object name.

		name: string

		// First IPv4 address in the range.

		ipv4_address_first?: string

		// First IPv6 address in the range.

		ipv6_address_first?: string

		// Comments string.

		comments?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Last IP address in the range. If both IPv4 and IPv6 address ranges are required, use the ipv4-address-first and the ipv6-address-first fields instead.

		ip_address_last?: string

		// Color of the object. Should be one of existing colors.

		color?: string

		// First IP address in the range. If both IPv4 and IPv6 address ranges are required, use the ipv4-address-first and the ipv6-address-first fields instead.

		ip_address_first?: string

		// Collection of tag identifiers.

		tags?: [...]
	}
}

cp_mgmt_application_site_category_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_application_site_category_facts: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]
	}
}

cp_mgmt_service_icmp6_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_service_icmp6_facts: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// Indicates whether to calculate and show "groups" field for every object in reply.

		show_membership?: bool
	}
}

cp_mgmt_service_rpc :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_service_rpc: {

		// Comments string.

		comments?: string

		// Collection of group identifiers.

		groups?: [...]

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

		keep_connections_open_after_policy_installation?: bool

		// N/A

		program_number?: int

		// Collection of tag identifiers.

		tags?: [...]

		// Color of the object. Should be one of existing colors.

		color?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Object name.

		name: string
	}
}

cp_mgmt_exception_group_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_exception_group_facts: {

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int
	}
}

cp_mgmt_network :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_network: {

		// IPv6 network address.

		subnet6?: string

		// Collection of tag identifiers.

		tags?: [...]

		// Color of the object. Should be one of existing colors.

		color?: string

		// IPv4 or IPv6 network mask length. If both masks are required use mask-length4 and mask-length6 fields explicitly. Instead of IPv4 mask length it is possible to specify IPv4 mask itself in subnet-mask field.

		mask_length?: int

		// IPv4 network mask.

		subnet_mask?: string

		// IPv4 network address.

		subnet4?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// IPv4 network mask length.

		mask_length4?: int

		// Object name.

		name: string

		// Comments string.

		comments?: string

		// Collection of group identifiers.

		groups?: [...]

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// IPv6 network mask length.

		mask_length6?: int

		// NAT settings.

		nat_settings?: {...}

		// IPv4 or IPv6 network address. If both addresses are required use subnet4 and subnet6 fields explicitly.

		subnet?: string

		// Allow broadcast address inclusion.

		broadcast?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool
	}
}

cp_mgmt_security_zone :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_security_zone: {

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

		// Collection of tag identifiers.

		tags?: [...]
	}
}

cp_mgmt_dynamic_object :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_dynamic_object: {

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Object name.

		name: string

		// Collection of tag identifiers.

		tags?: [...]

		// Color of the object. Should be one of existing colors.

		color?: string

		// Comments string.

		comments?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool
	}
}

cp_mgmt_multicast_address_range :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_multicast_address_range: {

		// Color of the object. Should be one of existing colors.

		color?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Last IPv6 address in the range.

		ipv6_address_last?: string

		// Comments string.

		comments?: string

		// Collection of group identifiers.

		groups?: [...]

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// IPv4 or IPv6 address. If both addresses are required use ipv4-address and ipv6-address fields explicitly.

		ip_address?: string

		// First IPv4 address in the range.

		ipv4_address_first?: string

		// Last IPv4 address in the range.

		ipv4_address_last?: string

		// First IPv6 address in the range.

		ipv6_address_first?: string

		// Last IP address in the range. If both IPv4 and IPv6 address ranges are required, use the ipv4-address-first and the ipv6-address-first fields instead.

		ip_address_last?: string

		// IPv6 address.

		ipv6_address?: string

		// Object name.

		name: string

		// Collection of tag identifiers.

		tags?: [...]

		// First IP address in the range. If both IPv4 and IPv6 address ranges are required, use the ipv4-address-first and the ipv6-address-first fields instead.

		ip_address_first?: string

		// IPv4 address.

		ipv4_address?: string
	}
}

cp_mgmt_multicast_address_range_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_multicast_address_range_facts: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// Indicates whether to calculate and show "groups" field for every object in reply.

		show_membership?: bool
	}
}

cp_mgmt_publish :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_publish: {

		uid?: string

		// Session unique identifier. Specify it to publish a different session than the one you currently use.
	}
}

cp_mgmt_service_dce_rpc :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_service_dce_rpc: {

		// Color of the object. Should be one of existing colors.

		color?: string

		// Comments string.

		comments?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Object name.

		name: string

		// Collection of tag identifiers.

		tags?: [...]

		// Collection of group identifiers.

		groups?: [...]

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Network interface UUID.

		interface_uuid?: string

		// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

		keep_connections_open_after_policy_installation?: bool
	}
}

checkpoint_access_rule_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	checkpoint_access_rule_facts: {

		// Name of the access rule. If not provided, UID is required.

		name?: string

		// UID of the access rule. If not provided, name is required.

		uid?: string

		// Layer the access rule is attached to.

		layer: string
	}
}

checkpoint_run_script :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	checkpoint_run_script: {

		// Script body contents.

		script: string

		// Name of the script.

		script_name: string

		// Targets the script should be run against. Can reference either name or UID.

		targets: [...]
	}
}

cp_mgmt_access_layer_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_access_layer_facts: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]
	}
}

cp_mgmt_host_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_host_facts: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// Indicates whether to calculate and show "groups" field for every object in reply.

		show_membership?: bool
	}
}

cp_mgmt_service_group_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_service_group_facts: {

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// When true, the service group's matched content is displayed as ranges of port numbers rather than service objects.<br />Objects that are not represented using port numbers are presented as objects.<br />The 'members' parameter is omitted from the response and instead the 'ranges' parameter is displayed.

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
}

cp_mgmt_service_icmp6 :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_service_icmp6: {

		// Collection of group identifiers.

		groups?: [...]

		// As listed in, <a href="http,//www.iana.org/assignments/icmp-parameters" target="_blank">RFC 792</a>.

		icmp_code?: int

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Comments string.

		comments?: string

		// As listed in, <a href="http,//www.iana.org/assignments/icmp-parameters" target="_blank">RFC 792</a>.

		icmp_type?: int

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

		keep_connections_open_after_policy_installation?: bool

		// Object name.

		name: string

		// Collection of tag identifiers.

		tags?: [...]

		// Color of the object. Should be one of existing colors.

		color?: string
	}
}

cp_mgmt_session_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_session_facts: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the descending order by the session publish time. This parameter is relevant only for getting few objects.

		order?: [...]

		// Show a list of published sessions.

		view_published_sessions?: bool
	}
}

cp_mgmt_threat_exception :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_threat_exception: {

		// The name of the exception.

		name: string

		// Collection of Network objects identified by the name or UID.

		service?: [...]

		// True if negate is set for Service.

		service_negate?: bool

		// Collection of Network objects identified by the name or UID.

		source?: [...]

		// Comments string.

		comments?: string

		// Collection of Network objects identified by the name or UID.

		destination?: [...]

		// True if negate is set for destination.

		destination_negate?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Collection of objects defining Protected Scope identified by the name or UID.

		protected_scope?: [...]

		// Action-the enforced profile.

		action?: string

		// The UID of the exception-group.

		exception_group_uid?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Position in the rulebase.

		position?: string

		// Which Gateways identified by the name or UID to install the policy on.

		install_on?: [...]

		// Layer that the rule belongs to identified by the name or UID.

		layer?: string

		// Name of the protection or site.

		protection_or_site?: [...]

		// The name of the parent rule.

		rule_name?: string

		// True if negate is set for source.

		source_negate?: bool

		// Packet tracking.

		track?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Enable/Disable the rule.

		enabled?: bool

		// The name of the exception-group.

		exception_group_name?: string

		// True if negate is set for Protected Scope.

		protected_scope_negate?: bool
	}
}

checkpoint_access_rule :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	checkpoint_access_rule: {

		// Name of the access rule.

		name?: string

		// Position of the access rule.

		position?: string

		// State of the access rule (present or absent). Defaults to present.

		state?: string

		// Action of the access rule (accept, drop, inform, etc).

		action?: string

		// Publish the current session if changes have been performed after task completes.

		auto_publish_session?: bool

		// Enabled or disabled flag.

		enabled?: bool

		// Layer to attach the access rule to.

		layer: string

		// Targets to install the package policy on.

		targets?: [...]

		// Install the package policy if changes have been performed after the task completes.

		auto_install_policy?: bool

		// Destination object of the access rule.

		destination?: string

		// Package policy name to be installed.

		policy_package?: string

		// Source object of the access rule.

		source?: string
	}
}

checkpoint_host_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	checkpoint_host_facts: {

		// Name of the host object. If name is not provided, UID is required.

		name?: string

		// UID of the host object. If UID is not provided, name is required.

		uid?: string
	}
}

cp_mgmt_access_role_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_access_role_facts: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]
	}
}

cp_mgmt_threat_layer_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_threat_layer_facts: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]
	}
}

cp_mgmt_threat_profile_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_threat_profile_facts: {

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string
	}
}

cp_mgmt_group_with_exclusion_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_group_with_exclusion_facts: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// When true, the group with exclusion's matched content is displayed as ranges of IP addresses rather than network objects.<br />Objects that are not represented using IP addresses are presented as objects.<br />The 'include' and 'except' parameters are omitted from the response and instead the 'ranges' parameter is displayed.

		show_as_ranges?: bool
	}
}

cp_mgmt_network_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_network_facts: {

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

		order?: [...]
	}
}

cp_mgmt_tag_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_tag_facts: {

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string
	}
}

checkpoint_access_layer_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	checkpoint_access_layer_facts: {

		// Name of the access layer object.

		name?: string

		// UID of access layer object.

		uid?: string
	}
}

cp_mgmt_administrator_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_administrator_facts: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]
	}
}

cp_mgmt_global_assignment :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_global_assignment: {

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

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// N/A

		manage_protection_actions?: bool

		// N/A

		dependent_domain?: string
	}
}

cp_mgmt_put_file :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_put_file: {

		// Comments string.

		comments?: string

		// N/A

		file_content?: string

		// N/A

		file_name?: string

		// N/A

		file_path?: string

		// On what targets to execute this command. Targets may be identified by their name, or object unique identifier.

		targets?: [...]
	}
}

cp_mgmt_service_udp :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_service_udp: {

		// A value of true enables matching by the selected protocol's signature - the signature identifies the protocol as genuine. Select this option to limit the port to the specified protocol. If the selected protocol does not support matching by signature, this field cannot be set to true.

		match_by_protocol_signature?: bool

		// N/A

		accept_replies?: bool

		// Color of the object. Should be one of existing colors.

		color?: string

		// Comments string.

		comments?: string

		// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

		keep_connections_open_after_policy_installation?: bool

		// The number of the port used to provide this service. To specify a port range, place a hyphen between the lowest and highest port numbers, for example 44-55.

		port?: string

		// Select the protocol type associated with the service, and by implication, the management server (if any) that enforces Content Security and Authentication for the service. Selecting a Protocol Type invokes the specific protocol handlers for each protocol type, thus enabling higher level of security by parsing the protocol, and higher level of connectivity by tracking dynamic actions (such as opening of ports).

		protocol?: string

		// Time (in seconds) before the session times out.

		session_timeout?: int

		// Sets short (aggressive) timeouts for idle connections.

		aggressive_aging?: {...}

		// Collection of group identifiers.

		groups?: [...]

		// Indicates whether this service is used when 'Any' is set as the rule's service and there are several service objects with the same source port and protocol.

		match_for_any?: bool

		// Object name.

		name: string

		// Port number for the client side service. If specified, only those Source port Numbers will be Accepted, Dropped, or Rejected during packet inspection. Otherwise, the source port is not inspected.

		source_port?: string

		// Enables state-synchronized High Availability or Load Sharing on a ClusterXL or OPSEC-certified cluster.

		sync_connections_on_cluster?: bool

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Indicates whether this service is a Data Domain service which has been overridden.

		override_default_settings?: bool

		// Collection of tag identifiers.

		tags?: [...]

		// Use default virtual session timeout.

		use_default_session_timeout?: bool
	}
}

cp_mgmt_time :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_time: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Starting time. Note, Each gateway may interpret this time differently according to its time zone.

		start?: {...}

		// Comments string.

		comments?: string

		// End never.

		end_never?: bool

		// Hours recurrence. Note, Each gateway may interpret this time differently according to its time zone.

		hours_ranges?: [...]

		// Object name.

		name: string

		// Color of the object. Should be one of existing colors.

		color?: string

		// End time. Note, Each gateway may interpret this time differently according to its time zone.

		end?: {...}

		// Collection of group identifiers.

		groups?: [...]

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Collection of tag identifiers.

		tags?: [...]

		// Days recurrence.

		recurrence?: {...}

		// Start immediately.

		start_now?: bool
	}
}

cp_mgmt_wildcard_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_wildcard_facts: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]
	}
}

checkpoint_host :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	checkpoint_host: {

		// Publish the current session if changes have been performed after task completes.

		auto_publish_session?: bool

		// IP address of the host object.

		ip_address?: string

		// Name of the access rule.

		name: string

		// Package policy name to be installed.

		policy_package?: string

		// State of the access rule (present or absent). Defaults to present.

		state?: string

		// Targets to install the package policy on.

		targets?: [...]

		// Install the package policy if changes have been performed after the task completes.

		auto_install_policy?: bool
	}
}

cp_mgmt_dns_domain_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_dns_domain_facts: {

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

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
}

cp_mgmt_group_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_group_facts: {

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

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]
	}
}

cp_mgmt_group_with_exclusion :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_group_with_exclusion: {

		// Object name.

		name: string

		// Color of the object. Should be one of existing colors.

		color?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Name or UID of an object which the group excludes.

		except?: string

		// Collection of group identifiers.

		groups?: [...]

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Name or UID of an object which the group includes.

		include?: string

		// Collection of tag identifiers.

		tags?: [...]

		// Comments string.

		comments?: string
	}
}

cp_mgmt_service_group :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_service_group: {

		// Comments string.

		comments?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Collection of group identifiers.

		groups?: [...]

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Collection of Network objects identified by the name or UID.

		members?: [...]

		// Collection of tag identifiers.

		tags?: [...]

		// Color of the object. Should be one of existing colors.

		color?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Object name.

		name: string
	}
}

cp_mgmt_service_other :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_service_other: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Collection of group identifiers.

		groups?: [...]

		// Contains an INSPECT expression that defines the matching criteria. The connection is examined against the expression during the first packet. Example, tcp, dport = 21, direction = 0 matches incoming FTP control connections.

		match?: string

		// Object name.

		name: string

		// Time (in seconds) before the session times out.

		session_timeout?: int

		// Collection of tag identifiers.

		tags?: [...]

		// Comments string.

		comments?: string

		// IP protocol number.

		ip_protocol?: int

		// Indicates whether this service is a Data Domain service which has been overridden.

		override_default_settings?: bool

		// Use default virtual session timeout.

		use_default_session_timeout?: bool

		// Sets short (aggressive) timeouts for idle connections.

		aggressive_aging?: {...}

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

		keep_connections_open_after_policy_installation?: bool

		// Contains an INSPECT expression that defines the action to take if a rule containing this service is matched. Example, set r_mhandler &open_ssl_handler sets a handler on the connection.

		action?: string

		// Color of the object. Should be one of existing colors.

		color?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Indicates whether this service is used when 'Any' is set as the rule's service and there are several service objects with the same source port and protocol.

		match_for_any?: bool

		// Enables state-synchronized High Availability or Load Sharing on a ClusterXL or OPSEC-certified cluster.

		sync_connections_on_cluster?: bool

		// Specifies whether Other Service replies are to be accepted.

		accept_replies?: bool
	}
}

cp_mgmt_threat_profile :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_threat_profile: {

		// Comments string.

		comments?: string

		// Action for protections with high confidence level.

		confidence_level_high?: string

		// Is IPS blade activated.

		ips?: bool

		// IPS blade settings.

		ips_settings?: {...}

		// Is Threat Emulation blade activated.

		threat_emulation?: bool

		// Is Anti-Bot blade activated.

		anti_bot?: bool

		// Deactivate protections by these extended attributes.

		deactivate_protections_by_extended_attributes?: [...]

		// Action for protections with low confidence level.

		confidence_level_low?: string

		// Protections with this severity only will be activated in the profile.

		active_protections_severity?: string

		// Color of the object. Should be one of existing colors.

		color?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Object name.

		name: string

		// Collection of tag identifiers.

		tags?: [...]

		// Whether to activate/deactivate IPS protections according to the extended attributes.

		use_extended_attributes?: bool

		// Protections with this performance impact only will be activated in the profile.

		active_protections_performance_impact?: string

		// Indicates whether the profile should make use of indicators.

		use_indicators?: bool

		// Is Anti-Virus blade activated.

		anti_virus?: bool

		// Action for protections with medium confidence level.

		confidence_level_medium?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Indicators whose action will be overridden in this profile.

		indicator_overrides?: [...]

		// Malicious Mail Policy for MTA Gateways.

		malicious_mail_policy_settings?: {...}

		// Overrides per profile for this protection.

		overrides?: [...]

		// Activate protections by these extended attributes.

		activate_protections_by_extended_attributes?: [...]
	}
}

cp_mgmt_access_layer :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_access_layer: {

		// Color of the object. Should be one of existing colors.

		color?: string

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Comments string.

		comments?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Whether to use X-Forward-For HTTP header, which is added by the  proxy server to keep track of the original source IP.

		detect_using_x_forward_for?: bool

		// Whether this layer is shared.

		shared?: bool

		// Indicates whether to include a cleanup rule in the new layer.

		add_default_rule?: bool

		// Whether to enable Applications & URL Filtering blade on the layer.

		applications_and_url_filtering?: bool

		// Whether to enable Content Awareness blade on the layer.

		content_awareness?: bool

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Object name.

		name: string

		// Collection of tag identifiers.

		tags?: [...]

		// Whether to enable Firewall blade on the layer.

		firewall?: bool

		// The default "catch-all" action for traffic that does not match any explicit or implied rules in the layer.

		implicit_cleanup_action?: string

		// Whether to enable Mobile Access blade on the layer.

		mobile_access?: bool
	}
}

cp_mgmt_access_role :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_access_role: {

		// Machines that can access the system.

		machines?: [...]

		// Remote access clients identified by name or UID.

		remote_access_clients?: string

		// Color of the object. Should be one of existing colors.

		color?: string

		// Comments string.

		comments?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Collection of Network objects identified by the name or UID that can access the system.

		networks?: [...]

		// Collection of tag identifiers.

		tags?: [...]

		// Users that can access the system.

		users?: [...]

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Object name.

		name: string
	}
}

cp_mgmt_group :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_group: {

		// Collection of Network objects identified by the name or UID.

		members?: [...]

		// Comments string.

		comments?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Collection of group identifiers.

		groups?: [...]

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Object name.

		name: string

		// Collection of tag identifiers.

		tags?: [...]

		// Color of the object. Should be one of existing colors.

		color?: string
	}
}

cp_mgmt_run_script :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_run_script: {

		// Script arguments.

		args?: string

		// Comments string.

		comments?: string

		// Script body.

		script?: string

		// Script name.

		script_name?: string

		// On what targets to execute this command. Targets may be identified by their name, or object unique identifier.

		targets?: [...]
	}
}

cp_mgmt_service_rpc_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_service_rpc_facts: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// Indicates whether to calculate and show "groups" field for every object in reply.

		show_membership?: bool
	}
}

cp_mgmt_tag :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_tag: {

		// Collection of tag identifiers.

		tags?: [...]

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
}

cp_mgmt_threat_indicator_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_threat_indicator_facts: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]
	}
}

cp_mgmt_threat_rule :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_threat_rule: {

		// Collection of Network objects identified by the name or UID.

		destination?: [...]

		// True if negate is set for destination.

		destination_negate?: bool

		// Enable/Disable the rule.

		enabled?: bool

		// Object name.

		name: string

		// Position in the rulebase.

		position?: string

		// Threat rule track settings.

		track_settings?: {...}

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Layer that the rule belongs to identified by the name or UID.

		layer?: string

		// True if negate is set for Service.

		service_negate?: bool

		// Collection of Network objects identified by the name or UID.

		source?: [...]

		// Packet tracking.

		track?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Collection of objects defining Protected Scope identified by the name or UID.

		protected_scope?: [...]

		// Collection of Network objects identified by the name or UID.

		service?: [...]

		// True if negate is set for source.

		source_negate?: bool

		// Action-the enforced profile.

		action?: string

		// Comments string.

		comments?: string

		// Which Gateways identified by the name or UID to install the policy on.

		install_on?: [...]

		// True if negate is set for Protected Scope.

		protected_scope_negate?: bool
	}
}

cp_mgmt_access_rule_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_access_rule_facts: {

		// Layer that the rule belongs to identified by the name or UID.

		layer?: string

		// Object name. Should be unique in the domain.

		name?: string

		// N/A

		show_hits?: bool

		// Indicates whether to calculate and show "groups" field for every object in reply.

		show_membership?: bool

		// Indicates whether to dereference "members" field by details level for every object in reply.

		dereference_group_members?: bool

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// N/A

		hits_settings?: {...}

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// When true, the source, destination and services & applications parameters are displayed as ranges of IP addresses and port numbers rather than network objects.<br /> Objects that are not represented using IP addresses or port numbers are presented as objects.<br /> In addition, the response of each rule does not contain the parameters, source, source-negate, destination, destination-negate, service and service-negate, but instead it contains the parameters, source-ranges, destination-ranges and service-ranges.<br /><br /> Note, Requesting to show rules as ranges is limited up to 20 rules per request, otherwise an error is returned. If you wish to request more rules, use the offset and limit parameters to limit your request.

		show_as_ranges?: bool

		// Search expression to filter the rulebase. The provided text should be exactly the same as it would be given in Smart Console. The logical operators in the expression ('AND', 'OR') should be provided in capital letters. If an operator is not used, the default OR operator applies.

		filter?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// Name of the package.

		package?: string

		// Sets filter preferences.

		filter_settings?: {...}

		// N/A

		use_object_dictionary?: bool
	}
}

cp_mgmt_application_site_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_application_site_facts: {

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// Indicates whether to calculate and show "groups" field for every object in reply.

		show_membership?: bool

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
	}
}

cp_mgmt_host :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_host: {

		// IPv4 address.

		ipv4_address?: string

		// IPv6 address.

		ipv6_address?: string

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Comments string.

		comments?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Servers Configuration.

		host_servers?: {...}

		// IPv4 or IPv6 address. If both addresses are required use ipv4-address and ipv6-address fields explicitly.

		ip_address?: string

		// Object name.

		name: string

		// Color of the object. Should be one of existing colors.

		color?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Host interfaces.

		interfaces?: [...]

		// NAT settings.

		nat_settings?: {...}

		// Collection of tag identifiers.

		tags?: [...]

		// Collection of group identifiers.

		groups?: [...]
	}
}

cp_mgmt_service_tcp :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_service_tcp: {

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Indicates whether this service is used when 'Any' is set as the rule's service and there are several service objects with the same source port and protocol.

		match_for_any?: bool

		// Object name.

		name: string

		// Color of the object. Should be one of existing colors.

		color?: string

		// Comments string.

		comments?: string

		// Collection of group identifiers.

		groups?: [...]

		// Use default virtual session timeout.

		use_default_session_timeout?: bool

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// The number of the port used to provide this service. To specify a port range, place a hyphen between the lowest and highest port numbers, for example 44-55.

		port?: string

		// Select the protocol type associated with the service, and by implication, the management server (if any) that enforces Content Security and Authentication for the service. Selecting a Protocol Type invokes the specific protocol handlers for each protocol type, thus enabling higher level of security by parsing the protocol, and higher level of connectivity by tracking dynamic actions (such as opening of ports).

		protocol?: string

		// Time (in seconds) before the session times out.

		session_timeout?: int

		// Collection of tag identifiers.

		tags?: [...]

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// A value of true enables matching by the selected protocol's signature - the signature identifies the protocol as genuine. Select this option to limit the port to the specified protocol. If the selected protocol does not support matching by signature, this field cannot be set to true.

		match_by_protocol_signature?: bool

		// Indicates whether this service is a Data Domain service which has been overridden.

		override_default_settings?: bool

		// Enables state-synchronized High Availability or Load Sharing on a ClusterXL or OPSEC-certified cluster.

		sync_connections_on_cluster?: bool

		// Sets short (aggressive) timeouts for idle connections.

		aggressive_aging?: {...}

		// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

		keep_connections_open_after_policy_installation?: bool

		// Port number for the client side service. If specified, only those Source port Numbers will be Accepted, Dropped, or Rejected during packet inspection. Otherwise, the source port is not inspected.

		source_port?: string
	}
}

cp_mgmt_simple_gateway :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_simple_gateway: {

		// Content Awareness blade enabled.

		content_awareness?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Server(s) to send logs to.

		send_logs_to_server?: [...]

		// Gateway VPN settings.

		vpn_settings?: {...}

		// IPv4 address.

		ipv4_address?: string

		// N/A

		logs_settings?: {...}

		// Threat Emulation blade enabled.

		threat_emulation?: bool

		// Gateway platform version.

		version?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Object name.

		name: string

		// Server(s) to send alerts to.

		send_alerts_to_server?: [...]

		// URL Filtering blade enabled.

		url_filtering?: bool

		// VPN blade enabled.

		vpn?: bool

		// Anti-Bot blade enabled.

		anti_bot?: bool

		// Application Control blade enabled.

		application_control?: bool

		// Comments string.

		comments?: string

		// N/A

		firewall_settings?: {...}

		// Collection of group identifiers.

		groups?: [...]

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// IPv4 or IPv6 address. If both addresses are required use ipv4-address and ipv6-address fields explicitly.

		ip_address?: string

		// Intrusion Prevention System blade enabled.

		ips?: bool

		// Save logs locally on the gateway.

		save_logs_locally?: bool

		// Collection of tag identifiers.

		tags?: [...]

		// N/A

		one_time_password?: string

		// Firewall blade enabled.

		firewall?: bool

		// Backup server(s) to send logs to.

		send_logs_to_backup_server?: [...]

		// Anti-Virus blade enabled.

		anti_virus?: bool

		// Color of the object. Should be one of existing colors.

		color?: string

		// Network interfaces. When a gateway is updated with a new interfaces, the existing interfaces are removed.

		interfaces?: [...]

		// IPv6 address.

		ipv6_address?: string

		// Gateway platform operating system.

		os_name?: string

		// Threat Extraction blade enabled.

		threat_extraction?: bool
	}
}

cp_mgmt_wildcard :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_wildcard: {

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// IPv4 mask wildcard.

		ipv4_mask_wildcard?: string

		// IPv6 address.

		ipv6_address?: string

		// IPv6 mask wildcard.

		ipv6_mask_wildcard?: string

		// Object name.

		name: string

		// Color of the object. Should be one of existing colors.

		color?: string

		// Comments string.

		comments?: string

		// Collection of group identifiers.

		groups?: [...]

		// Collection of tag identifiers.

		tags?: [...]

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// IPv4 address.

		ipv4_address?: string
	}
}

checkpoint_object_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	checkpoint_object_facts: {

		// Filter only by IP address.

		ip_only?: bool

		// Filter expression for search. It accepts AND/OR logical operators and performs a textual and IP address search. To search only by IP address, set ip_only argument to True. which can be filtered with the filter argument.

		object_filter?: string

		// Type of the object to search. Must be a valid API resource name

		object_type?: string

		// UID of the object. If UID is not provided, it will do a full search which can be filtered with the filter argument.

		uid?: string
	}
}

cp_mgmt_application_site_category :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_application_site_category: {

		// Color of the object. Should be one of existing colors.

		color?: string

		// Comments string.

		comments?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// N/A

		description?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Collection of group identifiers.

		groups?: [...]

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Object name.

		name: string

		// Collection of tag identifiers.

		tags?: [...]
	}
}

cp_mgmt_mds_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_mds_facts: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]
	}
}

cp_mgmt_threat_rule_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_threat_rule_facts: {

		// Indicates whether to dereference "members" field by details level for every object in reply.

		dereference_group_members?: bool

		// Search expression to filter the rulebase. The provided text should be exactly the same as it would be given in Smart Console. The logical operators in the expression ('AND', 'OR') should be provided in capital letters. If an operator is not used, the default OR operator applies.

		filter?: string

		// Sets filter preferences.

		filter_settings?: {...}

		// Layer that the rule belongs to identified by the name or UID.

		layer?: string

		// Object name. Should be unique in the domain.

		name?: string

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// Name of the package.

		package?: string

		// N/A

		use_object_dictionary?: bool

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Indicates whether to calculate and show "groups" field for every object in reply.

		show_membership?: bool
	}
}

cp_mgmt_vpn_community_star_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_vpn_community_star_facts: {

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string
	}
}

cp_mgmt_administrator :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_administrator: {

		// Authentication method.

		authentication_method?: string

		// Administrator multi-domain profile.

		multi_domain_profile?: string

		// Object name.

		name: string

		// Administrator permissions profile. Permissions profile should not be provided when multi-domain-profile is set to "Multi-Domain Super User" or "Domain Super User".

		permissions_profile?: [...]

		// TACACS server object identified by the name or UID. Must be set when "authentication-method" was selected to be "TACACS".

		tacacs_server?: string

		// Format, YYYY-MM-DD, YYYY-mm-ddThh,mm,ss.

		expiration_date?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Administrator password.

		password?: string

		// RADIUS server object identified by the name or UID. Must be set when "authentication-method" was selected to be "RADIUS".

		radius_server?: string

		// Color of the object. Should be one of existing colors.

		color?: string

		// Comments string.

		comments?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Administrator password hash.

		password_hash?: string

		// Administrator email.

		email?: string

		// True if administrator must change password on the next login.

		must_change_password?: bool

		// Administrator phone number.

		phone_number?: string

		// Collection of tag identifiers.

		tags?: [...]
	}
}

cp_mgmt_discard :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_discard: {

		uid?: string

		// Session unique identifier. Specify it to discard a different session than the one you currently use.
	}
}

cp_mgmt_service_sctp_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_service_sctp_facts: {

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// Indicates whether to calculate and show "groups" field for every object in reply.

		show_membership?: bool

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string
	}
}

cp_mgmt_application_site_group_facts :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_application_site_group_facts: {

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// Indicates whether to calculate and show "groups" field for every object in reply.

		show_membership?: bool

		// Indicates whether to dereference "members" field by details level for every object in reply.

		dereference_group_members?: bool

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int
	}
}

cp_mgmt_exception_group :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_exception_group: {

		// The threat profile to apply this group to in the case of apply-on threat-rules-with-specific-profile.

		applied_profile?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Object name.

		name: string

		// Collection of tag identifiers.

		tags?: [...]

		// The threat rules to apply this group on in the case of apply-on manually-select-threat-rules.

		applied_threat_rules?: {...}

		// An exception group can be set to apply on all threat rules, all threat rules which have a specific profile, or those rules manually chosen by the user.

		apply_on?: string

		// Color of the object. Should be one of existing colors.

		color?: string

		// Comments string.

		comments?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool
	}
}

cp_mgmt_service_icmp :: {
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	cp_mgmt_service_icmp: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// As listed in, <a href="http,//www.iana.org/assignments/icmp-parameters" target="_blank">RFC 792</a>.

		icmp_code?: int

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

		// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

		keep_connections_open_after_policy_installation?: bool

		// Collection of tag identifiers.

		tags?: [...]

		// Collection of group identifiers.

		groups?: [...]

		// As listed in, <a href="http,//www.iana.org/assignments/icmp-parameters" target="_blank">RFC 792</a>.

		icmp_type?: int
	}
}
