package meraki

meraki_device :: {

	// Name of a network.

	net_name?: string

	// Serial number of a device to query.

	serial?: string

	// Space delimited list of tags to assign to device.

	tags?: string

	// Latitude of device's geographic location.
	// Use negative number for southern hemisphere.

	lat?: float

	// Longitude of device's geographic location.
	// Use negative number for western hemisphere.

	lng?: float

	// ID of a network.

	net_id?: string

	// Model of network device to search for.

	model?: string

	// Informational notes about a device.
	// Limited to 255 characters.

	note?: string

	// Serial number of device to query uplink information from.

	serial_uplink?: string

	// Timespan, in seconds, used to query LLDP and CDP information.
	// Must be less than 1 month.

	lldp_cdp_timespan?: int

	// Whether or not to set the latitude and longitude of a device based on the new address.
	// Only applies when C(lat) and C(lng) are not specified.

	move_map_marker?: bool

	// Query an organization.

	state?: string

	// Postal address of device's location.

	address?: string

	// Hostname of network device to search for.

	hostname?: string

	// Serial number of device to query LLDP/CDP information from.

	serial_lldp_cdp?: string
}

meraki_firewalled_services :: {

	// List of IP addresses allowed to access a service.
	// Only used when C(access) is set to restricted.

	allowed_ips?: [..._]

	// Authentication key provided by the dashboard. Required if environmental variable MERAKI_KEY is not set.

	auth_key?: string

	// ID number of a network.

	net_id?: string

	// ID of organization associated to a network.

	org_id?: string

	// Network service to query or modify.

	access?: string

	// Name of a network.

	net_name?: string

	// Name of organization associated to a network.

	org_name?: string

	// Network service to query or modify.

	service?: string

	// States that a policy should be created or modified.

	state?: string
}

meraki_mr_l3_firewall :: {

	// ID of network containing access points.

	net_id?: string

	// Name of network containing access points.

	net_name?: string

	// Number of SSID to apply firewall rule to.

	number?: int

	// List of firewall rules.

	rules?: [..._]

	// Name of SSID to apply firewall rule to.

	ssid_name?: string

	// Create or modify an organization.

	state?: string

	// Sets whether devices can talk to other devices on the same LAN.

	allow_lan_access?: bool
}

meraki_network :: {

	// Boolean value specifying whether VLANs should be supported on a network.
	// Requires C(net_name) or C(net_id) to be specified.

	enable_vlans?: bool

	// Name of a network.

	net_name?: string

	// - Disables the local device status pages (U[my.meraki.com](my.meraki.com), U[ap.meraki.com](ap.meraki.com), U[switch.meraki.com](switch.meraki.com), U[wired.meraki.com](wired.meraki.com)). - Mutually exclusive of C(enable_my_meraki). - Will be deprecated in Ansible 2.13 in favor of C(enable_my_meraki).


	disable_my_meraki?: bool

	// - Enables the local device status pages (U[my.meraki.com](my.meraki.com), U[ap.meraki.com](ap.meraki.com), U[switch.meraki.com](switch.meraki.com), U[wired.meraki.com](wired.meraki.com)). - Ansible 2.7 had this parameter as C(disable_my_meraki).


	enable_my_meraki?: bool

	// Enables access to the device status page (U(http://device LAN IP)).
	// Can only be set if C(enable_my_meraki:) is set to C(yes).

	enable_remote_status_page?: bool

	// ID number of a network.

	net_id?: string

	// Create or modify an organization.

	state?: string

	// List of tags to assign to network.
	// C(tags) name conflicts with the tags parameter in Ansible. Indentation problems may cause unexpected behaviors.
	// Ansible 2.8 converts this to a list from a comma separated list.

	tags?: [..._]

	// Timezone associated to network.
	// See U(https://en.wikipedia.org/wiki/List_of_tz_database_time_zones) for a list of valid timezones.

	timezone?: string

	// Type of network device network manages.
	// Required when creating a network.
	// As of Ansible 2.8, C(combined) type is no longer accepted.
	// As of Ansible 2.8, changes to this parameter are no longer idempotent.

	type?: [..._]
}

meraki_static_route :: {

	// Descriptive name of the static route.

	name?: string

	// List of fixed MAC to IP bindings for DHCP.

	fixed_ip_assignments?: [..._]

	// IP address of the gateway for the subnet.

	gateway_ip?: string

	// Name of a network.

	net_name?: string

	// List of IP ranges reserved for static IP assignments.

	reserved_ip_ranges?: [..._]

	// Unique ID of static route.

	route_id?: string

	// Create or modify an organization.

	state?: string

	// CIDR notation based subnet for static route.

	subnet?: string

	// Indicates whether static route is enabled within a network.

	enabled?: bool

	// ID number of a network.

	net_id?: string
}

meraki_vlan :: {

	// Name of VLAN.

	name?: string

	// ID of network which VLAN is in or should be in.

	net_id?: string

	// IP address ranges which should be reserve and not distributed via DHCP.

	reserved_ip_range?: [..._]

	// CIDR notation of network subnet.

	subnet?: string

	// The translated VPN subnet if VPN and VPN subnet translation are enabled on the VLAN.

	vpn_nat_subnet?: string

	// IP address of appliance.
	// Address must be within subnet specified in C(subnet) parameter.

	appliance_ip?: string

	// Semi-colon delimited list of DNS IP addresses.
	// Specify one of the following options for preprogrammed DNS entries opendns, google_dns, upstream_dns

	dns_nameservers?: string

	// Specifies whether object should be queried, created/modified, or removed.

	state?: string

	// ID number of VLAN.
	// ID should be between 1-4096.

	vlan_id?: int

	// Static IP address assignments to be distributed via DHCP by MAC address.

	fixed_ip_assignments?: [..._]

	// Name of network which VLAN is in or should be in.

	net_name?: string
}

meraki_mx_l7_firewall :: {

	// When C(True), specifies that applications and application categories should be queried instead of firewall rules.

	categories?: bool

	// ID of network which MX firewall is in.

	net_id?: string

	// Name of network which MX firewall is in.

	net_name?: string

	// List of layer 7 firewall rules.

	rules?: [..._]

	// Query or modify a firewall rule.

	state?: string
}

meraki_organization :: {

	// Organization to clone to a new organization.

	clone?: string

	// ID of organization.

	org_id?: string

	// Name of organization.
	// If C(clone) is specified, C(org_name) is the name of the new organization.

	org_name?: string

	// Create or modify an organization.
	// C(org_id) must be specified if multiple organizations of the same name exist.
	// C(absent) WILL DELETE YOUR ENTIRE ORGANIZATION, AND ALL ASSOCIATED OBJECTS, WITHOUT CONFIRMATION. USE WITH CAUTION.

	state?: string
}

meraki_switchport :: {

	// Link speed for the switchport.

	link_negotiation?: string

	// VLAN number assigned to a port for voice traffic.
	// Only applicable to access port type.

	voice_vlan?: string

	// List of VLAN numbers to be allowed on switchport.

	allowed_vlans?: string

	// Whether a switchport should be enabled or disabled.

	enabled?: bool

	// VLAN number assigned to port.
	// If a port is of type trunk, the specified VLAN is the native VLAN.

	vlan?: string

	// Enable or disable Power Over Ethernet on a port.

	poe_enabled?: bool

	// Space delimited list of tags to assign to a port.

	tags?: string

	// Set port type.

	type?: string

	// Isolation status of switchport.

	isolation_enabled?: bool

	// Enable or disable Rapid Spanning Tree Protocol on a port.

	rstp_enabled?: bool

	// Port number.

	number?: string

	// Serial nubmer of the switch.

	serial?: string

	// Specifies whether a switchport should be queried or modified.

	state?: string

	// Set state of STP guard.

	stp_guard?: string

	// Number of the access policy to apply.
	// Only applicable to access port types.

	access_policy_number?: string

	// Switchport description.

	name?: string
}

meraki_syslog :: {

	// Authentication key provided by the dashboard. Required if environmental variable MERAKI_KEY is not set.

	auth_key?: string

	// ID number of a network.

	net_id?: string

	// Name of a network.

	net_name?: string

	// List of syslog server settings

	servers?: string

	// Query or edit syslog servers
	// To delete a syslog server, do not include server in list of servers

	state?: string
}

meraki_webhook :: {

	// Indicates whether to test or query status.

	test?: string

	// ID of webhook test query.

	test_id?: string

	// Secret password to use when accessing webhook.

	shared_secret?: string

	// Specifies whether object should be queried, created/modified, or removed.

	state?: string

	// URL to access when calling webhook.

	url?: string

	// Unique ID of webhook.

	webhook_id?: string

	// Name of webhook.

	name?: string

	// ID of network which configuration is applied to.

	net_id?: string

	// Name of network which configuration is applied to.

	net_name?: string
}

meraki_admin :: {

	// Privileges assigned to the administrator in the organization.

	org_access?: string

	// Name of organization.
	// Used when C(name) should refer to another object.
	// When creating a new administrator, C(org_name), C(network), or C(tags) must be specified.

	org_name?: string

	// Create or modify, or delete an organization
	// If C(state) is C(absent), name takes priority over email if both are specified.

	state: string

	// Tags the administrator has privileges on.
	// When creating a new administrator, C(org_name), C(network), or C(tags) must be specified.
	// If C(none) is specified, C(network) or C(tags) must be specified.

	tags?: string

	// Email address for the dashboard administrator.
	// Email cannot be updated.
	// Required when creating or editing an administrator.

	email?: string

	// Name of the dashboard administrator.
	// Required when creating a new administrator.

	name?: string

	// List of networks the administrator has privileges on.
	// When creating a new administrator, C(org_name), C(network), or C(tags) must be specified.

	networks?: string
}

meraki_mx_l3_firewall :: {

	// Create or modify an organization.

	state?: string

	// Whether to log hits against the default firewall rule.
	// Only applicable if a syslog server is specified against the network.
	// This is not shown in response from Meraki. Instead, refer to the C(syslog_enabled) value in the default rule.

	syslog_default_rule?: bool

	// ID of network which MX firewall is in.

	net_id?: string

	// Name of network which MX firewall is in.

	net_name?: string

	// List of firewall rules.

	rules?: string
}

meraki_config_template :: {

	// ID of organization associated to a configuration template.

	org_id?: string

	// Name of organization containing the configuration template.

	org_name?: string

	// Specifies whether configuration template information should be queried, modified, or deleted.

	state?: string

	// Optional boolean indicating whether the network's switches should automatically bind to profiles of the same model.
	// This option only affects switch networks and switch templates.
	// Auto-bind is not valid unless the switch template has at least one profile and has at most one profile per switch model.

	auto_bind?: bool

	// Name of the configuration template within an organization to manipulate.

	config_template?: string

	// ID of the network to bind or unbind configuration template to.

	net_id?: string

	// Name of the network to bind or unbind configuration template to.

	net_name?: string
}

meraki_content_filtering :: {

	// List of content categories which should be blocked.
	// Use the C(meraki_content_filtering_facts) module for a full list of categories.

	blocked_categories?: [..._]

	// List of URL patterns which should be blocked.

	blocked_urls?: [..._]

	// ID number of a network.

	net_id?: string

	// Name of a network.

	net_name?: string

	// States that a policy should be created or modified.

	state?: string

	// List of URL patterns which should be allowed.

	allowed_urls?: [..._]

	// Authentication key provided by the dashboard. Required if environmental variable MERAKI_KEY is not set.

	auth_key?: string

	// Determines whether a network filters fo rall URLs in a category or only the list of top blocked sites.

	category_list_size?: string

	// Display only certain facts.

	subset?: string
}

meraki_malware :: {

	// Name of network which configuration is applied to.

	net_name?: string

	// Specifies whether object should be queried, created/modified, or removed.

	state?: string

	// List of files to whitelist.

	allowed_files?: string

	// List of URLs to whitelist.

	allowed_urls?: string

	// Enabled or disabled state of malware protection.

	mode?: string

	// ID of network which configuration is applied to.

	net_id?: string
}

meraki_nat :: {

	// ID number of a network.

	net_id?: string

	// Name of a network.

	net_name?: string

	// List of 1:many NAT rules.

	one_to_many?: [..._]

	// List of 1:1 NAT rules.

	one_to_one?: [..._]

	// ID of organization associated to a network.

	org_id?: string

	// List of port forwarding rules.

	port_forwarding?: [..._]

	// Create or modify an organization.

	state?: string

	// Specifies which NAT components to query.

	subset?: [..._]
}

meraki_snmp :: {

	// Type of SNMP access.

	access?: string

	// SNMP community string.
	// Only relevant if C(access) is set to C(community).

	community_string?: string

	// Name of network.

	net_name?: string

	// Sets authentication mode for SNMPv3.

	v3_auth_mode?: string

	// Specifies whether SNMPv3 is enabled.

	v3_enabled?: bool

	// Specifies privacy mode for SNMPv3.

	v3_priv_mode?: string

	// Privacy password for SNMPv3.
	// Must be at least 8 characters long.

	v3_priv_pass?: string

	// ID of network.

	net_id?: string

	// Semi-colon delimited IP addresses which can perform SNMP queries.

	peer_ips?: string

	// Specifies whether SNMP information should be queried or modified.

	state?: string

	// Information about users with access to SNMP.
	// Only relevant if C(access) is set to C(users).

	users?: [..._]

	// Specifies whether SNMPv2c is enabled.

	v2c_enabled?: bool

	// Authentication password for SNMPv3.
	// Must be at least 8 characters long.

	v3_auth_pass?: string
}

meraki_ssid :: {

	// The concentrator to use for 'Layer 3 roaming with a concentrator' or 'VPN'.

	concentrator_network_id?: string

	// ID number of VLAN on SSID.
	// Requires C(ip_assignment_mode) to be C(ayer 3 roaming with a concentrator) or C(VPN).

	vlan_id?: int

	// Default VLAN ID.
	// Requires C(ip_assignment_mode) to be C(Bridge mode) or C(Layer 3 roaming).

	default_vlan_id?: string

	// List of RADIUS servers for RADIUS accounting.

	radius_accounting_servers?: [..._]

	// List of walled garden ranges.

	walled_garden_ranges?: [..._]

	// Specifies whether SNMP information should be queried or modified.

	state?: string

	// Set authentication mode of network.

	auth_mode?: string

	// Maximum bandwidth in Mbps devices on SSID can download.

	per_client_bandwidth_limit_down?: int

	// Maximum bandwidth in Mbps devices on SSID can upload.

	per_client_bandwidth_limit_up?: int

	// Enable or disable RADIUS CoA (Change of Authorization) on SSID.

	radius_coa_enabled?: bool

	// Set client access policy in case RADIUS servers aren't available.

	radius_failover_policy?: string

	// ID of network.

	net_id?: string

	// Name of network.

	net_name?: string

	// Enable or disable walled garden functionality.

	walled_garden_enabled?: bool

	// Set band selection mode.

	band_selection?: string

	// Password for wireless network.
	// Requires auth_mode to be set to psk.

	psk?: string

	// List of RADIUS servers.

	radius_servers?: [..._]

	// Set to enable splash page and specify type of splash.

	splash_page?: string

	// Set load balancing policy when multiple RADIUS servers are specified.

	radius_load_balancing_policy?: string

	// Set whether to use VLAN tagging.
	// Requires C(default_vlan_id) to be set.

	use_vlan_tagging?: bool

	// Encryption mode within WPA2 specification.

	wpa_encryption_mode?: string

	// List of VLAN tags.
	// Requires C(ip_assignment_mode) to be C(Bridge mode) or C(Layer 3 roaming).
	// Requires C(use_vlan_tagging) to be C(True).

	ap_tags_vlan_ids?: [..._]

	// Enable or disable SSID network.

	enabled?: bool

	// Name of SSID.

	name?: string

	// SSID number within network.

	number?: int

	// Enable or disable RADIUS accounting.

	radius_accounting_enabled?: bool

	// Set encryption mode of network.

	encryption_mode?: string

	// Method of which SSID uses to assign IP addresses.

	ip_assignment_mode?: string

	// Minimum bitrate (Mbps) allowed on SSID.

	min_bitrate?: float
}
