package fortimanager

fmgr_fwobj_ippool :: {

	// Dynamic Mapping clone of original suffixed parameter.

	dynamic_mapping_type?: string

	// Select an interface from available options that will reply to ARP requests. (If blank, any is selected).

	arp_intf?: string

	// Final IPv4 address (inclusive) in the range for the address pool (format xxx.xxx.xxx.xxx, Default| 0.0.0.0).

	endip?: string

	// Number of addresses blocks that can be used by a user (1 to 128, default = 8).

	num_blocks_per_user?: string

	// First IPv4 address (inclusive) in the range for the address pool (format xxx.xxx.xxx.xxx, Default| 0.0.0.0).

	startip?: string

	// Enable/disable replying to ARP requests when an IP Pool is added to a policy (default = enable).
	// choice | disable | Disable ARP reply.
	// choice | enable | Enable ARP reply.

	arp_reply?: string

	// Associated interface name.

	associated_interface?: string

	// Number of addresses in a block (64 to 4096, default = 128).

	block_size?: string

	// Dynamic Mapping clone of original suffixed parameter.

	dynamic_mapping_arp_intf?: string

	// Dynamic Mapping clone of original suffixed parameter.

	dynamic_mapping_arp_reply?: string

	// Dynamic Mapping clone of original suffixed parameter.

	dynamic_mapping_num_blocks_per_user?: string

	// Dynamic Mapping clone of original suffixed parameter.

	dynamic_mapping_source_endip?: string

	// Sets one of three modes for managing the object.
	// Allows use of soft-adds instead of overwriting existing values

	mode?: string

	// Enable/disable full cone NAT.
	// choice | disable | Disable full cone NAT.
	// choice | enable | Enable full cone NAT.

	permit_any_host?: string

	// Dynamic Mapping clone of original suffixed parameter.

	dynamic_mapping_comments?: string

	// Port block allocation timeout (seconds).

	pba_timeout?: string

	// Final IPv4 address (inclusive) in the range of the source addresses to be translated (format xxx.xxx.xxx.xxx, Default| 0.0.0.0).

	source_endip?: string

	// Dynamic Mapping clone of original suffixed parameter.

	dynamic_mapping_associated_interface?: string

	// Dynamic Mapping clone of original suffixed parameter.

	dynamic_mapping_endip?: string

	// Dynamic Mapping clone of original suffixed parameter.

	dynamic_mapping_permit_any_host?: string

	// Dynamic Mapping clone of original suffixed parameter.

	dynamic_mapping_source_startip?: string

	// Dynamic Mapping clone of original suffixed parameter.

	dynamic_mapping_pba_timeout?: string

	// IP pool name.

	name?: string

	// The ADOM the configuration should belong to.

	adom?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameter.ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	dynamic_mapping?: string

	// Dynamic Mapping clone of original suffixed parameter.

	dynamic_mapping_startip?: string

	// IP pool type (overload, one-to-one, fixed port range, or port block allocation).
	// choice | overload | IP addresses in the IP pool can be shared by clients.
	// choice | one-to-one | One to one mapping.
	// choice | fixed-port-range | Fixed port range.
	// choice | port-block-allocation | Port block allocation.

	type?: string

	// Comment.

	comments?: string

	// Dynamic Mapping clone of original suffixed parameter.

	dynamic_mapping_block_size?: string

	// First IPv4 address (inclusive) in the range of the source addresses to be translated (format xxx.xxx.xxx.xxx, Default| 0.0.0.0).

	source_startip?: string
}

fmgr_ha :: {

	// Sets the peer status to enable or disable.

	fmgr_ha_peer_status?: string

	// Sets the role of the FortiManager host for HA.

	fmgr_ha_mode?: string

	// Sets the IPv6 address of a HA peer.

	fmgr_ha_peer_ipv6?: string

	// Sets the HA Peer Serial Number.

	fmgr_ha_peer_sn?: string

	// Sets the heartbeat interval (1-255).

	fmgr_ha_hb_interval?: string

	// Sets heartbeat lost threshold (1-255).

	fmgr_ha_hb_threshold?: string

	// Sets the IPv4 address of a HA peer.

	fmgr_ha_peer_ipv4?: string

	// Sets the ID number of the HA cluster. Defaults to 1.

	fmgr_ha_cluster_id?: string

	// Sets the password for the HA cluster. Only required once. System remembers between HA mode switches.

	fmgr_ha_cluster_pw?: string

	// Sets the File quota in MB (2048-20480).

	fmgr_ha_file_quota?: string
}

fmgr_device_config :: {

	// The IP and subnet of the interface/port you are editing.

	interface_ip?: string

	// The ADOM the configuration should belong to.

	adom?: string

	// The device's new hostname.

	device_hostname?: string

	// The unique device's name that you are editing. A.K.A. Friendly name of the device in FortiManager.

	device_unique_name: string

	// Tells FMGR to attempt to install the config after making it.

	install_config?: string

	// The interface/port number you are editing.

	interface?: string

	// Specify what protocols are allowed on the interface, comma-separated list (see examples).

	interface_allow_access?: string
}

fmgr_fwobj_service :: {

	// Comma-Seperated list of members' names.

	group_member?: string

	// ICMP code.

	icmp_code?: string

	// Start IP-End IP.

	iprange?: string

	// Multiple SCTP port ranges. Comma separated list of destination ports to add (i.e. '443,80').
	// Syntax is <destPort:sourcePort>
	// If no sourcePort is defined, it assumes all of them.
	// Ranges can be defined with a hyphen -
	// Examples -- '443' (destPort 443 only)  '443:1000-2000' (destPort 443 from source ports 1000-2000).
	// String multiple together in same quotes, comma separated. ('443:1000-2000, 80:1000-2000').

	sctp_portrange?: string

	// Comma separated list of destination ports to add (i.e. '443,80').
	// Syntax is <destPort:sourcePort>
	// If no sourcePort is defined, it assumes all of them.
	// Ranges can be defined with a hyphen -
	// Examples -- '443' (destPort 443 only)  '443:1000-2000' (destPort 443 from source ports 1000-2000).
	// String multiple together in same quotes, comma separated. ('443:1000-2000, 80:1000-2000').

	udp_portrange?: string

	// Application service type.

	app_service_type?: string

	// Comma separated list of destination ports to add (i.e. '443,80').
	// Syntax is <destPort:sourcePort>
	// If no sourcePort is defined, it assumes all of them.
	// Ranges can be defined with a hyphen -
	// Examples -- '443' (destPort 443 only)  '443:1000-2000' (destPort 443 from source ports 1000-2000).
	// String multiple together in same quotes, comma separated. ('443:1000-2000, 80:1000-2000').

	tcp_portrange?: string

	// Application ID.

	application?: string

	// Custom service name.

	name?: string

	// Sets one of three modes for managing the object.

	mode?: string

	// Tells module if we are adding a custom service, category, or group.

	object_type?: string

	// IP protocol number.

	protocol_number?: string

	// Session TTL (300 - 604800, 0 = default).

	session_ttl?: string

	// -The ADOM the configuration should belong to.

	adom?: string

	// TCP half close timeout (1 - 86400 sec, 0 = default).

	tcp_halfopen_timer?: string

	// Enable disable RST check.

	check_reset_range?: string

	// Comment.

	comment?: string

	// Tells module what kind of custom service to be added.

	custom_type?: string

	// Enable/disable explicit web proxy service.

	explicit_proxy?: string

	// Fully qualified domain name.

	fqdn?: string

	// Name of the Service Group.

	group_name?: string

	// Application category ID.

	app_category?: string

	// ICMP type.

	icmp_type?: string

	// Protocol type.

	protocol?: string

	// TCP half close timeout (1 - 86400 sec, 0 = default).

	tcp_halfclose_timer?: string

	// TCP half close timeout (1 - 300 sec, 0 = default).

	tcp_timewait_timer?: string

	// Enable/disable service visibility.

	visibility?: string

	// Service category.

	category?: string

	// GUI icon color.

	color?: string

	// TCP half close timeout (0 - 86400 sec, 0 = default).

	udp_idle_timer?: string
}

fmgr_device_provision_template :: {

	// Enables or disables https redirect from http.

	admin_https_redirect?: string

	// Primary key for the snmp community. this must be unique!

	snmp_v2c_id?: string

	// Source ip the traps should come from IPv4.

	snmp_v2c_trap_src_ipv4?: string

	// Server the syslogs will be sent to.

	syslog_server?: string

	// Enables FortiGuard security updates to their default settings.

	admin_enable_fortiguard?: string

	// Configures fortiguard target.
	// admin_enable_fortiguard must be set to "direct".

	admin_fortiguard_target?: string

	// Enables or disables the switch controller.

	admin_switch_controller?: string

	// If specified, all other options are ignored. The specified provisioning template will be deleted.

	delete_provisioning_template?: string

	// SMTP server ipv4 address.

	smtp_server?: string

	// Sets the snmp v2c community query port.

	snmp_v2c_query_port?: string

	// Sets the logging level for syslog.

	syslog_filter?: string

	// Enables or disables ntp.

	ntp_status?: string

	// The friendly names of devices in FortiManager to assign the provisioning template to. CSV separated list.

	provision_targets: string

	// List of ipv4 hosts to send snmpv3 traps to. Comma separated IPv4 list.

	snmpv3_notify_hosts?: string

	// SNMPv3 traps is enabled or disabled.

	snmpv3_trap_status?: string

	// SNMPv3 user is enabled or disabled.

	snmpv3_status?: string

	// SNMPv3 trap remote port.

	snmpv3_trap_rport?: string

	// Certificate used to communicate with Syslog server if encryption on.

	syslog_certificate?: string

	// The provisioning template you want to apply (default = default).

	provisioning_template: string

	// SMTP password.

	smtp_password?: string

	// SSL admin gui port number.

	admin_https_port?: string

	// Enables or disables ntpv3 (default is ntpv4).

	ntp_v3?: string

	// SNMPv3 priv protocol.

	snmpv3_priv_proto?: string

	// Enables or disables syslogs.

	syslog_status?: string

	// Allow snmpv3_queries.

	snmpv3_queries?: string

	// Changes the admin gui theme.

	admin_gui_theme?: string

	// Enables or disables valid certificate checking for smtp.

	smtp_validate_cert?: string

	// Specifies the v2c community name.

	snmp_v2c_name?: string

	// - IPv4 addresses or subnets that are allowed to query SNMP v2c, comma separated ("10.7.220.59 255.255.255.0, 10.7.220.0 255.255.255.0").


	snmp_v2c_query_hosts_ipv4?: string

	// Enables or disables the v2c community specified.

	snmp_v2c_status?: string

	// Enables or disables the v2c community specified for traps.

	snmp_v2c_trap_status?: string

	// SNMPv3 auth protocol.

	snmpv3_auth_proto?: string

	// Non-SSL admin gui port number.

	admin_http_port?: string

	// The unique device's name that you are editing.

	device_unique_name: string

	// Configures faz target.

	admin_fortianalyzer_target?: string

	// Sets the admin gui language.

	admin_language?: string

	// The ADOM the configuration should belong to.

	adom: string

	// Only used with custom ntp_type -- specifies IP of server to sync to -- comma separated ip addresses for multiples.

	ntp_server?: string

	// SMTP port number.

	smtp_port?: string

	// Enables or disables SNMP globally.

	snmp_status?: string

	// SNMPv3 priv pwd currently not encrypted! ensure this file is locked down permissions wise!

	snmpv3_priv_pwd?: string

	// SNMPv3 query port.

	snmpv3_query_port?: string

	// Enables fortiguard servers or custom servers are the ntp source.

	ntp_type?: string

	// Enables or disables the v2c community specified for queries.

	snmp_v2c_query_status?: string

	// - IPv4 addresses of the hosts that should get SNMP v2c traps, comma separated, must include mask ("10.7.220.59 255.255.255.255, 10.7.220.60 255.255.255.255").


	snmp_v2c_trap_hosts_ipv4?: string

	// Sets the ntp auth password.

	ntp_auth_pwd?: string

	// SMTP source ip address.

	smtp_source_ipv4?: string

	// Admin timeout in minutes.

	admin_timeout?: string

	// Sets one of three modes for managing the object.
	// Allows use of soft-adds instead of overwriting existing values.

	mode?: string

	// defines the ssl level for smtp.

	smtp_conn_sec?: string

	// SNMPv3 user name.

	snmpv3_name?: string

	// SNMPv3 security level.

	snmpv3_security_level?: string

	// Remote syslog facility.
	// choice | kernel | Kernel messages.
	// choice | user | Random user-level messages.
	// choice | mail | Mail system.
	// choice | daemon | System daemons.
	// choice | auth | Security/authorization messages.
	// choice | syslog | Messages generated internally by syslog.
	// choice | lpr | Line printer subsystem.
	// choice | news | Network news subsystem.
	// choice | uucp | Network news subsystem.
	// choice | cron | Clock daemon.
	// choice | authpriv | Security/authorization messages (private).
	// choice | ftp | FTP daemon.
	// choice | ntp | NTP daemon.
	// choice | audit | Log audit.
	// choice | alert | Log alert.
	// choice | clock | Clock daemon.
	// choice | local0 | Reserved for local use.
	// choice | local1 | Reserved for local use.
	// choice | local2 | Reserved for local use.
	// choice | local3 | Reserved for local use.
	// choice | local4 | Reserved for local use.
	// choice | local5 | Reserved for local use.
	// choice | local6 | Reserved for local use.
	// choice | local7 | Reserved for local use.

	syslog_facility?: string

	// Remote syslog logging over UDP/Reliable TCP.
	// choice | udp | Enable syslogging over UDP.
	// choice | legacy-reliable | Enable legacy reliable syslogging by RFC3195 (Reliable Delivery for Syslog).
	// choice | reliable | Enable reliable syslogging by RFC6587 (Transmission of Syslog Messages over TCP).

	syslog_mode?: string

	// primary ipv4 dns forwarder.

	dns_primary_ipv4?: string

	// secondary ipv4 dns forwarder.

	dns_secondary_ipv4?: string

	// Enables or disables ntp authentication.

	ntp_auth?: string

	// SMTP auth username.

	smtp_username?: string

	// Sets the snmp v2c community trap port.

	snmp_v2c_trap_port?: string

	// SNMPv3 auth pwd __ currently not encrypted! ensure this file is locked down permissions wise!

	snmpv3_auth_pwd?: string

	// SNMPv3 source ipv4 address for traps.

	snmpv3_source_ip?: string

	// Syslog port that will be set.

	syslog_port?: string

	// Sets the local dns domain suffix.

	dns_suffix?: string

	// Sets the interval in minutes for ntp sync.

	ntp_sync_interval?: string

	// SMTP reply to address.

	smtp_replyto?: string

	// Enable/disable reliable syslogging with TLS encryption.
	// choice | high | SSL communication with high encryption algorithms.
	// choice | low | SSL communication with low encryption algorithms.
	// choice | disable | Disable SSL communication.
	// choice | high-medium | SSL communication with high and medium encryption algorithms.

	syslog_enc_algorithm?: string
}

fmgr_secprof_dns :: {

	// One or more external IP block lists.

	external_ip_blocklist?: string

	// Enable/disable DNS filter logging for this DNS profile.
	// choice | disable | Disable DNS filter logging.
	// choice | enable | Enable DNS filter logging.

	ftgd_dns_filters_log?: string

	// Set safe search for YouTube restriction level.
	// choice | strict | Enable strict safe seach for YouTube.
	// choice | moderate | Enable moderate safe search for YouTube.

	youtube_restrict?: string

	// Comment for the security profile to show in the FortiManager GUI.

	comment?: string

	// FortiGuard DNS filter options.
	// FLAG Based Options. Specify multiple in list form.
	// flag | error-allow | Allow all domains when FortiGuard DNS servers fail.
	// flag | ftgd-disable | Disable FortiGuard DNS domain rating.

	ftgd_dns_options?: string

	// Enable/disable logging of all domains visited (detailed DNS logging).
	// choice | disable | Disable logging of all domains visited.
	// choice | enable | Enable logging of all domains visited.

	log_all_domain?: string

	// Enable/disable blocking botnet C&C; DNS lookups.
	// choice | disable | Disable blocking botnet C&C; DNS lookups.
	// choice | enable | Enable blocking botnet C&C; DNS lookups.

	block_botnet?: string

	// Action to take for DNS requests matching the category.
	// choice | monitor | Allow DNS requests matching the category and log the result.
	// choice | block | Block DNS requests matching the category.

	ftgd_dns_filters_action?: string

	// Profile name.

	name?: string

	// Enable/disable domain filtering and botnet domain logging.
	// choice | disable | Disable domain filtering and botnet domain logging.
	// choice | enable | Enable domain filtering and botnet domain logging.

	sdns_domain_log?: string

	// Action to take for blocked domains.
	// choice | block | Return NXDOMAIN for blocked domains.
	// choice | redirect | Redirect blocked domains to SDNS portal.

	block_action?: string

	// DNS domain filter table ID.

	domain_filter_domain_filter_table?: string

	// Category number.

	ftgd_dns_filters_category?: string

	// Sets one of three modes for managing the object.
	// Allows use of soft-adds instead of overwriting existing values.

	mode?: string

	// IP address of the SDNS redirect portal.

	redirect_portal?: string

	// Enable/disable Google, Bing, and YouTube safe search.
	// choice | disable | Disable Google, Bing, and YouTube safe search.
	// choice | enable | Enable Google, Bing, and YouTube safe search.

	safe_search?: string

	// Enable/disable FortiGuard SDNS rating error logging.
	// choice | disable | Disable FortiGuard SDNS rating error logging.
	// choice | enable | Enable FortiGuard SDNS rating error logging.

	sdns_ftgd_err_log?: string

	// The ADOM the configuration should belong to.

	adom?: string
}

fmgr_secprof_ips :: {

	// Duration of quarantine.

	entries_quarantine_expiry?: string

	// Enable/disable logging of selected rules.

	filter_log?: string

	// Filter name.

	filter_name?: string

	// Vulnerable protocol filter.

	filter_protocol?: string

	// Vulnerability severity filter.

	filter_severity?: string

	// Enable/disable malicious URL blocking.

	block_malicious_url?: string

	// Protect client or server traffic.

	entries_location?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	filter?: string

	// The ADOM the configuration should belong to.

	adom?: string

	// Source IP address and netmask.

	entries_exempt_ip_src_ip?: string

	// Quarantine method.

	entries_quarantine?: string

	// Track the packet protocol field.

	entries_rate_track?: string

	// Destination IP address and netmask.

	override_exempt_ip_dst_ip?: string

	// Enable/disable status of override rule.

	override_status?: string

	// Duration (sec) of the rate.

	entries_rate_duration?: string

	// Override rule ID.

	override_rule_id?: string

	// Enable/disable quarantine logging.

	entries_quarantine_log?: string

	// Enable/disable extended logging.

	extended_log?: string

	// Enable/disable logging of selected quarantine.

	filter_quarantine_log?: string

	// Destination IP address and netmask.

	entries_exempt_ip_dst_ip?: string

	// Enable/disable packet logging. Enable to save the packet that triggers the filter. You can download the packets in pcap format for diagnostic use.

	entries_log_packet?: string

	// Count of the rate.

	entries_rate_count?: string

	// Source IP address and netmask.

	override_exempt_ip_src_ip?: string

	// Comment.

	comment?: string

	// Relative severity of the signature, from info to critical. Log messages generated by the signature include the severity.

	entries_severity?: string

	// Sets one of three modes for managing the object.
	// Allows use of soft-adds instead of overwriting existing values

	mode?: string

	// Duration of quarantine in minute.

	override_quarantine_expiry?: string

	// Replacement message group.

	replacemsg_group?: string

	// Enable/disable logging of signatures included in filter.

	entries_log?: string

	// Enable/disable logging of attack context| URL buffer, header buffer, body buffer, packet buffer.

	entries_log_attack_context?: string

	// Enable/disable logging.

	override_log?: string

	// Rate limit mode.

	entries_rate_mode?: string

	// Vulnerable application filter.

	filter_application?: string

	// Vulnerability location filter.

	filter_location?: string

	// Quarantine IP or interface.

	filter_quarantine?: string

	// Action of override rule.

	override_action?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	entries?: string

	// Vulnerable OS filter.

	filter_os?: string

	// Action taken with traffic in which signatures are detected.

	entries_action?: string

	// Identifies the predefined or custom IPS signatures to add to the sensor.

	entries_rule?: string

	// Action of selected rules.

	filter_action?: string

	// Enable/disable packet logging of selected rules.

	filter_log_packet?: string

	// Enable/disable logging of selected quarantine.

	override_quarantine_log?: string

	// Sensor name.

	name?: string

	// Protocols to be examined. set protocol ? lists available protocols. all includes all protocols. other includes all unlisted protocols.

	entries_protocol?: string

	// Duration of quarantine in minute.

	filter_quarantine_expiry?: string

	// Enable/disable packet logging.

	override_log_packet?: string

	// Applications to be protected. set application ? lists available applications. all includes all applications. other includes all unlisted applications.

	entries_application?: string

	// Operating systems to be protected.  all includes all operating systems. other includes all unlisted operating systems.

	entries_os?: string

	// Quarantine IP or interface.

	override_quarantine?: string

	// Status of the signatures included in filter. default enables the filter and only use filters with default status of enable. Filters with default status of disable will not be used.

	entries_status?: string

	// Selected rules status.

	filter_status?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	override?: string
}

fmgr_secprof_proxy :: {

	// Action to take on the HTTP via header in forwarded responses| forwards (pass), adds, or removes the HTTP heade
	// r.
	// choice | pass | Forward the same HTTP header.
	// choice | add | Add the HTTP header.
	// choice | remove | Remove the HTTP header.

	header_via_response?: string

	// Action to take on the HTTP x-authenticated-groups header in forwarded requests| forwards (pass), adds, or remo
	// ves the HTTP header.
	// choice | pass | Forward the same HTTP header.
	// choice | add | Add the HTTP header.
	// choice | remove | Remove the HTTP header.

	header_x_authenticated_groups?: string

	// Action to take on the HTTP x-authenticated-user header in forwarded requests| forwards (pass), adds, or remove
	// s the HTTP header.
	// choice | pass | Forward the same HTTP header.
	// choice | add | Add the HTTP header.
	// choice | remove | Remove the HTTP header.

	header_x_authenticated_user?: string

	// Action to take on the HTTP x-forwarded-for header in forwarded requests| forwards (pass), adds, or removes the
	// HTTP header.
	// choice | pass | Forward the same HTTP header.
	// choice | add | Add the HTTP header.
	// choice | remove | Remove the HTTP header.

	header_x_forwarded_for?: string

	// Enable/disable stripping unsupported encoding from the request header.
	// choice | disable | Disable stripping of unsupported encoding from the request header.
	// choice | enable | Enable stripping of unsupported encoding from the request header.

	strip_encoding?: string

	// The ADOM the configuration should belong to.

	adom?: string

	// Action to take on the HTTP front-end-HTTPS header in forwarded requests| forwards (pass), adds, or removes the
	// HTTP header.
	// choice | pass | Forward the same HTTP header.
	// choice | add | Add the HTTP header.
	// choice | remove | Remove the HTTP header.

	header_front_end_https?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	headers?: string

	// HTTP header's content.

	headers_content?: string

	// Profile name.

	name?: string

	// Action when HTTP the header forwarded.
	// choice | add-to-request | Add the HTTP header to request.
	// choice | add-to-response | Add the HTTP header to response.
	// choice | remove-from-request | Remove the HTTP header from request.
	// choice | remove-from-response | Remove the HTTP header from response.

	headers_action?: string

	// HTTP forwarded header name.

	headers_name?: string

	// Actions to take on the HTTP client-IP header in forwarded requests| forwards (pass), adds, or removes the HTTP
	// header.
	// choice | pass | Forward the same HTTP header.
	// choice | add | Add the HTTP header.
	// choice | remove | Remove the HTTP header.

	header_client_ip?: string

	// Action to take on the HTTP via header in forwarded requests| forwards (pass), adds, or removes the HTTP header
	// .
	// choice | pass | Forward the same HTTP header.
	// choice | add | Add the HTTP header.
	// choice | remove | Remove the HTTP header.

	header_via_request?: string

	// Enable/disable logging HTTP header changes.
	// choice | disable | Disable Enable/disable logging HTTP header changes.
	// choice | enable | Enable Enable/disable logging HTTP header changes.

	log_header_change?: string

	// Sets one of three modes for managing the object.
	// Allows use of soft-adds instead of overwriting existing values

	mode?: string
}

fmgr_secprof_ssl_ssh :: {

	// Configure protocol inspection status.
	// choice | disable | Disable.
	// choice | deep-inspection | Full SSL inspection.

	imaps_status?: string

	// Name.

	name?: string

	// Enable/disable SSH policy check.
	// choice | disable | Disable SSH policy check.
	// choice | enable | Enable SSH policy check.

	ssh_ssh_policy_check?: string

	// Enable/disable exempting servers by FortiGuard whitelist.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	whitelist?: string

	// When enabled, allows SSL sessions whose server certificate validation failed.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	imaps_allow_invalid_server_cert?: string

	// Action based on the SSL encryption used being unsupported.
	// choice | bypass | Bypass.
	// choice | inspect | Inspect.
	// choice | block | Block.

	smtps_unsupported_ssl?: string

	// Ports to use for scanning (1 - 65535, default = 443).

	ssh_ports?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	ssl_exempt?: string

	// Enable/disable the use of SSL server table for SSL offloading.
	// choice | disable | Don't use SSL server configuration.
	// choice | enable | Use SSL server configuration.

	use_ssl_server?: string

	// Allow, ignore, or block the untrusted SSL session server certificate.
	// choice | allow | Allow the untrusted server certificate.
	// choice | block | Block the connection when an untrusted server certificate is detected.
	// choice | ignore | Always take the server certificate as trusted.

	pop3s_untrusted_cert?: string

	// Sets one of three modes for managing the object.
	// Allows use of soft-adds instead of overwriting existing values

	mode?: string

	// Action based on client certificate request failure.
	// choice | bypass | Bypass.
	// choice | inspect | Inspect.
	// choice | block | Block.

	pop3s_client_cert_request?: string

	// Enable/disable SSH tunnel policy check.
	// choice | disable | Disable SSH tunnel policy check.
	// choice | enable | Enable SSH tunnel policy check.

	ssh_ssh_tun_policy_check?: string

	// Action based on the SSL encryption used being unsupported.
	// choice | bypass | Bypass.
	// choice | inspect | Inspect.
	// choice | block | Block.

	ssl_unsupported_ssl?: string

	// Action based on the SSL encryption used being unsupported.
	// choice | bypass | Bypass.
	// choice | inspect | Inspect.
	// choice | block | Block.

	imaps_unsupported_ssl?: string

	// Exempt servers by regular expression.

	ssl_exempt_regex?: string

	// Action based on client certificate request failure during the FTPS handshake.
	// choice | bypass | Bypass.
	// choice | inspect | Inspect.
	// choice | block | Block.

	ssl_server_ftps_client_cert_request?: string

	// Action based on client certificate request failure during the SMTPS handshake.
	// choice | bypass | Bypass.
	// choice | inspect | Inspect.
	// choice | block | Block.

	ssl_server_smtps_client_cert_request?: string

	// Certificate used by SSL Inspection to replace server certificate.

	server_cert?: string

	// Allow, ignore, or block the untrusted SSL session server certificate.
	// choice | allow | Allow the untrusted server certificate.
	// choice | block | Block the connection when an untrusted server certificate is detected.
	// choice | ignore | Always take the server certificate as trusted.

	smtps_untrusted_cert?: string

	// Level of SSL inspection.
	// choice | disable | Disable.
	// choice | certificate-inspection | Inspect SSL handshake only.
	// choice | deep-inspection | Full SSL inspection.

	ssl_inspect_all?: string

	// Enable/disable inspection of MAPI over HTTPS.
	// choice | disable | Disable inspection of MAPI over HTTPS.
	// choice | enable | Enable inspection of MAPI over HTTPS.

	mapi_over_https?: string

	// Action based on the SSL encryption used being unsupported.
	// choice | bypass | Bypass.
	// choice | inspect | Inspect.
	// choice | block | Block.

	https_unsupported_ssl?: string

	// Ports to use for scanning (1 - 65535, default = 443).

	pop3s_ports?: string

	// Relative strength of encryption algorithms accepted during negotiation.
	// choice | compatible | Allow a broader set of encryption algorithms for best compatibility.
	// choice | high-encryption | Allow only AES-CTR, AES-GCM ciphers and high encryption algorithms.

	ssh_ssh_algorithm?: string

	// When enabled, allows SSL sessions whose server certificate validation failed.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	ssl_allow_invalid_server_cert?: string

	// Untrusted CA certificate used by SSL Inspection.

	untrusted_caname?: string

	// CA certificate used by SSL Inspection.

	caname?: string

	// IPv4 address of the SSL server.

	ssl_server_ip?: string

	// Action based on the SSL encryption used being unsupported.
	// choice | bypass | Bypass.
	// choice | inspect | Inspect.
	// choice | block | Block.

	ftps_unsupported_ssl?: string

	// Action based on client certificate request failure.
	// choice | bypass | Bypass.
	// choice | inspect | Inspect.
	// choice | block | Block.

	https_client_cert_request?: string

	// Action based on client certificate request failure.
	// choice | bypass | Bypass.
	// choice | inspect | Inspect.
	// choice | block | Block.

	smtps_client_cert_request?: string

	// Level of SSL inspection.
	// choice | disable | Disable.
	// choice | deep-inspection | Full SSL inspection.

	ssh_inspect_all?: string

	// Configure protocol inspection status.
	// choice | disable | Disable.
	// choice | deep-inspection | Full SSL inspection.

	ssh_status?: string

	// Action based on client certificate request failure.
	// choice | bypass | Bypass.
	// choice | inspect | Inspect.
	// choice | block | Block.

	ssl_client_cert_request?: string

	// When enabled, allows SSL sessions whose server certificate validation failed.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	https_allow_invalid_server_cert?: string

	// Ports to use for scanning (1 - 65535, default = 443).

	ftps_ports?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	https?: string

	// Action based on SSH version being unsupported.
	// choice | block | Block.
	// choice | bypass | Bypass.

	ssh_unsupported_version?: string

	// Action based on client certificate request failure during the IMAPS handshake.
	// choice | bypass | Bypass.
	// choice | inspect | Inspect.
	// choice | block | Block.

	ssl_server_imaps_client_cert_request?: string

	// Action based on client certificate request failure during an SSL protocol handshake.
	// choice | bypass | Bypass.
	// choice | inspect | Inspect.
	// choice | block | Block.

	ssl_server_ssl_other_client_cert_request?: string

	// Optional comments.

	comment?: string

	// Configure protocol inspection status.
	// choice | disable | Disable.
	// choice | certificate-inspection | Inspect SSL handshake only.
	// choice | deep-inspection | Full SSL inspection.

	https_status?: string

	// When enabled, allows SSL sessions whose server certificate validation failed.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	pop3s_allow_invalid_server_cert?: string

	// Configure protocol inspection status.
	// choice | disable | Disable.
	// choice | deep-inspection | Full SSL inspection.

	pop3s_status?: string

	// Ports to use for scanning (1 - 65535, default = 443).

	smtps_ports?: string

	// Exempt servers by wildcard FQDN.

	ssl_exempt_wildcard_fqdn?: string

	// Action based on client certificate request failure during the HTTPS handshake.
	// choice | bypass | Bypass.
	// choice | inspect | Inspect.
	// choice | block | Block.

	ssl_server_https_client_cert_request?: string

	// Action based on client certificate request failure.
	// choice | bypass | Bypass.
	// choice | inspect | Inspect.
	// choice | block | Block.

	ftps_client_cert_request?: string

	// Allow, ignore, or block the untrusted SSL session server certificate.
	// choice | allow | Allow the untrusted server certificate.
	// choice | block | Block the connection when an untrusted server certificate is detected.
	// choice | ignore | Always take the server certificate as trusted.

	imaps_untrusted_cert?: string

	// Action based on the SSL encryption used being unsupported.
	// choice | bypass | Bypass.
	// choice | inspect | Inspect.
	// choice | block | Block.

	pop3s_unsupported_ssl?: string

	// Configure protocol inspection status.
	// choice | disable | Disable.
	// choice | deep-inspection | Full SSL inspection.

	smtps_status?: string

	// IPv6 address object.

	ssl_exempt_address6?: string

	// Ports to use for scanning (1 - 65535, default = 443).

	https_ports?: string

	// Ports to use for scanning (1 - 65535, default = 443).

	imaps_ports?: string

	// Re-sign or replace the server's certificate.
	// choice | re-sign | Multiple clients connecting to multiple servers.
	// choice | replace | Protect an SSL server.

	server_cert_mode?: string

	// IPv4 address object.

	ssl_exempt_address?: string

	// Type of address object (IPv4 or IPv6) or FortiGuard category.
	// choice | fortiguard-category | FortiGuard category.
	// choice | address | Firewall IPv4 address.
	// choice | address6 | Firewall IPv6 address.
	// choice | wildcard-fqdn | Fully Qualified Domain Name with wildcard characters.
	// choice | regex | Regular expression FQDN.

	ssl_exempt_type?: string

	// Configure protocol inspection status.
	// choice | disable | Disable.
	// choice | deep-inspection | Full SSL inspection.

	ftps_status?: string

	// When enabled, allows SSL sessions whose server certificate validation failed.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	ftps_allow_invalid_server_cert?: string

	// Allow, ignore, or block the untrusted SSL session server certificate.
	// choice | allow | Allow the untrusted server certificate.
	// choice | block | Block the connection when an untrusted server certificate is detected.
	// choice | ignore | Always take the server certificate as trusted.

	https_untrusted_cert?: string

	// Enable/disable inspection of RPC over HTTPS.
	// choice | disable | Disable inspection of RPC over HTTPS.
	// choice | enable | Enable inspection of RPC over HTTPS.

	rpc_over_https?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	ssl?: string

	// Enable/disable logging SSL exemptions.
	// choice | disable | Disable logging SSL exemptions.
	// choice | enable | Enable logging SSL exemptions.

	ssl_exemptions_log?: string

	// Allow, ignore, or block the untrusted SSL session server certificate.
	// choice | allow | Allow the untrusted server certificate.
	// choice | block | Block the connection when an untrusted server certificate is detected.
	// choice | ignore | Always take the server certificate as trusted.

	ssl_untrusted_cert?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	ftps?: string

	// Action based on client certificate request failure.
	// choice | bypass | Bypass.
	// choice | inspect | Inspect.
	// choice | block | Block.

	imaps_client_cert_request?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	pop3s?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	smtps?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	ssh?: string

	// Allow, ignore, or block the untrusted SSL session server certificate.
	// choice | allow | Allow the untrusted server certificate.
	// choice | block | Block the connection when an untrusted server certificate is detected.
	// choice | ignore | Always take the server certificate as trusted.

	ftps_untrusted_cert?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	imaps?: string

	// FortiGuard category ID.

	ssl_exempt_fortiguard_category?: string

	// The ADOM the configuration should belong to.

	adom?: string

	// Enable/disable logging SSL anomalies.
	// choice | disable | Disable logging SSL anomalies.
	// choice | enable | Enable logging SSL anomalies.

	ssl_anomalies_log?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	ssl_server?: string

	// Action based on client certificate request failure during the POP3S handshake.
	// choice | bypass | Bypass.
	// choice | inspect | Inspect.
	// choice | block | Block.

	ssl_server_pop3s_client_cert_request?: string

	// When enabled, allows SSL sessions whose server certificate validation failed.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	smtps_allow_invalid_server_cert?: string
}

fmgr_secprof_waf :: {

	// Action.
	// choice | allow | Allow.
	// choice | block | Block.

	constraint_max_range_segment_action?: string

	// Severity.
	// choice | low | Low severity.
	// choice | medium | Medium severity.
	// choice | high | High severity.

	constraint_hostname_severity?: string

	// Action.
	// choice | allow | Allow.
	// choice | block | Block.

	constraint_max_cookie_action?: string

	// Maximum number of cookies in HTTP request (0 to 2147483647).

	constraint_max_cookie_max_cookie?: string

	// Enable/disable logging.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_max_header_line_log?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	address_list?: string

	// Maximum number of cookies in HTTP request.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_exception_max_cookie?: string

	// Enable/disable logging.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_hostname_log?: string

	// Action.
	// choice | bypass | Allow the HTTP request, also bypass further WAF scanning.
	// choice | permit | Allow the HTTP request, and continue further WAF scanning.
	// choice | block | Block HTTP request.

	url_access_action?: string

	// Maximum number of range segments in HTTP range line (0 to 2147483647).

	constraint_max_range_segment_max_range_segment?: string

	// Action.
	// choice | allow | Allow.
	// choice | block | Block.

	constraint_max_url_param_action?: string

	// Sets one of three modes for managing the object.
	// Allows use of soft-adds instead of overwriting existing values

	mode?: string

	// Action.
	// choice | allow | Allow.
	// choice | block | Block.

	constraint_max_header_line_action?: string

	// Enable/disable the constraint.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_max_range_segment_status?: string

	// Methods.
	// FLAG Based Options. Specify multiple in list form.
	// flag | delete | HTTP DELETE method.
	// flag | get | HTTP GET method.
	// flag | head | HTTP HEAD method.
	// flag | options | HTTP OPTIONS method.
	// flag | post | HTTP POST method.
	// flag | put | HTTP PUT method.
	// flag | trace | HTTP TRACE method.
	// flag | others | Other HTTP methods.
	// flag | connect | HTTP CONNECT method.

	method_default_allowed_methods?: string

	// Enable/disable logging.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	method_log?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	signature?: string

	// Action.
	// choice | allow | Allow.
	// choice | block | Block.
	// choice | erase | Erase credit card numbers.

	signature_custom_signature_action?: string

	// Maximum length of URL parameter in bytes (0 to 2147483647).

	constraint_url_param_length_length?: string

	// Severity.
	// choice | low | Low severity.
	// choice | medium | Medium severity.
	// choice | high | High severity.

	constraint_max_cookie_severity?: string

	// Maximum number HTTP header lines (0 to 2147483647).

	constraint_max_header_line_max_header_line?: string

	// Enable/disable logging.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_max_url_param_log?: string

	// Severity.
	// choice | low | Low severity.
	// choice | medium | Medium severity.
	// choice | high | High severity.

	constraint_max_url_param_severity?: string

	// Enable/disable the constraint.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_url_param_length_status?: string

	// Enable/disable extended logging.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	extended_log?: string

	// Status.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	signature_main_class_status?: string

	// Host address.

	constraint_exception_address?: string

	// Severity.
	// choice | low | Low severity.
	// choice | medium | Medium severity.
	// choice | high | High severity.

	constraint_header_length_severity?: string

	// Action.
	// choice | allow | Allow.
	// choice | block | Block.

	constraint_version_action?: string

	// Maximum length of parameter in URL, HTTP POST request or HTTP body in bytes (0 to 2147483647).

	constraint_param_length_length?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	method?: string

	// Action.
	// choice | allow | Allow.
	// choice | block | Block.
	// choice | erase | Erase credit card numbers.

	signature_main_class_action?: string

	// Blocked address.

	address_list_blocked_address?: string

	// HTTP header length in request.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_exception_header_length?: string

	// Enable/disable logging.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_max_range_segment_log?: string

	// Severity.
	// choice | low | Low severity.
	// choice | medium | Medium severity.
	// choice | high | High severity.

	constraint_param_length_severity?: string

	// HTTP line length in request.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_exception_line_length?: string

	// Enable/disable logging.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_malformed_log?: string

	// Enable/disable the constraint.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_param_length_status?: string

	// Action.
	// choice | allow | Allow.
	// choice | block | Block.

	constraint_content_length_action?: string

	// Severity.
	// choice | low | Low severity.
	// choice | medium | Medium severity.
	// choice | high | High severity.

	constraint_content_length_severity?: string

	// Enable/disable the constraint.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_content_length_status?: string

	// Maximum number of range segments in HTTP range line.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_exception_max_range_segment?: string

	// Enable/disable logging.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_method_log?: string

	// Disable/Enable external HTTP Inspection.
	// choice | disable | Disable external inspection.
	// choice | enable | Enable external inspection.

	external?: string

	// The minimum number of Credit cards to detect violation.

	signature_credit_card_detection_threshold?: string

	// Enable/disable logging.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	signature_custom_signature_log?: string

	// Match HTTP target.
	// FLAG Based Options. Specify multiple in list form.
	// flag | arg | HTTP arguments.
	// flag | arg-name | Names of HTTP arguments.
	// flag | req-body | HTTP request body.
	// flag | req-cookie | HTTP request cookies.
	// flag | req-cookie-name | HTTP request cookie names.
	// flag | req-filename | HTTP request file name.
	// flag | req-header | HTTP request headers.
	// flag | req-header-name | HTTP request header names.
	// flag | req-raw-uri | Raw URI of HTTP request.
	// flag | req-uri | URI of HTTP request.
	// flag | resp-body | HTTP response body.
	// flag | resp-hdr | HTTP response headers.
	// flag | resp-status | HTTP response status.

	signature_custom_signature_target?: string

	// Disabled signatures

	signature_disabled_signature?: string

	// Enable/disable regular expression based pattern match.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	url_access_access_pattern_regex?: string

	// Status.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	address_list_status?: string

	// Enable/disable logging.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_content_length_log?: string

	// Severity.
	// choice | low | Low severity.
	// choice | medium | Medium severity.
	// choice | high | High severity.

	constraint_line_length_severity?: string

	// Severity.
	// choice | low | Low severity.
	// choice | medium | Medium severity.
	// choice | high | High severity.

	constraint_max_range_segment_severity?: string

	// Severity.
	// choice | low | Low severity.
	// choice | medium | Medium severity.
	// choice | high | High severity.

	constraint_version_severity?: string

	// Match pattern.

	signature_custom_signature_pattern?: string

	// Enable/disable the constraint.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_header_length_status?: string

	// Enable/disable the constraint.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_hostname_status?: string

	// HTTP content length in request.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_exception_content_length?: string

	// Comment.

	comment?: string

	// Enable/disable hostname check.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_exception_hostname?: string

	// Maximum length of parameter in URL.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_exception_url_param_length?: string

	// Enable/disable the constraint.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_malformed_status?: string

	// Enable/disable regular expression based pattern match.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	method_method_policy_regex?: string

	// Disabled signature subclasses.

	signature_disabled_sub_class?: string

	// Host address.

	url_access_address?: string

	// Maximum number of parameters in URL.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_exception_max_url_param?: string

	// Length of HTTP header in bytes (0 to 2147483647).

	constraint_header_length_length?: string

	// Enable/disable logging.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_version_log?: string

	// URL pattern.

	url_access_access_pattern_pattern?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	constraint?: string

	// Action.
	// choice | allow | Allow.
	// choice | block | Block.

	constraint_malformed_action?: string

	// Maximum number of parameters in URL (0 to 2147483647).

	constraint_max_url_param_max_url_param?: string

	// Enable/disable the constraint.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_max_cookie_status?: string

	// Enable/disable logging.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_param_length_log?: string

	// Enable/disable the constraint.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_version_status?: string

	// Trusted address.

	address_list_trusted_address?: string

	// Enable/disable HTTP method check.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_exception_method?: string

	// Action.
	// choice | allow | Allow.
	// choice | block | Block.

	constraint_line_length_action?: string

	// Severity.
	// choice | low | low severity
	// choice | medium | medium severity
	// choice | high | High severity

	method_severity?: string

	// Status.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	signature_custom_signature_status?: string

	// Host address.

	method_method_policy_address?: string

	// WAF Profile name.

	name?: string

	// Severity.
	// choice | low | Low severity.
	// choice | medium | Medium severity.
	// choice | high | High severity.

	address_list_severity?: string

	// Enable/disable logging.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_url_param_length_log?: string

	// The ADOM the configuration should belong to.

	adom?: string

	// Maximum length of parameter in URL, HTTP POST request or HTTP body.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_exception_param_length?: string

	// Action.
	// choice | allow | Allow.
	// choice | block | Block.

	constraint_param_length_action?: string

	// Enable/disable HTTP version check.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_exception_version?: string

	// Enable/disable the constraint.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_max_header_line_status?: string

	// Allowed Methods.
	// FLAG Based Options. Specify multiple in list form.
	// flag | delete | HTTP DELETE method.
	// flag | get | HTTP GET method.
	// flag | head | HTTP HEAD method.
	// flag | options | HTTP OPTIONS method.
	// flag | post | HTTP POST method.
	// flag | put | HTTP PUT method.
	// flag | trace | HTTP TRACE method.
	// flag | others | Other HTTP methods.
	// flag | connect | HTTP CONNECT method.

	method_method_policy_allowed_methods?: string

	// Signature name.

	signature_custom_signature_name?: string

	// Severity.
	// choice | low | Low severity.
	// choice | medium | Medium severity.
	// choice | high | High severity.

	signature_main_class_severity?: string

	// Enable/disable match negation.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	url_access_access_pattern_negate?: string

	// Enable/disable the constraint.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_line_length_status?: string

	// Enable/disable logging.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_max_cookie_log?: string

	// Severity.
	// choice | low | Low severity.
	// choice | medium | Medium severity.
	// choice | high | High severity.

	constraint_method_severity?: string

	// Enable/disable malformed HTTP request check.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_exception_malformed?: string

	// Severity.
	// choice | low | Low severity.
	// choice | medium | Medium severity.
	// choice | high | High severity.

	constraint_max_header_line_severity?: string

	// Case sensitivity in pattern.
	// choice | disable | Case insensitive in pattern.
	// choice | enable | Case sensitive in pattern.

	signature_custom_signature_case_sensitivity?: string

	// Length of HTTP content in bytes (0 to 2147483647).

	constraint_content_length_length?: string

	// Enable/disable logging.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_header_length_log?: string

	// Enable/disable the constraint.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_max_url_param_status?: string

	// Action.
	// choice | allow | Allow.
	// choice | block | Block.

	constraint_method_action?: string

	// Action.
	// choice | allow | Allow.
	// choice | block | Block.

	constraint_url_param_length_action?: string

	// Severity.
	// choice | low | Low severity.
	// choice | medium | Medium severity.
	// choice | high | High severity.

	signature_custom_signature_severity?: string

	// Source address.

	url_access_access_pattern_srcaddr?: string

	// Maximum number of HTTP header line.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_exception_max_header_line?: string

	// URL pattern.

	constraint_exception_pattern?: string

	// Action.
	// choice | allow | Allow.
	// choice | block | Block.

	constraint_header_length_action?: string

	// Enable/disable logging.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_line_length_log?: string

	// Severity.
	// choice | low | Low severity.
	// choice | medium | Medium severity.
	// choice | high | High severity.

	constraint_malformed_severity?: string

	// Traffic direction.
	// choice | request | Match HTTP request.
	// choice | response | Match HTTP response.

	signature_custom_signature_direction?: string

	// Enable/disable logging.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	signature_main_class_log?: string

	// Severity.
	// choice | low | Low severity.
	// choice | medium | Medium severity.
	// choice | high | High severity.

	url_access_severity?: string

	// Action for a hostname constraint.
	// choice | allow | Allow.
	// choice | block | Block.

	constraint_hostname_action?: string

	// Length of HTTP line in bytes (0 to 2147483647).

	constraint_line_length_length?: string

	// Enable/disable the constraint.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_method_status?: string

	// Severity.
	// choice | low | Low severity.
	// choice | medium | Medium severity.
	// choice | high | High severity.

	constraint_url_param_length_severity?: string

	// URL pattern.

	method_method_policy_pattern?: string

	// Status.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	method_status?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	url_access?: string

	// Enable/disable logging on blocked addresses.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	address_list_blocked_log?: string

	// Enable/disable regular expression based pattern match.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	constraint_exception_regex?: string

	// Enable/disable logging.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	url_access_log?: string
}

fmgr_secprof_web :: {

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	override?: string

	// Enable/disable logging ActiveX.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	web_filter_activex_log?: string

	// URL filter table ID.

	web_urlfilter_table?: string

	// Sets one of three modes for managing the object.
	// Allows use of soft-adds instead of overwriting existing values

	mode?: string

	// Web filter profile with permission to create overrides.

	override_profile?: string

	// Enable / Disable empty message-body entity in HTTP response
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	url_extraction_redirect_no_content?: string

	// Enable/disable logging VBS scripts.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	web_filter_vbs_log?: string

	// Enable/disable logging invalid domain names.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	web_invalid_domain_log?: string

	// YouTube channel ID to be filtered.

	youtube_channel_filter_channel_id?: string

	// WISP server selection algorithm.
	// choice | auto-learning | Select the lightest loading healthy server.
	// choice | primary-secondary | Select the first healthy server in order.
	// choice | round-robin | Select the next healthy server.

	wisp_algorithm?: string

	// Options for FortiGuard Web Filter.
	// FLAG Based Options. Specify multiple in list form.
	// flag | error-allow | Allow web pages with a rating error to pass through.
	// flag | rate-server-ip | Rate the server IP in addition to the domain name.
	// flag | connect-request-bypass | Bypass connection which has CONNECT request.
	// flag | ftgd-disable | Disable FortiGuard scanning.

	ftgd_wf_options?: string

	// Duration of quota.

	ftgd_wf_quota_duration?: string

	// FLAG Based Options. Specify multiple in list form.
	// flag | bannedword-override | Banned word override.
	// flag | urlfilter-override | URL filter override.
	// flag | fortiguard-wf-override | FortiGuard Web Filter override.
	// flag | contenttype-check-override | Content-type header override.

	ovrd_perm?: string

	// HTTP header value to use for client redirect on blocked requests

	url_extraction_redirect_url?: string

	// Banned word score threshold.

	web_bword_threshold?: string

	// Enable/disable logging Java applets.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	web_filter_applet_log?: string

	// HTTP header name to use for client redirect on blocked requests

	url_extraction_redirect_header?: string

	// Categories and groups the filter examines.

	ftgd_wf_filters_category?: string

	// Enable/disable rating JavaScript by URL.
	// choice | disable | Disable rating JavaScript by URL.
	// choice | enable | Enable rating JavaScript by URL.

	ftgd_wf_rate_javascript_urls?: string

	// Allow/deny browser-based (cookie) overrides.
	// choice | deny | Deny browser-based (cookie) override.
	// choice | allow | Allow browser-based (cookie) override.

	override_ovrd_cookie?: string

	// Profile attribute to retrieve from the RADIUS server.
	// choice | User-Name | Use this attribute.
	// choice | NAS-IP-Address | Use this attribute.
	// choice | Framed-IP-Address | Use this attribute.
	// choice | Framed-IP-Netmask | Use this attribute.
	// choice | Filter-Id | Use this attribute.
	// choice | Login-IP-Host | Use this attribute.
	// choice | Reply-Message | Use this attribute.
	// choice | Callback-Number | Use this attribute.
	// choice | Callback-Id | Use this attribute.
	// choice | Framed-Route | Use this attribute.
	// choice | Framed-IPX-Network | Use this attribute.
	// choice | Class | Use this attribute.
	// choice | Called-Station-Id | Use this attribute.
	// choice | Calling-Station-Id | Use this attribute.
	// choice | NAS-Identifier | Use this attribute.
	// choice | Proxy-State | Use this attribute.
	// choice | Login-LAT-Service | Use this attribute.
	// choice | Login-LAT-Node | Use this attribute.
	// choice | Login-LAT-Group | Use this attribute.
	// choice | Framed-AppleTalk-Zone | Use this attribute.
	// choice | Acct-Session-Id | Use this attribute.
	// choice | Acct-Multi-Session-Id | Use this attribute.

	override_profile_attribute?: string

	// Override profile type.
	// choice | list | Profile chosen from list.
	// choice | radius | Profile determined by RADIUS server.

	override_profile_type?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	url_extraction?: string

	// Search keywords to log when match is found.

	web_keyword_match?: string

	// Enable/disable logging URL filtering.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	web_url_log?: string

	// Re-display warning after closing browser or after a timeout.
	// choice | session | After session ends.
	// choice | timeout | After timeout occurs.

	ftgd_wf_filters_warning_duration_type?: string

	// Enable/disable rating CSS by URL.
	// choice | disable | Disable rating CSS by URL.
	// choice | enable | Enable rating CSS by URL.

	ftgd_wf_rate_css_urls?: string

	// Enable replacement messages for HTTPS.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	https_replacemsg?: string

	// Override duration mode.
	// choice | constant | Constant mode.
	// choice | ask | Prompt for duration when initiating an override.

	override_ovrd_dur_mode?: string

	// Enable URL Extraction
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	url_extraction_status?: string

	// Content header list.

	web_content_header_list?: string

	// Enable/disable rating images by URL.
	// choice | disable | Disable rating images by URL (blocked images are replaced with blanks).
	// choice | enable | Enable rating images by URL (blocked images are replaced with blanks).

	ftgd_wf_rate_image_urls?: string

	// FLAG Based Options. Specify multiple in list form.
	// flag | block-invalid-url | Block sessions contained an invalid domain name.
	// flag | jscript | Javascript block.
	// flag | js | JS block.
	// flag | vbs | VB script block.
	// flag | unknown | Unknown script block.
	// flag | wf-referer | Referring block.
	// flag | intrinsic | Intrinsic script block.
	// flag | wf-cookie | Cookie block.
	// flag | per-user-bwl | Per-user black/white list filter
	// flag | activexfilter | ActiveX filter.
	// flag | cookiefilter | Cookie filter.
	// flag | javafilter | Java applet filter.

	options?: string

	// Enable/disable logging blocked commands.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	web_filter_command_block_log?: string

	// Enable/disable logging blocked cookies.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	web_filter_cookie_removal_log?: string

	// Enable/disable logging Java scripts.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	web_filter_js_log?: string

	// Enable/disable logging rating errors.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	web_ftgd_err_log?: string

	// Enable/disable logging.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	ftgd_wf_filters_log?: string

	// Override replacement message.

	ftgd_wf_quota_override_replacemsg?: string

	// Enable/disable extended any filter action logging for web filtering.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	web_extended_all_action_log?: string

	// YouTube channel filter status.
	// choice | disable | Disable YouTube channel filter.
	// choice | blacklist | Block matches.
	// choice | whitelist | Allow matches.

	youtube_channel_status?: string

	// Action to take for matches.
	// choice | block | Block access.
	// choice | monitor | Allow access while logging the action.
	// choice | warning | Allow access after warning the user.
	// choice | authenticate | Authenticate user before allowing access.

	ftgd_wf_filters_action?: string

	// Allow web filter profile overrides.

	ftgd_wf_ovrd?: string

	// Action taken for HTTP POST traffic.
	// choice | normal | Normal, POST requests are allowed.
	// choice | block | POST requests are blocked.

	post_action?: string

	// Replacement message group.

	replacemsg_group?: string

	// Safe search type.
	// FLAG Based Options. Specify multiple in list form.
	// flag | url | Insert safe search string into URL.
	// flag | header | Insert safe search header.

	web_safe_search?: string

	// YouTube EDU filter level.
	// choice | strict | Strict access for YouTube.
	// choice | none | Full access for YouTube.
	// choice | moderate | Moderate access for YouTube.

	web_youtube_restrict?: string

	// The ADOM the configuration should belong to.

	adom?: string

	// Enable/disable logging all URLs visited.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	log_all_url?: string

	// Override scope.
	// choice | user | Override for the user.
	// choice | user-group | Override for the user's group.
	// choice | ip | Override for the initiating IP.
	// choice | ask | Prompt for scope when initiating an override.
	// choice | browser | Create browser-based (cookie) override.

	override_ovrd_scope?: string

	// WISP servers.

	wisp_servers?: string

	// Do not stop quota for these categories.

	ftgd_wf_exempt_quota?: string

	// Web filtering inspection mode.
	// choice | proxy | Proxy.
	// choice | flow-based | Flow based.

	inspection_mode?: string

	// Comment.

	youtube_channel_filter_comment?: string

	// Optional comments.

	comment?: string

	// Maximum FortiGuard quota used by single page view in seconds (excludes streams).

	ftgd_wf_max_quota_timeout?: string

	// Override duration.

	override_ovrd_dur?: string

	// FortiGuard whitelist settings.
	// FLAG Based Options. Specify multiple in list form.
	// flag | exempt-av | Exempt antivirus.
	// flag | exempt-webcontent | Exempt web content.
	// flag | exempt-activex-java-cookie | Exempt ActiveX-JAVA-Cookie.
	// flag | exempt-dlp | Exempt DLP.
	// flag | exempt-rangeblock | Exempt RangeBlock.
	// flag | extended-log-others | Support extended log.

	web_whitelist?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	youtube_channel_filter?: string

	// Enable/disable extended logging for web filtering.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	extended_log?: string

	// Warning prompts in each category or each domain.
	// choice | per-domain | Per-domain warnings.
	// choice | per-category | Per-category warnings.

	ftgd_wf_filters_warning_prompt?: string

	// User groups with permission to use the override.

	override_ovrd_user_group?: string

	// Enable/disable logging logging blocked web content.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	web_content_log?: string

	// Enable/disable logging unknown scripts.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	web_filter_unknown_log?: string

	// Enable/disable logging all search phrases.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	web_log_search?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	ftgd_wf?: string

	// Override replacement message.

	ftgd_wf_filters_override_replacemsg?: string

	// URL extraction server FQDN (fully qualified domain name)

	url_extraction_server_fqdn?: string

	// Enable/disable automatic addition of URLs detected by FortiSandbox to blacklist.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	web_blacklist?: string

	// Enable/disable logging JScripts.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	web_filter_jscript_log?: string

	// Groups with permission to authenticate.

	ftgd_wf_filters_auth_usr_grp?: string

	// Duration of warnings.

	ftgd_wf_filters_warn_duration?: string

	// Profile name.

	name?: string

	// Enable/disable logging referrers.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	web_filter_referer_log?: string

	// Enable/disable web proxy WISP.
	// choice | disable | Disable web proxy WISP.
	// choice | enable | Enable web proxy WISP.

	wisp?: string

	// FortiGuard categories to apply quota to (category action must be set to monitor).

	ftgd_wf_quota_category?: string

	// Quota type.
	// choice | time | Use a time-based quota.
	// choice | traffic | Use a traffic-based quota.

	ftgd_wf_quota_type?: string

	// Enable/disable rating CRL by URL.
	// choice | disable | Disable rating CRL by URL.
	// choice | enable | Enable rating CRL by URL.

	ftgd_wf_rate_crl_urls?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	web?: string

	// Banned word table ID.

	web_bword_table?: string

	// Enable/disable logging daily quota usage.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	web_ftgd_quota_usage?: string

	// Traffic quota unit of measurement.
	// choice | B | Quota in bytes.
	// choice | KB | Quota in kilobytes.
	// choice | MB | Quota in megabytes.
	// choice | GB | Quota in gigabytes.

	ftgd_wf_quota_unit?: string

	// Traffic quota value.

	ftgd_wf_quota_value?: string

	// Enable/disable logging cookie filtering.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	web_filter_cookie_log?: string
}

fmgr_script :: {

	// The administrative domain (admon) the configuration belongs to

	adom: string

	// The desired mode of the specified object. Execute will run the script.

	mode?: string

	// The script content that will be executed.

	script_content?: string

	// The description of the script.

	script_description?: string

	// The virtual domain (vdom) the configuration belongs to

	vdom?: string

	// The name of the script.

	script_name: string

	// (datasource) Policy package object to run the script against

	script_package?: string

	// (datasource) The devices that the script will run on, can have both device member and device group member.

	script_scope?: string

	// The target of the script to be run.

	script_target?: string

	// The type of script (CLI or TCL).

	script_type?: string
}

fmgr_fwobj_address :: {

	// Comment for the object in FortiManager.

	comment?: string

	// Address group member. If this is defined w/out group_name, the operation will fail.

	group_members?: string

	// Sets one of three modes for managing the object.

	mode?: string

	// The ADOM the configuration should belong to.

	adom?: string

	// Associated interface name.

	associated_interface?: string

	// Minimal TTL of individual IP addresses in FQDN cache. Only applies when type = wildcard-fqdn.

	cache_ttl?: string

	// Country name. Required if type = geographic.

	country?: string

	// IPv6 address in full. (i.e. 2001:0db8:85a3:0000:0000:8a2e:0370:7334)

	ipv6addr?: string

	// IP address and wildcard netmask. Required if ipv4 = wildcard.

	wildcard?: string

	// Enable/disable use of this address in the static route configuration.

	allow_routing?: string

	// IP and network mask. If only defining one IP use this parameter. (i.e. 10.7.220.30/255.255.255.255)
	// Can also define subnets (i.e. 10.7.220.0/255.255.255.0)
	// Also accepts CIDR (i.e. 10.7.220.0/24)
	// If Netmask is omitted after IP address, /32 is assumed.
	// When multicast is set to Broadcast Subnet the ipv4addr parameter is used to specify the subnet.

	ipv4addr?: string

	// Puts module into IPv6 mode.
	// Must not be specified with either ipv4 or multicast parameters.

	ipv6?: string

	// Object ID for NSX.

	obj_id?: string

	// Color of the object in FortiManager GUI.
	// Takes integers 1-32

	color?: string

	// End IP. Only used when ipv4 = iprange.

	end_ip?: string

	// Fully qualified domain name.

	fqdn?: string

	// Address group name. If this is defined in playbook task, all other options are ignored.

	group_name?: string

	// Type of IPv4 Object.
	// Must not be specified with either multicast or IPv6 parameters.

	ipv4?: string

	// Manages Multicast Address Objects.
	// Sets either a Multicast IP Range or a Broadcast Subnet.
	// Must not be specified with either ipv4 or ipv6 parameters.
	// When set to Broadcast Subnet the ipv4addr parameter is used to specify the subnet.
	// Can create IPv4 Multicast Objects (multicastrange and broadcastmask options -- uses start/end-ip and ipv4addr).

	multicast?: string

	// Friendly Name Address object name in FortiManager.

	name?: string

	// Start IP. Only used when ipv4 = iprange.

	start_ip?: string

	// Enable/disable address visibility.

	visibility?: string

	// Wildcard FQDN. Required if ipv4 = wildcard-fqdn.

	wildcard_fqdn?: string
}

fmgr_fwpol_ipv4 :: {

	// Enable/disable web cache for HTTPS.
	// choice | disable | Disable web cache for HTTPS.
	// choice | enable | Enable web cache for HTTPS.

	webcache_https?: string

	// Name of an existing DNS filter profile.

	dnsfilter_profile?: string

	// Enable/disable use of Internet Services in source for this policy. If enabled, source address is not used.
	// choice | disable | Disable use of Internet Services source in policy.
	// choice | enable | Enable use of Internet Services source in policy.

	internet_service_src?: string

	// Internet Service source ID.

	internet_service_src_id?: string

	// When enabled internet-service-src specifies what the service must NOT be.
	// choice | disable | Disable negated Internet Service source match.
	// choice | enable | Enable negated Internet Service source match.

	internet_service_src_negate?: string

	// Name of an existing Protocol options profile.

	profile_protocol_options?: string

	// Outgoing (egress) interface.

	dstintf?: string

	// Policy name.

	name?: string

	// When enabled service specifies what the service must NOT be.
	// choice | disable | Disable negated service match.
	// choice | enable | Enable negated service match.

	service_negate?: string

	// Application group names.

	app_group?: string

	// FSSO agent to use for NTLM authentication.

	fsso_agent_for_ntlm?: string

	// Enable to force current sessions to end when the schedule object times out.
	// choice | disable | Disable schedule timeout.
	// choice | enable | Enable schedule timeout.

	schedule_timeout?: string

	// Enable or disable this policy.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	status?: string

	// Name of an existing Antivirus profile.

	av_profile?: string

	// Comment.

	comments?: string

	// Name of an existing Web filter profile.

	webfilter_profile?: string

	// Names of individual users that can authenticate with this policy.

	users?: string

	// The ADOM the configuration should belong to.

	adom?: string

	// Enable to change packet's reverse (reply) DiffServ values to the specified diffservcode-rev value.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	diffserv_reverse?: string

	// Enable DSRI to ignore HTTP server responses.
	// choice | disable | Disable DSRI.
	// choice | enable | Enable DSRI.

	dsri?: string

	// Policy-based IPsec VPN |  apply destination NAT to inbound traffic.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	natinbound?: string

	// URL category ID list.

	url_category?: string

	// Schedule name.

	schedule?: string

	// Reverse traffic shaper.

	traffic_shaper_reverse?: string

	// WAN optimization peer.

	wanopt_peer?: string

	// Custom fields to append to log messages for this policy.

	custom_log_fields?: string

	// Name of an existing ICAP profile.

	icap_profile?: string

	// Policy-based IPsec VPN |  apply source NAT to outbound traffic.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	natoutbound?: string

	// Address names if this is an RTP NAT policy.

	rtp_addr?: string

	// Enable Real Time Protocol (RTP) NAT.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	rtp_nat?: string

	// Enable TCP NPU session delay to guarantee packet order of 3-way handshake.
	// choice | disable | Disable TCP NPU session delay in order to guarantee packet order of 3-way handshake.
	// choice | enable | Enable TCP NPU session delay in order to guarantee packet order of 3-way handshake.

	delay_tcp_npu_session?: string

	// Policy-based IPsec VPN |  only traffic from the internal network can initiate a VPN.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	outbound?: string

	// Service and service group names.

	service?: string

	// Enable negated DSCP match.
	// choice | disable | Disable DSCP negate.
	// choice | enable | Enable DSCP negate.

	dscp_negate?: string

	// Label for the policy that appears when the GUI is in Global View mode.

	global_label?: string

	// When enabled internet-service specifies what the service must NOT be.
	// choice | disable | Disable negated Internet Service match.
	// choice | enable | Enable negated Internet Service match.

	internet_service_negate?: string

	// Name of an existing Spam filter profile.

	spamfilter_profile?: string

	// Enable/disable web cache.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	webcache?: string

	// Enable to prevent source NAT from changing a session's source port.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	fixedport?: string

	// Name of identity-based routing rule.

	identity_based_route?: string

	// Custom Internet Service source name.

	internet_service_src_custom?: string

	// Record logs when a session starts and ends.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	logtraffic_start?: string

	// WAN optimization profile.

	wanopt_profile?: string

	// Sets one of three modes for managing the object.
	// Allows use of soft-adds instead of overwriting existing values

	mode?: string

	// Sender TCP maximum segment size (MSS).

	tcp_mss_sender?: string

	// VPN Source Node Seq.

	vpn_src_node_seq?: string

	// Traffic shaper.

	traffic_shaper?: string

	// Enable to exempt some users from the captive portal.
	// choice | disable | Disable exemption of captive portal.
	// choice | enable | Enable exemption of captive portal.

	captive_portal_exempt?: string

	// When enabled dstaddr specifies what the destination address must NOT be.
	// choice | disable | Disable destination address negate.
	// choice | enable | Enable destination address negate.

	dstaddr_negate?: string

	// Policy-based IPsec VPN |  only traffic from the remote network can initiate a VPN.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	inbound?: string

	// Name of an existing MMS profile.

	mms_profile?: string

	// When enabled srcaddr specifies what the source address must NOT be.
	// choice | disable | Disable source address negate.
	// choice | enable | Enable source address negate.

	srcaddr_negate?: string

	// Custom Internet Service name.

	internet_service_custom?: string

	// Policy ID.

	policyid?: string

	// Normal behavior is to "skip" tasks that fail dependency checks, so other tasks can run.
	// If set to "enabled" if a failed dependency check happeens, Ansible will exit as with failure instead of skip.

	fail_on_missing_dependency?: string

	// Override the default replacement message group for this policy.

	replacemsg_override_group?: string

	// VPN Source Node.

	vpn_src_node_subnet?: string

	// Names of user groups that can authenticate with this policy.

	groups?: string

	// Internet Service ID.

	internet_service_id?: string

	// Enable/disable NTLM guest user access.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	ntlm_guest?: string

	// Per-IP traffic shaper.

	per_ip_shaper?: string

	// Name of an existing VoIP profile.

	voip_profile?: string

	// Policy action (allow/deny/ipsec).
	// choice | deny | Blocks sessions that match the firewall policy.
	// choice | accept | Allows session that match the firewall policy.
	// choice | ipsec | Firewall policy becomes a policy-based IPsec VPN policy.

	action?: string

	// Application ID list.

	application?: string

	// Enable/disable offloading security profile processing to CP processors.
	// choice | disable | Disable ASIC offloading.
	// choice | enable | Enable auto ASIC offloading.

	auto_asic_offload?: string

	// Label for the policy that appears when the GUI is in Section View mode.

	label?: string

	// SSL mirror interface name.

	ssl_mirror_intf?: string

	// Enable/disable sending RST packets when TCP sessions expire.
	// choice | disable | Disable sending of RST packet upon TCP session expiration.
	// choice | enable | Enable sending of RST packet upon TCP session expiration.

	timeout_send_rst?: string

	// WAN optimization auto-detection mode.
	// choice | active | Active WAN optimization peer auto-detection.
	// choice | passive | Passive WAN optimization peer auto-detection.
	// choice | off | Turn off WAN optimization peer auto-detection.

	wanopt_detection?: string

	// Application category ID list.

	app_category?: string

	// Enable/disable user authentication disclaimer.
	// choice | disable | Disable user authentication disclaimer.
	// choice | enable | Enable user authentication disclaimer.

	disclaimer?: string

	// Enable DSCP check.
	// choice | disable | Disable DSCP check.
	// choice | enable | Enable DSCP check.

	dscp_match?: string

	// Name of an existing IPS sensor.

	ips_sensor?: string

	// Name of profile group.

	profile_group?: string

	// Accept UDP packets from any Session Traversal Utilities for NAT (STUN) host.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	permit_stun_host?: string

	// Enable to copy decrypted SSL traffic to a FortiGate interface (called SSL mirroring).
	// choice | disable | Disable SSL mirror.
	// choice | enable | Enable SSL mirror.

	ssl_mirror?: string

	// TTL in seconds for sessions accepted by this policy (0 means use the system default session TTL).

	session_ttl?: string

	// Enable to match packets that have had their destination addresses changed by a VIP.
	// choice | disable | Do not match DNATed packet.
	// choice | enable | Match DNATed packet.

	match_vip?: string

	// Name of an existing SSH filter profile.

	ssh_filter_profile?: string

	// VLAN forward direction user priority | 255 passthrough, 0 lowest, 7 highest.

	vlan_cos_fwd?: string

	// Set VLAN filters.

	vlan_filter?: string

	// WAN optimization passive mode options. This option decides what IP address will be used to connect server.
	// choice | default | Allow client side WAN opt peer to decide.
	// choice | transparent | Use address of client to connect to server.
	// choice | non-transparent | Use local FortiGate address to connect to server.

	wanopt_passive_opt?: string

	// How to handle sessions if the configuration of this firewall policy changes.
	// choice | check-all | Flush all current sessions accepted by this policy.
	// choice | check-new | Continue to allow sessions already accepted by this policy.

	firewall_session_dirty?: string

	// Enable/disable source NAT.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	nat?: string

	// IP Pool names.

	poolname?: string

	// Determine whether the firewall policy allows security profile groups or single profiles only.
	// choice | single | Do not allow security profile groups.
	// choice | group | Allow security profile groups.

	profile_type?: string

	// Enable to change packet's DiffServ values to the specified diffservcode-forward value.
	// choice | disable | Disable WAN optimization.
	// choice | enable | Enable WAN optimization.

	diffserv_forward?: string

	// Policy-based IPsec VPN |  source NAT IP address for outgoing traffic.

	natip?: string

	// Name of an existing SSL SSH profile.

	ssl_ssh_profile?: string

	// Enable to add one or more security profiles (AV, IPS, etc.) to the firewall policy.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	utm_status?: string

	// VLAN reverse direction user priority | 255 passthrough, 0 lowest, 7 highest..

	vlan_cos_rev?: string

	// Change packet's reverse (reply) DiffServ to this value.

	diffservcode_rev?: string

	// HTTP-User-Agent value of supported browsers.

	ntlm_enabled_browsers?: string

	// Destination address and address group names.

	dstaddr?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED. This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.

	vpn_src_node?: string

	// Enable/disable WAN optimization.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	wanopt?: string

	// Name of an existing Application list.

	application_list?: string

	// Enable/disable block notification.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	block_notification?: string

	// Enable/disable capture packets.
	// choice | disable | Disable capture packets.
	// choice | enable | Enable capture packets.

	capture_packet?: string

	// Receiver TCP maximum segment size (MSS).

	tcp_mss_receiver?: string

	// Enable/disable creation of TCP session without SYN flag.
	// choice | all | Enable TCP session without SYN.
	// choice | data-only | Enable TCP session data only.
	// choice | disable | Disable TCP session without SYN.

	tcp_session_without_syn?: string

	// Incoming (ingress) interface.

	srcintf?: string

	// VPN Destination Node Host.

	vpn_dst_node_host?: string

	// Enable/disable authentication-based routing.
	// choice | disable | Disable authentication-based routing.
	// choice | enable | Enable authentication-based routing.

	auth_path?: string

	// Enable/disable UTM Network Processor acceleration.
	// choice | disable | Disable UTM Network Processor acceleration.
	// choice | enable | Enable UTM Network Processor acceleration.

	np_acceleration?: string

	// Enable MAC authentication bypass. The bypassed MAC address must be received from RADIUS server.
	// choice | disable | Disable MAC authentication bypass.
	// choice | enable | Enable MAC authentication bypass.

	radius_mac_auth_bypass?: string

	// Block or monitor connections to Botnet servers or disable Botnet scanning.
	// choice | disable | Do not scan connections to botnet servers.
	// choice | block | Block connections to botnet servers.
	// choice | monitor | Log connections to botnet servers.

	scan_botnet_connections?: string

	// Source address and address group names.

	srcaddr?: string

	// URL users are directed to after seeing and accepting the disclaimer or authenticating.

	redirect_url?: string

	// Enable to send a reply when a session is denied or blocked by a firewall policy.
	// choice | disable | Disable deny-packet sending.
	// choice | enable | Enable deny-packet sending.

	send_deny_packet?: string

	// Enable/disable WiFi Single Sign On (WSSO).
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	wsso?: string

	// HTTPS server certificate for policy authentication.

	auth_cert?: string

	// HTTP-to-HTTPS redirect address for firewall authentication.

	auth_redirect_addr?: string

	// Change packet's DiffServ to this value.

	diffservcode_forward?: string

	// Enable/disable use of Internet Services for this policy. If enabled, dstaddr and service are not used.
	// choice | disable | Disable use of Internet Services in policy.
	// choice | enable | Enable use of Internet Services in policy.

	internet_service?: string

	// Accept UDP packets from any host.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	permit_any_host?: string

	// Enable or disable logging. Log all sessions or security profile sessions.
	// choice | disable | Disable all logging for this policy.
	// choice | all | Log all sessions accepted or denied by this policy.
	// choice | utm | Log traffic that has a security profile applied to it.

	logtraffic?: string

	// Enable/disable forwarding traffic matching this policy to a configured WCCP server.
	// choice | disable | Disable WCCP setting.
	// choice | enable | Enable WCCP setting.

	wccp?: string

	// DSCP value.

	dscp_value?: string

	// GTP profile.

	gtp_profile?: string

	// Name of an existing Web application firewall profile.

	waf_profile?: string

	// Enable/disable RADIUS single sign-on (RSSO).
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	rsso?: string

	// Enable to use IP Pools for source NAT.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	ippool?: string

	// The policy package you want to modify

	package_name?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED. This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.

	vpn_dst_node?: string

	// VPN Destination Node Seq.

	vpn_dst_node_subnet?: string

	// Policy-based IPsec VPN |  name of the IPsec VPN Phase 1.

	vpntunnel?: string

	// VPN Destination Node Seq.

	vpn_dst_node_seq?: string

	// VPN Source Node Host.

	vpn_src_node_host?: string

	// Names of devices or device groups that can be matched by the policy.

	devices?: string

	// Name of an existing DLP sensor.

	dlp_sensor?: string

	// Enable/disable Fortinet Single Sign-On.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	fsso?: string

	// Enable to allow everything, but log all of the meaningful data for security information gathering.
	// choice | disable | Disable learning mode in firewall policy.
	// choice | enable | Enable learning mode in firewall policy.

	learning_mode?: string

	// Enable/disable NTLM authentication.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	ntlm?: string
}

fmgr_provisioning :: {

	// The minor release number such as 6.X.1, as X being the minor release.

	minor_release?: string

	// The name of the device to be provisioned.

	name: string

	// The password associated with the username account.

	password?: string

	// The serial number of the device that will be provisioned.

	serial: string

	// The username to log into the FortiManager

	username: string

	// Description of the device to be provisioned.

	description?: string

	// The name of the device group the provisioned device can belong to.

	group?: string

	// The FortiManager's Address.

	host: string

	// The Fortinet OS version to be used for the device, such as 5.0 or 6.0.

	os_version: string

	// The patch release number such as 6.0.X, as X being the patch release.

	patch_release?: string

	// The name of the policy package to be assigned to the device.

	policy_package: string

	// The administrative domain (admon) the configuration belongs to

	adom: string

	// The Fortinet OS type to be pushed to the device, such as 'FOS' for FortiOS.

	os_type: string

	// The platform of the device, such as model number or VM.

	platform: string

	// The virtual domain (vdom) the configuration belongs to

	vdom?: string
}

fmgr_secprof_av :: {

	// Duration of quarantine.

	nac_quar_expiry?: string

	// Enable/disable stripping of embedded objects in Microsoft Office documents.

	content_disarm_office_embed?: string

	// Enable Content Disarm and Reconstruction for this protocol.

	imap_content_disarm?: string

	// Enable/disable using the mobile malware signature database.

	mobile_malware_db?: string

	// Sets one of three modes for managing the object.
	// Allows use of soft-adds instead of overwriting existing values

	mode?: string

	// Select the archive types to block.
	// FLAG Based Options. Specify multiple in list form.

	smb_archive_block?: string

	// Enable/disable SMTP AntiVirus scanning, monitoring, and quarantine.
	// FLAG Based Options. Specify multiple in list form.

	smtp_options?: string

	// The ADOM the configuration should belong to.

	adom?: string

	// Enable/disable stripping of embedded files in PDF documents.

	content_disarm_pdf_embedfile?: string

	// Enable/disable extended logging for antivirus.

	extended_log?: string

	// Enable Content Disarm and Reconstruction for this protocol.

	http_content_disarm?: string

	// Select the archive types to log.
	// FLAG Based Options. Specify multiple in list form.

	nntp_archive_log?: string

	// Enable FortiGuard Virus Outbreak Prevention service.

	smtp_outbreak_prevention?: string

	// Enable/disable stripping of actions that submit data to other targets in PDF documents.

	content_disarm_pdf_act_form?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	http?: string

	// Select the archive types to log.
	// FLAG Based Options. Specify multiple in list form.

	mapi_archive_log?: string

	// Select the archive types to block.
	// FLAG Based Options. Specify multiple in list form.

	nntp_archive_block?: string

	// Enable/disable MAPI AntiVirus scanning, monitoring, and quarantine.
	// FLAG Based Options. Specify multiple in list form.

	mapi_options?: string

	// Enable/Disable quarantining infected hosts to the banned user list.

	nac_quar_infected?: string

	// Enable/disable AntiVirus quarantine logging.

	nac_quar_log?: string

	// Select the archive types to block.
	// FLAG Based Options. Specify multiple in list form.

	pop3_archive_block?: string

	// Enable/disable stripping of hyperlinks in Microsoft Office documents.

	content_disarm_office_hylink?: string

	// Enable/disable stripping of actions that execute JavaScript code in PDF documents.

	content_disarm_pdf_act_java?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	ftp?: string

	// Enable/disable the virus emulator.

	ftp_emulator?: string

	// Enable/disable POP3 AntiVirus scanning, monitoring, and quarantine.
	// FLAG Based Options. Specify multiple in list form.

	pop3_options?: string

	// Enable/disable stripping of JavaScript code in PDF documents.

	content_disarm_pdf_javacode?: string

	// Select the archive types to block.
	// FLAG Based Options. Specify multiple in list form.

	ftp_archive_block?: string

	// Select the archive types to block.
	// FLAG Based Options. Specify multiple in list form.

	http_archive_block?: string

	// Enable/disable the virus emulator.

	smb_emulator?: string

	// Maximum size of files that can be uploaded to FortiSandbox (1 - 395 MBytes, default = 10).

	analytics_max_upload?: string

	// Comment.

	comment?: string

	// Enable/disable FTP AntiVirus scanning, monitoring, and quarantine.
	// FLAG Based Options. Specify multiple in list form.

	ftp_options?: string

	// Enable/disable stripping of embedded movies in PDF documents.

	content_disarm_pdf_act_movie?: string

	// Select the archive types to log.
	// FLAG Based Options. Specify multiple in list form.

	ftp_archive_log?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	smb?: string

	// Enable/disable SMB AntiVirus scanning, monitoring, and quarantine.
	// FLAG Based Options. Specify multiple in list form.

	smb_options?: string

	// Enable/disable IMAP AntiVirus scanning, monitoring, and quarantine.
	// FLAG Based Options. Specify multiple in list form.

	imap_options?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	nntp?: string

	// Enable/disable NNTP AntiVirus scanning, monitoring, and quarantine.
	// FLAG Based Options. Specify multiple in list form.

	nntp_options?: string

	// Treat Windows executable files as viruses for the purpose of blocking or monitoring.

	pop3_executables?: string

	// Enable/disable only detect disarmable files, do not alter content.

	content_disarm_detect_only?: string

	// Destination to send original file if active content is removed.

	content_disarm_original_file_destination?: string

	// Settings to control which files are uploaded to FortiSandbox.

	ftgd_analytics?: string

	// Enable FortiGuard Virus Outbreak Prevention service.

	http_outbreak_prevention?: string

	// Enable/disable the virus emulator.

	smtp_emulator?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	mapi?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	nac_quar?: string

	// Enable FortiGuard Virus Outbreak Prevention service.

	pop3_outbreak_prevention?: string

	// Select the archive types to log.
	// FLAG Based Options. Specify multiple in list form.

	smb_archive_log?: string

	// Enable FortiGuard Virus Outbreak Prevention service.

	ftp_outbreak_prevention?: string

	// Enable/disable the virus emulator.

	mapi_emulator?: string

	// Enable FortiGuard Virus Outbreak Prevention service.

	smb_outbreak_prevention?: string

	// Select the archive types to log.
	// FLAG Based Options. Specify multiple in list form.

	pop3_archive_log?: string

	// Enable Content Disarm and Reconstruction for this protocol.

	smtp_content_disarm?: string

	// Enable/disable stripping of links to external applications in PDF documents.

	content_disarm_pdf_act_launch?: string

	// Select the archive types to block.
	// FLAG Based Options. Specify multiple in list form.

	imap_archive_block?: string

	// Inspection mode.

	inspection_mode?: string

	// Enable FortiGuard Virus Outbreak Prevention service.

	mapi_outbreak_prevention?: string

	// Treat Windows executable files as viruses for the purpose of blocking or monitoring.

	mapi_executables?: string

	// Enable FortiGuard Virus Outbreak Prevention service.

	nntp_outbreak_prevention?: string

	// Enable Content Disarm and Reconstruction for this protocol.

	pop3_content_disarm?: string

	// Replacement message group customized for this profile.

	replacemsg_group?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	imap?: string

	// Enable/disable the virus emulator.

	imap_emulator?: string

	// Treat Windows executable files as viruses for the purpose of blocking or monitoring.

	imap_executables?: string

	// Enable FortiGuard Virus Outbreak Prevention service.

	imap_outbreak_prevention?: string

	// Enable/disable stripping of links to other PDFs in PDF documents.

	content_disarm_pdf_act_gotor?: string

	// Enable/disable stripping of hyperlinks from PDF documents.

	content_disarm_pdf_hyperlink?: string

	// Select the archive types to log.
	// FLAG Based Options. Specify multiple in list form.

	http_archive_log?: string

	// Select the archive types to log.
	// FLAG Based Options. Specify multiple in list form.

	imap_archive_log?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	content_disarm?: string

	// Enable/disable inserting a cover page into the disarmed document.

	content_disarm_cover_page?: string

	// Enable/disable stripping of linked objects in Microsoft Office documents.

	content_disarm_office_linked?: string

	// Enable/disable stripping of macros in Microsoft Office documents.

	content_disarm_office_macro?: string

	// Profile name.

	name?: string

	// Enable/disable the virus emulator.

	nntp_emulator?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	pop3?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	smtp?: string

	// Enable/disable the virus emulator.

	pop3_emulator?: string

	// Choose between full scan mode and quick scan mode.

	scan_mode?: string

	// Select the archive types to block.
	// FLAG Based Options. Specify multiple in list form.

	smtp_archive_block?: string

	// Select the archive types to log.
	// FLAG Based Options. Specify multiple in list form.

	smtp_archive_log?: string

	// Only submit files matching this DLP file-pattern to FortiSandbox.

	analytics_bl_filetype?: string

	// Enable/disable stripping of embedded sound files in PDF documents.

	content_disarm_pdf_act_sound?: string

	// Enable/disable the virus emulator.

	http_emulator?: string

	// Select the archive types to block.
	// FLAG Based Options. Specify multiple in list form.

	mapi_archive_block?: string

	// Treat Windows executable files as viruses for the purpose of blocking or monitoring.

	smtp_executables?: string

	// Enable/disable using the FortiSandbox signature database to supplement the AV signature databases.

	analytics_db?: string

	// Do not submit files matching this DLP file-pattern to FortiSandbox.

	analytics_wl_filetype?: string

	// Enable/disable logging for AntiVirus file blocking.

	av_block_log?: string

	// Enable/disable AntiVirus logging.

	av_virus_log?: string

	// Enable/disable HTTP AntiVirus scanning, monitoring, and quarantine.
	// FLAG Based Options. Specify multiple in list form.

	http_options?: string
}

fmgr_secprof_voip :: {

	// OPTIONS request rate limit (per second, per policy).

	sip_options_rate?: string

	// Enable/disable trace original IP/port within the contact header of REGISTER requests.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_register_contact_trace?: string

	// REGISTER request rate limit (per second, per policy).

	sip_register_rate?: string

	// Continue tracking calls with no RTP for this many minutes.

	sip_call_keepalive?: string

	// Maximum number of concurrent calls/dialogs (per policy).

	sip_max_dialogs?: string

	// Relative strength of encryption algorithms accepted in negotiation.
	// choice | high | High encryption. Allow only AES and ChaCha.
	// choice | medium | Medium encryption. Allow AES, ChaCha, 3DES, and RC4.
	// choice | low | Low encryption. Allow AES, ChaCha, 3DES, RC4, and DES.

	sip_ssl_algorithm?: string

	// Enable/disable block prack requests.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_block_prack?: string

	// Action for malformed SDP z line.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_sdp_z?: string

	// Action for malformed Call-ID header.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_call_id?: string

	// Action for malformed Record-Route header.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_record_route?: string

	// Action for malformed SDP i line.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_sdp_i?: string

	// Action for malformed SDP v line.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_sdp_v?: string

	// Maximum calls per minute per SCCP client (max 65535).

	sccp_max_calls?: string

	// Enable/disable block OPTIONS requests, but OPTIONS requests still notify for redundancy.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_block_geo_red_options?: string

	// Maximum SIP message body length (0 meaning no limit).

	sip_max_body_length?: string

	// Highest SSL/TLS version to negotiate.
	// choice | ssl-3.0 | SSL 3.0.
	// choice | tls-1.0 | TLS 1.0.
	// choice | tls-1.1 | TLS 1.1.
	// choice | tls-1.2 | TLS 1.2.

	sip_ssl_max_version?: string

	// Enable/disable log summary of SCCP calls.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sccp_log_call_summary?: string

	// Enable/disable block BYE requests.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_block_bye?: string

	// CANCEL request rate limit (per second, per policy).

	sip_cancel_rate?: string

	// ACK request rate limit (per second, per policy).

	sip_ack_rate?: string

	// Action for malformed SDP c line.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_sdp_c?: string

	// SSL/TLS mode for encryption &amp; decryption of traffic.
	// choice | off | No SSL.
	// choice | full | Client to FortiGate and FortiGate to Server SSL.

	sip_ssl_mode?: string

	// Block unrecognized SIP requests (enabled by default).
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_block_unknown?: string

	// Action for malformed Allow header.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_allow?: string

	// Action for malformed P-Asserted-Identity header.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_p_asserted_identity?: string

	// Action for malformed To header.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_to?: string

	// Action for malformed SDP r line.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_sdp_r?: string

	// MESSAGE request rate limit (per second, per policy).

	sip_message_rate?: string

	// Enable/disable only allow the registrar to connect.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_strict_register?: string

	// Enable/disable block SUBSCRIBE requests.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_block_subscribe?: string

	// Action for malformed Route header.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_route?: string

	// Action for malformed VIA header.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_via?: string

	// Enable/disable open pinhole for Via port.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_open_via_pinhole?: string

	// REFER request rate limit (per second, per policy).

	sip_refer_rate?: string

	// Fixup contact anyway even if contact's IP|port doesn't match session's IP|port.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_contact_fixup?: string

	// Enable/disable allow IPS on RTP.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_ips_rtp?: string

	// Enable/disable logging of SIP violations.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_log_violations?: string

	// Enable/disable open pinhole for non-REGISTER Contact port.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_open_contact_pinhole?: string

	// Enable/disable preservation of original IP in SDP i line.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_nat_trace?: string

	// Action for malformed Expires header.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_expires?: string

	// Action for malformed RSeq header.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_rseq?: string

	// Action for malformed SDP k line.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_sdp_k?: string

	// Enable/disable block CANCEL requests.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_block_cancel?: string

	// Enable/disable create pinholes for RTP traffic to traverse firewall.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_rtp?: string

	// SUBSCRIBE request rate limit (per second, per policy).

	sip_subscribe_rate?: string

	// Enable/disable block REGISTER requests.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_block_register?: string

	// Action for malformed SDP b line.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_sdp_b?: string

	// Enable/disable block REFER requests.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_block_refer?: string

	// Enable/disable support via branch compliant with RFC 2543.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_rfc2543_branch?: string

	// Action for unknown SIP header.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_unknown_header?: string

	// Enable/disable open pinhole for Record-Route port.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_open_record_route_pinhole?: string

	// Send empty fragments to avoid attack on CBC IV (SSL 3.0 &amp; TLS 1.0 only).
	// choice | disable | Do not send empty fragments.
	// choice | enable | Send empty fragments.

	sip_ssl_send_empty_frags?: string

	// UPDATE request rate limit (per second, per policy).

	sip_update_rate?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	sccp?: string

	// Enable/disable block INFO requests.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_block_info?: string

	// INFO request rate limit (per second, per policy).

	sip_info_rate?: string

	// Action for malformed Content-Type header.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_content_type?: string

	// Lowest SSL/TLS version to negotiate.
	// choice | ssl-3.0 | SSL 3.0.
	// choice | tls-1.0 | TLS 1.0.
	// choice | tls-1.1 | TLS 1.1.
	// choice | tls-1.2 | TLS 1.2.

	sip_ssl_min_version?: string

	// Enable/disable logging of SCCP violations.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sccp_log_violations?: string

	// Enable/disable block ACK requests.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_block_ack?: string

	// Enable/disable block OPTIONS requests and no OPTIONS as notifying message for redundancy either.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_block_options?: string

	// BYE request rate limit (per second, per policy).

	sip_bye_rate?: string

	// Enable/disable verify SCCP header content.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sccp_verify_header?: string

	// Action for malformed Contact header.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_contact?: string

	// Enable/disable open pinhole for REGISTER Contact port.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_open_register_pinhole?: string

	// Override i line to preserve original IPS (default| append).
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_preserve_override?: string

	// Enable/disable logging of SIP call summary.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_log_call_summary?: string

	// Action for malformed RAck header.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_rack?: string

	// The ADOM the configuration should belong to.

	adom?: string

	// Hosted NAT Traversal (HNT).
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_hosted_nat_traversal?: string

	// Action for malformed request line.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_request_line?: string

	// Action for malformed CSeq header.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_cseq?: string

	// Action for malformed SDP o line.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_sdp_o?: string

	// Comment.

	comment?: string

	// NOTIFY request rate limit (per second, per policy).

	sip_notify_rate?: string

	// Enable/disable SCCP.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sccp_status?: string

	// Enable/disable block MESSAGE requests.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_block_message?: string

	// Enable/disable SIP.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_status?: string

	// Enable/disable block INVITE requests.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_block_invite?: string

	// Action for malformed Max-Forwards header.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_max_forwards?: string

	// PRACK request rate limit (per second, per policy).

	sip_prack_rate?: string

	// SSL Perfect Forward Secrecy.
	// choice | require | PFS mandatory.
	// choice | deny | PFS rejected.
	// choice | allow | PFS allowed.

	sip_ssl_pfs?: string

	// Enable/disable block multicast RTP connections.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sccp_block_mcast?: string

	// Action for malformed SDP a line.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_sdp_a?: string

	// Action for malformed SDP t line.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_sdp_t?: string

	// Require a client certificate and authenticate it with the peer/peergrp.

	sip_ssl_auth_client?: string

	// Action for malformed SDP s line.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_sdp_s?: string

	// Enable/disable block NOTIFY requests.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_block_notify?: string

	// Enable/disable block UPDATE requests.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_block_update?: string

	// Enable/disable restrict RTP source IP to be the same as SIP source IP when HNT is enabled.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_hnt_restrict_source_ip?: string

	// INVITE request rate limit (per second, per policy).

	sip_invite_rate?: string

	// Profile name.

	name?: string

	// Enable/disable block PUBLISH requests.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_block_publish?: string

	// Action for malformed SDP m line.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_sdp_m?: string

	// Allow/block client renegotiation by server.
	// choice | allow | Allow a SSL client to renegotiate.
	// choice | deny | Abort any SSL connection that attempts to renegotiate.
	// choice | secure | Reject any SSL connection that does not offer a RFC 5746 Secure Renegotiation Indication.

	sip_ssl_client_renegotiation?: string

	// Maximum SIP header line length (78-4096).

	sip_max_line_length?: string

	// Enable/disable no SDP fix-up.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_no_sdp_fixup?: string

	// Action for malformed From header.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_from?: string

	// Action for malformed Content-Length header.
	// choice | pass | Bypass malformed messages.
	// choice | discard | Discard malformed messages.
	// choice | respond | Respond with error code.

	sip_malformed_header_content_length?: string

	// Expiry time for provisional INVITE (10 - 3600 sec).

	sip_provisional_invite_expiry_time?: string

	// PUBLISH request rate limit (per second, per policy).

	sip_publish_rate?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	sip?: string

	// Authenticate the server's certificate with the peer/peergrp.

	sip_ssl_auth_server?: string

	// Sets one of three modes for managing the object.
	// Allows use of soft-adds instead of overwriting existing values

	mode?: string

	// Enable/disable block requests with headers exceeding max-line-length.
	// choice | disable | Disable status.
	// choice | enable | Enable status.

	sip_block_long_lines?: string

	// Maximum number established but idle dialogs to retain (per policy).

	sip_max_idle_dialogs?: string

	// Name of Certificate to offer to server if requested.

	sip_ssl_client_certificate?: string

	// Name of Certificate return to the client in every SSL connection.

	sip_ssl_server_certificate?: string
}

fmgr_device :: {

	// The password of the device being added to FortiManager.

	device_password?: string

	// The serial number of the device being added to FortiManager.

	device_serial?: string

	// The desired "friendly" name of the device being added to FortiManager.

	device_unique_name?: string

	// The username of the device being added to FortiManager.

	device_username?: string

	// The desired mode of the specified object.

	mode?: string

	// The ADOM the configuration should belong to.

	adom: string

	// When adding a device, module will check if it exists, and skip if it does.
	// If enabled, this option will stop the module from checking if it already exists, and blindly add the device.

	blind_add?: string

	// The IP of the device being added to FortiManager. Supports both IPv4 and IPv6.

	device_ip?: string
}

fmgr_fwobj_vip :: {

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_dns_mapping_ttl?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_http_cookie_path?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | high |
	// choice | medium |
	// choice | low |
	// choice | custom |

	dynamic_mapping_ssl_algorithm?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_ssl_client_session_state_max?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | disable |
	// choice | enable |

	dynamic_mapping_ssl_hpkp_include_subdomains?: string

	// Enable/disable verification that inserted HTTPS cookies are secure.
	// choice | disable | Do not mark cookie as secure, allow sharing between an HTTP and HTTPS connection.
	// choice | enable | Mark inserted cookie as secure, cookie can only be used for HTTPS a connection.

	https_cookie_secure?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	dynamic_mapping?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_realservers_ip?: string

	// For HTTP multiplexing, enter a custom HTTPS header name. The orig client IP address is added to this header.
	// If empty, X-Forwarded-For is used.

	http_ip_header_name?: string

	// Enable to add the Front-End-Https header for Microsoft Outlook Web Access.
	// choice | disable | Disable Outlook Web Access support.
	// choice | enable | Enable Outlook Web Access support.

	outlook_web_access?: string

	// Enable/disable port forwarding.
	// choice | disable | Disable port forward.
	// choice | enable | Enable port forward.

	portforward?: string

	// Interfaces to which the VIP applies. Separate the names with spaces.

	srcintf_filter?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_mappedip?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | disable |
	// choice | time |
	// choice | count |
	// choice | both |

	dynamic_mapping_ssl_client_session_state_type?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | disable |
	// choice | enable |

	dynamic_mapping_weblogic_server?: string

	// Protocol to use when forwarding packets.
	// choice | tcp | TCP.
	// choice | udp | UDP.
	// choice | sctp | SCTP.
	// choice | icmp | ICMP.

	protocol?: string

	// Permitted encryption algorithms for SSL sessions according to encryption strength.
	// choice | high | High encryption. Allow only AES and ChaCha.
	// choice | medium | Medium encryption. Allow AES, ChaCha, 3DES, and RC4.
	// choice | low | Low encryption. Allow AES, ChaCha, 3DES, RC4, and DES.
	// choice | custom | Custom encryption. Use config ssl-cipher-suites to select the cipher suites that are allowed.

	ssl_algorithm?: string

	// Lowest SSL/TLS version acceptable from a server. Use the client setting by default.
	// choice | ssl-3.0 | SSL 3.0.
	// choice | tls-1.0 | TLS 1.0.
	// choice | tls-1.1 | TLS 1.1.
	// choice | tls-1.2 | TLS 1.2.
	// choice | client | Use same value as client configuration.

	ssl_server_min_version?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | static |
	// choice | round-robin |
	// choice | weighted |
	// choice | least-session |
	// choice | least-rtt |
	// choice | first-alive |
	// choice | http-host |

	dynamic_mapping_ldb_method?: string

	// Number of minutes to keep FortiGate to Server SSL session state.

	ssl_server_session_state_timeout?: string

	// Enable to add an HTTP header to indicate SSL offloading for a WebLogic server.
	// choice | disable | Do not add HTTP header indicating SSL offload for WebLogic server.
	// choice | enable | Add HTTP header indicating SSL offload for WebLogic server.

	weblogic_server?: string

	// Enable to add an HTTP header to indicate SSL offloading for a WebSphere server.
	// choice | disable | Do not add HTTP header indicating SSL offload for WebSphere server.
	// choice | enable | Add HTTP header indicating SSL offload for WebSphere server.

	websphere_server?: string

	// Enable to check the responsiveness of the real server before forwarding traffic.
	// choice | disable | Disable per server health check.
	// choice | enable | Enable per server health check.
	// choice | vip | Use health check defined in VIP.

	realservers_healthcheck?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_ssl_hpkp_age?: string

	// Maximum number of FortiGate to Server SSL session states to keep.

	ssl_server_session_state_max?: string

	// Configure a static NAT, load balance, server load balance, DNS translation, or FQDN VIP.
	// choice | static-nat | Static NAT.
	// choice | load-balance | Load balance.
	// choice | server-load-balance | Server load balance.
	// choice | dns-translation | DNS translation.
	// choice | fqdn | FQDN Translation

	type?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | disable |
	// choice | enable |

	dynamic_mapping_http_cookie_domain_from_host?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | disable |
	// choice | enable |

	dynamic_mapping_outlook_web_access?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | none |
	// choice | http-cookie |
	// choice | ssl-session-id |

	dynamic_mapping_persistence?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_realservers_holddown_interval?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | disable |
	// choice | enable |

	dynamic_mapping_websphere_server?: string

	// Number of bits to use in the Diffie-Hellman exchange for RSA encryption of SSL sessions.
	// choice | 768 | 768-bit Diffie-Hellman prime.
	// choice | 1024 | 1024-bit Diffie-Hellman prime.
	// choice | 1536 | 1536-bit Diffie-Hellman prime.
	// choice | 2048 | 2048-bit Diffie-Hellman prime.
	// choice | 3072 | 3072-bit Diffie-Hellman prime.
	// choice | 4096 | 4096-bit Diffie-Hellman prime.

	ssl_dh_bits?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_extip?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | ssl-3.0 |
	// choice | tls-1.0 |
	// choice | tls-1.1 |
	// choice | tls-1.2 |

	dynamic_mapping_ssl_min_version?: string

	// IP address or address range on the external interface that you want to map to an address or address range on t
	// he destination network.

	extip?: string

	// Certificate to generate backup HPKP pin from.

	ssl_hpkp_backup?: string

	// Indicate that HSTS header applies to all subdomains.
	// choice | disable | HSTS header does not apply to subdomains.
	// choice | enable | HSTS header applies to subdomains.

	ssl_hsts_include_subdomains?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_ssl_hsts_age?: string

	// Enable to respond to ARP requests for this virtual IP address. Enabled by default.
	// choice | disable | Disable ARP reply.
	// choice | enable | Enable ARP reply.

	arp_reply?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | high |
	// choice | low |
	// choice | medium |
	// choice | custom |
	// choice | client |

	dynamic_mapping_ssl_server_algorithm?: string

	// Mapped FQDN address name.

	mapped_addr?: string

	// Cipher suite name.
	// choice | TLS-RSA-WITH-RC4-128-MD5 | Cipher suite TLS-RSA-WITH-RC4-128-MD5.
	// choice | TLS-RSA-WITH-RC4-128-SHA | Cipher suite TLS-RSA-WITH-RC4-128-SHA.
	// choice | TLS-RSA-WITH-DES-CBC-SHA | Cipher suite TLS-RSA-WITH-DES-CBC-SHA.
	// choice | TLS-RSA-WITH-3DES-EDE-CBC-SHA | Cipher suite TLS-RSA-WITH-3DES-EDE-CBC-SHA.
	// choice | TLS-RSA-WITH-AES-128-CBC-SHA | Cipher suite TLS-RSA-WITH-AES-128-CBC-SHA.
	// choice | TLS-RSA-WITH-AES-256-CBC-SHA | Cipher suite TLS-RSA-WITH-AES-256-CBC-SHA.
	// choice | TLS-RSA-WITH-AES-128-CBC-SHA256 | Cipher suite TLS-RSA-WITH-AES-128-CBC-SHA256.
	// choice | TLS-RSA-WITH-AES-256-CBC-SHA256 | Cipher suite TLS-RSA-WITH-AES-256-CBC-SHA256.
	// choice | TLS-RSA-WITH-CAMELLIA-128-CBC-SHA | Cipher suite TLS-RSA-WITH-CAMELLIA-128-CBC-SHA.
	// choice | TLS-RSA-WITH-CAMELLIA-256-CBC-SHA | Cipher suite TLS-RSA-WITH-CAMELLIA-256-CBC-SHA.
	// choice | TLS-RSA-WITH-CAMELLIA-128-CBC-SHA256 | Cipher suite TLS-RSA-WITH-CAMELLIA-128-CBC-SHA256.
	// choice | TLS-RSA-WITH-CAMELLIA-256-CBC-SHA256 | Cipher suite TLS-RSA-WITH-CAMELLIA-256-CBC-SHA256.
	// choice | TLS-RSA-WITH-SEED-CBC-SHA | Cipher suite TLS-RSA-WITH-SEED-CBC-SHA.
	// choice | TLS-RSA-WITH-ARIA-128-CBC-SHA256 | Cipher suite TLS-RSA-WITH-ARIA-128-CBC-SHA256.
	// choice | TLS-RSA-WITH-ARIA-256-CBC-SHA384 | Cipher suite TLS-RSA-WITH-ARIA-256-CBC-SHA384.
	// choice | TLS-DHE-RSA-WITH-DES-CBC-SHA | Cipher suite TLS-DHE-RSA-WITH-DES-CBC-SHA.
	// choice | TLS-DHE-RSA-WITH-3DES-EDE-CBC-SHA | Cipher suite TLS-DHE-RSA-WITH-3DES-EDE-CBC-SHA.
	// choice | TLS-DHE-RSA-WITH-AES-128-CBC-SHA | Cipher suite TLS-DHE-RSA-WITH-AES-128-CBC-SHA.
	// choice | TLS-DHE-RSA-WITH-AES-256-CBC-SHA | Cipher suite TLS-DHE-RSA-WITH-AES-256-CBC-SHA.
	// choice | TLS-DHE-RSA-WITH-AES-128-CBC-SHA256 | Cipher suite TLS-DHE-RSA-WITH-AES-128-CBC-SHA256.
	// choice | TLS-DHE-RSA-WITH-AES-256-CBC-SHA256 | Cipher suite TLS-DHE-RSA-WITH-AES-256-CBC-SHA256.
	// choice | TLS-DHE-RSA-WITH-CAMELLIA-128-CBC-SHA | Cipher suite TLS-DHE-RSA-WITH-CAMELLIA-128-CBC-SHA.
	// choice | TLS-DHE-RSA-WITH-CAMELLIA-256-CBC-SHA | Cipher suite TLS-DHE-RSA-WITH-CAMELLIA-256-CBC-SHA.
	// choice | TLS-DHE-RSA-WITH-CAMELLIA-128-CBC-SHA256 | Cipher suite TLS-DHE-RSA-WITH-CAMELLIA-128-CBC-SHA256.
	// choice | TLS-DHE-RSA-WITH-CAMELLIA-256-CBC-SHA256 | Cipher suite TLS-DHE-RSA-WITH-CAMELLIA-256-CBC-SHA256.
	// choice | TLS-DHE-RSA-WITH-SEED-CBC-SHA | Cipher suite TLS-DHE-RSA-WITH-SEED-CBC-SHA.
	// choice | TLS-DHE-RSA-WITH-ARIA-128-CBC-SHA256 | Cipher suite TLS-DHE-RSA-WITH-ARIA-128-CBC-SHA256.
	// choice | TLS-DHE-RSA-WITH-ARIA-256-CBC-SHA384 | Cipher suite TLS-DHE-RSA-WITH-ARIA-256-CBC-SHA384.
	// choice | TLS-ECDHE-RSA-WITH-RC4-128-SHA | Cipher suite TLS-ECDHE-RSA-WITH-RC4-128-SHA.
	// choice | TLS-ECDHE-RSA-WITH-3DES-EDE-CBC-SHA | Cipher suite TLS-ECDHE-RSA-WITH-3DES-EDE-CBC-SHA.
	// choice | TLS-ECDHE-RSA-WITH-AES-128-CBC-SHA | Cipher suite TLS-ECDHE-RSA-WITH-AES-128-CBC-SHA.
	// choice | TLS-ECDHE-RSA-WITH-AES-256-CBC-SHA | Cipher suite TLS-ECDHE-RSA-WITH-AES-256-CBC-SHA.
	// choice | TLS-ECDHE-RSA-WITH-CHACHA20-POLY1305-SHA256 | Cipher suite TLS-ECDHE-RSA-WITH-CHACHA20-POLY1305-SHA256.
	// choice | TLS-ECDHE-ECDSA-WITH-CHACHA20-POLY1305-SHA256 | Suite TLS-ECDHE-ECDSA-WITH-CHACHA20-POLY1305-SHA256.
	// choice | TLS-DHE-RSA-WITH-CHACHA20-POLY1305-SHA256 | Cipher suite TLS-DHE-RSA-WITH-CHACHA20-POLY1305-SHA256.
	// choice | TLS-DHE-RSA-WITH-AES-128-GCM-SHA256 | Cipher suite TLS-DHE-RSA-WITH-AES-128-GCM-SHA256.
	// choice | TLS-DHE-RSA-WITH-AES-256-GCM-SHA384 | Cipher suite TLS-DHE-RSA-WITH-AES-256-GCM-SHA384.
	// choice | TLS-DHE-DSS-WITH-AES-128-CBC-SHA | Cipher suite TLS-DHE-DSS-WITH-AES-128-CBC-SHA.
	// choice | TLS-DHE-DSS-WITH-AES-256-CBC-SHA | Cipher suite TLS-DHE-DSS-WITH-AES-256-CBC-SHA.
	// choice | TLS-DHE-DSS-WITH-AES-128-CBC-SHA256 | Cipher suite TLS-DHE-DSS-WITH-AES-128-CBC-SHA256.
	// choice | TLS-DHE-DSS-WITH-AES-128-GCM-SHA256 | Cipher suite TLS-DHE-DSS-WITH-AES-128-GCM-SHA256.
	// choice | TLS-DHE-DSS-WITH-AES-256-CBC-SHA256 | Cipher suite TLS-DHE-DSS-WITH-AES-256-CBC-SHA256.
	// choice | TLS-DHE-DSS-WITH-AES-256-GCM-SHA384 | Cipher suite TLS-DHE-DSS-WITH-AES-256-GCM-SHA384.
	// choice | TLS-ECDHE-RSA-WITH-AES-128-CBC-SHA256 | Cipher suite TLS-ECDHE-RSA-WITH-AES-128-CBC-SHA256.
	// choice | TLS-ECDHE-RSA-WITH-AES-128-GCM-SHA256 | Cipher suite TLS-ECDHE-RSA-WITH-AES-128-GCM-SHA256.
	// choice | TLS-ECDHE-RSA-WITH-AES-256-CBC-SHA384 | Cipher suite TLS-ECDHE-RSA-WITH-AES-256-CBC-SHA384.
	// choice | TLS-ECDHE-RSA-WITH-AES-256-GCM-SHA384 | Cipher suite TLS-ECDHE-RSA-WITH-AES-256-GCM-SHA384.
	// choice | TLS-ECDHE-ECDSA-WITH-AES-128-CBC-SHA | Cipher suite TLS-ECDHE-ECDSA-WITH-AES-128-CBC-SHA.
	// choice | TLS-ECDHE-ECDSA-WITH-AES-128-CBC-SHA256 | Cipher suite TLS-ECDHE-ECDSA-WITH-AES-128-CBC-SHA256.
	// choice | TLS-ECDHE-ECDSA-WITH-AES-128-GCM-SHA256 | Cipher suite TLS-ECDHE-ECDSA-WITH-AES-128-GCM-SHA256.
	// choice | TLS-ECDHE-ECDSA-WITH-AES-256-CBC-SHA384 | Cipher suite TLS-ECDHE-ECDSA-WITH-AES-256-CBC-SHA384.
	// choice | TLS-ECDHE-ECDSA-WITH-AES-256-GCM-SHA384 | Cipher suite TLS-ECDHE-ECDSA-WITH-AES-256-GCM-SHA384.
	// choice | TLS-RSA-WITH-AES-128-GCM-SHA256 | Cipher suite TLS-RSA-WITH-AES-128-GCM-SHA256.
	// choice | TLS-RSA-WITH-AES-256-GCM-SHA384 | Cipher suite TLS-RSA-WITH-AES-256-GCM-SHA384.
	// choice | TLS-DHE-DSS-WITH-CAMELLIA-128-CBC-SHA | Cipher suite TLS-DSS-RSA-WITH-CAMELLIA-128-CBC-SHA.
	// choice | TLS-DHE-DSS-WITH-CAMELLIA-256-CBC-SHA | Cipher suite TLS-DHE-DSS-WITH-CAMELLIA-256-CBC-SHA.
	// choice | TLS-DHE-DSS-WITH-CAMELLIA-128-CBC-SHA256 | Cipher suite TLS-DHE-DSS-WITH-CAMELLIA-128-CBC-SHA256.
	// choice | TLS-DHE-DSS-WITH-CAMELLIA-256-CBC-SHA256 | Cipher suite TLS-DHE-DSS-WITH-CAMELLIA-256-CBC-SHA256.
	// choice | TLS-DHE-DSS-WITH-SEED-CBC-SHA | Cipher suite TLS-DHE-DSS-WITH-SEED-CBC-SHA.
	// choice | TLS-DHE-DSS-WITH-ARIA-128-CBC-SHA256 | Cipher suite TLS-DHE-DSS-WITH-ARIA-128-CBC-SHA256.
	// choice | TLS-DHE-DSS-WITH-ARIA-256-CBC-SHA384 | Cipher suite TLS-DHE-DSS-WITH-ARIA-256-CBC-SHA384.
	// choice | TLS-ECDHE-RSA-WITH-ARIA-128-CBC-SHA256 | Cipher suite TLS-ECDHE-RSA-WITH-ARIA-128-CBC-SHA256.
	// choice | TLS-ECDHE-RSA-WITH-ARIA-256-CBC-SHA384 | Cipher suite TLS-ECDHE-RSA-WITH-ARIA-256-CBC-SHA384.
	// choice | TLS-ECDHE-ECDSA-WITH-ARIA-128-CBC-SHA256 | Cipher suite TLS-ECDHE-ECDSA-WITH-ARIA-128-CBC_SHA256.
	// choice | TLS-ECDHE-ECDSA-WITH-ARIA-256-CBC-SHA384 | Cipher suite TLS-ECDHE-ECDSA-WITH-ARIA-256-CBC_SHA384.
	// choice | TLS-DHE-DSS-WITH-3DES-EDE-CBC-SHA | Cipher suite TLS-DHE-DSS-WITH-3DES-EDE-CBC-SHA.
	// choice | TLS-DHE-DSS-WITH-DES-CBC-SHA | Cipher suite TLS-DHE-DSS-WITH-DES-CBC-SHA.

	ssl_server_cipher_suites_cipher?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | disable |
	// choice | enable |

	dynamic_mapping_ssl_send_empty_frags?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_http_cookie_generation?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_realservers_port?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | http |
	// choice | https |
	// choice | ssl |
	// choice | tcp |
	// choice | udp |
	// choice | ip |
	// choice | imaps |
	// choice | pop3s |
	// choice | smtps |

	dynamic_mapping_server_type?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_ssl_hpkp_backup?: string

	// Port number range on the destination network to which the external port number range is mapped.

	mappedport?: string

	// Maximum number of incomplete connections.

	max_embryonic_connections?: string

	// Enable/disable support for preventing Downgrade Attacks on client connections (RFC 7507).
	// choice | disable | Disable.
	// choice | enable | Enable.

	ssl_client_fallback?: string

	// The ADOM the configuration should belong to.

	adom?: string

	// Number of seconds the client should honour the HSTS setting.

	ssl_hsts_age?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | 1-to-1 |
	// choice | m-to-n |

	dynamic_mapping_portmapping_type?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | tcp |
	// choice | udp |
	// choice | sctp |
	// choice | icmp |

	dynamic_mapping_protocol?: string

	// HTTP server domain name in HTTP header.

	realservers_http_host?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_mapped_addr?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_realservers_monitor?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | 768 |
	// choice | 1024 |
	// choice | 1536 |
	// choice | 2048 |
	// choice | 3072 |
	// choice | 4096 |

	dynamic_mapping_ssl_dh_bits?: string

	// Enable to prevent unintended servers from using a virtual IP.
	// Disable to use the actual IP address of the server as the source address.
	// choice | disable | Do not force to NAT as VIP.
	// choice | enable | Force to NAT as VIP.

	nat_source_vip?: string

	// Weight of the real server. If weighted load balancing is enabled, the server with the highest weight gets more
	// connections.

	realservers_weight?: string

	// Number of minutes to keep client to FortiGate SSL session state.

	ssl_client_session_state_timeout?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_mappedport?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | disable |
	// choice | enable |

	dynamic_mapping_http_multiplex?: string

	// Generation of HTTP cookie to be accepted. Changing invalidates all existing cookies.

	http_cookie_generation?: string

	// IP address of the real server.

	realservers_ip?: string

	// Set the status of the real server to active so that it can accept traffic.
	// Or on standby or disabled so no traffic is sent.
	// choice | active | Server status active.
	// choice | standby | Server status standby.
	// choice | disable | Server status disable.

	realservers_status?: string

	// Enable to replace HTTP with HTTPS in the reply's Location HTTP header field.
	// choice | disable | Disable HTTP location conversion.
	// choice | enable | Enable HTTP location conversion.

	ssl_http_location_conversion?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_http_ip_header_name?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | active |
	// choice | standby |
	// choice | disable |

	dynamic_mapping_realservers_status?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | half |
	// choice | full |

	dynamic_mapping_ssl_mode?: string

	// Virtual IP name.

	name?: string

	// Port mapping type.
	// choice | 1-to-1 | One to one.
	// choice | m-to-n | Many to many.

	portmapping_type?: string

	// Cipher suite name.
	// choice | TLS-RSA-WITH-RC4-128-MD5 | Cipher suite TLS-RSA-WITH-RC4-128-MD5.
	// choice | TLS-RSA-WITH-RC4-128-SHA | Cipher suite TLS-RSA-WITH-RC4-128-SHA.
	// choice | TLS-RSA-WITH-DES-CBC-SHA | Cipher suite TLS-RSA-WITH-DES-CBC-SHA.
	// choice | TLS-RSA-WITH-3DES-EDE-CBC-SHA | Cipher suite TLS-RSA-WITH-3DES-EDE-CBC-SHA.
	// choice | TLS-RSA-WITH-AES-128-CBC-SHA | Cipher suite TLS-RSA-WITH-AES-128-CBC-SHA.
	// choice | TLS-RSA-WITH-AES-256-CBC-SHA | Cipher suite TLS-RSA-WITH-AES-256-CBC-SHA.
	// choice | TLS-RSA-WITH-AES-128-CBC-SHA256 | Cipher suite TLS-RSA-WITH-AES-128-CBC-SHA256.
	// choice | TLS-RSA-WITH-AES-256-CBC-SHA256 | Cipher suite TLS-RSA-WITH-AES-256-CBC-SHA256.
	// choice | TLS-RSA-WITH-CAMELLIA-128-CBC-SHA | Cipher suite TLS-RSA-WITH-CAMELLIA-128-CBC-SHA.
	// choice | TLS-RSA-WITH-CAMELLIA-256-CBC-SHA | Cipher suite TLS-RSA-WITH-CAMELLIA-256-CBC-SHA.
	// choice | TLS-RSA-WITH-CAMELLIA-128-CBC-SHA256 | Cipher suite TLS-RSA-WITH-CAMELLIA-128-CBC-SHA256.
	// choice | TLS-RSA-WITH-CAMELLIA-256-CBC-SHA256 | Cipher suite TLS-RSA-WITH-CAMELLIA-256-CBC-SHA256.
	// choice | TLS-RSA-WITH-SEED-CBC-SHA | Cipher suite TLS-RSA-WITH-SEED-CBC-SHA.
	// choice | TLS-RSA-WITH-ARIA-128-CBC-SHA256 | Cipher suite TLS-RSA-WITH-ARIA-128-CBC-SHA256.
	// choice | TLS-RSA-WITH-ARIA-256-CBC-SHA384 | Cipher suite TLS-RSA-WITH-ARIA-256-CBC-SHA384.
	// choice | TLS-DHE-RSA-WITH-DES-CBC-SHA | Cipher suite TLS-DHE-RSA-WITH-DES-CBC-SHA.
	// choice | TLS-DHE-RSA-WITH-3DES-EDE-CBC-SHA | Cipher suite TLS-DHE-RSA-WITH-3DES-EDE-CBC-SHA.
	// choice | TLS-DHE-RSA-WITH-AES-128-CBC-SHA | Cipher suite TLS-DHE-RSA-WITH-AES-128-CBC-SHA.
	// choice | TLS-DHE-RSA-WITH-AES-256-CBC-SHA | Cipher suite TLS-DHE-RSA-WITH-AES-256-CBC-SHA.
	// choice | TLS-DHE-RSA-WITH-AES-128-CBC-SHA256 | Cipher suite TLS-DHE-RSA-WITH-AES-128-CBC-SHA256.
	// choice | TLS-DHE-RSA-WITH-AES-256-CBC-SHA256 | Cipher suite TLS-DHE-RSA-WITH-AES-256-CBC-SHA256.
	// choice | TLS-DHE-RSA-WITH-CAMELLIA-128-CBC-SHA | Cipher suite TLS-DHE-RSA-WITH-CAMELLIA-128-CBC-SHA.
	// choice | TLS-DHE-RSA-WITH-CAMELLIA-256-CBC-SHA | Cipher suite TLS-DHE-RSA-WITH-CAMELLIA-256-CBC-SHA.
	// choice | TLS-DHE-RSA-WITH-CAMELLIA-128-CBC-SHA256 | Cipher suite TLS-DHE-RSA-WITH-CAMELLIA-128-CBC-SHA256.
	// choice | TLS-DHE-RSA-WITH-CAMELLIA-256-CBC-SHA256 | Cipher suite TLS-DHE-RSA-WITH-CAMELLIA-256-CBC-SHA256.
	// choice | TLS-DHE-RSA-WITH-SEED-CBC-SHA | Cipher suite TLS-DHE-RSA-WITH-SEED-CBC-SHA.
	// choice | TLS-DHE-RSA-WITH-ARIA-128-CBC-SHA256 | Cipher suite TLS-DHE-RSA-WITH-ARIA-128-CBC-SHA256.
	// choice | TLS-DHE-RSA-WITH-ARIA-256-CBC-SHA384 | Cipher suite TLS-DHE-RSA-WITH-ARIA-256-CBC-SHA384.
	// choice | TLS-ECDHE-RSA-WITH-RC4-128-SHA | Cipher suite TLS-ECDHE-RSA-WITH-RC4-128-SHA.
	// choice | TLS-ECDHE-RSA-WITH-3DES-EDE-CBC-SHA | Cipher suite TLS-ECDHE-RSA-WITH-3DES-EDE-CBC-SHA.
	// choice | TLS-ECDHE-RSA-WITH-AES-128-CBC-SHA | Cipher suite TLS-ECDHE-RSA-WITH-AES-128-CBC-SHA.
	// choice | TLS-ECDHE-RSA-WITH-AES-256-CBC-SHA | Cipher suite TLS-ECDHE-RSA-WITH-AES-256-CBC-SHA.
	// choice | TLS-ECDHE-RSA-WITH-CHACHA20-POLY1305-SHA256 | Cipher suite TLS-ECDHE-RSA-WITH-CHACHA20-POLY1305-SHA256.
	// choice | TLS-ECDHE-ECDSA-WITH-CHACHA20-POLY1305-SHA256 | Cipher suite TLS-ECDHE-ECDSA-WITH-CHACHA20-POLY1305-SHA256.
	// choice | TLS-DHE-RSA-WITH-CHACHA20-POLY1305-SHA256 | Cipher suite TLS-DHE-RSA-WITH-CHACHA20-POLY1305-SHA256.
	// choice | TLS-DHE-RSA-WITH-AES-128-GCM-SHA256 | Cipher suite TLS-DHE-RSA-WITH-AES-128-GCM-SHA256.
	// choice | TLS-DHE-RSA-WITH-AES-256-GCM-SHA384 | Cipher suite TLS-DHE-RSA-WITH-AES-256-GCM-SHA384.
	// choice | TLS-DHE-DSS-WITH-AES-128-CBC-SHA | Cipher suite TLS-DHE-DSS-WITH-AES-128-CBC-SHA.
	// choice | TLS-DHE-DSS-WITH-AES-256-CBC-SHA | Cipher suite TLS-DHE-DSS-WITH-AES-256-CBC-SHA.
	// choice | TLS-DHE-DSS-WITH-AES-128-CBC-SHA256 | Cipher suite TLS-DHE-DSS-WITH-AES-128-CBC-SHA256.
	// choice | TLS-DHE-DSS-WITH-AES-128-GCM-SHA256 | Cipher suite TLS-DHE-DSS-WITH-AES-128-GCM-SHA256.
	// choice | TLS-DHE-DSS-WITH-AES-256-CBC-SHA256 | Cipher suite TLS-DHE-DSS-WITH-AES-256-CBC-SHA256.
	// choice | TLS-DHE-DSS-WITH-AES-256-GCM-SHA384 | Cipher suite TLS-DHE-DSS-WITH-AES-256-GCM-SHA384.
	// choice | TLS-ECDHE-RSA-WITH-AES-128-CBC-SHA256 | Cipher suite TLS-ECDHE-RSA-WITH-AES-128-CBC-SHA256.
	// choice | TLS-ECDHE-RSA-WITH-AES-128-GCM-SHA256 | Cipher suite TLS-ECDHE-RSA-WITH-AES-128-GCM-SHA256.
	// choice | TLS-ECDHE-RSA-WITH-AES-256-CBC-SHA384 | Cipher suite TLS-ECDHE-RSA-WITH-AES-256-CBC-SHA384.
	// choice | TLS-ECDHE-RSA-WITH-AES-256-GCM-SHA384 | Cipher suite TLS-ECDHE-RSA-WITH-AES-256-GCM-SHA384.
	// choice | TLS-ECDHE-ECDSA-WITH-AES-128-CBC-SHA | Cipher suite TLS-ECDHE-ECDSA-WITH-AES-128-CBC-SHA.
	// choice | TLS-ECDHE-ECDSA-WITH-AES-128-CBC-SHA256 | Cipher suite TLS-ECDHE-ECDSA-WITH-AES-128-CBC-SHA256.
	// choice | TLS-ECDHE-ECDSA-WITH-AES-128-GCM-SHA256 | Cipher suite TLS-ECDHE-ECDSA-WITH-AES-128-GCM-SHA256.
	// choice | TLS-ECDHE-ECDSA-WITH-AES-256-CBC-SHA384 | Cipher suite TLS-ECDHE-ECDSA-WITH-AES-256-CBC-SHA384.
	// choice | TLS-ECDHE-ECDSA-WITH-AES-256-GCM-SHA384 | Cipher suite TLS-ECDHE-ECDSA-WITH-AES-256-GCM-SHA384.
	// choice | TLS-RSA-WITH-AES-128-GCM-SHA256 | Cipher suite TLS-RSA-WITH-AES-128-GCM-SHA256.
	// choice | TLS-RSA-WITH-AES-256-GCM-SHA384 | Cipher suite TLS-RSA-WITH-AES-256-GCM-SHA384.
	// choice | TLS-DHE-DSS-WITH-CAMELLIA-128-CBC-SHA | Cipher suite TLS-DSS-RSA-WITH-CAMELLIA-128-CBC-SHA.
	// choice | TLS-DHE-DSS-WITH-CAMELLIA-256-CBC-SHA | Cipher suite TLS-DHE-DSS-WITH-CAMELLIA-256-CBC-SHA.
	// choice | TLS-DHE-DSS-WITH-CAMELLIA-128-CBC-SHA256 | Cipher suite TLS-DHE-DSS-WITH-CAMELLIA-128-CBC-SHA256.
	// choice | TLS-DHE-DSS-WITH-CAMELLIA-256-CBC-SHA256 | Cipher suite TLS-DHE-DSS-WITH-CAMELLIA-256-CBC-SHA256.
	// choice | TLS-DHE-DSS-WITH-SEED-CBC-SHA | Cipher suite TLS-DHE-DSS-WITH-SEED-CBC-SHA.
	// choice | TLS-DHE-DSS-WITH-ARIA-128-CBC-SHA256 | Cipher suite TLS-DHE-DSS-WITH-ARIA-128-CBC-SHA256.
	// choice | TLS-DHE-DSS-WITH-ARIA-256-CBC-SHA384 | Cipher suite TLS-DHE-DSS-WITH-ARIA-256-CBC-SHA384.
	// choice | TLS-ECDHE-RSA-WITH-ARIA-128-CBC-SHA256 | Cipher suite TLS-ECDHE-RSA-WITH-ARIA-128-CBC-SHA256.
	// choice | TLS-ECDHE-RSA-WITH-ARIA-256-CBC-SHA384 | Cipher suite TLS-ECDHE-RSA-WITH-ARIA-256-CBC-SHA384.
	// choice | TLS-ECDHE-ECDSA-WITH-ARIA-128-CBC-SHA256 | Cipher suite TLS-ECDHE-ECDSA-WITH-ARIA-128-CBC_SHA256.
	// choice | TLS-ECDHE-ECDSA-WITH-ARIA-256-CBC-SHA384 | Cipher suite TLS-ECDHE-ECDSA-WITH-ARIA-256-CBC_SHA384.
	// choice | TLS-DHE-DSS-WITH-3DES-EDE-CBC-SHA | Cipher suite TLS-DHE-DSS-WITH-3DES-EDE-CBC-SHA.
	// choice | TLS-DHE-DSS-WITH-DES-CBC-SHA | Cipher suite TLS-DHE-DSS-WITH-DES-CBC-SHA.

	ssl_cipher_suites_cipher?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	ssl_server_cipher_suites?: string

	// Color of icon on the GUI.

	color?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | disable |
	// choice | enable |

	dynamic_mapping_nat_source_vip?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_realservers_weight?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_ssl_server_session_state_timeout?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_max_embryonic_connections?: string

	// Enable to have the VIP send gratuitous ARPs. 0=disabled. Set from 5 up to 8640000 seconds to enable.

	gratuitous_arp_interval?: string

	// Control sharing of cookies across virtual servers. same-ip means a cookie from one virtual server can be used
	// by another. Disable stops cookie sharing.
	// choice | disable | Only allow HTTP cookie to match this virtual server.
	// choice | same-ip | Allow HTTP cookie to match any virtual server with same IP.

	http_cookie_share?: string

	// Only clients in this IP range can connect to this real server.

	realservers_client_ip?: string

	// Allow, deny, or require secure renegotiation of client sessions to comply with RFC 5746.
	// choice | deny | Abort any client initiated SSL re-negotiation attempt.
	// choice | allow | Allow a SSL client to renegotiate.
	// choice | secure | Abort any client initiated SSL re-negotiation attempt that does not use RFC 5746.

	ssl_client_renegotiation?: string

	// Enable/disable including HSTS header in response.
	// choice | disable | Do not add a HSTS header to each a HTTP response.
	// choice | enable | Add a HSTS header to each HTTP response.

	ssl_hsts?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_monitor?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | disable |
	// choice | enable |

	dynamic_mapping_ssl_client_fallback?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | disable |
	// choice | enable |

	dynamic_mapping_ssl_hsts?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_ssl_server_session_state_max?: string

	// Limit HTTP cookie persistence to the specified path.

	http_cookie_path?: string

	// Number of seconds the client should honour the HPKP setting.

	ssl_hpkp_age?: string

	// DNS mapping TTL (Set to zero to use TTL in DNS response, default = 0).

	dns_mapping_ttl?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_realservers_seq?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | TLS-RSA-WITH-RC4-128-MD5 |
	// choice | TLS-RSA-WITH-RC4-128-SHA |
	// choice | TLS-RSA-WITH-DES-CBC-SHA |
	// choice | TLS-RSA-WITH-3DES-EDE-CBC-SHA |
	// choice | TLS-RSA-WITH-AES-128-CBC-SHA |
	// choice | TLS-RSA-WITH-AES-256-CBC-SHA |
	// choice | TLS-RSA-WITH-AES-128-CBC-SHA256 |
	// choice | TLS-RSA-WITH-AES-256-CBC-SHA256 |
	// choice | TLS-RSA-WITH-CAMELLIA-128-CBC-SHA |
	// choice | TLS-RSA-WITH-CAMELLIA-256-CBC-SHA |
	// choice | TLS-RSA-WITH-CAMELLIA-128-CBC-SHA256 |
	// choice | TLS-RSA-WITH-CAMELLIA-256-CBC-SHA256 |
	// choice | TLS-RSA-WITH-SEED-CBC-SHA |
	// choice | TLS-RSA-WITH-ARIA-128-CBC-SHA256 |
	// choice | TLS-RSA-WITH-ARIA-256-CBC-SHA384 |
	// choice | TLS-DHE-RSA-WITH-DES-CBC-SHA |
	// choice | TLS-DHE-RSA-WITH-3DES-EDE-CBC-SHA |
	// choice | TLS-DHE-RSA-WITH-AES-128-CBC-SHA |
	// choice | TLS-DHE-RSA-WITH-AES-256-CBC-SHA |
	// choice | TLS-DHE-RSA-WITH-AES-128-CBC-SHA256 |
	// choice | TLS-DHE-RSA-WITH-AES-256-CBC-SHA256 |
	// choice | TLS-DHE-RSA-WITH-CAMELLIA-128-CBC-SHA |
	// choice | TLS-DHE-RSA-WITH-CAMELLIA-256-CBC-SHA |
	// choice | TLS-DHE-RSA-WITH-CAMELLIA-128-CBC-SHA256 |
	// choice | TLS-DHE-RSA-WITH-CAMELLIA-256-CBC-SHA256 |
	// choice | TLS-DHE-RSA-WITH-SEED-CBC-SHA |
	// choice | TLS-DHE-RSA-WITH-ARIA-128-CBC-SHA256 |
	// choice | TLS-DHE-RSA-WITH-ARIA-256-CBC-SHA384 |
	// choice | TLS-ECDHE-RSA-WITH-RC4-128-SHA |
	// choice | TLS-ECDHE-RSA-WITH-3DES-EDE-CBC-SHA |
	// choice | TLS-ECDHE-RSA-WITH-AES-128-CBC-SHA |
	// choice | TLS-ECDHE-RSA-WITH-AES-256-CBC-SHA |
	// choice | TLS-ECDHE-RSA-WITH-CHACHA20-POLY1305-SHA256 |
	// choice | TLS-ECDHE-ECDSA-WITH-CHACHA20-POLY1305-SHA256 |
	// choice | TLS-DHE-RSA-WITH-CHACHA20-POLY1305-SHA256 |
	// choice | TLS-DHE-RSA-WITH-AES-128-GCM-SHA256 |
	// choice | TLS-DHE-RSA-WITH-AES-256-GCM-SHA384 |
	// choice | TLS-DHE-DSS-WITH-AES-128-CBC-SHA |
	// choice | TLS-DHE-DSS-WITH-AES-256-CBC-SHA |
	// choice | TLS-DHE-DSS-WITH-AES-128-CBC-SHA256 |
	// choice | TLS-DHE-DSS-WITH-AES-128-GCM-SHA256 |
	// choice | TLS-DHE-DSS-WITH-AES-256-CBC-SHA256 |
	// choice | TLS-DHE-DSS-WITH-AES-256-GCM-SHA384 |
	// choice | TLS-ECDHE-RSA-WITH-AES-128-CBC-SHA256 |
	// choice | TLS-ECDHE-RSA-WITH-AES-128-GCM-SHA256 |
	// choice | TLS-ECDHE-RSA-WITH-AES-256-CBC-SHA384 |
	// choice | TLS-ECDHE-RSA-WITH-AES-256-GCM-SHA384 |
	// choice | TLS-ECDHE-ECDSA-WITH-AES-128-CBC-SHA |
	// choice | TLS-ECDHE-ECDSA-WITH-AES-128-CBC-SHA256 |
	// choice | TLS-ECDHE-ECDSA-WITH-AES-128-GCM-SHA256 |
	// choice | TLS-ECDHE-ECDSA-WITH-AES-256-CBC-SHA384 |
	// choice | TLS-ECDHE-ECDSA-WITH-AES-256-GCM-SHA384 |
	// choice | TLS-RSA-WITH-AES-128-GCM-SHA256 |
	// choice | TLS-RSA-WITH-AES-256-GCM-SHA384 |
	// choice | TLS-DHE-DSS-WITH-CAMELLIA-128-CBC-SHA |
	// choice | TLS-DHE-DSS-WITH-CAMELLIA-256-CBC-SHA |
	// choice | TLS-DHE-DSS-WITH-CAMELLIA-128-CBC-SHA256 |
	// choice | TLS-DHE-DSS-WITH-CAMELLIA-256-CBC-SHA256 |
	// choice | TLS-DHE-DSS-WITH-SEED-CBC-SHA |
	// choice | TLS-DHE-DSS-WITH-ARIA-128-CBC-SHA256 |
	// choice | TLS-DHE-DSS-WITH-ARIA-256-CBC-SHA384 |
	// choice | TLS-ECDHE-RSA-WITH-ARIA-128-CBC-SHA256 |
	// choice | TLS-ECDHE-RSA-WITH-ARIA-256-CBC-SHA384 |
	// choice | TLS-ECDHE-ECDSA-WITH-ARIA-128-CBC-SHA256 |
	// choice | TLS-ECDHE-ECDSA-WITH-ARIA-256-CBC-SHA384 |
	// choice | TLS-DHE-DSS-WITH-3DES-EDE-CBC-SHA |
	// choice | TLS-DHE-DSS-WITH-DES-CBC-SHA |

	dynamic_mapping_ssl_cipher_suites_cipher?: string

	// For HTTP multiplexing, enable to add the original client IP address in the XForwarded-For HTTP header.
	// choice | disable | Disable adding HTTP header.
	// choice | enable | Enable adding HTTP header.

	http_ip_header?: string

	// Enable/disable HTTP multiplexing.
	// choice | disable | Disable HTTP session multiplexing.
	// choice | enable | Enable HTTP session multiplexing.

	http_multiplex?: string

	// Time in seconds that the health check monitor monitors an unresponsive server that should be active.

	realservers_holddown_interval?: string

	// How to expire SSL sessions for the segment of the SSL connection between the client and the FortiGate.
	// choice | disable | Do not keep session states.
	// choice | time | Expire session states after this many minutes.
	// choice | count | Expire session states when this maximum is reached.
	// choice | both | Expire session states based on time or count, whichever occurs first.

	ssl_client_session_state_type?: string

	// URL to report HPKP violations to.

	ssl_hpkp_report_uri?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_gratuitous_arp_interval?: string

	// Enable/disable HTTP host matching for location conversion.
	// choice | disable | Do not match HTTP host.
	// choice | enable | Match HTTP host in response header.

	ssl_http_match_host?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | disable |
	// choice | enable |
	// choice | vip |

	dynamic_mapping_realservers_healthcheck?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_realservers_http_host?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_srcintf_filter?: string

	// Configure how to make sure that clients connect to the same server every time they make a request that is part
	// of the same session.
	// choice | none | None.
	// choice | http-cookie | HTTP cookie.
	// choice | ssl-session-id | SSL session ID.

	persistence?: string

	// Certificate to generate primary HPKP pin from.

	ssl_hpkp_primary?: string

	// Permitted encryption algorithms for the server side of SSL full mode sessions according to encryption strength
	// choice | high | High encryption. Allow only AES and ChaCha.
	// choice | low | Low encryption. Allow AES, ChaCha, 3DES, RC4, and DES.
	// choice | medium | Medium encryption. Allow AES, ChaCha, 3DES, and RC4.
	// choice | custom | Custom encryption. Use ssl-server-cipher-suites to select the cipher suites that are allowed.
	// choice | client | Use the same encryption algorithms for both client and server sessions.

	ssl_server_algorithm?: string

	// Highest SSL/TLS version acceptable from a server. Use the client setting by default.
	// choice | ssl-3.0 | SSL 3.0.
	// choice | tls-1.0 | TLS 1.0.
	// choice | tls-1.1 | TLS 1.1.
	// choice | tls-1.2 | TLS 1.2.
	// choice | client | Use same value as client configuration.

	ssl_server_max_version?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_comment?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_service?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | deny |
	// choice | allow |
	// choice | secure |

	dynamic_mapping_ssl_client_renegotiation?: string

	// External FQDN address name.

	extaddr?: string

	// Protocol to be load balanced by the virtual server (also called the server load balance virtual IP).
	// choice | http | HTTP
	// choice | https | HTTPS
	// choice | ssl | SSL
	// choice | tcp | TCP
	// choice | udp | UDP
	// choice | ip | IP
	// choice | imaps | IMAPS
	// choice | pop3s | POP3S
	// choice | smtps | SMTPS

	server_type?: string

	// SSL/TLS versions that the cipher suite can be used with.
	// FLAG Based Options. Specify multiple in list form.
	// flag | ssl-3.0 | SSL 3.0.
	// flag | tls-1.0 | TLS 1.0.
	// flag | tls-1.1 | TLS 1.1.
	// flag | tls-1.2 | TLS 1.2.

	ssl_cipher_suites_versions?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_http_cookie_age?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | static-nat |
	// choice | load-balance |
	// choice | server-load-balance |
	// choice | dns-translation |
	// choice | fqdn |

	dynamic_mapping_type?: string

	// Indicate that HPKP header applies to all subdomains.
	// choice | disable | HPKP header does not apply to subdomains.
	// choice | enable | HPKP header applies to subdomains.

	ssl_hpkp_include_subdomains?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_extport?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_ssl_client_session_state_timeout?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | disable |
	// choice | time |
	// choice | count |
	// choice | both |

	dynamic_mapping_ssl_server_session_state_type?: string

	// Interface connected to the source network that receives the packets that will be forwarded to the destination
	// network.

	extintf?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_realservers_client_ip?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | disable |
	// choice | enable |

	dynamic_mapping_http_ip_header?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_ssl_certificate?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// FLAG Based Options. Specify multiple in list form.
	// flag | ssl-3.0 |
	// flag | tls-1.0 |
	// flag | tls-1.1 |
	// flag | tls-1.2 |

	dynamic_mapping_ssl_cipher_suites_versions?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_ssl_hpkp_primary?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | ssl-3.0 |
	// choice | tls-1.0 |
	// choice | tls-1.1 |
	// choice | tls-1.2 |

	dynamic_mapping_ssl_max_version?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | ssl-3.0 |
	// choice | tls-1.0 |
	// choice | tls-1.1 |
	// choice | tls-1.2 |
	// choice | client |

	dynamic_mapping_ssl_server_min_version?: string

	// IP address or address range on the destination network to which the external IP address is mapped.

	mappedip?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_http_cookie_domain?: string

	// Lowest SSL/TLS version acceptable from a client.
	// choice | ssl-3.0 | SSL 3.0.
	// choice | tls-1.0 | TLS 1.0.
	// choice | tls-1.1 | TLS 1.1.
	// choice | tls-1.2 | TLS 1.2.

	ssl_min_version?: string

	// Select the cipher suites that can be used for SSL perfect forward secrecy (PFS).
	// choice | require | Allow only Diffie-Hellman cipher-suites, so PFS is applied.
	// choice | deny | Allow only non-Diffie-Hellman cipher-suites, so PFS is not applied.
	// choice | allow | Allow use of any cipher suite so PFS may or may not be used depending on the cipher suite

	ssl_pfs?: string

	// How to expire SSL sessions for the segment of the SSL connection between the server and the FortiGate.
	// choice | disable | Do not keep session states.
	// choice | time | Expire session states after this many minutes.
	// choice | count | Expire session states when this maximum is reached.
	// choice | both | Expire session states based on time or count, whichever occurs first.

	ssl_server_session_state_type?: string

	// Service name.

	service?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | disable |
	// choice | enable |

	dynamic_mapping_ssl_hsts_include_subdomains?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | require |
	// choice | deny |
	// choice | allow |

	dynamic_mapping_ssl_pfs?: string

	// Domain that HTTP cookie persistence should apply to.

	http_cookie_domain?: string

	// Name of the health check monitor to use when polling to determine a virtual server's connectivity status.

	realservers_monitor?: string

	// Real Server Sequence Number

	realservers_seq?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | disable |
	// choice | enable |

	dynamic_mapping_https_cookie_secure?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_ssl_hpkp_report_uri?: string

	// Incoming port number range that you want to map to a port number range on the destination network.

	extport?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	ssl_cipher_suites?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | disable |
	// choice | enable |
	// choice | report-only |

	dynamic_mapping_ssl_hpkp?: string

	// Name of the health check monitor to use when polling to determine a virtual server's connectivity status.

	monitor?: string

	// Max number of active connections that can be directed to the real server. When reached, sessions are sent to
	// their real servers.

	realservers_max_connections?: string

	// Maximum number of client to FortiGate SSL session states to keep.

	ssl_client_session_state_max?: string

	// Enable/disable including HPKP header in response.
	// choice | disable | Do not add a HPKP header to each HTTP response.
	// choice | enable | Add a HPKP header to each a HTTP response.
	// choice | report-only | Add a HPKP Report-Only header to each HTTP response.

	ssl_hpkp?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_src_filter?: string

	// Apply SSL offloading mode
	// choice | half | Client to FortiGate SSL.
	// choice | full | Client to FortiGate and FortiGate to Server SSL.

	ssl_mode?: string

	// Method used to distribute sessions to real servers.
	// choice | static | Distribute to server based on source IP.
	// choice | round-robin | Distribute to server based round robin order.
	// choice | weighted | Distribute to server based on weight.
	// choice | least-session | Distribute to server with lowest session count.
	// choice | least-rtt | Distribute to server with lowest Round-Trip-Time.
	// choice | first-alive | Distribute to the first server that is alive.
	// choice | http-host | Distribute to server based on host field in HTTP header.

	ldb_method?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | disable |
	// choice | enable |

	dynamic_mapping_portforward?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_realservers_max_connections?: string

	// Time in minutes that client web browsers should keep a cookie. Default is 60 seconds. 0 = no time limit.

	http_cookie_age?: string

	// Sets one of three modes for managing the object.
	// Allows use of soft-adds instead of overwriting existing values

	mode?: string

	// Port for communicating with the real server. Required if port forwarding is enabled.

	realservers_port?: string

	// Source address filter. Each address must be either an IP/subnet (x.x.x.x/n) or a range (x.x.x.x-y.y.y.y).
	// Separate addresses with spaces.

	src_filter?: string

	// SSL/TLS cipher suites priority.

	ssl_server_cipher_suites_priority?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_extintf?: string

	// SSL/TLS versions that the cipher suite can be used with.
	// FLAG Based Options. Specify multiple in list form.
	// flag | ssl-3.0 | SSL 3.0.
	// flag | tls-1.0 | TLS 1.0.
	// flag | tls-1.1 | TLS 1.1.
	// flag | tls-1.2 | TLS 1.2.

	ssl_server_cipher_suites_versions?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_extaddr?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | disable |
	// choice | enable |

	dynamic_mapping_ssl_http_location_conversion?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | disable |
	// choice | enable |

	dynamic_mapping_ssl_http_match_host?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | ssl-3.0 |
	// choice | tls-1.0 |
	// choice | tls-1.1 |
	// choice | tls-1.2 |
	// choice | client |

	dynamic_mapping_ssl_server_max_version?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	realservers?: string

	// The name of the SSL certificate to use for SSL acceleration.

	ssl_certificate?: string

	// Enable/disable sending empty fragments to avoid CBC IV attacks (SSL 3.0 &amp; TLS 1.0 only).
	// choice | disable | Do not send empty fragments.
	// choice | enable | Send empty fragments.

	ssl_send_empty_frags?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.

	dynamic_mapping_color?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | disable |
	// choice | same-ip |

	dynamic_mapping_http_cookie_share?: string

	// Comment.

	comment?: string

	// Enable/disable use of HTTP cookie domain from host field in HTTP.
	// choice | disable | Disable use of HTTP cookie domain from host field in HTTP (use http-cooke-domain setting).
	// choice | enable | Enable use of HTTP cookie domain from host field in HTTP.

	http_cookie_domain_from_host?: string

	// Highest SSL/TLS version acceptable from a client.
	// choice | ssl-3.0 | SSL 3.0.
	// choice | tls-1.0 | TLS 1.0.
	// choice | tls-1.1 | TLS 1.1.
	// choice | tls-1.2 | TLS 1.2.

	ssl_max_version?: string

	// Dynamic Mapping Version of Suffixed Option Name. Sub-Table. Same Descriptions as Parent.
	// choice | disable |
	// choice | enable |

	dynamic_mapping_arp_reply?: string
}

fmgr_query :: {

	// ADVANCED USERS ONLY! REQUIRES KNOWLEDGE OF FMGR JSON API!
	// The HTTP Endpoint on FortiManager you wish to GET from.

	custom_endpoint?: string

	// The serial number of the device you want to query.

	device_serial?: string

	// A LIST of firewalls in the cluster you want to verify i.e. ["firewall_A","firewall_B"].

	nodes?: string

	// The data object we wish to query (device, package, rule, etc). Will expand choices as improves.

	object: string

	// The ID of the task you wish to query status on. If left blank and object = 'task' a list of tasks are returned.

	task_id?: string

	// The ADOM the configuration should belong to.

	adom?: string

	// ADVANCED USERS ONLY! REQUIRES KNOWLEDGE OF FMGR JSON API!
	// DICTIONARY JSON FORMAT ONLY -- Custom dictionary/datagram to send to the endpoint.

	custom_dict?: string

	// The IP of the device you want to query.

	device_ip?: string

	// The desired "friendly" name of the device you want to query.

	device_unique_name?: string
}

fmgr_secprof_spam :: {

	// Enable/disable logging.

	gmail_log?: string

	// Tag subject or header for spam email.
	// FLAG Based Options. Specify multiple in list form.

	imap_tag_type?: string

	// Subject text or header added to spam email.

	pop3_tag_msg?: string

	// Tag subject or header for spam email.
	// FLAG Based Options. Specify multiple in list form.

	smtp_tag_type?: string

	// Anti-spam banned word table ID.

	spam_bword_table?: string

	// Enable/disable spam filtering.

	spam_filtering?: string

	// The ADOM the configuration should belong to.

	adom?: string

	// Enable/disable external Email inspection.

	external?: string

	// Enable/disable logging.

	pop3_log?: string

	// Replacement message group.

	replacemsg_group?: string

	// Enable/disable SMTP email header IP checks for spamfsip, spamrbl and spambwl filters.

	smtp_hdrip?: string

	// Enable/disable local filter to override SMTP remote check result.

	smtp_local_override?: string

	// Anti-spam black/white list table ID.

	spam_bwl_table?: string

	// Enable/disable logging FortiGuard spam response.

	spam_log_fortiguard_response?: string

	// Anti-spam MIME header table ID.

	spam_mheader_table?: string

	// Anti-spam DNSBL table ID.

	spam_rbl_table?: string

	// Enable/disable logging.

	msn_hotmail_log?: string

	// Action for spam email.

	smtp_action?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	gmail?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	imap?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	mapi?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	pop3?: string

	// Action for spam email.

	pop3_action?: string

	// Subject text or header added to spam email.

	smtp_tag_msg?: string

	// Spam banned word threshold.

	spam_bword_threshold?: string

	// Comment.

	comment?: string

	// Enable/disable logging.

	imap_log?: string

	// Sets one of three modes for managing the object.
	// Allows use of soft-adds instead of overwriting existing values

	mode?: string

	// Profile name.

	name?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	yahoo_mail?: string

	// Enable/disable flow-based spam filtering.

	flow_based?: string

	// Action for spam email.

	mapi_action?: string

	// Tag subject or header for spam email.
	// FLAG Based Options. Specify multiple in list form.

	pop3_tag_type?: string

	// Anti-spam IP trust table ID.

	spam_iptrust_table?: string

	// Subject text or header added to spam email.

	imap_tag_msg?: string

	// Enable/disable logging.

	mapi_log?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	smtp?: string

	// Enable/disable logging.

	smtp_log?: string

	// Enable/disable spam logging for email filtering.

	spam_log?: string

	// Action for spam email.

	imap_action?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	msn_hotmail?: string

	// None
	// FLAG Based Options. Specify multiple in list form.

	options?: string

	// Enable/disable logging.

	yahoo_mail_log?: string
}

fmgr_secprof_wanopt :: {

	// Enable/disable HTTP WAN Optimization.

	cifs_status?: string

	// Enable/disable securing the WAN Opt tunnel using SSL. Secure and non-secure tunnels use the same TCP port (7810).

	ftp_secure_tunnel?: string

	// Enable/disable logging.

	http_log_traffic?: string

	// Enable/disable securing the WAN Opt tunnel using SSL. Secure and non-secure tunnels use the same TCP port (7810).

	http_secure_tunnel?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	cifs?: string

	// Optionally add an authentication group to restrict access to the WAN Optimization tunnel to peers in the authentication group.

	auth_group?: string

	// Enable/disable byte-caching for HTTP. Byte caching reduces the amount of traffic by caching file data sent across the WAN and in future serving if from the cache.

	cifs_byte_caching?: string

	// Enable/disable logging.

	cifs_log_traffic?: string

	// Select dynamic or fixed-size data chunking for HTTP WAN Optimization.

	cifs_prefer_chunking?: string

	// Comment.

	comments?: string

	// Enable/disable SSL/TLS offloading (hardware acceleration) for HTTPS traffic in this tunnel.

	http_ssl?: string

	// Enable/disable logging.

	mapi_log_traffic?: string

	// The ADOM the configuration should belong to.

	adom?: string

	// Single port number or port number range for HTTP. Only packets with a destination port number that matches this port number or range are accepted by this profile.

	http_port?: string

	// Select whether TCP byte-caching uses system memory only or both memory and disk space.

	tcp_byte_caching_opt?: string

	// Enable/disable securing the WAN Opt tunnel using SSL. Secure and non-secure tunnels use the same TCP port (7810).

	tcp_secure_tunnel?: string

	// Port on which to expect HTTPS traffic for SSL/TLS offloading.

	tcp_ssl_port?: string

	// Select dynamic or fixed-size data chunking for HTTP WAN Optimization.

	ftp_prefer_chunking?: string

	// Single port number or port number range for FTP. Only packets with a destination port number that matches this port number or range are accepted by this profile.

	ftp_port?: string

	// How to handle HTTP sessions that do not comply with HTTP 0.9, 1.0, or 1.1.

	http_unknown_http_version?: string

	// Tunnel sharing mode for aggressive/non-aggressive and/or interactive/non-interactive protocols.

	mapi_tunnel_sharing?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	tcp?: string

	// Enable/disable logging.

	tcp_log_traffic?: string

	// Enable/disable logging.

	ftp_log_traffic?: string

	// Single port number or port number range for MAPI. Only packets with a destination port number that matches this port number or range are accepted by this profile.

	mapi_port?: string

	// Enable/disable HTTP WAN Optimization.

	tcp_status?: string

	// Enable/disable securing the WAN Opt tunnel using SSL. Secure and non-secure tunnels use the same TCP port (7810).

	cifs_secure_tunnel?: string

	// Enable/disable byte-caching for HTTP. Byte caching reduces the amount of traffic by caching file data sent across the WAN and in future serving if from the cache.

	http_byte_caching?: string

	// Enable/disable securing the WAN Opt tunnel using SSL. Secure and non-secure tunnels use the same TCP port (7810).

	mapi_secure_tunnel?: string

	// Enable/disable byte-caching for HTTP. Byte caching reduces the amount of traffic by caching file data sent across the WAN and in future serving if from the cache.

	tcp_byte_caching?: string

	// Enable/disable SSL/TLS offloading.

	tcp_ssl?: string

	// Tunnel sharing mode for aggressive/non-aggressive and/or interactive/non-interactive protocols.

	cifs_tunnel_sharing?: string

	// Port on which to expect HTTPS traffic for SSL/TLS offloading.

	http_ssl_port?: string

	// Enable/disable HTTP WAN Optimization.

	http_status?: string

	// Configure how to process non-HTTP traffic when a profile configured for HTTP traffic accepts a non-HTTP session. Can occur if an application sends non-HTTP traffic using an HTTP destination port.

	http_tunnel_non_http?: string

	// Tunnel sharing mode for aggressive/non-aggressive and/or interactive/non-interactive protocols.

	http_tunnel_sharing?: string

	// Profile name.

	name?: string

	// Tunnel sharing mode for aggressive/non-aggressive and/or interactive/non-interactive protocols.

	tcp_tunnel_sharing?: string

	// Enable/disable byte-caching for HTTP. Byte caching reduces the amount of traffic by caching file data sent across the WAN and in future serving if from the cache.

	ftp_byte_caching?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	ftp?: string

	// Enable/disable HTTP WAN Optimization.

	ftp_status?: string

	// Tunnel sharing mode for aggressive/non-aggressive and/or interactive/non-interactive protocols.

	ftp_tunnel_sharing?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	http?: string

	// Select dynamic or fixed-size data chunking for HTTP WAN Optimization.

	http_prefer_chunking?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	mapi?: string

	// Enable/disable byte-caching for HTTP. Byte caching reduces the amount of traffic by caching file data sent across the WAN and in future serving if from the cache.

	mapi_byte_caching?: string

	// Single port number or port number range for CIFS. Only packets with a destination port number that matches this port number or range are accepted by this profile.

	cifs_port?: string

	// Sets one of three modes for managing the object.
	// Allows use of soft-adds instead of overwriting existing values

	mode?: string

	// Single port number or port number range for TCP. Only packets with a destination port number that matches this port number or range are accepted by this profile.

	tcp_port?: string

	// Enable/disable transparent mode.

	transparent?: string

	// Enable/disable HTTP WAN Optimization.

	mapi_status?: string
}

fmgr_secprof_appctrl :: {

	// The ADOM the configuration should belong to.

	adom?: string

	// comments

	comment?: string

	// ID of allowed applications.

	entries_application?: string

	// Track the packet protocol field.
	// choice | none |
	// choice | src-ip | Source IP.
	// choice | dest-ip | Destination IP.
	// choice | dhcp-client-mac | DHCP client.
	// choice | dns-domain | DNS domain.

	entries_rate_track?: string

	// Enable/disable packet logging.
	// choice | disable | Disable packet logging.
	// choice | enable | Enable packet logging.

	entries_log_packet?: string

	// Quarantine method.
	// choice | none | Quarantine is disabled.
	// choice | attacker | Block all traffic sent from attacker's IP address.
	// The attacker's IP address is also added to the banned user list. The target's address is not affected.

	entries_quarantine?: string

	// Duration (sec) of the rate.

	entries_rate_duration?: string

	// Application technology filter.

	entries_technology?: string

	// Enable/disable logging for other applications.
	// choice | disable | Disable logging for other applications.
	// choice | enable | Enable logging for other applications.

	other_application_log?: string

	// Replacement message group.

	replacemsg_group?: string

	// Enable/disable logging for this application list.
	// choice | disable | Disable logging.
	// choice | enable | Enable logging.

	entries_log?: string

	// Per-IP traffic shaper.

	entries_per_ip_shaper?: string

	// Application Sub-category ID list.

	entries_sub_category?: string

	// NO DESCRIPTION PARSED ENTER MANUALLY
	// FLAG Based Options. Specify multiple in list form.
	// flag | skype | Skype.
	// flag | edonkey | Edonkey.
	// flag | bittorrent | Bit torrent.

	p2p_black_list?: string

	// Category ID list.

	entries_category?: string

	// Application protocol filter.

	entries_protocols?: string

	// Risk, or impact, of allowing traffic from this application to occur 1 - 5;
	// (Low, Elevated, Medium, High, and Critical).

	entries_risk?: string

	// Reverse traffic shaper.

	entries_shaper_reverse?: string

	// Enable/disable extended logging.
	// choice | disable | Disable setting.
	// choice | enable | Enable setting.

	extended_log?: string

	// Traffic shaper.

	entries_shaper?: string

	// Enable/disable replacement messages for blocked applications.
	// choice | disable | Disable replacement messages for blocked applications.
	// choice | enable | Enable replacement messages for blocked applications.

	app_replacemsg?: string

	// Parameter value.

	entries_parameters_value?: string

	// Pass or block traffic from unknown applications.
	// choice | pass | Pass or allow unknown applications.
	// choice | block | Drop or block unknown applications.

	unknown_application_action?: string

	// Enable/disable logging for unknown applications.
	// choice | disable | Disable logging for unknown applications.
	// choice | enable | Enable logging for unknown applications.

	unknown_application_log?: string

	// Application behavior filter.

	entries_behavior?: string

	// Application popularity filter (1 - 5, from least to most popular).
	// FLAG Based Options. Specify multiple in list form.
	// flag | 1 | Popularity level 1.
	// flag | 2 | Popularity level 2.
	// flag | 3 | Popularity level 3.
	// flag | 4 | Popularity level 4.
	// flag | 5 | Popularity level 5.

	entries_popularity?: string

	// Count of the rate.

	entries_rate_count?: string

	// Rate limit mode.
	// choice | periodical | Allow configured number of packets every rate-duration.
	// choice | continuous | Block packets once the rate is reached.

	entries_rate_mode?: string

	// List name.

	name?: string

	// Action for other applications.
	// choice | pass | Allow sessions matching an application in this application list.
	// choice | block | Block sessions matching an application in this application list.

	other_application_action?: string

	// Application vendor filter.

	entries_vendor?: string

	// Sets one of three modes for managing the object.
	// Allows use of soft-adds instead of overwriting existing values

	mode?: string

	// Enable/disable deep application inspection.
	// choice | disable | Disable deep application inspection.
	// choice | enable | Enable deep application inspection.

	deep_app_inspection?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED. This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, OMIT THE USE OF THIS PARAMETER
	// AND USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	entries?: string

	// Pass or block traffic, or reset connection for traffic from this application.
	// choice | pass | Pass or allow matching traffic.
	// choice | block | Block or drop matching traffic.
	// choice | reset | Reset sessions for matching traffic.

	entries_action?: string

	// Duration of quarantine. (Format
	// Requires quarantine set to attacker.

	entries_quarantine_expiry?: string

	// Enable/disable quarantine logging.
	// choice | disable | Disable quarantine logging.
	// choice | enable | Enable quarantine logging.

	entries_quarantine_log?: string

	// Session TTL (0 = default).

	entries_session_ttl?: string

	// NO DESCRIPTION PARSED ENTER MANUALLY
	// FLAG Based Options. Specify multiple in list form.
	// flag | allow-dns | Allow DNS.
	// flag | allow-icmp | Allow ICMP.
	// flag | allow-http | Allow generic HTTP web browsing.
	// flag | allow-ssl | Allow generic SSL communication.
	// flag | allow-quic | Allow QUIC.

	options?: string
}

fmgr_fwobj_ippool6 :: {

	// The ADOM the configuration should belong to.

	adom?: string

	// Comment.

	comments?: string

	// EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!
	// List of multiple child objects to be added. Expects a list of dictionaries.
	// Dictionaries must use FortiManager API parameters, not the ansible ones listed below.
	// If submitted, all other prefixed sub-parameters ARE IGNORED.
	// This object is MUTUALLY EXCLUSIVE with its options.
	// We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.
	// WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS

	dynamic_mapping?: string

	// Dynamic Mapping clone of original suffixed parameter.

	dynamic_mapping_comments?: string

	// Dynamic Mapping clone of original suffixed parameter.

	dynamic_mapping_endip?: string

	// Final IPv6 address (inclusive) in the range for the address pool.

	endip?: string

	// IPv6 IP pool name.

	name?: string

	// Dynamic Mapping clone of original suffixed parameter.

	dynamic_mapping_startip?: string

	// Sets one of three modes for managing the object.
	// Allows use of soft-adds instead of overwriting existing values

	mode?: string

	// First IPv6 address (inclusive) in the range for the address pool.

	startip?: string
}

fmgr_fwpol_package :: {

	// Implicit Log setting for all IPv4 policies in package.

	fwpolicy_implicit_log?: string

	// The members VDOM you want to assign the package to.

	scope_members_vdom?: string

	// if policy-based ngfw-mode, refer to firewall ssl-ssh-profile.

	ssl_ssh_profile?: string

	// The ADOM the configuration should belong to.

	adom?: string

	// Name of the FortiManager package or folder.

	name: string

	// The parent folder name you want to add this object under.

	parent_folder?: string

	// The devices or scope that you want to assign this policy package to.

	scope_members?: string

	// Sets one of three modes for managing the object.

	mode?: string

	// NGFW mode setting for the policies flow or proxy.

	ngfw_mode?: string

	// Name of the folder you want to put the package into.

	package_folder?: string

	// Are we managing packages or folders, or installing packages?

	object_type: string

	// Central NAT setting.

	central_nat?: string

	// Implicit Log setting for all IPv6 policies in package.

	fwpolicy6_implicit_log?: string

	// Inspection mode setting for the policies flow or proxy.

	inspection_mode?: string
}

fmgr_secprof_profile_group :: {

	// Name of an existing VoIP profile.

	voip_profile?: string

	// The ADOM the configuration should belong to.

	adom?: string

	// Name of an existing Application list.

	application_list?: string

	// Name of an existing IPS sensor.

	ips_sensor?: string

	// Name of an existing MMS profile.

	mms_profile?: string

	// Sets one of three modes for managing the object.
	// Allows use of soft-adds instead of overwriting existing values.

	mode?: string

	// Profile group name.

	name?: string

	// Name of an existing DNS filter profile.

	dnsfilter_profile?: string

	// Name of an existing ICAP profile.

	icap_profile?: string

	// Name of an existing Web application firewall profile.

	waf_profile?: string

	// Name of an existing Antivirus profile.

	av_profile?: string

	// Name of an existing Protocol options profile.

	profile_protocol_options?: string

	// Name of an existing Spam filter profile.

	spamfilter_profile?: string

	// Name of an existing DLP sensor.

	dlp_sensor?: string

	// Name of an existing SSH filter profile.

	ssh_filter_profile?: string

	// Name of an existing SSL SSH profile.

	ssl_ssh_profile?: string

	// Name of an existing Web filter profile.

	webfilter_profile?: string
}

fmgr_device_group :: {

	// The ADOM the configuration should belong to.

	adom?: string

	// The description of the device group.

	grp_desc?: string

	// A comma separated list of device names or device groups to be added as members to the device group.
	// If Group Members are defined, and mode="delete", only group members will be removed.
	// If you want to delete a group itself, you must omit this parameter from the task in playbook.

	grp_members?: string

	// The name of the device group.

	grp_name?: string

	// Sets one of three modes for managing the object.
	// Allows use of soft-adds instead of overwriting existing values

	mode?: string

	// The VDOM of the Fortigate you want to add, must match the device in FMGR. Usually root.

	vdom?: string
}
