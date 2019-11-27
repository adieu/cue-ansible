package check_point

cp_mgmt_access_layer :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_access_layer: {

		// Color of the object. Should be one of existing colors.

		color?: string

		// Whether to enable Content Awareness blade on the layer.

		content_awareness?: bool

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// The default "catch-all" action for traffic that does not match any explicit or implied rules in the layer.

		implicit_cleanup_action?: string

		// Object name.

		name: string

		// Indicates whether to include a cleanup rule in the new layer.

		add_default_rule?: bool

		// Whether to use X-Forward-For HTTP header, which is added by the  proxy server to keep track of the original source IP.

		detect_using_x_forward_for?: bool

		// Whether to enable Firewall blade on the layer.

		firewall?: bool

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Whether to enable Mobile Access blade on the layer.

		mobile_access?: bool

		// Whether to enable Applications & URL Filtering blade on the layer.

		applications_and_url_filtering?: bool

		// Comments string.

		comments?: string

		// Whether this layer is shared.

		shared?: bool

		// Collection of tag identifiers.

		tags?: [...]
	}
}

cp_mgmt_administrator :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_administrator: {

		// Format, YYYY-MM-DD, YYYY-mm-ddThh,mm,ss.

		expiration_date?: string

		// Administrator multi-domain profile.

		multi_domain_profile?: string

		// True if administrator must change password on the next login.

		must_change_password?: bool

		// Comments string.

		comments?: string

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Object name.

		name: string

		// Administrator password.

		password?: string

		// Administrator permissions profile. Permissions profile should not be provided when multi-domain-profile is set to "Multi-Domain Super User" or "Domain Super User".

		permissions_profile?: [...]

		// RADIUS server object identified by the name or UID. Must be set when "authentication-method" was selected to be "RADIUS".

		radius_server?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Administrator email.

		email?: string

		// Administrator phone number.

		phone_number?: string

		// Authentication method.

		authentication_method?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Administrator password hash.

		password_hash?: string

		// TACACS server object identified by the name or UID. Must be set when "authentication-method" was selected to be "TACACS".

		tacacs_server?: string

		// Collection of tag identifiers.

		tags?: [...]

		// Color of the object. Should be one of existing colors.

		color?: string
	}
}

cp_mgmt_assign_global_assignment :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_assign_global_assignment: {

		// N/A

		global_domains?: [...]

		// N/A

		dependent_domains?: [...]

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string
	}
}

cp_mgmt_package_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_package_facts: {

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

cp_mgmt_service_icmp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_service_icmp: {

		// Color of the object. Should be one of existing colors.

		color?: string

		// As listed in, <a href="http,//www.iana.org/assignments/icmp-parameters" target="_blank">RFC 792</a>.

		icmp_code?: int

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Object name.

		name: string

		// Collection of tag identifiers.

		tags?: [...]

		// Comments string.

		comments?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Collection of group identifiers.

		groups?: [...]

		// As listed in, <a href="http,//www.iana.org/assignments/icmp-parameters" target="_blank">RFC 792</a>.

		icmp_type?: int

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

		keep_connections_open_after_policy_installation?: bool
	}
}

cp_mgmt_threat_layer_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_threat_layer_facts: {

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

checkpoint_access_rule :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	checkpoint_access_rule: {

		// Action of the access rule (accept, drop, inform, etc).

		action?: string

		// Publish the current session if changes have been performed after task completes.

		auto_publish_session?: bool

		// Enabled or disabled flag.

		enabled?: bool

		// Layer to attach the access rule to.

		layer: string

		// Source object of the access rule.

		source?: string

		// Targets to install the package policy on.

		targets?: [...]

		// Install the package policy if changes have been performed after the task completes.

		auto_install_policy?: bool

		// Destination object of the access rule.

		destination?: string

		// Name of the access rule.

		name?: string

		// Package policy name to be installed.

		policy_package?: string

		// Position of the access rule.

		position?: string

		// State of the access rule (present or absent). Defaults to present.

		state?: string
	}
}

checkpoint_task_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	checkpoint_task_facts: {

		task_id: string

		// ID of the task object.
	}
}

cp_mgmt_dynamic_object_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_dynamic_object_facts: {

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

cp_mgmt_global_assignment_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_global_assignment_facts: {

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

		// N/A

		dependent_domain?: string
	}
}

cp_mgmt_network :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_network: {

		// IPv6 network mask length.

		mask_length6?: int

		// IPv4 network mask.

		subnet_mask?: string

		// Collection of tag identifiers.

		tags?: [...]

		// Collection of group identifiers.

		groups?: [...]

		// NAT settings.

		nat_settings?: {...}

		// IPv4 or IPv6 network address. If both addresses are required use subnet4 and subnet6 fields explicitly.

		subnet?: string

		// IPv6 network address.

		subnet6?: string

		// IPv4 network address.

		subnet4?: string

		// Allow broadcast address inclusion.

		broadcast?: string

		// Color of the object. Should be one of existing colors.

		color?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Object name.

		name: string

		// Comments string.

		comments?: string

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// IPv4 or IPv6 network mask length. If both masks are required use mask-length4 and mask-length6 fields explicitly. Instead of IPv4 mask length it is possible to specify IPv4 mask itself in subnet-mask field.

		mask_length?: int

		// IPv4 network mask length.

		mask_length4?: int
	}
}

cp_mgmt_tag_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_tag_facts: {

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

cp_mgmt_threat_protection_override :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_threat_protection_override: {

		// Protection comments.

		comments?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Tag the protection with pre-defined follow-up flag.

		follow_up?: bool

		// Object name.

		name?: string

		// Overrides per profile for this protection<br> Note, Remove override for Core protections removes only the action's override. Remove override for Threat Cloud protections removes the action, track and packet captures.

		overrides?: [...]
	}
}

cp_mgmt_access_rule :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_access_rule: {

		// List of processed file types that this rule applies on.

		content?: [...]

		// Custom fields.

		custom_fields?: {...}

		// Collection of Network objects identified by the name or UID.

		destination?: [...]

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// True if negate is set for service.

		service_negate?: bool

		// True if negate is set for source.

		source_negate?: bool

		// a "Accept", "Drop", "Ask", "Inform", "Reject", "User Auth", "Client Auth", "Apply Layer".

		action?: string

		// Communities or Directional.

		vpn?: [...]

		// User check settings.

		user_check?: {...}

		// Inline Layer identified by the name or UID. Relevant only if "Action" was set to "Apply Layer".

		inline_layer?: string

		// Which Gateways identified by the name or UID to install the policy on.

		install_on?: [...]

		// Layer that the rule belongs to identified by the name or UID.

		layer?: string

		// Comments string.

		comments?: string

		// On which direction the file types processing is applied.

		content_direction?: string

		// True if negate is set for data.

		content_negate?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Object name.

		name: string

		// Collection of Network objects identified by the name or UID.

		service?: [...]

		// Collection of Network objects identified by the name or UID.

		source?: [...]

		// Track Settings.

		track?: {...}

		// Action settings.

		action_settings?: {...}

		// Enable/Disable the rule.

		enabled?: bool

		// Position in the rulebase.

		position?: string

		// List of time objects. For example, "Weekend", "Off-Work", "Every-Day".

		time?: [...]

		// True if negate is set for destination.

		destination_negate?: bool
	}
}

cp_mgmt_address_range :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_address_range: {

		// Color of the object. Should be one of existing colors.

		color?: string

		// First IP address in the range. If both IPv4 and IPv6 address ranges are required, use the ipv4-address-first and the ipv6-address-first fields instead.

		ip_address_first?: string

		// Last IP address in the range. If both IPv4 and IPv6 address ranges are required, use the ipv4-address-first and the ipv6-address-first fields instead.

		ip_address_last?: string

		// Last IPv4 address in the range.

		ipv4_address_last?: string

		// NAT settings.

		nat_settings?: {...}

		// Collection of tag identifiers.

		tags?: [...]

		// First IPv6 address in the range.

		ipv6_address_first?: string

		// Comments string.

		comments?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Last IPv6 address in the range.

		ipv6_address_last?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Collection of group identifiers.

		groups?: [...]

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// First IPv4 address in the range.

		ipv4_address_first?: string

		// Object name.

		name: string
	}
}

cp_mgmt_application_site_category_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_application_site_category_facts: {

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

cp_mgmt_dns_domain :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_dns_domain: {

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

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Whether to match sub-domains in addition to the domain itself.

		is_sub_domain?: bool
	}
}

cp_mgmt_group_with_exclusion :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_group_with_exclusion: {

		// Name or UID of an object which the group includes.

		include?: string

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

		// Name or UID of an object which the group excludes.

		except?: string

		// Collection of group identifiers.

		groups?: [...]

		// Object name.

		name: string

		// Collection of tag identifiers.

		tags?: [...]
	}
}

cp_mgmt_wildcard :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_wildcard: {

		// Object name.

		name: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// IPv4 address.

		ipv4_address?: string

		// Collection of group identifiers.

		groups?: [...]

		// IPv4 mask wildcard.

		ipv4_mask_wildcard?: string

		// IPv6 address.

		ipv6_address?: string

		// IPv6 mask wildcard.

		ipv6_mask_wildcard?: string

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

cp_mgmt_run_ips_update :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_run_ips_update: {

		package_path?: string

		// Offline update package path.
	}
}

cp_mgmt_service_icmp6_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
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

cp_mgmt_simple_gateway :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_simple_gateway: {

		// Content Awareness blade enabled.

		content_awareness?: bool

		// Save logs locally on the gateway.

		save_logs_locally?: bool

		// Gateway VPN settings.

		vpn_settings?: {...}

		// VPN blade enabled.

		vpn?: bool

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Collection of tag identifiers.

		tags?: [...]

		// Threat Extraction blade enabled.

		threat_extraction?: bool

		// Gateway platform version.

		version?: string

		// Server(s) to send alerts to.

		send_alerts_to_server?: [...]

		// Backup server(s) to send logs to.

		send_logs_to_backup_server?: [...]

		// Anti-Bot blade enabled.

		anti_bot?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// IPv4 address.

		ipv4_address?: string

		// Object name.

		name: string

		// Firewall blade enabled.

		firewall?: bool

		// N/A

		firewall_settings?: {...}

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// URL Filtering blade enabled.

		url_filtering?: bool

		// IPv6 address.

		ipv6_address?: string

		// N/A

		logs_settings?: {...}

		// Comments string.

		comments?: string

		// Collection of group identifiers.

		groups?: [...]

		// Network interfaces. When a gateway is updated with a new interfaces, the existing interfaces are removed.

		interfaces?: [...]

		// IPv4 or IPv6 address. If both addresses are required use ipv4-address and ipv6-address fields explicitly.

		ip_address?: string

		// Anti-Virus blade enabled.

		anti_virus?: bool

		// Application Control blade enabled.

		application_control?: bool

		// Color of the object. Should be one of existing colors.

		color?: string

		// Gateway platform operating system.

		os_name?: string

		// Intrusion Prevention System blade enabled.

		ips?: bool

		// N/A

		one_time_password?: string

		// Server(s) to send logs to.

		send_logs_to_server?: [...]

		// Threat Emulation blade enabled.

		threat_emulation?: bool
	}
}

cp_mgmt_threat_rule_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_threat_rule_facts: {

		// Search expression to filter the rulebase. The provided text should be exactly the same as it would be given in Smart Console. The logical operators in the expression ('AND', 'OR') should be provided in capital letters. If an operator is not used, the default OR operator applies.

		filter?: string

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

		// Indicates whether to dereference "members" field by details level for every object in reply.

		dereference_group_members?: bool

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Sets filter preferences.

		filter_settings?: {...}

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Indicates whether to calculate and show "groups" field for every object in reply.

		show_membership?: bool
	}
}

checkpoint_access_layer_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	checkpoint_access_layer_facts: {

		// Name of the access layer object.

		name?: string

		// UID of access layer object.

		uid?: string
	}
}

checkpoint_host :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	checkpoint_host: {

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

		// Publish the current session if changes have been performed after task completes.

		auto_publish_session?: bool

		// IP address of the host object.

		ip_address?: string
	}
}

cp_mgmt_application_site_category :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_application_site_category: {

		// Color of the object. Should be one of existing colors.

		color?: string

		// Comments string.

		comments?: string

		// N/A

		description?: string

		// Collection of tag identifiers.

		tags?: [...]

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
	}
}

cp_mgmt_service_tcp_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_service_tcp_facts: {

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

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string
	}
}

cp_mgmt_threat_indicator :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_threat_indicator: {

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Object name.

		name: string

		// The indicator's observables.

		observables?: [...]

		// The contents of a file containing the indicator's observables.

		observables_raw_data?: string

		// Color of the object. Should be one of existing colors.

		color?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Profiles in which to override the indicator's default action.

		profile_overrides?: [...]

		// Collection of tag identifiers.

		tags?: [...]

		// The indicator's action.

		action?: string

		// Comments string.

		comments?: string
	}
}

cp_mgmt_threat_profile :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_threat_profile: {

		// Is Anti-Bot blade activated.

		anti_bot?: bool

		// Color of the object. Should be one of existing colors.

		color?: string

		// Malicious Mail Policy for MTA Gateways.

		malicious_mail_policy_settings?: {...}

		// Activate protections by these extended attributes.

		activate_protections_by_extended_attributes?: [...]

		// Comments string.

		comments?: string

		// Action for protections with medium confidence level.

		confidence_level_medium?: string

		// Indicators whose action will be overridden in this profile.

		indicator_overrides?: [...]

		// Overrides per profile for this protection.

		overrides?: [...]

		// Protections with this performance impact only will be activated in the profile.

		active_protections_performance_impact?: string

		// Protections with this severity only will be activated in the profile.

		active_protections_severity?: string

		// Action for protections with high confidence level.

		confidence_level_high?: string

		// Action for protections with low confidence level.

		confidence_level_low?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Object name.

		name: string

		// Whether to activate/deactivate IPS protections according to the extended attributes.

		use_extended_attributes?: bool

		// Is Anti-Virus blade activated.

		anti_virus?: bool

		// Deactivate protections by these extended attributes.

		deactivate_protections_by_extended_attributes?: [...]

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Is IPS blade activated.

		ips?: bool

		// IPS blade settings.

		ips_settings?: {...}

		// Collection of tag identifiers.

		tags?: [...]

		// Is Threat Emulation blade activated.

		threat_emulation?: bool

		// Indicates whether the profile should make use of indicators.

		use_indicators?: bool
	}
}

checkpoint_session :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	checkpoint_session: {

		// Action to perform on the session object. Valid choices are published and discarded.

		state?: string

		// UID of the session.

		uid: string
	}
}

cp_mgmt_mds_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_mds_facts: {

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

cp_mgmt_put_file :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_put_file: {

		// N/A

		file_name?: string

		// N/A

		file_path?: string

		// On what targets to execute this command. Targets may be identified by their name, or object unique identifier.

		targets?: [...]

		// Comments string.

		comments?: string

		// N/A

		file_content?: string
	}
}

cp_mgmt_service_icmp6 :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_service_icmp6: {

		// Color of the object. Should be one of existing colors.

		color?: string

		// As listed in, <a href="http,//www.iana.org/assignments/icmp-parameters" target="_blank">RFC 792</a>.

		icmp_code?: int

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Object name.

		name: string

		// Collection of tag identifiers.

		tags?: [...]

		// Comments string.

		comments?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Collection of group identifiers.

		groups?: [...]

		// As listed in, <a href="http,//www.iana.org/assignments/icmp-parameters" target="_blank">RFC 792</a>.

		icmp_type?: int

		// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

		keep_connections_open_after_policy_installation?: bool
	}
}

cp_mgmt_service_other_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
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

cp_mgmt_service_sctp_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_service_sctp_facts: {

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

cp_mgmt_session_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
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

cp_mgmt_security_zone_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_security_zone_facts: {

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

checkpoint_object_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
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

cp_mgmt_access_role :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_access_role: {

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Machines that can access the system.

		machines?: [...]

		// Object name.

		name: string

		// Collection of Network objects identified by the name or UID that can access the system.

		networks?: [...]

		// Color of the object. Should be one of existing colors.

		color?: string

		// Comments string.

		comments?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Users that can access the system.

		users?: [...]

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Remote access clients identified by name or UID.

		remote_access_clients?: string

		// Collection of tag identifiers.

		tags?: [...]
	}
}

cp_mgmt_access_role_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_access_role_facts: {

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

cp_mgmt_application_site_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_application_site_facts: {

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

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
	}
}

cp_mgmt_group_with_exclusion_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_group_with_exclusion_facts: {

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

		order?: [...]
	}
}

cp_mgmt_network_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_network_facts: {

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

cp_mgmt_security_zone :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_security_zone: {

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

		// Apply changes ignoring warnings.

		ignore_warnings?: bool
	}
}

cp_mgmt_service_dce_rpc_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_service_dce_rpc_facts: {

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
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_tag: {

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

		// Color of the object. Should be one of existing colors.

		color?: string

		// Comments string.

		comments?: string
	}
}

cp_mgmt_wildcard_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_wildcard_facts: {

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

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

cp_publish :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_publish: {

		uid?: string

		// Session unique identifier. Specify it to publish a different session than the one you currently use.
	}
}

cp_mgmt_threat_exception_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_threat_exception_facts: {

		// Sets filter preferences.

		filter_settings?: {...}

		// The name of the layer containing the parent threat rule. This parameter is relevant only for getting few objects.

		name?: string

		// The name of the parent rule.

		rule_name?: string

		// N/A

		use_object_dictionary?: bool

		// Indicates whether to dereference "members" field by details level for every object in reply.

		dereference_group_members?: bool

		// The UID of the exception-group.

		exception_group_uid?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// Name of the package.

		package?: string

		// Search expression to filter the rulebase. The provided text should be exactly the same as it would be given in Smart Console. The logical operators in the expression ('AND', 'OR') should be provided in capital letters. If an operator is not used, the default OR operator applies.

		filter?: string

		// Layer that the rule belongs to identified by the name or UID.

		layer?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// Indicates whether to calculate and show "groups" field for every object in reply.

		show_membership?: bool

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// The name of the exception-group.

		exception_group_name?: string
	}
}

cp_mgmt_vpn_community_meshed_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_vpn_community_meshed_facts: {

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

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

cp_mgmt_address_range_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_address_range_facts: {

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

cp_mgmt_run_script :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
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

cp_mgmt_service_dce_rpc :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_service_dce_rpc: {

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

		// Network interface UUID.

		interface_uuid?: string

		// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

		keep_connections_open_after_policy_installation?: bool

		// Object name.

		name: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Collection of group identifiers.

		groups?: [...]
	}
}

cp_mgmt_threat_exception :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_threat_exception: {

		// Collection of Network objects identified by the name or UID.

		service?: [...]

		// Collection of Network objects identified by the name or UID.

		destination?: [...]

		// Enable/Disable the rule.

		enabled?: bool

		// Which Gateways identified by the name or UID to install the policy on.

		install_on?: [...]

		// Collection of objects defining Protected Scope identified by the name or UID.

		protected_scope?: [...]

		// True if negate is set for destination.

		destination_negate?: bool

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Layer that the rule belongs to identified by the name or UID.

		layer?: string

		// Name of the protection or site.

		protection_or_site?: [...]

		// True if negate is set for Protected Scope.

		protected_scope_negate?: bool

		// Collection of Network objects identified by the name or UID.

		source?: [...]

		// True if negate is set for source.

		source_negate?: bool

		// Action-the enforced profile.

		action?: string

		// Comments string.

		comments?: string

		// The name of the exception-group.

		exception_group_name?: string

		// The UID of the exception-group.

		exception_group_uid?: string

		// The name of the parent rule.

		rule_name?: string

		// True if negate is set for Service.

		service_negate?: bool

		// Packet tracking.

		track?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// The name of the exception.

		name: string

		// Position in the rulebase.

		position?: string
	}
}

cp_mgmt_threat_indicator_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_threat_indicator_facts: {

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

cp_mgmt_threat_rule :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_threat_rule: {

		// True if negate is set for destination.

		destination_negate?: bool

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Position in the rulebase.

		position?: string

		// Collection of Network objects identified by the name or UID.

		destination?: [...]

		// Which Gateways identified by the name or UID to install the policy on.

		install_on?: [...]

		// Collection of objects defining Protected Scope identified by the name or UID.

		protected_scope?: [...]

		// Collection of Network objects identified by the name or UID.

		service?: [...]

		// True if negate is set for source.

		source_negate?: bool

		// Packet tracking.

		track?: string

		// Threat rule track settings.

		track_settings?: {...}

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Enable/Disable the rule.

		enabled?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Layer that the rule belongs to identified by the name or UID.

		layer?: string

		// True if negate is set for Protected Scope.

		protected_scope_negate?: bool

		// Collection of Network objects identified by the name or UID.

		source?: [...]

		// Action-the enforced profile.

		action?: string

		// Comments string.

		comments?: string

		// Object name.

		name: string

		// True if negate is set for Service.

		service_negate?: bool
	}
}

cp_mgmt_vpn_community_star_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_vpn_community_star_facts: {

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

checkpoint_access_rule_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	checkpoint_access_rule_facts: {

		// Layer the access rule is attached to.

		layer: string

		// Name of the access rule. If not provided, UID is required.

		name?: string

		// UID of the access rule. If not provided, name is required.

		uid?: string
	}
}

cp_mgmt_group :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_group: {

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Collection of Network objects identified by the name or UID.

		members?: [...]

		// Collection of tag identifiers.

		tags?: [...]

		// Color of the object. Should be one of existing colors.

		color?: string

		// Comments string.

		comments?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Collection of group identifiers.

		groups?: [...]

		// Object name.

		name: string
	}
}

cp_mgmt_group_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
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

cp_mgmt_service_group :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_service_group: {

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Color of the object. Should be one of existing colors.

		color?: string

		// Collection of group identifiers.

		groups?: [...]

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Collection of Network objects identified by the name or UID.

		members?: [...]

		// Object name.

		name: string

		// Collection of tag identifiers.

		tags?: [...]

		// Comments string.

		comments?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string
	}
}

cp_mgmt_access_layer_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
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

cp_mgmt_dns_domain_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_dns_domain_facts: {

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

cp_mgmt_exception_group_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
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

cp_mgmt_service_rpc_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
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

cp_mgmt_time_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
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

cp_mgmt_host :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_host: {

		// Color of the object. Should be one of existing colors.

		color?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Servers Configuration.

		host_servers?: {...}

		// IPv4 or IPv6 address. If both addresses are required use ipv4-address and ipv6-address fields explicitly.

		ip_address?: string

		// IPv6 address.

		ipv6_address?: string

		// Object name.

		name: string

		// Collection of tag identifiers.

		tags?: [...]

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// NAT settings.

		nat_settings?: {...}

		// Collection of group identifiers.

		groups?: [...]

		// Comments string.

		comments?: string

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Host interfaces.

		interfaces?: [...]

		// IPv4 address.

		ipv4_address?: string
	}
}

cp_mgmt_package :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_package: {

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Object name.

		name: string

		// QoS policy type.

		qos_policy_type?: string

		// True - enables, False - disables access & NAT policies, empty - nothing is changed.

		access?: bool

		// Access policy layers.

		access_layers?: {...}

		// Color of the object. Should be one of existing colors.

		color?: string

		// True - enables, False - disables Desktop security policy, empty - nothing is changed.

		desktop_security?: bool

		// Threat policy layers.

		threat_layers?: {...}

		// True - enables, False - disables Threat policy, empty - nothing is changed.

		threat_prevention?: bool

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Which Gateways identified by the name or UID to install the policy on.

		installation_targets?: [...]

		// True - enables, False - disables QoS policy, empty - nothing is changed.

		qos?: bool

		// Collection of tag identifiers.

		tags?: [...]

		// Comments string.

		comments?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// True - enables, False - disables VPN traditional mode, empty - nothing is changed.

		vpn_traditional_mode?: bool
	}
}

cp_mgmt_service_sctp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_service_sctp: {

		// Collection of group identifiers.

		groups?: [...]

		// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

		keep_connections_open_after_policy_installation?: bool

		// Time (in seconds) before the session times out.

		session_timeout?: int

		// Sets short (aggressive) timeouts for idle connections.

		aggressive_aging?: {...}

		// Indicates whether this service is used when 'Any' is set as the rule's service and there are several service objects with the same source port and protocol.

		match_for_any?: bool

		// Port number. To specify a port range add a hyphen between the lowest and the highest port numbers, for example 44-45.

		port?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Source port number. To specify a port range add a hyphen between the lowest and the highest port numbers, for example 44-45.

		source_port?: string

		// Collection of tag identifiers.

		tags?: [...]

		// Color of the object. Should be one of existing colors.

		color?: string

		// Comments string.

		comments?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Use default virtual session timeout.

		use_default_session_timeout?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Object name.

		name: string

		// Enables state-synchronized High Availability or Load Sharing on a ClusterXL or OPSEC-certified cluster.

		sync_connections_on_cluster?: bool
	}
}

cp_mgmt_threat_profile_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_threat_profile_facts: {

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

cp_mgmt_vpn_community_star :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_vpn_community_star: {

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Object name.

		name: string

		// The encryption method to be used.

		encryption_method?: string

		// Ike Phase 1 settings. Only applicable when the encryption-suite is set to [custom].

		ike_phase_1?: {...}

		// Collection of tag identifiers.

		tags?: [...]

		// Indicates whether the shared secret should be used for all external gateways.

		use_shared_secret?: bool

		// The encryption suite to be used.

		encryption_suite?: string

		// Color of the object. Should be one of existing colors.

		color?: string

		// Collection of Gateway objects representing satellite gateways identified by the name or UID.

		satellite_gateways?: [...]

		// Shared secrets for external gateways.

		shared_secrets?: [...]

		// Collection of Gateway objects representing center gateways identified by the name or UID.

		center_gateways?: [...]

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Ike Phase 2 settings. Only applicable when the encryption-suite is set to [custom].

		ike_phase_2?: {...}

		// Indicates whether the meshed community is in center.

		mesh_center_gateways?: bool

		// Comments string.

		comments?: string
	}
}

cp_mgmt_vpn_community_meshed :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_vpn_community_meshed: {

		// The encryption suite to be used.

		encryption_suite?: string

		// Collection of Gateway objects identified by the name or UID.

		gateways?: [...]

		// Color of the object. Should be one of existing colors.

		color?: string

		// Shared secrets for external gateways.

		shared_secrets?: [...]

		// Ike Phase 2 settings. Only applicable when the encryption-suite is set to [custom].

		ike_phase_2?: {...}

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Ike Phase 1 settings. Only applicable when the encryption-suite is set to [custom].

		ike_phase_1?: {...}

		// Object name.

		name: string

		// Comments string.

		comments?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Collection of tag identifiers.

		tags?: [...]

		// Indicates whether the shared secret should be used for all external gateways.

		use_shared_secret?: bool

		// The encryption method to be used.

		encryption_method?: string
	}
}

checkpoint_run_script :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	checkpoint_run_script: {

		// Script body contents.

		script: string

		// Name of the script.

		script_name: string

		// Targets the script should be run against. Can reference either name or UID.

		targets: [...]
	}
}

cp_mgmt_administrator_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_administrator_facts: {

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

cp_mgmt_application_site :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_application_site: {

		// Color of the object. Should be one of existing colors.

		color?: string

		// A description for the application.

		description?: string

		// Collection of group identifiers.

		groups?: [...]

		// Object name.

		name: string

		// Comments string.

		comments?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Used to configure or edit the additional categories of a custom application / site used in the Application and URL Filtering or Threat Prevention.

		additional_categories?: [...]

		// Application signature generated by <a href="https,//supportcenter.checkpoint.com/supportcenter/portal?eventSubmit_doGoviewsolutiondetails=&solutionid=sk103051">Signature Tool</a>.

		application_signature?: string

		// Collection of tag identifiers.

		tags?: [...]

		// States whether the URL is defined as a Regular Expression or not.

		urls_defined_as_regular_expression?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Each application is assigned to one primary category based on its most defining aspect.

		primary_category?: string

		// URLs that determine this particular application.

		url_list?: [...]
	}
}

cp_mgmt_discard :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_discard: {

		uid?: string

		// Session unique identifier. Specify it to discard a different session than the one you currently use.
	}
}

cp_mgmt_publish :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_publish: {

		uid?: string

		// Session unique identifier. Specify it to publish a different session than the one you currently use.
	}
}

cp_mgmt_service_other :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_service_other: {

		// Comments string.

		comments?: string

		// Contains an INSPECT expression that defines the matching criteria. The connection is examined against the expression during the first packet. Example, tcp, dport = 21, direction = 0 matches incoming FTP control connections.

		match?: string

		// Object name.

		name: string

		// Enables state-synchronized High Availability or Load Sharing on a ClusterXL or OPSEC-certified cluster.

		sync_connections_on_cluster?: bool

		// Collection of tag identifiers.

		tags?: [...]

		// Specifies whether Other Service replies are to be accepted.

		accept_replies?: bool

		// Collection of group identifiers.

		groups?: [...]

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// IP protocol number.

		ip_protocol?: int

		// Use default virtual session timeout.

		use_default_session_timeout?: bool

		// Sets short (aggressive) timeouts for idle connections.

		aggressive_aging?: {...}

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Indicates whether this service is a Data Domain service which has been overridden.

		override_default_settings?: bool

		// Contains an INSPECT expression that defines the action to take if a rule containing this service is matched. Example, set r_mhandler &open_ssl_handler sets a handler on the connection.

		action?: string

		// Color of the object. Should be one of existing colors.

		color?: string

		// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

		keep_connections_open_after_policy_installation?: bool

		// Indicates whether this service is used when 'Any' is set as the rule's service and there are several service objects with the same source port and protocol.

		match_for_any?: bool

		// Time (in seconds) before the session times out.

		session_timeout?: int
	}
}

cp_mgmt_simple_gateway_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
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

cp_mgmt_dynamic_object :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_dynamic_object: {

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

cp_mgmt_service_udp_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_service_udp_facts: {

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

cp_mgmt_threat_layer :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_threat_layer: {

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

		// Collection of tag identifiers.

		tags?: [...]
	}
}

cp_mgmt_access_rule_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_access_rule_facts: {

		// Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.

		order?: [...]

		// N/A

		use_object_dictionary?: bool

		// Sets filter preferences.

		filter_settings?: {...}

		// Object name. Should be unique in the domain.

		name?: string

		// Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.

		offset?: int

		// When true, the source, destination and services & applications parameters are displayed as ranges of IP addresses and port numbers rather than network objects.<br /> Objects that are not represented using IP addresses or port numbers are presented as objects.<br /> In addition, the response of each rule does not contain the parameters, source, source-negate, destination, destination-negate, service and service-negate, but instead it contains the parameters, source-ranges, destination-ranges and service-ranges.<br /><br /> Note, Requesting to show rules as ranges is limited up to 20 rules per request, otherwise an error is returned. If you wish to request more rules, use the offset and limit parameters to limit your request.

		show_as_ranges?: bool

		// N/A

		show_hits?: bool

		// Layer that the rule belongs to identified by the name or UID.

		layer?: string

		// No more than that many results will be returned. This parameter is relevant only for getting few objects.

		limit?: int

		// Name of the package.

		package?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Search expression to filter the rulebase. The provided text should be exactly the same as it would be given in Smart Console. The logical operators in the expression ('AND', 'OR') should be provided in capital letters. If an operator is not used, the default OR operator applies.

		filter?: string

		// Indicates whether to calculate and show "groups" field for every object in reply.

		show_membership?: bool

		// Indicates whether to dereference "members" field by details level for every object in reply.

		dereference_group_members?: bool

		// N/A

		hits_settings?: {...}
	}
}

cp_mgmt_application_site_group :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_application_site_group: {

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Collection of group identifiers.

		groups?: [...]

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Collection of application and URL filtering objects identified by the name or UID.

		members?: [...]

		// Collection of tag identifiers.

		tags?: [...]

		// Color of the object. Should be one of existing colors.

		color?: string

		// Comments string.

		comments?: string

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Object name.

		name: string
	}
}

cp_mgmt_global_assignment :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_global_assignment: {

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
}

cp_mgmt_host_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
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

cp_mgmt_service_icmp_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_service_icmp_facts: {

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

cp_mgmt_service_rpc :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_service_rpc: {

		// N/A

		program_number?: int

		// Collection of tag identifiers.

		tags?: [...]

		// Collection of group identifiers.

		groups?: [...]

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Object name.

		name: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

		keep_connections_open_after_policy_installation?: bool

		// Color of the object. Should be one of existing colors.

		color?: string

		// Comments string.

		comments?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string
	}
}

cp_mgmt_service_udp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_service_udp: {

		// Color of the object. Should be one of existing colors.

		color?: string

		// Collection of group identifiers.

		groups?: [...]

		// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

		keep_connections_open_after_policy_installation?: bool

		// Object name.

		name: string

		// Time (in seconds) before the session times out.

		session_timeout?: int

		// Collection of tag identifiers.

		tags?: [...]

		// N/A

		accept_replies?: bool

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// A value of true enables matching by the selected protocol's signature - the signature identifies the protocol as genuine. Select this option to limit the port to the specified protocol. If the selected protocol does not support matching by signature, this field cannot be set to true.

		match_by_protocol_signature?: bool

		// Indicates whether this service is used when 'Any' is set as the rule's service and there are several service objects with the same source port and protocol.

		match_for_any?: bool

		// Indicates whether this service is a Data Domain service which has been overridden.

		override_default_settings?: bool

		// The number of the port used to provide this service. To specify a port range, place a hyphen between the lowest and highest port numbers, for example 44-55.

		port?: string

		// Enables state-synchronized High Availability or Load Sharing on a ClusterXL or OPSEC-certified cluster.

		sync_connections_on_cluster?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Port number for the client side service. If specified, only those Source port Numbers will be Accepted, Dropped, or Rejected during packet inspection. Otherwise, the source port is not inspected.

		source_port?: string

		// Use default virtual session timeout.

		use_default_session_timeout?: bool

		// Sets short (aggressive) timeouts for idle connections.

		aggressive_aging?: {...}

		// Comments string.

		comments?: string

		// Select the protocol type associated with the service, and by implication, the management server (if any) that enforces Content Security and Authentication for the service. Selecting a Protocol Type invokes the specific protocol handlers for each protocol type, thus enabling higher level of security by parsing the protocol, and higher level of connectivity by tracking dynamic actions (such as opening of ports).

		protocol?: string
	}
}

cp_mgmt_time :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_time: {

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Days recurrence.

		recurrence?: {...}

		// End time. Note, Each gateway may interpret this time differently according to its time zone.

		end?: {...}

		// End never.

		end_never?: bool

		// Collection of group identifiers.

		groups?: [...]

		// Starting time. Note, Each gateway may interpret this time differently according to its time zone.

		start?: {...}

		// Color of the object. Should be one of existing colors.

		color?: string

		// Comments string.

		comments?: string

		// Collection of tag identifiers.

		tags?: [...]

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Hours recurrence. Note, Each gateway may interpret this time differently according to its time zone.

		hours_ranges?: [...]

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Object name.

		name: string

		// Start immediately.

		start_now?: bool
	}
}

cp_mgmt_service_tcp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_service_tcp: {

		// Use default virtual session timeout.

		use_default_session_timeout?: bool

		// Indicates whether this service is used when 'Any' is set as the rule's service and there are several service objects with the same source port and protocol.

		match_for_any?: bool

		// Enables state-synchronized High Availability or Load Sharing on a ClusterXL or OPSEC-certified cluster.

		sync_connections_on_cluster?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Keep connections open after policy has been installed even if they are not allowed under the new policy. This overrides the settings in the Connection Persistence page. If you change this property, the change will not affect open connections, but only future connections.

		keep_connections_open_after_policy_installation?: bool

		// Object name.

		name: string

		// Indicates whether this service is a Data Domain service which has been overridden.

		override_default_settings?: bool

		// Port number for the client side service. If specified, only those Source port Numbers will be Accepted, Dropped, or Rejected during packet inspection. Otherwise, the source port is not inspected.

		source_port?: string

		// Collection of tag identifiers.

		tags?: [...]

		// Color of the object. Should be one of existing colors.

		color?: string

		// Comments string.

		comments?: string

		// A value of true enables matching by the selected protocol's signature - the signature identifies the protocol as genuine. Select this option to limit the port to the specified protocol. If the selected protocol does not support matching by signature, this field cannot be set to true.

		match_by_protocol_signature?: bool

		// Time (in seconds) before the session times out.

		session_timeout?: int

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Collection of group identifiers.

		groups?: [...]

		// The number of the port used to provide this service. To specify a port range, place a hyphen between the lowest and highest port numbers, for example 44-55.

		port?: string

		// Select the protocol type associated with the service, and by implication, the management server (if any) that enforces Content Security and Authentication for the service. Selecting a Protocol Type invokes the specific protocol handlers for each protocol type, thus enabling higher level of security by parsing the protocol, and higher level of connectivity by tracking dynamic actions (such as opening of ports).

		protocol?: string

		// Sets short (aggressive) timeouts for idle connections.

		aggressive_aging?: {...}

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool
	}
}

checkpoint_host_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	checkpoint_host_facts: {

		// UID of the host object. If UID is not provided, name is required.

		uid?: string

		// Name of the host object. If name is not provided, UID is required.

		name?: string
	}
}

cp_mgmt_application_site_group_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_application_site_group_facts: {

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

cp_mgmt_exception_group :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_exception_group: {

		// An exception group can be set to apply on all threat rules, all threat rules which have a specific profile, or those rules manually chosen by the user.

		apply_on?: string

		// Comments string.

		comments?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Apply changes ignoring warnings.

		ignore_warnings?: bool

		// Object name.

		name: string

		// Collection of tag identifiers.

		tags?: [...]

		// The threat profile to apply this group to in the case of apply-on threat-rules-with-specific-profile.

		applied_profile?: string

		// Color of the object. Should be one of existing colors.

		color?: string

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// The threat rules to apply this group on in the case of apply-on manually-select-threat-rules.

		applied_threat_rules?: {...}
	}
}

cp_mgmt_install_policy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_install_policy: {

		// Set to be true in order to install the Desktop Security policy. By default, the value is true if desktop security policy is enabled on the input policy package, otherwise false.

		desktop_security?: bool

		// Relevant for the gateway clusters. If true, the policy is installed on all the cluster members. If the installation on a cluster member fails, don't install on that cluster.

		install_on_all_cluster_members_or_fail?: bool

		// The name of the Policy Package to be installed.

		policy_package?: string

		// Set to be true in order to install the Threat Prevention policy. By default, the value is true if Threat Prevention policy is enabled on the input policy package, otherwise false.

		threat_prevention?: bool

		// Set to be true in order to install the Access Control policy. By default, the value is true if Access Control policy is enabled on the input policy package, otherwise false.

		access?: bool

		// If true, prepares the policy for the installation, but doesn't install it on an installation target.

		prepare_only?: bool

		// Set to be true in order to install the QoS policy. By default, the value is true if Quality-of-Service policy is enabled on the input policy package, otherwise false.

		qos?: bool

		// The UID of the revision of the policy to install.

		revision?: string

		// On what targets to execute this command. Targets may be identified by their name, or object unique identifier.

		targets?: [...]
	}
}

cp_mgmt_multicast_address_range :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_multicast_address_range: {

		// Last IP address in the range. If both IPv4 and IPv6 address ranges are required, use the ipv4-address-first and the ipv6-address-first fields instead.

		ip_address_last?: string

		// IPv4 address.

		ipv4_address?: string

		// First IPv4 address in the range.

		ipv4_address_first?: string

		// Object name.

		name: string

		// Color of the object. Should be one of existing colors.

		color?: string

		// IPv4 or IPv6 address. If both addresses are required use ipv4-address and ipv6-address fields explicitly.

		ip_address?: string

		// First IP address in the range. If both IPv4 and IPv6 address ranges are required, use the ipv4-address-first and the ipv6-address-first fields instead.

		ip_address_first?: string

		// IPv6 address.

		ipv6_address?: string

		// Last IPv6 address in the range.

		ipv6_address_last?: string

		// Collection of tag identifiers.

		tags?: [...]

		// The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.

		details_level?: string

		// Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.

		ignore_errors?: bool

		// Collection of group identifiers.

		groups?: [...]

		// Last IPv4 address in the range.

		ipv4_address_last?: string

		// First IPv6 address in the range.

		ipv6_address_first?: string

		// Comments string.

		comments?: string

		// Apply changes ignoring warnings.

		ignore_warnings?: bool
	}
}

cp_mgmt_multicast_address_range_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_multicast_address_range_facts: {

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

		// Object name. This parameter is relevant only for getting a specific object.

		name?: string
	}
}

cp_mgmt_service_group_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_service_group_facts: {

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

		// When true, the service group's matched content is displayed as ranges of port numbers rather than service objects.<br />Objects that are not represented using port numbers are presented as objects.<br />The 'members' parameter is omitted from the response and instead the 'ranges' parameter is displayed.

		show_as_ranges?: bool

		// Indicates whether to calculate and show "groups" field for every object in reply.

		show_membership?: bool

		// Indicates whether to dereference "members" field by details level for every object in reply.

		dereference_group_members?: bool
	}
}

cp_mgmt_verify_policy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cp_mgmt_verify_policy: {

		policy_package?: string

		// Policy package identified by the name or UID.
	}
}
