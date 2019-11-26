package f5

bigip_file_copy :: {

	// When C(present), ensures that the resource exists.
	// When C(absent), ensures the resource is removed.

	state?: string

	// Specifies the datastore to put the file in.
	// There are several different datastores and each of them allows files to be exposed in different ways.
	// When C(external-monitor), the specified file will be stored as an external monitor file and be available for use in external monitors
	// When C(ifile), the specified file will be stored as an iFile.
	// When C(lw4o6-table), the specified file will be store as an Lightweight 4 over 6 (lw4o6) tunnel binding table, which include an IPv6 address for the lwB4, public IPv4 address, and restricted port set.

	datastore?: string

	// Force overwrite a file.
	// By default, files will only be overwritten if the SHA of the file is different for the given filename. This parameter can be used to force overwrite the file even if it already exists and its SHA matches.
	// The C(lw4o6-table) datastore does not keep checksums of its file. Therefore, you would need to provide this argument to update any of these files.

	force?: bool

	// The name of the file as it should reside on the BIG-IP.
	// If this is not specified, then the filename provided in the C(source) parameter is used instead.

	name?: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies the path of the file to upload.
	// This parameter is required if C(state) is C(present).

	source?: string
}

bigip_gtm_monitor_http :: {

	// C(always) will update passwords if the C(target_password) is specified.
	// C(on_create) will only set the password for newly created monitors.

	update_password?: string

	// The interval specifying how frequently the monitor instance of this template will run.
	// If this parameter is not provided when creating a new monitor, then the default value will be 30.
	// This value B(must) be less than the C(timeout) value.

	interval?: int

	// Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'. Note that if specifying an IP address, a value between 1 and 65535 must be specified

	port?: string

	// Specifies the number of seconds after which the system times out the probe request to the system.
	// When creating a new monitor, if this parameter is not provided, then the default value will be C(5).

	probe_timeout?: int

	// When C(present), ensures that the monitor exists.
	// When C(absent), ensures the monitor is removed.

	state?: string

	// Specifies the user name, if the monitored target requires authentication.

	target_username?: string

	// Monitor name.

	name: string

	// Instructs the system to mark the target resource down when the test is successful. This setting is useful, for example, if the content on your web site home page is dynamic and changes frequently, you may want to set up a reverse ECV service check that looks for the string Error.
	// A match for this string means that the web server was down.
	// To use this option, you must specify values for C(send) and C(receive).

	reverse?: bool

	// Specifies the password, if the monitored target requires authentication.

	target_password?: string

	// The number of seconds in which the node or service must respond to the monitor request. If the target responds within the set time period, it is considered up. If the target does not respond within the set time period, it is considered down. You can change this number to any number you want, however, it should be 3 times the interval number of seconds plus 1 second.
	// If this parameter is not provided when creating a new monitor, then the default value will be 120.

	timeout?: int

	// Specifies that the monitor allows more than one probe attempt per interval.
	// When C(yes), specifies that the monitor ignores down responses for the duration of the monitor timeout. Once the monitor timeout is reached without the system receiving an up response, the system marks the object down.
	// When C(no), specifies that the monitor immediately marks an object down when it receives a down response.
	// When creating a new monitor, if this parameter is not provided, then the default value will be C(no).

	ignore_down_response?: bool

	// IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.
	// If this value is an IP address, then a C(port) number must be specified.

	ip?: string

	// The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(tcp) parent on the C(Common) partition.

	parent?: string

	// Device partition to manage resources on.

	partition?: string

	// The receive string for the monitor call.

	receive?: string

	// The send string for the monitor call.
	// When creating a new monitor, if this parameter is not provided, the default of C(GET /\r\n) will be used.

	send?: string

	// Specifies whether the monitor operates in transparent mode.
	// A monitor in transparent mode directs traffic through the associated pool members or nodes (usually a router or firewall) to the aliased destination (that is, it probes the C(ip)-C(port) combination specified in the monitor).
	// If the monitor cannot successfully reach the aliased destination, the pool member or node through which the monitor traffic was sent is marked down.
	// When creating a new monitor, if this parameter is not provided, then the default value will be C(no).

	transparent?: bool
}

bigip_profile_analytics :: {

	// Enables or disables the collection of client IPs statistics.

	collect_ip?: bool

	// Enables or disables the collection of the page load time statistics.

	collect_page_load_time?: bool

	// When C(present), ensures that the profile exists.
	// When C(absent), ensures the profile is removed.

	state?: string

	// Specifies which email addresses receive alerts by email when C(notification_by_email) is enabled.

	notification_email_addresses?: [..._]

	// Enables or disables the collection of the unique user sessions.

	collect_user_sessions?: bool

	// Enables or disables the external logging of the collected statistics.

	collected_stats_external_logging?: bool

	// Specifies the name of the profile.

	name: string

	// Enables or disables sending the analytics alerts by email.

	notification_by_email?: bool

	// Enables or disables the collection of the names of the countries from where the traffic was sent.

	collect_geo?: bool

	// Enables or disables the collection of requested URL statistics.

	collect_url?: bool

	// Specifies the external logging publisher used to send statistical data to one or more destinations.

	external_logging_publisher?: string

	// Enables or disables logging of the analytics alerts into the Syslog.

	notification_by_syslog?: bool

	// Specifies the profile from which this profile inherits settings.
	// When creating a new profile, if this parameter is not specified, the default is the system-supplied C(analytics) profile.

	parent?: string

	// Device partition to manage resources on.

	partition?: string

	// Enables or disables the collection of maximum TPS and throughput for all collected entities.

	collect_max_tps_and_throughput?: bool

	// Enables or disables the collection of user agents.

	collect_user_agent?: bool

	// Enables or disables the internal logging of the collected statistics.

	collected_stats_internal_logging?: bool

	// Description of the profile.

	description?: string
}

bigip_sys_global :: {

	// The state of the variable on the system. When C(present), guarantees that an existing variable is set to C(value).

	state?: string

	// Specifies the text to present in the advisory banner.

	banner_text?: string

	// Specifies the number of seconds of inactivity before the system logs off a user that is logged on.

	console_timeout?: int

	// C(yes) or C(no) the Setup utility in the browser-based Configuration utility.

	gui_setup?: bool

	// Specifies, when C(yes), that the system menu displays on the LCD screen on the front of the unit. This setting has no effect when used on the VE platform.

	lcd_display?: bool

	// Specifies whether or not to enable DHCP client on the management interface

	mgmt_dhcp?: bool

	// Specifies, when C(yes), that the next time you reboot the system, the system boots to an ISO image on the network, rather than an internal media drive.

	net_reboot?: bool

	// Specifies, when C(yes), that the system suppresses informational text on the console during the boot cycle. When C(no), the system presents messages and informational text on the console during the boot cycle.

	quiet_boot?: bool

	// Specifies whether the system displays an advisory message on the login screen.

	security_banner?: bool
}

bigip_virtual_server :: {

	// Virtual server description.

	description?: string

	// Applies the specify AFM policy to the virtual in an enforcing way.
	// When creating a new virtual, if this parameter is not specified, the enforced policy is disabled.

	firewall_enforced_policy?: string

	// Arbitrary key/value pairs that you can attach to a virtual server. This is useful in situations where you might want to annotate a virtual to be managed by Ansible.
	// Key names will be stored as strings; this includes names that are numbers.
	// Values for all of the keys will be stored as strings; this includes values that are numbers.
	// Data will be persisted, not ephemeral.

	metadata?: _

	// Device partition to manage resources on.

	partition?: string

	// List of VLANs to be enabled. When a VLAN named C(all) is used, all VLANs will be allowed. VLANs can be specified with or without the leading partition. If the partition is not specified in the VLAN, then the C(partition) option of this module will be used.
	// This parameter is mutually exclusive with the C(disabled_vlans) parameter.

	enabled_vlans?: [..._]

	// Default pool for the virtual server.
	// If you want to remove the existing pool, specify an empty value; C(""). See the documentation for an example.
	// When creating a new virtual server, and C(type) is C(stateless), this parameter is required.
	// If C(type) is C(stateless), the C(pool) that is used must not have any members which define a C(rate_limit).

	pool?: string

	// Port of the virtual server. Required when C(state) is C(present) and virtual server does not exist.
	// If you do not want to specify a particular port, use the value C(0). The result is that the virtual server will listen on any port.
	// When C(type) is C(dhcp), this module will force the C(port) parameter to be C(67).
	// When C(type) is C(internal), this module will force the C(port) parameter to be C(0).
	// In addition to specifying a port number, a select number of service names may also be provided.
	// The string C(ftp) may be substituted for for port C(21).
	// The string C(http) may be substituted for for port C(80).
	// The string C(https) may be substituted for for port C(443).
	// The string C(telnet) may be substituted for for port C(23).
	// The string C(smtp) may be substituted for for port C(25).
	// The string C(snmp) may be substituted for for port C(161).
	// The string C(snmp-trap) may be substituted for for port C(162).
	// The string C(ssh) may be substituted for for port C(22).
	// The string C(tftp) may be substituted for for port C(69).
	// The string C(isakmp) may be substituted for for port C(500).
	// The string C(mqtt) may be substituted for for port C(1883).
	// The string C(mqtt-tls) may be substituted for for port C(8883).

	port?: string

	// Indicates whether the rate limit is applied per virtual object, per source address, per destination address, or some combination thereof.
	// The default value is 'object', which does not use the source or destination address as part of the key.

	rate_limit_mode?: string

	// Specifies a mask, in bits, to be applied to the source address as part of the rate limiting.
	// The default value is C(0), which is equivalent to using the entire address - C(32) in IPv4, or C(128) in IPv6.
	// The valid value range is C(0) - C(4294967295).

	rate_limit_src_mask?: int

	// Source network address policy.
	// When C(type) is C(dhcp), this parameter is ignored.
	// When C(type) is C(reject), this parameter will be ignored.
	// When C(type) is C(internal), this parameter will be ignored.
	// The name of a SNAT pool (eg "/Common/snat_pool_name") can be specified to enable SNAT with the specific pool.
	// To remove SNAT, specify the word C(none).
	// To specify automap, use the word C(automap).

	snat?: string

	// Specifies an IP address or network from which the virtual server accepts traffic.
	// The virtual server accepts clients only from one of these IP addresses.
	// For this setting to function effectively, specify a value other than 0.0.0.0/0 or ::/0 (that is, any/0, any6/0).
	// In order to maximize utility of this setting, specify the most specific address prefixes covering all customer addresses and no others.
	// Specify the IP address in Classless Inter-Domain Routing (CIDR) format; address/prefix, where the prefix length is in bits. For example, for IPv4, 10.0.0.1/32 or 10.0.0.0/24, and for IPv6, ffe1::0020/64 or 2001:ed8:77b5:2:10:10:100:42/64.

	source?: string

	// List of VLANs to be disabled. If the partition is not specified in the VLAN, then the C(partition) option of this module will be used.
	// This parameter is mutually exclusive with the C(enabled_vlans) parameters.

	disabled_vlans?: [..._]

	// Applies the specify AFM policy to the virtual in an enforcing way.
	// A staged policy shows the results of the policy rules in the log, while not actually applying the rules to traffic.
	// When creating a new virtual, if this parameter is not specified, the staged policy is disabled.

	firewall_staged_policy?: string

	// When set to C(no) it will not set metadata on the device.
	// Currently there is a limitation that non-admin users cannot set metadata on the object, despite being able to create and modify virtual server objects, setting this option to C(no) will allow such users to utilize this module to manage Virtual Server objects on the device.

	insert_metadata?: bool

	// Specifies the policies for the virtual server.
	// When C(type) is C(dhcp), this parameter will be ignored.
	// When C(type) is C(reject), this parameter will be ignored.
	// When C(type) is C(internal), this parameter will be ignored.

	policies?: [..._]

	// List of profiles (HTTP, ClientSSL, ServerSSL, etc) to apply to both sides of the connection (client-side and server-side).
	// If you only want to apply a particular profile to the client-side of the connection, specify C(client-side) for the profile's C(context).
	// If you only want to apply a particular profile to the server-side of the connection, specify C(server-side) for the profile's C(context).
	// If C(context) is not provided, it will default to C(all).
	// If you want to remove a profile from the list of profiles currently active on the virtual, then simply remove it from the C(profiles) list. See examples for an illustration of this.
	// If you want to add a profile to the list of profiles currently active on the virtual, then simply add it to the C(profiles) list. See examples for an illustration of this.
	// B(Profiles matter). This module will fail to configure a BIG-IP if you mix up your profiles, or, if you attempt to set an IP protocol which your current, or new, profiles do not support. Both this module, and BIG-IP, will tell you when you are wrong, with an error resembling C(lists profiles incompatible with its protocol).
	// If you are unsure what correct profile combinations are, then have a BIG-IP available to you in which you can make changes and copy what the correct combinations are.

	profiles?: [..._]

	// Specifies, when C(enabled), that the system translates the address of the virtual server.
	// When C(disabled), specifies that the system uses the address without translation.
	// This option is useful when the system is load balancing devices that have the same IP address.
	// When creating a new virtual server, the default is C(enabled).

	address_translation?: bool

	// Specifies the persistence profile you want the system to use if it cannot use the specified default persistence profile.
	// If you want to remove the existing fallback persistence profile, specify an empty value; C(""). See the documentation for an example.
	// When C(type) is C(dhcp), this parameter will be ignored.

	fallback_persistence_profile?: string

	// Default Profile which manages the session persistence.
	// If you want to remove the existing default persistence profile, specify an empty value; C(""). See the documentation for an example.
	// When C(type) is C(dhcp), this parameter will be ignored.

	default_persistence_profile?: string

	// Virtual server name.

	name: string

	// Specifies a mask, in bits, to be applied to the destination address as part of the rate limiting.
	// The default value is C(0), which is equivalent to using the entire address - C(32) in IPv4, or C(128) in IPv6.
	// The valid value range is C(0) - C(4294967295).

	rate_limit_dst_mask?: int

	// Specifies whether the system preserves the source port of the connection.
	// When creating a new virtual server, if this parameter is not specified, the default is C(preserve).

	source_port?: string

	// The virtual server state. If C(absent), delete the virtual server if it exists. C(present) creates the virtual server and enable it. If C(enabled), enable the virtual server if it exists. If C(disabled), create the virtual server if needed, and set state to C(disabled).

	state?: string

	// Specifies a pool or list of pools that the virtual server uses to replicate either client-side or server-side traffic.
	// Typically this option is used for intrusion detection.

	clone_pools?: [..._]

	// Destination IP of the virtual server.
	// Required when C(state) is C(present) and virtual server does not exist.
	// When C(type) is C(internal), this parameter is ignored. For all other types, it is required.
	// Destination can also be specified as a name for an existing Virtual Address.

	destination?: string

	// Specifies, when C(enabled), that the system translates the port of the virtual server.
	// When C(disabled), specifies that the system uses the port without translation. Turning off port translation for a virtual server is useful if you want to use the virtual server to load balance connections to any service.
	// When creating a new virtual server, the default is C(enabled).

	port_translation?: bool

	// Specifies the log profile applied to the virtual server.
	// To make use of this feature, the AFM module must be licensed and provisioned.
	// The C(Log all requests) and C(Log illegal requests) are mutually exclusive and therefore, this module will raise an error if the two are specified together.

	security_log_profiles?: [..._]

	// Specifies a network protocol name you want the system to use to direct traffic on this virtual server.
	// When creating a new virtual server, if this parameter is not specified, the default is C(tcp).
	// The Protocol setting is not available when you select Performance (HTTP) as the Type.
	// The value of this argument can be specified in either it's numeric value, or, for convenience, in a select number of named values. Refer to C(choices) for examples.
	// For a list of valid IP protocol numbers, refer to this page https://en.wikipedia.org/wiki/List_of_IP_protocol_numbers
	// When C(type) is C(dhcp), this module will force the C(ip_protocol) parameter to be C(17) (UDP).

	ip_protocol?: string

	// List of rules to be applied in priority order.
	// If you want to remove existing iRules, specify a single empty value; C(""). See the documentation for an example.
	// When C(type) is C(dhcp), this parameter will be ignored.
	// When C(type) is C(stateless), this parameter will be ignored.
	// When C(type) is C(reject), this parameter will be ignored.
	// When C(type) is C(internal), this parameter will be ignored.

	irules?: [..._]

	// Specifies the network service provided by this virtual server.
	// When creating a new virtual server, if this parameter is not provided, the default will be C(standard).
	// This value cannot be changed after it is set.
	// When C(standard), specifies a virtual server that directs client traffic to a load balancing pool and is the most basic type of virtual server. When you first create the virtual server, you assign an existing default pool to it. From then on, the virtual server automatically directs traffic to that default pool.
	// When C(forwarding-l2), specifies a virtual server that shares the same IP address as a node in an associated VLAN.
	// When C(forwarding-ip), specifies a virtual server like other virtual servers, except that the virtual server has no pool members to load balance. The virtual server simply forwards the packet directly to the destination IP address specified in the client request.
	// When C(performance-http), specifies a virtual server with which you associate a Fast HTTP profile. Together, the virtual server and profile increase the speed at which the virtual server processes HTTP requests.
	// When C(performance-l4), specifies a virtual server with which you associate a Fast L4 profile. Together, the virtual server and profile increase the speed at which the virtual server processes layer 4 requests.
	// When C(stateless), specifies a virtual server that accepts traffic matching the virtual server address and load balances the packet to the pool members without attempting to match the packet to a pre-existing connection in the connection table. New connections are immediately removed from the connection table. This addresses the requirement for one-way UDP traffic that needs to be processed at very high throughput levels, for example, load balancing syslog traffic to a pool of syslog servers. Stateless virtual servers are not suitable for processing traffic that requires stateful tracking, such as TCP traffic. Stateless virtual servers do not support iRules, persistence, connection mirroring, rateshaping, or SNAT automap.
	// When C(reject), specifies that the BIG-IP system rejects any traffic destined for the virtual server IP address.
	// When C(dhcp), specifies a virtual server that relays Dynamic Host Control Protocol (DHCP) client requests for an IP address to one or more DHCP servers, and provides DHCP server responses with an available IP address for the client.
	// When C(internal), specifies a virtual server that supports modification of HTTP requests and responses. Internal virtual servers enable usage of ICAP (Internet Content Adaptation Protocol) servers to modify HTTP requests and responses by creating and applying an ICAP profile and adding Request Adapt or Response Adapt profiles to the virtual server.
	// When C(message-routing), specifies a virtual server that uses a SIP application protocol and functions in accordance with a SIP session profile and SIP router profile.

	type?: string

	// Specifies the IP intelligence policy applied to the virtual server.
	// This parameter requires that a valid BIG-IP security module such as ASM or AFM be provisioned.

	ip_intelligence_policy?: string

	// Specifies the destination address network mask. This parameter will work with IPv4 and IPv6 type of addresses.
	// This is an optional parameter which can be specified when creating or updating virtual server.
	// If C(destination) is set in CIDR notation format and C(mask) is provided the C(mask) parameter takes precedence.
	// If catchall destination is specified, i.e. C(0.0.0.0) for IPv4 C(::) for IPv6, mask parameter is set to C(any) or C(any6) respectively.
	// When the C(destination) is provided not in CIDR notation and C(mask) is not specified, C(255.255.255.255) or C(ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff) is set for IPv4 and IPv6 addresses respectively.
	// When C(destination) is provided in CIDR notation format and C(mask) is not specified the mask parameter is inferred from C(destination).
	// When C(destination) is provided as Virtual Address name, and C(mask) is not specified, the mask will be C(None) allowing device set it with its internal defaults.

	mask?: string

	// Specifies that the system mirrors connections on each member of a redundant pair.
	// When creating a new virtual server, if this parameter is not specified, the default is C(disabled).

	mirror?: bool

	// Virtual server rate limit (connections-per-second). Setting this to 0 disables the limit.
	// The valid value range is C(0) - C(4294967295).

	rate_limit?: int

	// Specify the Firewall NAT policies for the virtual server.
	// You can specify one or more NAT policies to use.
	// The most specific policy is used. For example, if you specify that the virtual server use the device policy and the route domain policy, the route domain policy overrides the device policy.

	security_nat_policy?: {...}
}

bigip_firewall_dos_vector :: {

	// Specify the maximum number of this type of packet per second the system allows for a vector.
	// The system drops packets once the traffic level exceeds the rate limit.

	mitigation_threshold_eps?: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies the number of packets per second to identify an IP address as a bad actor.

	per_source_ip_detection_threshold?: string

	// Specifies the rate limit applied to a source IP that is identified as a bad actor.

	per_source_ip_mitigation_threshold?: string

	// Specifies that results of the current automatic thresholds are logged, though manual thresholds are enforced, and no action is taken on automatic thresholds.
	// The C(sweep) vector does not support this parameter.

	simulate_auto_threshold?: bool

	// When C(state) is C(mitigate), ensures that the vector enforces limits and thresholds.
	// When C(state) is C(detect-only), ensures that the vector does not enforce limits and thresholds (rate limiting, dopping, etc), but is still tracked in logs and statistics.
	// When C(state) is C(disabled), ensures that the vector does not enforce limits and thresholds, but is still tracked in logs and statistics.
	// When C(state) is C(learn-only), ensures that the vector does not "detect" any attacks. Only learning and stat collecting is performed.

	state: string

	// Whether Bad Actor detection is enabled or disabled for a vector, if available.
	// This parameter must be enabled to enable the C(auto_blacklist) parameter.
	// This parameter is not supported by the C(dns-malformed) vector.
	// This parameter is not supported by the C(qdcount) vector.

	bad_actor_detection?: bool

	// Duration, in seconds, that the blacklist will last.

	blacklist_duration?: int

	// Detection, in seconds, before blacklisting occurs.

	blacklist_detection_seconds?: int

	// Lists how many packets per second the system must discover in traffic in order to detect this attack.

	detection_threshold_eps?: string

	// Automatically blacklists detected bad actors.
	// To enable this parameter, the C(bad_actor_detection) must also be enabled.
	// This parameter is not supported by the C(dns-malformed) vector.
	// This parameter is not supported by the C(qdcount) vector.

	auto_blacklist?: bool

	// Specifies the absolute maximum allowable for packets of this type.
	// This setting rate limits packets to the packets per second setting, when specified.
	// To set no hard limit and allow automatic thresholds to manage all rate limiting, set this to C(infinite).

	attack_ceiling?: string

	// Specifies packets per second to identify an attack.
	// These settings provide an absolute minimum of packets to allow before the attack is identified.
	// As the automatic detection thresholds adjust to traffic and CPU usage on the system over time, this attack floor becomes less relevant.
	// This value may not exceed the value in C(attack_floor).

	attack_floor?: string

	// Specifies the name of the vector to modify.
	// Vectors that ship with the device are "hard-coded" so-to-speak in that the list of vectors is known to the system and users cannot add new vectors. Users only manipulate the existing vectors; all of which are disabled by default.
	// When C(ext-hdr-too-large), configures the "IPv6 extension header too large" Network Security vector.
	// When C(hop-cnt-low), configures the "IPv6 hop count <= <tunable>" Network Security vector.
	// When C(host-unreachable), configures the "Host Unreachable" Network Security vector.
	// When C(icmp-frag), configures the "ICMP Fragment" Network Security vector.
	// When C(icmpv4-flood), configures the "ICMPv4 flood" Network Security vector.
	// When C(icmpv6-flood), configures the "ICMPv6 flood" Network Security vector.
	// When C(ip-frag-flood), configures the "IP Fragment Flood" Network Security vector.
	// When C(ip-low-ttl), configures the "TTL <= <tunable>" Network Security vector.
	// When C(ip-opt-frames), configures the "IP Option Frames" Network Security vector.
	// When C(ipv6-ext-hdr-frames), configures the "IPv6 Extended Header Frames" Network Security vector.
	// When C(ipv6-frag-flood), configures the "IPv6 Fragment Flood" Network Security vector.
	// When C(opt-present-with-illegal-len), configures the "Option Present With Illegal Length" Network Security vector.
	// When C(sweep), configures the "Sweep" Network Security vector.
	// When C(tcp-bad-urg), configures the "TCP Flags-Bad URG" Network Security vector.
	// When C(tcp-half-open), configures the "TCP Half Open" Network Security vector.
	// When C(tcp-opt-overruns-tcp-hdr), configures the "TCP Option Overruns TCP Header" Network Security vector.
	// When C(tcp-psh-flood), configures the "TCP PUSH Flood" Network Security vector.
	// When C(tcp-rst-flood), configures the "TCP RST Flood" Network Security vector.
	// When C(tcp-syn-flood), configures the "TCP SYN Flood" Network Security vector.
	// When C(tcp-syn-oversize), configures the "TCP SYN Oversize" Network Security vector.
	// When C(tcp-synack-flood), configures the "TCP SYN ACK Flood" Network Security vector.
	// When C(tcp-window-size), configures the "TCP Window Size" Network Security vector.
	// When C(tidcmp), configures the "TIDCMP" Network Security vector.
	// When C(too-many-ext-hdrs), configures the "Too Many Extension Headers" Network Security vector.
	// When C(udp-flood), configures the "UDP Flood" Network Security vector.
	// When C(unk-tcp-opt-type), configures the "Unknown TCP Option Type" Network Security vector.
	// When C(a), configures the "DNS A Query" DNS Protocol Security vector.
	// When C(aaaa), configures the "DNS AAAA Query" DNS Protocol Security vector.
	// When C(any), configures the "DNS ANY Query" DNS Protocol Security vector.
	// When C(axfr), configures the "DNS AXFR Query" DNS Protocol Security vector.
	// When C(cname), configures the "DNS CNAME Query" DNS Protocol Security vector.
	// When C(dns-malformed), configures the "dns-malformed" DNS Protocol Security vector.
	// When C(ixfr), configures the "DNS IXFR Query" DNS Protocol Security vector.
	// When C(mx), configures the "DNS MX Query" DNS Protocol Security vector.
	// When C(ns), configures the "DNS NS Query" DNS Protocol Security vector.
	// When C(other), configures the "DNS OTHER Query" DNS Protocol Security vector.
	// When C(ptr), configures the "DNS PTR Query" DNS Protocol Security vector.
	// When C(qdcount), configures the "DNS QDCOUNT Query" DNS Protocol Security vector.
	// When C(soa), configures the "DNS SOA Query" DNS Protocol Security vector.
	// When C(srv), configures the "DNS SRV Query" DNS Protocol Security vector.
	// When C(txt), configures the "DNS TXT Query" DNS Protocol Security vector.
	// When C(ack), configures the "SIP ACK Method" SIP Protocol Security vector.
	// When C(bye), configures the "SIP BYE Method" SIP Protocol Security vector.
	// When C(cancel), configures the "SIP CANCEL Method" SIP Protocol Security vector.
	// When C(invite), configures the "SIP INVITE Method" SIP Protocol Security vector.
	// When C(message), configures the "SIP MESSAGE Method" SIP Protocol Security vector.
	// When C(notify), configures the "SIP NOTIFY Method" SIP Protocol Security vector.
	// When C(options), configures the "SIP OPTIONS Method" SIP Protocol Security vector.
	// When C(other), configures the "SIP OTHER Method" SIP Protocol Security vector.
	// When C(prack), configures the "SIP PRACK Method" SIP Protocol Security vector.
	// When C(publish), configures the "SIP PUBLISH Method" SIP Protocol Security vector.
	// When C(register), configures the "SIP REGISTER Method" SIP Protocol Security vector.
	// When C(sip-malformed), configures the "sip-malformed" SIP Protocol Security vector.
	// When C(subscribe), configures the "SIP SUBSCRIBE Method" SIP Protocol Security vector.
	// When C(uri-limit), configures the "uri-limit" SIP Protocol Security vector.

	name?: string

	// Specifies the name of the profile to manage vectors in.
	// The name C(device-config) is reserved for use by this module.
	// Vectors can be managed in either DoS Profiles, or Device Configuration. By specifying a profile of 'device-config', this module will specifically tailor configuration of the provided vectors to the Device Configuration.

	profile: string

	// The C(dns-malformed) vector does not support C(fully-automatic), or C(stress-based-mitigation) for this parameter.
	// The C(qdcount) vector does not support C(fully-automatic), or C(stress-based-mitigation) for this parameter.
	// The C(sip-malformed) vector does not support C(fully-automatic), or C(stress-based-mitigation) for this parameter.

	threshold_mode?: string

	// Specifies that addresses that are identified for blacklisting are advertised to BGP routers

	allow_advertisement?: bool

	// Lists the threshold percent increase over time that the system must detect in traffic in order to detect this attack.
	// The C(tcp-half-open) vector does not support this parameter.

	detection_threshold_percent?: string
}

bigip_profile_dns :: {

	// Specifies whether the DNS Express engine is enabled.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
	// The DNS Express engine receives zone transfers from the authoritative DNS server for the zone. If the C(enable_zone_transfer) setting is also C(yes) on this profile, the DNS Express engine also responds to zone transfer requests made by the nameservers configured as zone transfer clients for the DNS Express zone.

	enable_dns_express?: bool

	// Specifies the name of the DNS profile.

	name: string

	// Specifies the user-created cache that the system uses to cache DNS responses.
	// When you select a cache for the system to use, you must also set C(enable_dns_cache) to C(yes)

	cache_name?: string

	// Specifies whether the system signs responses with DNSSEC keys and replies to DNSSEC specific queries (e.g., DNSKEY query type).
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	enable_dnssec?: bool

	// Specifies the profile from which this profile inherits settings.
	// When creating a new profile, if this parameter is not specified, the default is the system-supplied C(dns) profile.

	parent?: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies whether the system caches DNS responses.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
	// When C(yes), the BIG-IP system caches DNS responses handled by the virtual servers associated with this profile. When you enable this setting, you must also specify a value for C(cache_name).
	// When C(no), the BIG-IP system does not cache DNS responses handled by the virtual servers associated with this profile. However, the profile retains the association with the DNS cache in the C(cache_name) parameter. Disable this setting when you want to debug the system.

	enable_cache?: bool

	// Specifies whether DNS firewall capability is enabled.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	enable_dns_firewall?: bool

	// Specifies whether the system uses Global Traffic Manager to manage the response.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	enable_gtm?: bool

	// Specifies whether to process client-side DNS packets with Recursion Desired set in the header.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
	// If set to C(no), processing of the packet is subject to the unhandled-query-action option.

	process_recursion_desired?: bool

	// When C(present), ensures that the profile exists.
	// When C(absent), ensures the profile is removed.

	state?: string

	// Specifies whether the system forwards non-wide IP queries to the local BIND server on the BIG-IP system.
	// For best performance, disable this setting when using a DNS cache.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	use_local_bind?: bool

	// Specifies whether the system answers zone transfer requests for a DNS zone created on the system.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
	// The C(enable_dns_express) and C(enable_zone_transfer) settings on a DNS profile affect how the system responds to zone transfer requests.
	// When the C(enable_dns_express) and C(enable_zone_transfer) settings are both C(yes), if a zone transfer request matches a DNS Express zone, then DNS Express answers the request.
	// When the C(enable_dns_express) setting is C(no) and the C(enable_zone_transfer) setting is C(yes), the BIG-IP system processes zone transfer requests based on the last action and answers the request from local BIND or a pool member.

	enable_zone_transfer?: bool

	// Specifies the action to take when a query does not match a Wide IP or a DNS Express Zone.
	// When C(allow), the BIG-IP system forwards queries to a DNS server or pool member. If a pool is not associated with a listener and the Use BIND Server on BIG-IP setting is set to Enabled, requests are forwarded to the local BIND server.
	// When C(drop), the BIG-IP system does not respond to the query.
	// When C(reject), the BIG-IP system returns the query with the REFUSED return code.
	// When C(hint), the BIG-IP system returns the query with a list of root name servers.
	// When C(no-error), the BIG-IP system returns the query with the NOERROR return code.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	unhandled_query_action?: string
}

bigip_remote_syslog :: {

	// Specifies the name of the syslog object.
	// This option is required when multiple C(remote_host) with the same IP or hostname are present on the device.
	// If C(name) is not provided C(remote_host) is used by default.

	name?: string

	// Specifies the IP address, or hostname, for the remote system to which the system sends log messages.

	remote_host: string

	// Specifies the port that the system uses to send messages to the remote logging server.
	// When creating a remote syslog, if this parameter is not specified, the default value C(514) is used.

	remote_port?: string

	// When C(present), guarantees that the remote syslog exists with the provided attributes.
	// When C(absent), removes the remote syslog from the system.

	state?: string

	// Specifies the local IP address of the system that is logging. To provide no local IP, specify the value C(none).
	// When creating a remote syslog, if this parameter is not specified, the default value C(none) is used.

	local_ip?: string
}

bigip_user :: {

	// C(always) will allow to update passwords if the user chooses to do so. C(on_create) will only set the password for newly created users.
	// When C(username_credential) is C(root), this value will be forced to C(always).

	update_password?: string

	// Name of the user to create, remove or modify.
	// The C(root) user may not be removed.

	username_credential: string

	// Full name of the user.

	full_name?: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies the administrative partition to which the user has access. C(partition_access) is required when creating a new account. Should be in the form "partition:role".
	// Valid roles include C(acceleration-policy-editor), C(admin), C(application-editor), C(auditor), C(certificate-manager), C(guest), C(irule-manager), C(manager), C(no-access), C(operator), C(resource-admin), C(user-manager), C(web-application-security-administrator), and C(web-application-security-editor).
	// Partition portion of tuple should be an existing partition or the value 'all'.

	partition_access?: [..._]

	// Set the users password to this unencrypted value. C(password_credential) is required when creating a new account.

	password_credential?: string

	// Optionally set the users shell.

	shell?: string

	// Whether the account should exist or not, taking action if the state is different from what is stated.

	state?: string
}

bigip_asm_policy_import :: {

	// Full path to a policy file to be imported into the BIG-IP ASM.
	// Policy files exported from newer versions of BIG-IP cannot be imported into older versions of BIG-IP. The opposite, however, is true; you can import older into newer.
	// The file format can be binary of XML.

	source?: string

	// When set to C(yes) any existing policy with the same name will be overwritten by the new import.
	// Works for both inline and file imports, if the policy does not exist this setting is ignored.

	force?: bool

	// When specified the ASM policy is created from a provided string.
	// Content needs to be provided in a valid XML format otherwise the operation will fail.

	inline?: string

	// The ASM policy to create or override.

	name: string

	// Device partition to create policy on.

	partition?: string
}

bigip_device_sshd :: {

	// Specifies the number of seconds before inactivity causes an SSH session to log out.

	inactivity_timeout?: int

	// Specifies the minimum SSHD message level to include in the system log.

	log_level?: string

	// Specifies, when checked C(enabled), that the system accepts SSH communications.

	login?: string

	// Port that you want the SSH daemon to run on.

	port?: int

	// Specifies, if you have enabled SSH access, the IP address or address range for other systems that can use SSH to communicate with this system.
	// To specify all addresses, use the value C(all).
	// IP address can be specified, such as 172.27.1.10.
	// IP rangees can be specified, such as 172.27.*.* or 172.27.0.0/255.255.0.0.
	// To remove SSH access specify an empty list or an empty string.

	allow?: [..._]

	// Whether to enable the banner or not.

	banner?: string

	// Specifies the text to include on the pre-login banner that displays when a user attempts to login to the system using SSH.

	banner_text?: string
}

bigip_device_traffic_group :: {

	// When C(present), ensures that the traffic group exists.
	// When C(absent), ensures the traffic group is removed.

	state?: string

	// The value of the load the traffic-group presents the system relative to other traffic groups.
	// This parameter only takes effect when C(Load Aware) failover method is in use.
	// The correct value range is C(1 - 1000) inclusive.

	ha_load_factor?: int

	// Specifies the floating Media Access Control (MAC) address associated with the floating IP addresses defined for a traffic group.
	// Primarily, a MAC masquerade address minimizes ARP communications or dropped packets as a result of failover.
	// A MAC masquerade address ensures that any traffic destined for a specific traffic group reaches an available device after failover, which happens because along with the traffic group, the MAC masquerade address floats to the available device.
	// Without a MAC masquerade address, the sending host must learn the MAC address for a newly-active device, either by sending an ARP request or by relying on the gratuitous ARP from the newly-active device.
	// To unset the MAC address, specify an empty value (C("")) to this parameter.

	mac_address?: string

	// Specifies a configured C(HA group) to be associated with the traffic group.
	// Once you create an HA group on a device and associate the HA group with a traffic group, you must create an HA group and associate it with that same traffic group on every device in the device group.
	// To disable an HA group failover method , specify an empty string value (C("")) to this parameter.
	// Disabling HA group will revert the device back to using C(Load Aware) method as it is the default, unless C(ha_order) setting is also configured.
	// The C(auto_failback) and C(auto_failback_time) are not compatible with C(ha_group).

	ha_group?: string

	// Specifies order in which you would like to assign devices for failover.
	// If you configure this setting, you must configure the setting on every traffic group in the device group.
	// The values should be device names of the devices that belong to the failover group configured beforehand.
	// The order in which the devices are placed as arguments to this parameter, determines their HA order on the device, in other words changing the order of the same elements will cause a change on the unit.
	// To disable an HA order failover method , specify an empty string value (C("")) to this parameter.
	// Disabling HA order will revert the device back to using Load Aware method as it is the default, unless C(ha_group) setting is also configured.
	// Device names will be prepended by a partition by the module, so you can provide either the full path format name C(/Common/bigip1) or just the name string C(bigip1).

	ha_order?: [..._]

	// The name of the traffic group.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies whether the traffic group fails back to the initial device specified in C(ha_order).

	auto_failback?: bool

	// Specifies the number of seconds the system delays before failing back to the initial device specified in C(ha_order).
	// The correct value range is C(0 - 300) inclusive.

	auto_failback_time?: int
}

bigip_gtm_monitor_external :: {

	// Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'. Note that if specifying an IP address, a value between 1 and 65535 must be specified.

	port?: string

	// The number of seconds in which the node or service must respond to the monitor request. If the target responds within the set time period, it is considered up. If the target does not respond within the set time period, it is considered down. You can change this number to any number you want, however, it should be 3 times the interval number of seconds plus 1 second. If this parameter is not provided when creating a new monitor, then the default value will be 120.

	timeout?: int

	// Specifies any variables that the script requires.
	// Note that double quotes in values will be suppressed.

	variables?: {...}

	// Specifies any command-line arguments that the script requires.

	arguments?: string

	// Device partition to manage resources on.

	partition?: string

	// IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.

	ip?: string

	// Specifies the name of the monitor.

	name: string

	// The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(http) parent on the C(Common) partition.

	parent?: string

	// When C(present), ensures that the monitor exists.
	// When C(absent), ensures the monitor is removed.

	state?: string

	// Specifies the name of the file for the monitor to use. In order to reference a file, you must first import it using options on the System > File Management > External Monitor Program File List > Import screen. The BIG-IP system automatically places the file in the proper location on the file system.

	external_program?: string

	// The interval specifying how frequently the monitor instance of this template will run. If this parameter is not provided when creating a new monitor, then the default value will be 30. This value B(must) be less than the C(timeout) value.

	interval?: int
}

bigip_gtm_wide_ip :: {

	// Specifies alternate domain names for the web site content you are load balancing.
	// You can use the same wildcard characters for aliases as you can for actual wide IP names.

	aliases?: [..._]

	// List of rules to be applied.
	// If you want to remove all existing iRules, specify a single empty value; C(""). See the documentation for an example.

	irules?: [..._]

	// Wide IP name. This name must be formatted as a fully qualified domain name (FQDN). You can also use the alias C(wide_ip) but this is deprecated and will be removed in a future Ansible version.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// When C(present) or C(enabled), ensures that the Wide IP exists and is enabled.
	// When C(absent), ensures that the Wide IP has been removed.
	// When C(disabled), ensures that the Wide IP exists and is disabled.

	state?: string

	// Specifies which GTM pool, for the system to use as the last resort pool for the wide IP.
	// The valid pools for this parameter are those with the C(type) specified in this module.

	last_resort_pool?: string

	// Specifies the load balancing method used to select a pool in this wide IP. This setting is relevant only when multiple pools are configured for a wide IP.

	pool_lb_method: string

	// The pools that you want associated with the Wide IP.
	// If C(ratio) is not provided when creating a new Wide IP, it will default to 1.

	pools?: [..._]

	// Specifies the type of wide IP. GTM wide IPs need to be keyed by query type in addition to name, since pool members need different attributes depending on the response RDATA they are meant to supply. This value is required if you are using BIG-IP versions >= 12.0.0.

	type?: string
}

bigip_iapp_template :: {

	// Specifies whether or not to force the uploading of an iApp. When C(yes), will force update the iApp even if there are iApp services using it. This will not update the running service though. Use C(bigip_iapp_service) to do that. When C(no), will update the iApp only if there are no iApp services using the template.

	force?: bool

	// The name of the iApp template that you want to delete. This option is only available when specifying a C(state) of C(absent) and is provided as a way to delete templates that you may no longer have the source of.

	name?: string

	// Device partition to manage resources on.

	partition?: string

	// Whether the iApp template should exist or not.

	state?: string

	// Sets the contents of an iApp template directly to the specified value. This is for simple values, but can be used with lookup plugins for anything complex or with formatting. C(content) must be provided when creating new templates.

	content?: string
}

bigip_smtp :: {

	// Host name used in SMTP headers in the format of a fully qualified domain name. This setting does not refer to the BIG-IP system's hostname.

	local_host_name?: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies the SMTP port number.
	// When creating a new SMTP configuration, the default is C(25) when C(encryption) is C(none) or C(tls). The default is C(465) when C(ssl) is selected.

	smtp_server_port?: int

	// User name that the SMTP server requires when validating a user.

	smtp_server_username?: string

	// When C(present), ensures that the SMTP configuration exists.
	// When C(absent), ensures that the SMTP configuration does not exist.

	state?: string

	// Credentials can be set on an SMTP server's configuration even if that authentication is not used (think staging configs or emergency changes). This parameter acts as a switch to make the specified C(smtp_server_username) and C(smtp_server_password) parameters active or not.
	// When C(yes), the authentication parameters will be active.
	// When C(no), the authentication parameters will be inactive.

	authentication?: bool

	// Specifies whether the SMTP server requires an encrypted connection in order to send mail.

	encryption?: string

	// SMTP server host name in the format of a fully qualified domain name.
	// This value is required when create a new SMTP configuration.

	smtp_server?: string

	// Password that the SMTP server requires when validating a user.

	smtp_server_password?: string

	// Passwords are stored encrypted, so the module cannot know if the supplied C(smtp_server_password) is the same or different than the existing password. This parameter controls the updating of the C(smtp_server_password) credential.
	// When C(always), will always update the password.
	// When C(on_create), will only set the password for newly created SMTP server configurations.

	update_password?: string

	// Email address that the email is being sent from. This is the "Reply-to" address that the recipient sees.

	from_address?: string

	// Specifies the name of the SMTP server configuration.

	name: string
}

bigiq_utility_license :: {

	// A key that signifies that you accept the F5 EULA for this license.
	// A copy of the EULA can be found here https://askf5.f5.com/csp/article/K12902
	// This is required when C(state) is C(present).

	accept_eula?: bool

	// The license key to install and activate.

	license_key: string

	// The state of the utility license on the system.
	// When C(present), guarantees that the license exists.
	// When C(absent), removes the license from the system.

	state?: string
}

bigip_data_group :: {

	// Device partition to manage resources on.

	partition?: string

	// When specifying C(records_content), this is the string of characters that will be used to break apart entries in the C(records_content) into key/value pairs.
	// By default, this parameter's value is C(:=).
	// This value cannot be changed once it is set.
	// This parameter is only relevant when C(internal) is C(no). It will be ignored otherwise.

	separator?: string

	// When C(state) is C(present), ensures the data group exists.
	// When C(state) is C(absent), ensures that the data group is removed.
	// The use of state in this module refers to the entire data group, not its members.

	state?: string

	// The type of this data group.
	// You should only consider setting this value in cases where you know exactly what you're doing, B(or), you are working with a pre-existing internal data group.
	// Be aware that if you deliberately force this parameter to C(yes), and you have a either a large number of records or a large total records size, this large amount of data will be reflected in your BIG-IP configuration. This can lead to B(long) system configuration load times due to needing to parse and verify the large configuration.
	// There is a limit of either 4 megabytes or 65,000 records (whichever is more restrictive) for uploads when this parameter is C(yes).
	// This value cannot be changed once the data group is created.

	internal?: bool

	// Specifies the name of the data group.

	name: string

	// When creating a new data group, this specifies the file name that you want to give an external data group file on the BIG-IP.
	// This parameter is ignored when C(internal) is C(yes).
	// This parameter can be used to select an existing data group file to use with an existing external data group.
	// If this value is not provided, it will be given the value specified in C(name) and, therefore, match the name of the data group.
	// This value may only contain letters, numbers, underscores, dashes, or a period.

	external_file_name?: string

	// Specifies the records that you want to add to a data group.
	// If you have a large number of records, it is recommended that you use C(records_content) instead of typing all those records here.
	// The technical limit of either 1. the number of records, or 2. the total size of all records, varies with the size of the total resources on your system; in particular, RAM.
	// When C(internal) is C(no), at least one record must be specified in either C(records) or C(records_content).
	// When C(type) is: C(ip), C(address), C(addr) if the addresses use non default route domain, they must be explicit about it that is they must contain a route domain notation C(%) eg. 10.10.1.1%11. This is true regardless if the data group resides in a partition or not.

	records?: [..._]

	// Path to a file with records in it.
	// The file should be well-formed. This means that it includes records, one per line, that resemble the following format "key separator value". For example, C(foo := bar).
	// BIG-IP is strict about this format, but this module is a bit more lax. It will allow you to include arbitrary amounts (including none) of empty space on either side of the separator. For an illustration of this, see the Examples section.
	// Record keys are limited in length to no more than 65520 characters.
	// Values of record keys are limited in length to no more than 65520 characters.
	// The total number of records you can have in your BIG-IP is limited by the memory of the BIG-IP.
	// The format of this content is slightly different depending on whether you specify a C(type) of C(address), C(integer), or C(string). See the examples section for examples of the different types of payload formats that are expected in your data group file.
	// When C(internal) is C(no), at least one record must be specified in either C(records) or C(records_content).

	records_src?: string

	// The type of records in this data group.
	// This parameter is especially important because it causes BIG-IP to store your data in different ways so-as to optimize access to it. For example, it would be wrong to specify a list of records containing IP addresses, but label them as a C(string) type.
	// This value cannot be changed once the data group is created.

	type?: string

	// When C(yes), will ensure that the remote data group file is deleted.
	// This parameter is only relevant when C(state) is C(absent) and C(internal) is C(no).

	delete_data_group_file?: bool

	// The description of the data group.

	description?: string
}

bigip_device_dns :: {

	// A list of domains that the system searches for local domain lookups, to resolve local host names.

	search?: [..._]

	// The state of the variable on the system. When C(present), guarantees that an existing variable is set to C(value).

	state?: string

	// Specifies whether the system caches DNS lookups or performs the operation each time a lookup is needed. Please note that this applies only to Access Policy Manager features, such as ACLs, web application rewrites, and authentication.

	cache?: string

	// Specifies whether the DNS specifies IP addresses using IPv4 or IPv6.

	ip_version?: int

	// A list of name servers that the system uses to validate DNS lookups

	name_servers?: [..._]
}

bigip_monitor_udp :: {

	// IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.

	ip?: string

	// Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'. Note that if specifying an IP address, a value between 1 and 65535 must be specified.

	port?: string

	// The send string for the monitor call. When creating a new monitor, if this value is not provided, the default C(default send string) will be used.

	send?: string

	// When C(present), ensures that the monitor exists.
	// When C(absent), ensures the monitor is removed.

	state?: string

	// Specifies the amount of time in seconds after the first successful response before a node will be marked up. A value of 0 will cause a node to be marked up immediately after a valid response is received from the node. If this parameter is not provided when creating a new monitor, then the default value will be 0.

	time_until_up?: int

	// This setting works like C(receive), except that the system marks the node or pool member disabled when its response matches the C(receive_disable) string but not C(receive). To use this setting, you must specify both C(receive_disable) and C(receive).

	receive_disable?: string

	// The number of seconds in which the node or service must respond to the monitor request. If the target responds within the set time period, it is considered up. If the target does not respond within the set time period, it is considered down. You can change this number to any number you want, however, it should be 3 times the interval number of seconds plus 1 second. If this parameter is not provided when creating a new monitor, then the default value will be 16.

	timeout?: int

	// The description of the monitor.

	description?: string

	// The interval specifying how frequently the monitor instance of this template will run. If this parameter is not provided when creating a new monitor, then the default value will be 5. This value B(must) be less than the C(timeout) value.

	interval?: int

	// Monitor name.

	name: string

	// The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(udp) parent on the C(Common) partition.

	parent?: string

	// Device partition to manage resources on.

	partition?: string

	// The receive string for the monitor call.

	receive?: string
}

bigip_policy :: {

	// Specifies a list of rules that you want associated with this policy. The order of this list is the order they will be evaluated by BIG-IP. If the specified rules do not exist (for example when creating a new policy) then they will be created.
	// The C(conditions) for a default rule are C(all).
	// The C(actions) for a default rule are C(ignore).
	// The C(bigip_policy_rule) module can be used to create and edit existing and new rules.

	rules?: [..._]

	// When C(state) is C(present), ensures that the policy exists and is published. When C(state) is C(absent), ensures that the policy is removed, even if it is currently drafted.
	// When C(state) is C(draft), ensures that the policy exists and is drafted. When modifying rules, it is required that policies first be in a draft.
	// Drafting is only supported on versions of BIG-IP >= 12.1.0. On versions prior to that, specifying a C(state) of C(draft) will raise an error.

	state?: string

	// Specifies the method to determine which actions get executed in the case where there are multiple rules that match. When creating new policies, the default is C(first).
	// This module does not allow you to specify the C(best) strategy to use. It will choose the system default (C(/Common/best-match)) for you instead.

	strategy?: string

	// The description to attach to the policy.
	// This parameter is only supported on versions of BIG-IP >= 12.1.0. On earlier versions it will simply be ignored.

	description?: string

	// The name of the policy to create.

	name: string

	// Device partition to manage resources on.

	partition?: string
}

bigip_profile_http_compression :: {

	// Description of the HTTP compression profile.

	description?: string

	// Number of kilobytes of memory that the system uses for internal compression buffers when compressing a server response.

	gzip_memory_level?: int

	// Specifies the name of the compression profile.

	name: string

	// Specifies the profile from which this profile inherits settings.
	// When creating a new profile, if this parameter is not specified, the default is the system-supplied C(httpcompression) profile.

	parent?: string

	// Device partition to manage resources on.

	partition?: string

	// When C(present), ensures that the profile exists.
	// When C(absent), ensures the profile is removed.

	state?: string

	// Maximum number of compressed bytes that the system buffers before inserting a Content-Length header (which specifies the compressed size) into the response.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	buffer_size?: int

	// Specifies the degree to which the system compresses the content.
	// Higher compression levels cause the compression process to be slower.
	// Valid values are between 1 (least compression and fastest) to 9 (most compression and slowest).

	gzip_level?: int

	// Number of kilobytes in the window size that the system uses when compressing a server response.

	gzip_window_size?: int
}

bigip_profile_persistence_cookie :: {

	// Specifies the name of the profile.

	name: string

	// Specifies whether the secure attribute should be enabled or disabled for the inserted cookies.

	secure?: bool

	// C(always) will allow to update passphrases if the user chooses to do so. C(on_create) will only set the passphrase for newly created profiles.

	update_password?: string

	// Specifies a passphrase to be used for cookie encryption.

	encryption_passphrase?: string

	// Specifies whether the httponly attribute should be enabled or disabled for the inserted cookies.

	http_only?: bool

	// When C(yes), specifies that the system can use any pool that contains this persistence record.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	match_across_pools?: bool

	// When C(yes), specifies that all persistent connections from a client IP address that go to the same virtual IP address also go to the same node.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	match_across_services?: bool

	// When C(yes), specifies that the system allows you to specify that pool member connection limits will be overridden for persisted clients.
	// Per-virtual connection limits remain hard limits and are not overridden.

	override_connection_limit?: bool

	// Send the cookie persistence entry on every reply, even if the entry has previously been supplied to the client.

	always_send?: bool

	// Specifies a unique name for the cookie.

	cookie_name?: string

	// Specifies whether the pool-name in the inserted BIG-IP default cookie should be encrypted.

	encrypt_cookie_pool_name?: bool

	// When C(present), ensures that the profile exists.
	// When C(absent), ensures the profile is removed.

	state?: string

	// Specifies the profile from which this profile inherits settings.
	// When creating a new profile, if this parameter is not specified, the default is the system-supplied C(cookie) profile.

	parent?: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies the type of cookie processing that the system uses.
	// When C(hash), specifies that the server provides the cookie, which the system then maps consistently to a specific node. This persistence type requires a C(cookie_name) value.
	// When C(insert), specifies that the system inserts server information, in the form of a cookie, into the header of the server response.
	// When C(passive), specifies that the server provides the cookie, formatted with the correct server information and timeout. This persistence type requires a C(cookie_name) value.
	// When C(rewrite), specifies that the system intercepts the BIGipCookie header, sent from the server, and overwrites the name and value of that cookie.

	cookie_method?: string

	// Specifies the expiration time of the cookie. By default the system generates and uses session cookie. This cookie expires when the user session expires, that is when the browser is closed.

	expiration?: {...}

	// When C(yes), specifies that all persistent connections from the same client IP address go to the same node.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	match_across_virtuals?: bool

	// Specifies the way in which the cookie encryption format is used.
	// When C(disabled), generates the cookie format unencrypted.
	// When C(preferred), generate an encrypted cookie, but accepts both encrypted and unencrypted formats.
	// When C(required), cookie format must be encrypted.

	cookie_encryption?: string

	// Description of the profile.

	description?: string
}

bigip_sys_daemon_log_tmm :: {

	// The state of the log level on the system. When C(present), guarantees that an existing log level is set to C(value).

	state?: string

	// Specifies the lowest level of IP address messages from the tmm daemon to include in the system log.

	ip_log_level?: string

	// Specifies the lowest level of iRule messages from the tmm daemon to include in the system log.

	irule_log_level?: string

	// Specifies the lowest level of Layer 4 messages from the tmm daemon to include in the system log.

	layer4_log_level?: string

	// Specifies the lowest level of PVA messages from the tmm daemon to include in the system log.

	pva_log_level?: string

	// Specifies the lowest level of SSL messages from the tmm daemon to include in the system log.

	ssl_log_level?: string

	// Specifies the lowest level of ARP messages from the tmm daemon to include in the system log.

	arp_log_level?: string

	// Specifies the lowest level of HTTP compression messages from the tmm daemon to include in the system log.

	http_compression_log_level?: string

	// Specifies the lowest level of HTTP messages from the tmm daemon to include in the system log.

	http_log_level?: string

	// Specifies the lowest level of network messages from the tmm daemon to include in the system log.

	net_log_level?: string

	// Specifies the lowest level of operating system messages from the tmm daemon to include in the system log.

	os_log_level?: string
}

bigip_profile_client_ssl :: {

	// Enables or disables acceptance of non-SSL connections.
	// When creating a new profile, the setting is provided by the parent profile.

	allow_non_ssl?: bool

	// When C(yes), client certificate is retained in SSL session.

	retain_certificate?: bool

	// Specifies that the CAs that the system advertises to clients is being trusted by the profile.

	advertised_cert_authority?: string

	// Specifies the list of ciphers that the system supports. When creating a new profile, the default cipher list is provided by the parent profile.

	ciphers?: string

	// Specifies the frequency of client authentication for an SSL session.
	// When C(once), specifies that the system authenticates the client once for an SSL session.
	// When C(always), specifies that the system authenticates the client once for an SSL session and also upon reuse of that session.

	client_auth_frequency?: string

	// Device partition to manage resources on.

	partition?: string

	// Requires that the network peers also provide SNI support, this setting only takes effect when C(sni_default) is set to C(true).
	// When creating a new profile, the setting is provided by the parent profile.

	sni_require?: bool

	// Enables or disables the resumption of SSL sessions after an unclean shutdown.
	// When creating a new profile, the setting is provided by the parent profile.

	strict_resume?: bool

	// Instructs the system to use the specified CRL file even if it has expired.

	allow_expired_crl?: bool

	// Specifies the maximum number of certificates to be traversed in a client certificate chain.

	cert_auth_depth?: int

	// The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(clientssl) parent on the C(Common) partition.

	parent?: string

	// Specifies the method of secure renegotiations for SSL connections. When creating a new profile, the setting is provided by the parent profile.
	// When C(request) is set the system request secure renegotation of SSL connections.
	// C(require) is a default setting and when set the system permits initial SSL handshakes from clients but terminates renegotiations from unpatched clients.
	// The C(require-strict) setting the system requires strict renegotiation of SSL connections. In this mode the system refuses connections to insecure servers, and terminates existing SSL connections to insecure servers.

	secure_renegotiation?: string

	// Specifies the fully qualified DNS hostname of the server used in Server Name Indication communications. When creating a new profile, the setting is provided by the parent profile.
	// The server name can also be a wildcard string containing the asterisk C(*) character.

	server_name?: string

	// One or more certificates and keys to associate with the SSL profile. This option is always a list. The keys in the list dictate the details of the client/key/chain combination. Note that BIG-IPs can only have one of each type of each certificate/key type. This means that you can only have one RSA, one DSA, and one ECDSA per profile. If you attempt to assign two RSA, DSA, or ECDSA certificate/key combo, the device will reject this.
	// This list is a complex list that specifies a number of keys.

	cert_key_chain?: [..._]

	// Specifies the name of a file containing a list of revoked client certificates.

	client_auth_crl?: string

	// Specifies the way the system handles client certificates.
	// When C(ignore), specifies that the system ignores certificates from client systems.
	// When C(require), specifies that the system requires a client to present a valid certificate.
	// When C(request), specifies that the system requests a valid certificate from a client but always authenticate the client.

	client_certificate?: string

	// Specifies the name of the profile.

	name: string

	// Options that the system uses for SSL processing in the form of a list. When creating a new profile, the list is provided by the parent profile.
	// When a C('') or C(none) value is provided all options for SSL processing are disabled.

	options?: [..._]

	// Enables or disables SSL renegotiation.
	// When creating a new profile, the setting is provided by the parent profile.

	renegotiation?: bool

	// Indicates that the system uses this profile as the default SSL profile when there is no match to the server name, or when the client provides no SNI extension support.
	// When creating a new profile, the setting is provided by the parent profile.
	// There can be only one SSL profile with this setting enabled.

	sni_default?: bool

	// When C(present), ensures that the profile exists.
	// When C(absent), ensures the profile is removed.

	state?: string

	// Specifies a client CA that the system trusts.

	trusted_cert_authority?: string
}

bigip_routedomain :: {

	// Dynamic routing protocols for the system to use in the route domain.

	routing_protocol?: [..._]

	// Whether the route domain should exist or not.

	state?: string

	// Specifies whether the system enforces cross-routing restrictions or not.

	strict?: bool

	// The bandwidth controller for the route domain.

	bwc_policy?: string

	// The eviction policy to use with this route domain. Apply an eviction policy to provide customized responses to flow overflows and slow flows on the route domain.

	flow_eviction_policy?: string

	// Partition to create the route domain on. Partitions cannot be updated once they are created.

	partition?: string

	// Specifies descriptive text that identifies the route domain.

	description?: string

	// Specifies AFM policy to be attached to route domain.

	fw_enforced_policy?: string

	// The name of the route domain.

	name?: string

	// Service policy to associate with the route domain.

	service_policy?: string

	// The maximum number of concurrent connections allowed for the route domain. Setting this to C(0) turns off connection limits.

	connection_limit?: int

	// The unique identifying integer representing the route domain.
	// This field is required when creating a new route domain.
	// In version 2.5, this value is no longer used to reference a route domain when making modifications to it (for instance during update and delete operations). Instead, the C(name) parameter is used. In version 2.6, the C(name) value will become a required parameter.

	id?: int

	// Specifies the route domain the system searches when it cannot find a route in the configured domain.

	parent?: string

	// VLANs for the system to use in the route domain.

	vlans?: [..._]
}

bigiq_application_http :: {

	// The state of the resource on the system.
	// When C(present), guarantees that the resource exists with the provided attributes.
	// When C(absent), removes the resource from the system.

	state?: string

	// If the module should wait for the application to be created, deleted or updated.

	wait?: bool

	// Collects statistics of the BIG-IP that the application is deployed to.
	// This parameter is only relevant when specifying a C(service_environment) which is a BIG-IP; not an SSG.

	add_analytics?: bool

	// Description of the application.

	description?: string

	// Settings to configure the virtual which will receive the inbound connection.
	// This virtual will be used to host the HTTP endpoint of the application.

	inbound_virtual?: {...}

	// Name of the new application.

	name: string

	// A list of servers that the application is hosted on.
	// If you are familiar with other BIG-IP setting, you might also refer to this list as the list of pool members.
	// When creating a new application, at least one server is required.

	servers?: [..._]

	// Specifies the name of service environment that the application will be deployed to.
	// When creating a new application, this parameter is required.
	// The service environment type will be discovered by this module automatically. Therefore, it is crucial that you maintain unique names for items in the different service environment types (at this time, SSGs and BIGIPs).

	service_environment?: string
}

bigip_irule :: {

	// The BIG-IP module to add the iRule to.

	module: string

	// The name of the iRule.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// The iRule file to interpret and upload to the BIG-IP. Either one of C(src) or C(content) must be provided.

	src: string

	// Whether the iRule should exist or not.

	state?: string

	// When used instead of 'src', sets the contents of an iRule directly to the specified value. This is for simple values, but can be used with lookup plugins for anything complex or with formatting. Either one of C(src) or C(content) must be provided.

	content?: string
}

bigip_monitor_tcp :: {

	// Monitor name.

	name: string

	// The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(tcp) parent on the C(Common) partition.

	parent?: string

	// The receive string for the monitor call.

	receive?: string

	// When C(present), ensures that the monitor exists.
	// When C(absent), ensures the monitor is removed.

	state?: string

	// The number of seconds in which the node or service must respond to the monitor request. If the target responds within the set time period, it is considered up. If the target does not respond within the set time period, it is considered down. You can change this number to any number you want, however, it should be 3 times the interval number of seconds plus 1 second. If this parameter is not provided when creating a new monitor, then the default value will be 16.

	timeout?: int

	// The description of the monitor.

	description?: string

	// The interval specifying how frequently the monitor instance of this template will run. If this parameter is not provided when creating a new monitor, then the default value will be 5. This value B(must) be less than the C(timeout) value.

	interval?: int

	// Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'. Note that if specifying an IP address, a value between 1 and 65535 must be specified
	// This argument is not supported for TCP Echo types.

	port?: string

	// The send string for the monitor call.

	send?: string

	// Specifies the amount of time in seconds after the first successful response before a node will be marked up. A value of 0 will cause a node to be marked up immediately after a valid response is received from the node. If this parameter is not provided when creating a new monitor, then the default value will be 0.

	time_until_up?: int

	// IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.
	// If this value is an IP address, and the C(type) is C(tcp) (the default), then a C(port) number must be specified.

	ip?: string

	// Device partition to manage resources on.

	partition?: string
}

bigip_node :: {

	// IP address of the node. This can be either IPv4 or IPv6. When creating a new node, one of either C(address) or C(fqdn) must be provided. This parameter cannot be updated after it is set.

	address?: string

	// Specifies whether the FQDN of the node resolves to an IPv4 or IPv6 address.
	// When creating a new node, if this parameter is not specified and C(fqdn) is specified, this parameter will default to C(ipv4).
	// This parameter cannot be changed after it has been set.

	fqdn_address_type?: string

	// Monitor rule type when C(monitors) is specified. When creating a new pool, if this value is not specified, the default of 'and_list' will be used.
	// Both C(single) and C(and_list) are functionally identical since BIG-IP considers all monitors as "a list". BIG=IP either has a list of many, or it has a list of one. Where they differ is in the extra guards that C(single) provides; namely that it only allows a single monitor.

	monitor_type?: string

	// Specifies the name of the node.

	name: string

	// Node rate limit (connections-per-second). Setting this to 0 disables the limit.

	rate_limit?: int

	// Node connection limit. Setting this to 0 disables the limit.

	connection_limit?: int

	// The dynamic ratio number for the node. Used for dynamic ratio load balancing.
	// When creating a new node, if this parameter is not specified, the default of C(1) will be used.

	dynamic_ratio?: int

	// FQDN name of the node. This can be any name that is a valid RFC 1123 DNS name. Therefore, the only characters that can be used are "A" to "Z", "a" to "z", "0" to "9", the hyphen ("-") and the period (".").
	// FQDN names must include at lease one period; delineating the host from the domain. ex. C(host.domain).
	// FQDN names must end with a letter or a number.
	// When creating a new node, one of either C(address) or C(fqdn) must be provided. This parameter cannot be updated after it is set.

	fqdn?: string

	// Device partition to manage resources on.

	partition?: string

	// Monitor quorum value when C(monitor_type) is C(m_of_n).

	quorum?: int

	// Specifies, if you activate more than one health monitor, the number of health monitors that must receive successful responses in order for the link to be considered available.

	availability_requirements?: {...}

	// Node ratio weight. Valid values range from 1 through 100.
	// When creating a new node, if this parameter is not specified, the default of C(1) will be used.

	ratio?: int

	// Specifies the current state of the node. C(enabled) (All traffic allowed), specifies that system sends traffic to this node regardless of the node's state. C(disabled) (Only persistent or active connections allowed), Specifies that the node can handle only persistent or active connections. C(offline) (Only active connections allowed), Specifies that the node can handle only active connections. In all cases except C(absent), the node will be created if it does not yet exist.
	// Be particularly careful about changing the status of a node whose FQDN cannot be resolved. These situations disable your ability to change their C(state) to C(disabled) or C(offline). They will remain in an *Unavailable - Enabled* state.

	state?: string

	// Specifies descriptive text that identifies the node.
	// You can remove a description by either specifying an empty string, or by specifying the special value C(none).

	description?: string

	// Specifies whether the system automatically creates ephemeral nodes using the IP addresses returned by the resolution of a DNS query for a node defined by an FQDN.
	// When C(yes), the system generates an ephemeral node for each IP address returned in response to a DNS query for the FQDN of the node. Additionally, when a DNS response indicates the IP address of an ephemeral node no longer exists, the system deletes the ephemeral node.
	// When C(no), the system resolves a DNS query for the FQDN of the node with the single IP address associated with the FQDN.
	// When creating a new node, if this parameter is not specified and C(fqdn) is specified, this parameter will default to C(yes).
	// This parameter cannot be changed after it has been set.

	fqdn_auto_populate?: bool

	// Specifies the interval in which a query occurs, when the DNS server is down. The associated monitor continues polling as long as the DNS server is down.
	// When creating a new node, if this parameter is not specified and C(fqdn) is specified, this parameter will default to C(5).

	fqdn_down_interval?: int

	// Specifies the interval in which a query occurs, when the DNS server is up. The associated monitor attempts to probe three times, and marks the server down if it there is no response within the span of three times the interval value, in seconds.
	// This parameter accepts a value of C(ttl) to query based off of the TTL of the FQDN. The default TTL interval is akin to specifying C(3600).
	// When creating a new node, if this parameter is not specified and C(fqdn) is specified, this parameter will default to C(3600).

	fqdn_up_interval?: string

	// Specifies the health monitors that the system currently uses to monitor this node.

	monitors?: [..._]
}

bigip_vcmp_guest :: {

	// Contains those slots that the guest is allowed to be assigned to.
	// When the host determines which slots this guest should be assigned to, only slots in this list will be considered.
	// This is a good way to force guests to be assigned only to particular slots, or, by configuring disjoint C(allowed_slots) on two guests, that those guests are never assigned to the same slot.
	// By default this list includes every available slot in the cluster. This means, by default, the guest may be assigned to any slot.

	allowed_slots?: [..._]

	// The name of the vCMP guest to manage.

	name: string

	// The state of the vCMP guest on the system. Each state implies the actions of all states before it.
	// When C(configured), guarantees that the vCMP guest exists with the provided attributes. Additionally, ensures that the vCMP guest is turned off.
	// When C(disabled), behaves the same as C(configured) the name of this state is just a convenience for the user that is more understandable.
	// When C(provisioned), will ensure that the guest is created and installed. This state will not start the guest; use C(deployed) for that. This state is one step beyond C(present) as C(present) will not install the guest; only setup the configuration for it to be installed.
	// When C(present), ensures the guest is properly provisioned and starts the guest so that it is in a running state.
	// When C(absent), removes the vCMP from the system.

	state?: string

	// When C(state) is C(absent), will additionally delete the virtual disk associated with the vCMP guest. By default, this value is C(no).

	delete_virtual_disk?: bool

	// Specifies the hotfix ISO image file which will be applied on top of the base image.

	initial_hotfix?: string

	// Specifies the IP address, and subnet or subnet mask that you use to access the guest when you want to manage a module running within the guest. This parameter is required if the C(mgmt_network) parameter is C(bridged).
	// When creating a new guest, if you do not specify a network or network mask, a default of C(/24) (C(255.255.255.0)) will be assumed.

	mgmt_address?: string

	// Specifies the minimum number of slots that the guest must be assigned to in order to deploy.
	// This field dictates the number of slots that the guest must be assigned to.
	// If at the end of any allocation attempt the guest is not assigned to at least this many slots, the attempt fails and the change that initiated it is reverted.
	// A guest's C(min_number_of_slots) value cannot be greater than its C(number_of_slots).

	min_number_of_slots?: int

	// VLANs that the guest uses to communicate with other guests, the host, and with the external network. The available VLANs in the list are those that are currently configured on the vCMP host.
	// The order of these VLANs is not important; in fact, it's ignored. This module will order the VLANs for you automatically. Therefore, if you deliberately re-order them in subsequent tasks, you will find that this module will B(not) register a change.

	vlans?: [..._]

	// Specifies the gateway address for the C(mgmt_address).
	// If this value is not specified when creating a new guest, it is set to C(none).
	// The value C(none) can be used during an update to remove this value.

	mgmt_route?: string

	// Specifies the number of slots for the system to use for creating the guest.
	// This value dictates how many cores a guest is allocated from each slot that it is assigned to.
	// Possible values are dependent on the type of blades being used in this cluster.
	// The default value depends on the type of blades being used in this cluster.

	number_of_slots?: int

	// Device partition to manage resources on.

	partition?: string

	// Specifies the number of cores that the system allocates to the guest.
	// Each core represents a portion of CPU and memory. Therefore, the amount of memory allocated per core is directly tied to the amount of CPU. This amount of memory varies per hardware platform type.
	// The number you can specify depends on the type of hardware you have.
	// In the event of a reboot, the system persists the guest to the same slot on which it ran prior to the reboot.

	cores_per_slot?: int

	// Specifies the base software release ISO image file for installing the TMOS hypervisor instance and any licensed BIG-IP modules onto the guest's virtual disk. When creating a new guest, this parameter is required.

	initial_image?: string

	// Specifies the method by which the management address is used in the vCMP guest.
	// When C(bridged), specifies that the guest can communicate with the vCMP host's management network.
	// When C(isolated), specifies that the guest is isolated from the vCMP host's management network. In this case, the only way that a guest can communicate with the vCMP host is through the console port or through a self IP address on the guest that allows traffic through port 22.
	// When C(host only), prevents the guest from installing images and hotfixes other than those provided by the hypervisor.
	// If the guest setting is C(isolated) or C(host only), the C(mgmt_address) does not apply.
	// Concerning mode changing, changing C(bridged) to C(isolated) causes the vCMP host to remove all of the guest's management interfaces from its bridged management network. This immediately disconnects the guest's VMs from the physical management network. Changing C(isolated) to C(bridged) causes the vCMP host to dynamically add the guest's management interfaces to the bridged management network. This immediately connects all of the guest's VMs to the physical management network. Changing this property while the guest is in the C(configured) or C(provisioned) state has no immediate effect.

	mgmt_network?: string
}

bigip_wait :: {

	// Number of seconds to wait before starting to poll.

	delay?: int

	// This overrides the normal error message from a failure to meet the required conditions.

	msg?: string

	// Number of seconds to sleep between checks, before 2.3 this was hardcoded to 1 second.

	sleep?: int

	// Maximum number of seconds to wait for.
	// When used without other conditions it is equivalent of just sleeping.
	// The default timeout is deliberately set to 2 hours because no individual REST API.

	timeout?: int
}

bigip_device_httpd :: {

	// The HTTPS port to listen on.

	ssl_port?: int

	// The list of SSL protocols to accept on the management console.
	// A space-separated list of tokens in the format accepted by the Apache mod_ssl SSLProtocol directive.
	// Can be specified in either a string or list form. The list form is the recommended way to provide the cipher suite. See examples for usage.
	// Use the value C(default) to set the SSL protocols to the system default. This value is equivalent to specifying a list of C(all,-SSLv2,-SSLv3).

	ssl_protocols?: _

	// Sets whether or not the BIG-IP dashboard will timeout.

	auth_pam_dashboard_timeout?: bool

	// Sets the GUI timeout for automatic logout, in seconds.

	auth_pam_idle_timeout?: int

	// Sets the authPamValidateIp setting.

	auth_pam_validate_ip?: bool

	// Sets the timeout of FastCGI.

	fast_cgi_timeout?: int

	// Whether or not to redirect http requests to the GUI to https.

	redirect_http_to_https?: bool

	// Specifies the ciphers that the system uses.
	// The values in the suite are separated by colons (:).
	// Can be specified in either a string or list form. The list form is the recommended way to provide the cipher suite. See examples for usage.
	// Use the value C(default) to set the cipher suite to the system default. This value is equivalent to specifying a list of C(ECDHE-RSA-AES128-GCM-SHA256, ECDHE-RSA-AES256-GCM-SHA384,ECDHE-RSA-AES128-SHA,ECDHE-RSA-AES256-SHA, ECDHE-RSA-AES128-SHA256,ECDHE-RSA-AES256-SHA384,ECDHE-ECDSA-AES128-GCM-SHA256, ECDHE-ECDSA-AES256-GCM-SHA384,ECDHE-ECDSA-AES128-SHA,ECDHE-ECDSA-AES256-SHA, ECDHE-ECDSA-AES128-SHA256,ECDHE-ECDSA-AES256-SHA384,AES128-GCM-SHA256, AES256-GCM-SHA384,AES128-SHA,AES256-SHA,AES128-SHA256,AES256-SHA256, ECDHE-RSA-DES-CBC3-SHA,ECDHE-ECDSA-DES-CBC3-SHA,DES-CBC3-SHA).

	ssl_cipher_suite?: _

	// Specifies, if you have enabled HTTPD access, the IP address or address range for other systems that can communicate with this system.
	// To specify all addresses, use the value C(all).
	// IP address can be specified, such as 172.27.1.10.
	// IP ranges can be specified, such as 172.27.*.* or 172.27.0.0/255.255.0.0.

	allow?: [..._]

	// Sets the BIG-IP authentication realm name.

	auth_name?: string

	// Sets whether or not to display the hostname, if possible.

	hostname_lookup?: bool

	// Sets the minimum httpd log level.

	log_level?: string

	// Sets the maximum number of clients that can connect to the GUI at once.

	max_clients?: int
}

bigip_gtm_topology_record :: {

	// When C(state) is C(present), ensures that the record exists.
	// When C(state) is C(absent), ensures that the record is removed.

	state?: string

	// Specifies the weight of the topology record.
	// The system finds the weight of the first topology record that matches the server object (pool or pool member) and the local DNS. The system then assigns that weight as the topology score for that server object.
	// The system load balances to the server object with the highest topology score.
	// If the system finds no topology record that matches both the server object and the local DNS, then the system assigns that server object a zero score.
	// If the option is not specified when the record is created the system will set it at a default value of C(1)
	// Valid range is (0 - 4294967295)

	weight?: int

	// Specifies where the system directs the incoming DNS request.

	destination: {...}

	// Device partition to manage resources on.
	// Partition parameter is taken into account when used in conjunction with C(pool), C(data_center), and C(region) parameters, it is ignored otherwise.

	partition?: string

	// Specifies the origination of an incoming DNS request.

	source: {...}
}

bigip_monitor_gateway_icmp :: {

	// Specifies whether the monitor operates in transparent mode.
	// A monitor in transparent mode directs traffic through the associated pool members or nodes (usually a router or firewall) to the aliased destination (that is, it probes the C(ip)-C(port) combination specified in the monitor).
	// If the monitor cannot successfully reach the aliased destination, the pool member or node through which the monitor traffic was sent is marked down.
	// When creating a new monitor, if this parameter is not provided, then the default value will be whatever is provided by the C(parent).

	transparent?: bool

	// When specifying a new monitor, if C(adaptive) is C(yes), and C(type) is C(relative), the default is C(25) percent.

	allowed_divergence_value?: int

	// Specifies whether the system automatically changes the status of a resource to B(enabled) at the next successful monitor check.
	// If you set this option to C(yes), you must manually re-enable the resource before the system can use it for load balancing connections.
	// When C(yes), specifies that you must manually re-enable the resource after an unsuccessful monitor check.
	// When C(no), specifies that the system automatically changes the status of a resource to B(enabled) at the next successful monitor check.

	manual_resume?: bool

	// Monitor name.

	name: string

	// The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(gateway_icmp) parent on the C(Common) partition.

	parent?: string

	// Specifies the number of seconds to wait after a resource first responds correctly to the monitor before setting the resource to 'up'.
	// During the interval, all responses from the resource must be correct.
	// When the interval expires, the resource is marked 'up'.
	// A value of 0, means that the resource is marked up immediately upon receipt of the first correct response.

	time_until_up?: int

	// When specifying a new monitor, if C(adaptive) is C(yes), the default is C(relative)
	// When C(absolute), the number of milliseconds the latency of a monitor probe can exceed the mean latency of a monitor probe for the service being probed. In typical cases, if the monitor detects three probes in a row that miss the latency value you set, the pool member or node is marked down.
	// When C(relative), the percentage of deviation the latency of a monitor probe can exceed the mean latency of a monitor probe for the service being probed.

	allowed_divergence_type?: string

	// Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'. Note that if specifying an IP address, a value between 1 and 65535 must be specified.

	port?: string

	// Specifies the number of seconds the target has in which to respond to the monitor request.
	// If the target responds within the set time period, it is considered 'up'. If the target does not respond within the set time period, it is considered 'down'. When this value is set to 0 (zero), the system uses the interval from the parent monitor.
	// Note that C(timeout) and C(time_until_up) combine to control when a resource is set to up.

	timeout?: int

	// Specifies the interval for the system to use to perform the health check when a resource is up.
	// When C(0), specifies that the system uses the interval specified in C(interval) to check the health of the resource.
	// When any other number, enables specification of a different interval to use when checking the health of a resource that is up.

	up_interval?: int

	// Specifies whether adaptive response time monitoring is enabled for this monitor.
	// When C(yes), the monitor determines the state of a service based on how divergent from the mean latency a monitor probe for that service is allowed to be. Also, values for the C(allowed_divergence), C(adaptive_limit), and and C(sampling_timespan) will be enforced.
	// When C(disabled), the monitor determines the state of a service based on the C(interval), C(up_interval), C(time_until_up), and C(timeout) monitor settings.

	adaptive?: bool

	// The description of the monitor.

	description?: string

	// IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.

	ip?: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies the length, in seconds, of the probe history window that the system uses to calculate the mean latency and standard deviation of a monitor probe.
	// While this value can be configured when C(adaptive) is C(no), it will not take effect on the system until C(adaptive) is C(yes).

	sampling_timespan?: int

	// Specifies the absolute number of milliseconds that may not be exceeded by a monitor probe, regardless of C(allowed_divergence) setting, for a probe to be considered successful.
	// This value applies regardless of the value of the C(allowed_divergence) setting.
	// While this value can be configured when C(adaptive) is C(no), it will not take effect on the system until C(adaptive) is C(yes).

	adaptive_limit?: int

	// Specifies, in seconds, the frequency at which the system issues the monitor check when either the resource is down or the status of the resource is unknown.

	interval?: int

	// When C(present), ensures that the monitor exists.
	// When C(absent), ensures the monitor is removed.

	state?: string
}

bigip_software_update :: {

	// Specifies whether to automatically send phone home data to the F5 Networks PhoneHome server.

	auto_phone_home?: bool

	// Specifies the schedule for the automatic update check.

	frequency?: string

	// Specifies whether to automatically check for updates on the F5 Networks downloads server.

	auto_check?: bool
}

bigip_device_ntp :: {

	// A list of NTP servers to set on the device. At least one of C(ntp_servers) or C(timezone) is required.

	ntp_servers?: [..._]

	// The state of the NTP servers on the system. When C(present), guarantees that the NTP servers are set on the system. When C(absent), removes the specified NTP servers from the device configuration.

	state?: string

	// The timezone to set for NTP lookups. At least one of C(ntp_servers) or C(timezone) is required.

	timezone?: string
}

bigip_dns_zone :: {

	// Specifies the name of the DNS zone.
	// The name must begin with a letter and contain only letters, numbers, and the underscore character.

	name: string

	// Specifies the DNS nameservers to which the system sends NOTIFY messages.

	nameservers?: [..._]

	// Device partition to manage resources on.

	partition?: string

	// When C(present), ensures that the resource exists.
	// When C(absent), ensures the resource is removed.

	state?: string

	// Specifies the TSIG key the system uses to authenticate the back-end DNS authoritative server that sends AXFR zone transfers to the BIG-IP system.

	tsig_server_key?: string

	// DNS express related settings.

	dns_express?: {...}
}

bigip_gtm_topology_region :: {

	// Specifies the name of the region.

	name: string

	// Device partition to manage resources on.
	// Partition parameter is also taken into account when used in conjunction with C(pool), C(data_center), and C(region) parameters.

	partition?: string

	// Specifies the list of region members.
	// This list of members is all or nothing, in order to add or remove a member, you must specify the entire list of members.
	// The list will override what is on the device if different.
	// If C(none) value is specified the region members list will be removed.

	region_members?: [..._]

	// When C(state) is C(present), ensures that the region exists.
	// When C(state) is C(absent), ensures that the region is removed.

	state?: string
}

bigip_monitor_tcp_echo :: {

	// The interval specifying how frequently the monitor instance of this template will run. If this parameter is not provided when creating a new monitor, then the default value will be 5. This value B(must) be less than the C(timeout) value.

	interval?: int

	// Monitor name.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies the amount of time in seconds after the first successful response before a node will be marked up. A value of 0 will cause a node to be marked up immediately after a valid response is received from the node. If this parameter is not provided when creating a new monitor, then the default value will be 0.

	time_until_up?: int

	// The number of seconds in which the node or service must respond to the monitor request. If the target responds within the set time period, it is considered up. If the target does not respond within the set time period, it is considered down. You can change this number to any number you want, however, it should be 3 times the interval number of seconds plus 1 second. If this parameter is not provided when creating a new monitor, then the default value will be 16.

	timeout?: int

	// The description of the monitor.

	description?: string

	// IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.

	ip?: string

	// The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(tcp_echo) parent on the C(Common) partition.

	parent?: string

	// When C(present), ensures that the monitor exists.
	// When C(absent), ensures the monitor is removed.

	state?: string
}

bigip_monitor_tcp_half_open :: {

	// Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'. Note that if specifying an IP address, a value between 1 and 65535 must be specified

	port?: string

	// When C(present), ensures that the monitor exists.
	// When C(absent), ensures the monitor is removed.

	state?: string

	// The number of seconds in which the node or service must respond to the monitor request. If the target responds within the set time period, it is considered up. If the target does not respond within the set time period, it is considered down. You can change this number to any number you want, however, it should be 3 times the interval number of seconds plus 1 second. If this parameter is not provided when creating a new monitor, then the default value will be 16.

	timeout?: int

	// The interval specifying how frequently the monitor instance of this template will run. If this parameter is not provided when creating a new monitor, then the default value will be 5. This value B(must) be less than the C(timeout) value.

	interval?: int

	// IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.
	// If this value is an IP address, and the C(type) is C(tcp) (the default), then a C(port) number must be specified.

	ip?: string

	// The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(tcp_half_open) parent on the C(Common) partition.

	parent?: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies the amount of time in seconds after the first successful response before a node will be marked up. A value of 0 will cause a node to be marked up immediately after a valid response is received from the node. If this parameter is not provided when creating a new monitor, then the default value will be 0.

	time_until_up?: int

	// The description of the monitor.

	description?: string

	// Monitor name.

	name: string
}

bigip_apm_policy_fetch :: {

	// The name of the file to be created on the remote device for downloading.

	file?: string

	// If C(no), the file will only be transferred if it does not exist in the the destination.

	force?: bool

	// The name of the APM policy or APM access profile exported to create a file on the remote device for downloading.

	name: string

	// Device partition to which contain APM policy or APM access profile to export.

	partition?: string

	// Specifies the type of item to export from device.

	type?: string

	// A directory to save the file into.

	dest?: string
}

bigip_asm_dos_application :: {

	// Manages the geolocations countries whitelist, blacklist.

	geolocations?: {...}

	// Manages Heavy URL protection.
	// Heavy URLs are a small number of site URLs that might consume considerable server resources per request.

	heavy_urls?: {...}

	// Specifies the duration of the RTBH BGP route advertisement, in seconds.
	// The accepted range is between 0 and 4294967295 inclusive.

	rtbh_duration?: int

	// Specifies, when C(yes), that the system activates an Application DoS iRule event.

	trigger_irule?: bool

	// Configures detection of mobile applications built with the Anti-Bot Mobile SDK and defines how requests from these mobile application clients are handled.

	mobile_detection?: {...}

	// Device partition to manage resources on.

	partition?: string

	// Specifies the name of the profile to manage application settings in.

	profile: string

	// Specifies whether to enable Remote Triggered Black Hole C(RTBH) of attacking IPs by advertising BGP routes.

	rtbh_enable?: bool

	// Specifies the duration of the Traffic Scrubbing BGP route advertisement, in seconds.
	// The accepted range is between 0 and 4294967295 inclusive.

	scrubbing_duration?: int

	// Specifies whether to enable Traffic Scrubbing during attacks by advertising BGP routes.

	scrubbing_enable?: bool

	// Specifies, when C(yes), that the system supports a Single Page Applications.

	single_page_application?: bool

	// When C(state) is C(present), ensures that the Application object exists.
	// When C(state) is C(absent), ensures that the Application object is removed.

	state?: string
}

bigip_device_auth :: {

	// The state of the authentication configuration on the system.
	// When C(present), guarantees that the system is configured for the specified C(type).
	// When C(absent), sets the system auth source back to C(local).

	state?: string

	// The authentication type to manage with this module.
	// Take special note that the parameters supported by this module will vary depending on the C(type) that you are configuring.
	// This module only supports a subset, at this time, of the total available auth types.

	type?: string

	// Specifies whether or not this auth source is put in use on the system.

	use_for_auth?: bool

	// C(always) will allow to update secrets if the user chooses to do so.
	// C(on_create) will only set the secret when a C(use_auth_source) is C(yes) and TACACS+ is not currently the auth source.

	update_secret?: string

	// Specifies the process the system employs when sending authentication requests.
	// When C(use-first-server), specifies that the system sends authentication attempts to only the first server in the list.
	// When C(use-all-servers), specifies that the system sends an authentication request to each server until authentication succeeds, or until the system has sent a request to all servers in the list.
	// This parameter is supported by the C(tacacs) type.

	authentication?: string

	// Specifies the protocol associated with the value specified in C(service_name), which is a subset of the associated service being used for client authorization or system accounting.
	// Note that the majority of TACACS+ implementations are of protocol type C(ip), so try that first.

	protocol_name?: string

	// Secret key used to encrypt and decrypt packets sent or received from the server.
	// B(Do not) use the pound/hash sign in the secret for TACACS+ servers.
	// When configuring TACACS+ auth for the first time, this value is required.

	secret?: string

	// Specifies a list of the IPv4 addresses for servers using the Terminal Access Controller Access System (TACACS)+ protocol with which the system communicates to obtain authorization data.
	// For each address, an alternate TCP port number may be optionally specified by specifying the C(port) key.
	// If no port number is specified, the default port C(49163) is used.
	// This parameter is supported by the C(tacacs) type.

	servers?: _

	// Specifies the name of the service that the user is requesting to be authorized to use.
	// Identifying what the user is asking to be authorized for, enables the TACACS+ server to behave differently for different types of authorization requests.
	// When configuring this form of system authentication, this setting is required.
	// Note that the majority of TACACS+ implementations are of service type C(ppp), so try that first.

	service_name?: string
}

bigip_gtm_facts :: {

	// Perform regex filter of response. Filtering is done on the name of the resource. Valid filters are anything that can be provided to Python's C(re) module.

	filter?: string

	// Fact category to collect.

	include: string
}

bigip_gtm_monitor_tcp_half_open :: {

	// Specifies the number of seconds the big3d process waits before sending out a subsequent probe attempt when a probe fails and multiple probe attempts have been requested.
	// When creating a new monitor, if this parameter is not provided, then the default value will be C(1).

	probe_interval?: int

	// When C(present), ensures that the monitor exists.
	// When C(absent), ensures the monitor is removed.

	state?: string

	// Specifies whether the monitor operates in transparent mode.
	// A monitor in transparent mode directs traffic through the associated pool members or nodes (usually a router or firewall) to the aliased destination (that is, it probes the C(ip)-C(port) combination specified in the monitor).
	// If the monitor cannot successfully reach the aliased destination, the pool member or node through which the monitor traffic was sent is marked down.
	// When creating a new monitor, if this parameter is not provided, then the default value will be C(no).

	transparent?: bool

	// Specifies that the monitor allows more than one probe attempt per interval.
	// When C(yes), specifies that the monitor ignores down responses for the duration of the monitor timeout. Once the monitor timeout is reached without the system receiving an up response, the system marks the object down.
	// When C(no), specifies that the monitor immediately marks an object down when it receives a down response.
	// When creating a new monitor, if this parameter is not provided, then the default value will be C(no).

	ignore_down_response?: bool

	// Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'. Note that if specifying an IP address, a value between 1 and 65535 must be specified

	port?: string

	// Monitor name.

	name: string

	// The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(tcp_half_open) parent on the C(Common) partition.

	parent?: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies the number of times the system attempts to probe the host server, after which the system considers the host server down or unavailable.
	// When creating a new monitor, if this parameter is not provided, then the default value will be C(3).

	probe_attempts?: int

	// Specifies the number of seconds after which the system times out the probe request to the system.
	// When creating a new monitor, if this parameter is not provided, then the default value will be C(5).

	probe_timeout?: int

	// Specifies the number of seconds the target has in which to respond to the monitor request.
	// If the target responds within the set time period, it is considered up.
	// If the target does not respond within the set time period, it is considered down.
	// When this value is set to 0 (zero), the system uses the interval from the parent monitor.
	// When creating a new monitor, if this parameter is not provided, then the default value will be C(120).

	timeout?: int

	// Specifies, in seconds, the frequency at which the system issues the monitor check when either the resource is down or the status of the resource is unknown.
	// When creating a new monitor, if this parameter is not provided, then the default value will be C(30). This value B(must) be less than the C(timeout) value.

	interval?: int

	// IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.

	ip?: string
}

bigip_profile_udp :: {

	// Specifies, when C(yes), that the system load balances UDP traffic packet-by-packet.

	datagram_load_balancing?: bool

	// Specifies the length of time that a connection is idle (has no traffic) before the connection is eligible for deletion.
	// When creating a new profile, if this parameter is not specified, the remote device will choose a default value appropriate for the profile, based on its C(parent) profile.
	// When a number is specified, indicates the number of seconds that the UDP connection can remain idle before the system deletes it.
	// When C(0), or C(indefinite), specifies that UDP connections can remain idle indefinitely.
	// When C(immediate), specifies that you do not want the UDP connection to remain idle, and that it is therefore immediately eligible for deletion.

	idle_timeout?: string

	// Specifies the name of the profile.

	name: string

	// Specifies the profile from which this profile inherits settings.
	// When creating a new profile, if this parameter is not specified, the default is the system-supplied C(udp) profile.

	parent?: string

	// Device partition to manage resources on.

	partition?: string

	// When C(present), ensures that the profile exists.
	// When C(absent), ensures the profile is removed.

	state?: string
}

bigip_asm_policy_server_technology :: {

	// Specifies the name of the server technology to apply on or remove from the ASM policy.

	name: string

	// This parameter is only used when identifying ASM policy.

	partition?: string

	// Specifies the name of an existing ASM policy to add or remove server technology.

	policy_name: string

	// When C(present), ensures that the resource exists.
	// When C(absent), ensures the resource is removed.

	state?: string
}

bigip_device_info :: {

	// When supplied, this argument will restrict the information returned to a given subset.
	// Can specify a list of values to include a larger subset.
	// Values can also be used with an initial C(!) to specify that a specific subset should not be collected.

	gather_subset: [..._]
}

bigip_firewall_address_list :: {

	// Individual addresses that you want to add to the list. These addresses differ from ranges, and lists of lists such as what can be used in C(address_ranges) and C(address_lists) respectively.
	// This list can also include networks that have CIDR notation.

	addresses?: [..._]

	// List of geolocations specified by their C(country) and C(region).

	geo_locations?: [..._]

	// Simple list of existing address lists to add to this list. Address lists can be specified in either their fully qualified name (/Common/foo) or their short name (foo). If a short name is used, the C(partition) argument will automatically be prepended to the short name.

	address_lists?: [..._]

	// A list of address ranges where the range starts with a port number, is followed by a dash (-) and then a second number.
	// If the first address is greater than the second number, the numbers will be reversed so-as to be properly formatted. ie, C(2.2.2.2-1.1.1). would become C(1.1.1.1-2.2.2.2).

	address_ranges?: [..._]

	// Specifies the name of the address list.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// When C(present), ensures that the address list and entries exists.
	// When C(absent), ensures the address list is removed.

	state?: string

	// Description of the address list

	description?: string

	// A list of fully qualified domain names (FQDNs).
	// An FQDN has at least one decimal point in it, separating the host from the domain.
	// To add FQDNs to a list requires that a global FQDN resolver be configured. At the moment, this must either be done via C(bigip_command), or, in the GUI of BIG-IP. If using C(bigip_command), this can be done with C(tmsh modify security firewall global-fqdn-policy FOO) where C(FOO) is a DNS resolver configured at C(tmsh create net dns-resolver FOO).

	fqdns?: [..._]
}

bigip_firewall_schedule :: {

	// Specifies the user defined description text.

	description?: string

	// Device partition to manage resources on.

	partition?: string

	// When C(present), ensures that the resource exists.
	// When C(absent), ensures the resource is removed.

	state?: string

	// Specifies the time of day the rule will start to be in use.
	// The value must be a time before C(daily_hour_end).
	// When not defined, the default of C(0:00) is used when creating a new schedule.
	// When the value is set to C(all-day) both C(daily_hour_end) and C(daily_hour_start) are reset to their respective defaults.
	// The time zone is always assumed to be UTC and values must be provided as C(HH:MM) using 24hour clock format.

	daily_hour_start?: string

	// Specifies which days of the week the rule will be applied.
	// When not defined the default value of C(all) is used when creating a new schedule.
	// The C(all) value is mutually exclusive with other choices.

	days_of_week?: [..._]

	// Specifies the start date/time this schedule will apply to the rule.
	// When not defined the default of C(epoch) is used when creating a new schedule.
	// The time zone is always assumed to be UTC.
	// The datetime format should always be the following C(YYYY-MM-DD:HH:MM:SS) format.

	date_valid_start?: string

	// Specifies the name of the AFM schedule configuration.

	name: string

	// Specifies the time of day the rule will stop being used.
	// When not defined, the default of C(24:00) is used when creating a new schedule.
	// The time zone is always assumed to be UTC and values must be provided as C(HH:MM) using 24hour clock format.

	daily_hour_end?: string

	// Specifies the end date/time this schedule will apply to the rule.
	// The date must be after C(date_valid_start)
	// When not defined the default of C(indefinite) is used when creating a new schedule.
	// The time zone is always assumed to be UTC.
	// The datetime format should always be the following C(YYYY-MM-DD:HH:MM:SS) format.

	date_valid_end?: string
}

bigip_gtm_pool_member :: {

	// Remove members not defined in the C(aggregate) parameter.
	// This operation is all or none, meaning that it will stop if there are some pool members that cannot be removed.

	replace_all_with?: bool

	// Specifies the GTM server which contains the C(virtual_server).

	server_name: string

	// Pool member state. When C(present), ensures that the pool member is created and enabled. When C(absent), ensures that the pool member is removed from the system. When C(enabled) or C(disabled), ensures that the pool member is enabled or disabled (respectively) on the remote device.
	// It is recommended that you use the C(members) parameter of the C(bigip_gtm_pool) module when adding and removing members and it provides an easier way of specifying order. If this is not possible, then the C(state) parameter here should be used.
	// Remember that the order of the members will be affected if you add or remove them using this method. To some extent, this can be controlled using the C(member_order) parameter.

	state?: string

	// List of GTM pool member definitions to be created, modified or removed.
	// When using C(aggregates) if one of the aggregate definitions is invalid, the aggregate run will fail, indicating the error it last encountered.
	// The module will C(NOT) rollback any changes it has made prior to encountering the error.
	// The module also will not indicate what changes were made prior to failure, therefore it is strongly advised to run the module in check mode to make basic validation, prior to module execution.

	aggregate?: [..._]

	// Device partition to manage resources on.

	partition?: string

	// Name of the GTM pool.
	// For pools created on different partitions, you must specify partition of the pool in the full path format, for example, C(/FooBar/pool_name).

	pool: string

	// Specifies the weight of the pool member for load balancing purposes.

	ratio?: int

	// The type of GTM pool that the member is in.

	type: string

	// Specifies the name of the GTM virtual server which is assigned to the specified C(server).

	virtual_server: string

	// The description of the pool member.

	description?: string

	// Specifies resource thresholds or limit requirements at the pool member level.
	// When you enable one or more limit settings, the system then uses that data to take members in and out of service.
	// You can define limits for any or all of the limit settings. However, when a member does not meet the resource threshold limit requirement, the system marks the member as unavailable and directs load-balancing traffic to another resource.

	limits?: {...}

	// Specifies the order in which the member will appear in the pool.
	// The system uses this number with load balancing methods that involve prioritizing pool members, such as the Ratio load balancing method.
	// When creating a new member using this module, if the C(member_order) parameter is not specified, it will default to C(0) (first member in the pool).

	member_order?: int

	// Specifies the monitor assigned to this pool member.
	// Pool members only support a single monitor.
	// If the C(port) of the C(gtm_virtual_server) is C(*), the accepted values of this parameter will be affected.
	// When creating a new pool member, if this parameter is not specified, the default of C(default) will be used.
	// To remove the monitor from the pool member, use the value C(none).
	// For pool members created on different partitions, you can also specify the full path to the Common monitor. For example, C(/Common/tcp).

	monitor?: string
}

bigip_profile_fastl4 :: {

	// When C(yes), specifies that the system reassembles IP fragments.

	reassemble_fragments?: bool

	// Description of the profile.

	description?: string

	// Specifies the length of time that a connection is idle (has no traffic) before the connection is eligible for deletion.
	// When creating a new profile, if this parameter is not specified, the remote device will choose a default value appropriate for the profile, based on its C(parent) profile.
	// When a number is specified, indicates the number of seconds that the TCP connection can remain idle before the system deletes it.
	// When C(indefinite), specifies that the system does not delete TCP connections regardless of how long they remain idle.
	// When C(0), or C(immediate), specifies that the system deletes connections immediately when they become idle.

	idle_timeout?: string

	// Specifies the Don't Fragment (DF) bit setting in the IP Header of the outgoing TCP packet.
	// When C(pmtu), sets the outgoing IP Header DF bit based on IP pmtu setting.
	// When C(preserve), sets the outgoing Packet's IP Header DF bit to be same as incoming IP Header DF bit.
	// When C(set), sets the outgoing packet's IP Header DF bit.
	// When C(clear), clears the outgoing packet's IP Header DF bit.

	ip_df_mode?: string

	// Specifies the keep-alive probe interval, in seconds.

	keep_alive_interval?: int

	// Device partition to manage resources on.

	partition?: string

	// When C(yes), specifies that the system initializes a connection when it receives any TCP packet, rather that requiring a SYN packet for connection initiation.

	loose_initialization?: bool

	// Specifies whether the BIG-IP system processes Selective ACK (Sack) packets in cookie responses from the server.

	server_sack?: bool

	// Specifies the number of milliseconds that a connection is in the TIME-WAIT state before closing.

	tcp_time_wait_timeout?: int

	// Specifies the action that the system should take on TCP windows.

	tcp_wscale_mode?: string

	// Specifies the outgoing packet's IP Header TTL value for IPv6 traffic.
	// Maximum TTL value that can be specified is 255.

	ip_ttl_v6?: int

	// When C(yes), specifies that the system generates initial sequence numbers for SYN packets, according to RFC 1948.

	tcp_generate_isn?: bool

	// Specifies the acceptable duration for a TCP handshake, that is, the maximum idle time between a client synchronization (SYN) and a client acknowledgment (ACK). If the TCP handshake takes longer than the timeout, the system automatically closes the connection.
	// When a number, specifies how long the system can try to establish a TCP handshake before timing out.
	// When C(disabled), specifies that the system does not apply a timeout to a TCP handshake.
	// When C(indefinite), specifies that attempting a TCP handshake never times out.

	tcp_handshake_timeout?: string

	// Specifies the outgoing TCP packet's IP Header TTL mode.
	// When C(proxy), sets the outgoing IP Header TTL value to 255/64 for IPv4/IPv6 respectively.
	// When C(preserve), sets the outgoing IP Header TTL value to be same as the incoming IP Header TTL value.
	// When C(decrement), sets the outgoing IP Header TTL value to be one less than the incoming TTL value.
	// When C(set), sets the outgoing IP Header TTL value to a specific value(as specified by C(ip_ttl_v4) or C(ip_ttl_v6).

	ip_ttl_mode?: string

	// Specifies the outgoing packet's IP Header TTL value for IPv4 traffic.
	// Maximum TTL value that can be specified is 255.

	ip_ttl_v4?: int

	// When C(yes), specifies, that the system closes a loosely-initiated connection when the system receives the first FIN packet from either the client or the server.

	loose_close?: bool

	// When C(yes), specifies that the system uses TCP timestamp options to measure the round-trip time to the server.

	rtt_from_server?: bool

	// When C(present), ensures that the profile exists.
	// When C(absent), ensures the profile is removed.

	state?: string

	// Specifies a timeout for Late Binding.
	// This is the time limit for the client to provide the application data required to select a back-end server. That is, this is the maximum time that the BIG-IP system waits for information about the sender and the target.
	// This information typically arrives at the beginning of the FIX logon packet.
	// When C(0), or C(immediate), allows for no time beyond the moment of the first packet transmission.
	// When C(indefinite), disables the limit. This allows the client unlimited time to send the sender and target information.

	client_timeout?: string

	// Specifies whether a qualified late-binding connection requires an explicit iRule command to migrate down to ePVA hardware.
	// When C(no), a late-binding connection migrates down to ePVA immediately after establishing the server-side connection.
	// When C(yes), this parameter stops automatic migration to ePVA, and requires that the iRule explicitly trigger ePVA processing by invoking the C(release_flow) iRule command. This allows an iRule author to control when the connection uses the ePVA hardware.

	explicit_flow_migration?: bool

	// Specifies, for IP traffic passing through the system to clients, whether the system modifies the IP type-of-service (ToS) setting in an IP packet header.
	// May be a number between 0 and 255 (inclusive). When a number, specifies the IP ToS setting that the system inserts in the IP packet header.
	// When C(pass-through), specifies that the IP ToS setting remains unchanged.
	// When C(mimic), specifies that the system sets the ToS level of outgoing packets to the same ToS level of the most-recently received incoming packet.

	ip_tos_to_client?: string

	// Enables intelligent selection of a back-end server or pool, using an iRule to make the selection.

	late_binding?: bool

	// Specifies, for IP traffic passing through the system to back-end servers, whether the system modifies the IP type-of-service (ToS) setting in an IP packet header.
	// May be a number between 0 and 255 (inclusive). When a number, specifies the IP ToS setting that the system inserts in the IP packet header.
	// When C(pass-through), specifies that the IP ToS setting remains unchanged.
	// When C(mimic), specifies that the system sets the ToS level of outgoing packets to the same ToS level of the most-recently received incoming packet.

	ip_tos_to_server?: string

	// Specifies, for IP traffic passing through the system to back-end servers, whether the system modifies the link quality-of-service (QoS) setting in an IP packet header.
	// The link QoS value prioritizes the IP packet relative to other Layer 2 traffic.
	// You can specify a number between 0 (lowest priority) and 7 (highest priority).
	// When a number, specifies the link QoS setting that the system inserts in the IP packet header.
	// When C(pass-through), specifies that the link QoS setting remains unchanged.

	link_qos_to_server?: string

	// Specifies the name of the profile.

	name: string

	// When C(yes), specifies that the system uses TCP timestamp options to measure the round-trip time to the client.

	rtt_from_client?: bool

	// Specifies how to handle client-timeout errors for Late Binding.
	// Timeout errors may be caused by a DoS attack or a lossy connection.
	// When C(disconnect), causes the BIG-IP system to drop the connection.
	// When C(fallback), reverts the connection to normal FastL4 load-balancing, based on the client's TCP header. This causes the BIG-IP system to choose a back-end server based only on the source address and port.

	timeout_recovery?: string

	// Specifies, for IP traffic passing through the system to clients, whether the system modifies the link quality-of-service (QoS) setting in an IP packet header.
	// The link QoS value prioritizes the IP packet relative to other Layer 2 traffic.
	// You can specify a number between 0 (lowest priority) and 7 (highest priority).
	// When a number, specifies the link QoS setting that the system inserts in the IP packet header.
	// When C(pass-through), specifies that the link QoS setting remains unchanged.

	link_qos_to_client?: string

	// Specifies a maximum segment size (MSS) override for server-side connections.
	// Valid range is 256 to 9162 or 0 to disable.

	mss_override?: int

	// Specifies the amount of data the BIG-IP system can accept without acknowledging the server.

	receive_window_size?: int

	// Specifies whether the BIG-IP system processes timestamp request packets in cookie responses from the server.

	server_timestamp?: bool

	// When C(yes), specifies that the system blocks a TCP selective ACK SackOK option from passing to the server on an initiating SYN.

	tcp_strip_sack?: bool

	// Specifies the profile from which this profile inherits settings.
	// When creating a new profile, if this parameter is not specified, the default is the system-supplied C(fastL4) profile.

	parent?: string

	// When C(yes), specifies that the system sends a reset packet (RST) in addition to deleting the connection, when a connection exceeds the idle timeout value.

	reset_on_timeout?: bool

	// Specifies a value that overrides the SYN cookie maximum segment size (MSS) value in the SYN-ACK packet that is returned to the client.
	// Valid values are 0, and values from 256 through 9162.

	syn_cookie_mss?: int

	// Specifies the length of time a connection can remain idle before deletion.

	tcp_close_timeout?: string

	// Specifies the action that the system should take on TCP timestamps.

	tcp_timestamp_mode?: string
}

bigip_ssl_certificate :: {

	// Sets the contents of a certificate directly to the specified value. This is used with lookup plugins or for anything with formatting or
	// C(content) must be provided when C(state) is C(present).

	content?: string

	// Issuer certificate used for OCSP monitoring.
	// This parameter is only valid on versions of BIG-IP 13.0.0 or above.

	issuer_cert?: string

	// SSL Certificate Name. This is the cert name used when importing a certificate into the F5. It also determines the filenames of the objects on the LTM.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// Certificate state. This determines if the provided certificate and key is to be made C(present) on the device or C(absent).

	state?: string
}

bigip_gtm_monitor_https :: {

	// Specifies a fully-qualified path for a client certificate that the monitor sends to the target SSL server.

	client_cert?: string

	// Specifies that the monitor allows more than one probe attempt per interval.
	// When C(yes), specifies that the monitor ignores down responses for the duration of the monitor timeout. Once the monitor timeout is reached without the system receiving an up response, the system marks the object down.
	// When C(no), specifies that the monitor immediately marks an object down when it receives a down response.
	// When creating a new monitor, if this parameter is not provided, then the default value will be C(no).

	ignore_down_response?: bool

	// The receive string for the monitor call.

	receive?: string

	// When C(present), ensures that the monitor exists.
	// When C(absent), ensures the monitor is removed.

	state?: string

	// The send string for the monitor call.
	// When creating a new monitor, if this parameter is not provided, the default of C(GET /\r\n) will be used.

	send?: string

	// Specifies the password, if the monitored target requires authentication.

	target_password?: string

	// The number of seconds in which the node or service must respond to the monitor request. If the target responds within the set time period, it is considered up. If the target does not respond within the set time period, it is considered down. You can change this number to any number you want, however, it should be 3 times the interval number of seconds plus 1 second.
	// If this parameter is not provided when creating a new monitor, then the default value will be 120.

	timeout?: int

	// Specifies the list of ciphers for this monitor.
	// The items in the cipher list are separated with the colon C(:) symbol.
	// When creating a new monitor, if this parameter is not specified, the default list is C(DEFAULT:+SHA:+3DES:+kEDH).

	cipher_list?: string

	// Specifies, when enabled, that the SSL options setting (in OpenSSL) is set to B(all).
	// When creating a new monitor, if this value is not specified, the default is C(yes)

	compatibility?: bool

	// Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'. Note that if specifying an IP address, a value between 1 and 65535 must be specified.

	port?: string

	// Specifies the number of seconds after which the system times out the probe request to the system.
	// When creating a new monitor, if this parameter is not provided, then the default value will be C(5).

	probe_timeout?: int

	// Specifies a key for a client certificate that the monitor sends to the target SSL server.

	client_key?: string

	// Monitor name.

	name: string

	// Instructs the system to mark the target resource down when the test is successful. This setting is useful, for example, if the content on your web site home page is dynamic and changes frequently, you may want to set up a reverse ECV service check that looks for the string Error.
	// A match for this string means that the web server was down.
	// To use this option, you must specify values for C(send) and C(receive).

	reverse?: bool

	// C(always) will update passwords if the C(target_password) is specified.
	// C(on_create) will only set the password for newly created monitors.

	update_password?: string

	// Specifies the user name, if the monitored target requires authentication.

	target_username?: string

	// Specifies whether the monitor operates in transparent mode.
	// A monitor in transparent mode directs traffic through the associated pool members or nodes (usually a router or firewall) to the aliased destination (that is, it probes the C(ip)-C(port) combination specified in the monitor).
	// If the monitor cannot successfully reach the aliased destination, the pool member or node through which the monitor traffic was sent is marked down.
	// When creating a new monitor, if this parameter is not provided, then the default value will be C(no).

	transparent?: bool

	// The interval specifying how frequently the monitor instance of this template will run.
	// If this parameter is not provided when creating a new monitor, then the default value will be 30.
	// This value B(must) be less than the C(timeout) value.

	interval?: int

	// IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.
	// If this value is an IP address, then a C(port) number must be specified.

	ip?: string

	// The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(tcp) parent on the C(Common) partition.

	parent?: string

	// Device partition to manage resources on.

	partition?: string
}

bigip_static_route :: {

	// Name of the static route.

	name: string

	// Specifies the pool through which the system forwards packets to the destination.

	pool?: string

	// Specifies the VLAN or Tunnel through which the system forwards packets to the destination. When C(gateway_address) is a link-local IPv6 address, this value is required.

	vlan?: string

	// Specifies a specific maximum transmission unit (MTU).

	mtu?: string

	// Specifies an IP address for the static entry in the routing table. When creating a new static route, this value is required.
	// This value cannot be changed once it is set.

	destination?: string

	// Specifies the router for the system to use when forwarding packets to the destination host or network. Also known as the next-hop router address. This can be either an IPv4 or IPv6 address. When it is an IPv6 address that starts with C(FE80:), the address will be treated as a link-local address. This requires that the C(vlan) parameter also be supplied.

	gateway_address?: string

	// The netmask for the static route. When creating a new static route, this value is required.
	// This value can be in either IP or CIDR format.
	// This value cannot be changed once it is set.

	netmask?: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies that the system drops packets sent to the destination.

	reject?: bool

	// The route domain id of the system. When creating a new static route, if this value is not specified, a default value of C(0) will be used.
	// This value cannot be changed once it is set.

	route_domain?: int

	// When C(present), ensures that the static route exists.
	// When C(absent), ensures that the static does not exist.

	state?: string

	// Descriptive text that identifies the route.

	description?: string
}

bigip_tunnel :: {

	// Specifies the IP address of the remote endpoint of the tunnel.
	// For C(dslite), C(fec) (when configuring the FEC tunnel for receiving traffic only), C(v6rd) (configured as a border relay), or C(map), the tunnel must have an unspecified remote address (any).

	remote_address?: string

	// Specifies a non-floating IP address for the tunnel, to be used with host-initiated traffic.

	secondary_address?: string

	// When C(present), ensures that the tunnel exists.
	// When C(absent), ensures the tunnel is removed.

	state?: string

	// Specifies the traffic group to associate with the tunnel.
	// This value cannot be changed after it is set. This is a limitation of BIG-IP.

	traffic_group?: string

	// Specifies that the tunnel operates in transparent mode.
	// When C(yes), you can inspect and manipulate the encapsulated traffic flowing through the BIG-IP system.
	// A transparent tunnel terminates a tunnel while presenting the illusion that the tunnel transits the device unmodified (that is, the BIG-IP system appears as if it were an intermediate router that simply routes IP traffic through the device).

	transparent?: bool

	// Specifies the maximum transmission unit (MTU) of the tunnel.
	// When creating a new tunnel, if this parameter is supported by the tunnel profile but not specified, the default value is C(0).
	// The valid range is from C(0) to C(65515).

	mtu?: int

	// Device partition to manage resources on.

	partition?: string

	// Specifies the profile to associate with the tunnel for handling traffic.
	// Depending on your selection, other settings become available or disappear.
	// This parameter may not be changed after it is set.

	profile?: string

	// Specifies the Type of Service (TOS) value to insert in the encapsulating header of transmitted packets.
	// When creating a new tunnel, if this parameter is supported by the tunnel profile but not specified, the default value is C(preserve).
	// When C(preserve), the system copies the TOS value from the inner header to the outer header.
	// You may also specify a numeric value. The possible values are from C(0) to C(255).

	tos?: string

	// Allows you to configure auto last hop on a per-tunnel basis.
	// When creating a new tunnel, if this parameter is supported by the tunnel profile but not specified, the default is C(default).
	// When C(default), means that the system uses the global auto-lasthop setting to send back the request.
	// When C(enabled), allows the system to send return traffic to the MAC address that transmitted the request, even if the routing table points to a different network or interface. As a result, the system can send return traffic to clients even when there is no matching route.

	auto_last_hop?: string

	// Specifies the name of the tunnel.

	name: string

	// Specifies how the tunnel carries traffic.
	// When creating a new tunnel, if this parameter is supported by the tunnel profile but not specified, the default is C(bidirectional).
	// When C(bidirectional), specifies that the tunnel carries both inbound and outbound traffic.
	// When C(inbound), specifies that the tunnel carries only incoming traffic.
	// When C(outbound), specifies that the tunnel carries only outgoing traffic.

	mode?: string

	// Description of the tunnel.

	description?: string

	// When applied to a GRE tunnel, this value specifies an optional field in the GRE header, used to authenticate the source of the packet.
	// When applied to a VXLAN or Geneve tunnel, this value specifies the Virtual Network Identifier (VNI).
	// When applied to an NVGRE tunnel, this value specifies the Virtual Subnet Identifier (VSID).
	// When creating a new tunnel, if this parameter is supported by the tunnel profile but not specified, the default value is C(0).

	key?: int

	// Specifies the IP address of the local endpoint of the tunnel.

	local_address?: string

	// Enables or disables the tunnel to use the PMTU (Path MTU) information provided by ICMP NeedFrag error messages.
	// If C(yes) and the tunnel C(mtu) is set to C(0), the tunnel will use the PMTU information.
	// If C(yes) and the tunnel C(mtu) is fixed to a non-zero value, the tunnel will use the minimum of PMTU and MTU.
	// If C(no), the tunnel will use fixed MTU or calculate its MTU using tunnel encapsulation configurations.

	use_pmtu?: bool
}

bigip_asm_policy_manage :: {

	// If C(yes) will apply and activate existing inactive policy. If C(no), it will deactivate existing active policy. Generally should be C(yes) only in cases where you want to activate new or existing policy.

	active?: bool

	// The ASM policy to manage or create.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// When C(state) is C(present), and C(template) parameter is provided, new ASM policy is created from template with the given policy C(name).
	// When C(state) is present and no C(template) parameter is provided new blank ASM policy is created with the given policy C(name).
	// When C(state) is C(absent), ensures that the policy is removed, even if it is currently active.

	state?: string

	// An ASM policy built-in template. If the template does not exist we will raise an error.
	// Once the policy has been created, this value cannot change.
	// The C(Comprehensive), C(Drupal), C(Fundamental), C(Joomla), C(Vulnerability Assessment Baseline), and C(Wordpress) templates are only available on BIG-IP versions >= 13.

	template?: string
}

bigip_dns_cache_resolver :: {

	// When C(present), ensures that the resource exists.
	// When C(absent), ensures the resource is removed.

	state?: string

	// Specifies whether the system answers DNS queries for the default zones localhost, reverse 127.0.0.1 and ::1, and AS112.
	// When creating a new cache resolver, if this parameter is not specified, the default is C(no).

	answer_default_zones?: bool

	// Forward zones associated with the cache.
	// To remove all forward zones, specify a value of C(none).

	forward_zones?: _

	// Specifies the name of the cache.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies the route domain the resolver uses for outbound traffic.

	route_domain?: string
}

bigip_gtm_monitor_tcp :: {

	// Instructs the system to mark the target resource down when the test is successful. This setting is useful, for example, if the content on your web site home page is dynamic and changes frequently, you may want to set up a reverse ECV service check that looks for the string Error.
	// A match for this string means that the web server was down.
	// To use this option, you must specify values for C(send) and C(receive).

	reverse?: bool

	// Specifies that the monitor allows more than one probe attempt per interval.
	// When C(yes), specifies that the monitor ignores down responses for the duration of the monitor timeout. Once the monitor timeout is reached without the system receiving an up response, the system marks the object down.
	// When C(no), specifies that the monitor immediately marks an object down when it receives a down response.
	// When creating a new monitor, if this parameter is not provided, then the default value will be C(no).

	ignore_down_response?: bool

	// IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.
	// If this value is an IP address, then a C(port) number must be specified.

	ip?: string

	// Monitor name.

	name: string

	// The number of seconds in which the node or service must respond to the monitor request. If the target responds within the set time period, it is considered up. If the target does not respond within the set time period, it is considered down. You can change this number to any number you want, however, it should be 3 times the interval number of seconds plus 1 second.
	// If this parameter is not provided when creating a new monitor, then the default value will be 120.

	timeout?: int

	// Specifies whether the monitor operates in transparent mode.
	// A monitor in transparent mode directs traffic through the associated pool members or nodes (usually a router or firewall) to the aliased destination (that is, it probes the C(ip)-C(port) combination specified in the monitor).
	// If the monitor cannot successfully reach the aliased destination, the pool member or node through which the monitor traffic was sent is marked down.
	// When creating a new monitor, if this parameter is not provided, then the default value will be C(no).

	transparent?: bool

	// The interval specifying how frequently the monitor instance of this template will run.
	// If this parameter is not provided when creating a new monitor, then the default value will be 30.
	// This value B(must) be less than the C(timeout) value.

	interval?: int

	// The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(tcp) parent on the C(Common) partition.

	parent?: string

	// Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'. Note that if specifying an IP address, a value between 1 and 65535 must be specified

	port?: string

	// Specifies the number of seconds after which the system times out the probe request to the system.
	// When creating a new monitor, if this parameter is not provided, then the default value will be C(5).

	probe_timeout?: int

	// The receive string for the monitor call.

	receive?: string

	// The send string for the monitor call.

	send?: string

	// Device partition to manage resources on.

	partition?: string

	// When C(present), ensures that the monitor exists.
	// When C(absent), ensures the monitor is removed.

	state?: string
}

bigip_monitor_https :: {

	// This setting works like C(receive), except that the system marks the node or pool member disabled when its response matches the C(receive_disable) string but not C(receive). To use this setting, you must specify both C(receive_disable) and C(receive).

	receive_disable?: string

	// The interval specifying how frequently the monitor instance of this template will run. If this parameter is not provided when creating a new monitor, then the default value will be 5. This value B(must) be less than the C(timeout) value.

	interval?: int

	// Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'. Note that if specifying an IP address, a value between 1 and 65535 must be specified.

	port?: string

	// The number of seconds in which the node or service must respond to the monitor request. If the target responds within the set time period, it is considered up. If the target does not respond within the set time period, it is considered down. You can change this number to any number you want, however, it should be 3 times the interval number of seconds plus 1 second. If this parameter is not provided when creating a new monitor, then the default value will be 16.

	timeout?: int

	// Monitor name.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// The send string for the monitor call. When creating a new monitor, if this value is not provided, the default C(GET /\\r\\n) will be used.

	send?: string

	// Specifies the SSL profile to use for the HTTPS monitor.
	// Defining SSL profiles enables refined customization of the SSL attributes for an HTTPS monitor.
	// This parameter is only supported on BIG-IP versions 13.x and later.

	ssl_profile?: string

	// Specifies the password, if the monitored target requires authentication.

	target_password?: string

	// Specifies the user name, if the monitored target requires authentication.

	target_username?: string

	// Specifies the interval for the system to use to perform the health check when a resource is up.
	// When C(0), specifies that the system uses the interval specified in C(interval) to check the health of the resource.
	// When any other number, enables specification of a different interval to use when checking the health of a resource that is up.

	up_interval?: int

	// The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(https) parent on the C(Common) partition.

	parent?: string

	// The receive string for the monitor call.

	receive?: string

	// When C(present), ensures that the monitor exists.
	// When C(absent), ensures the monitor is removed.

	state?: string

	// Specifies the amount of time in seconds after the first successful response before a node will be marked up. A value of 0 will cause a node to be marked up immediately after a valid response is received from the node. If this parameter is not provided when creating a new monitor, then the default value will be 0.

	time_until_up?: int

	// The description of the monitor.

	description?: string

	// IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.

	ip?: string
}

bigip_provision :: {

	// The module to provision in BIG-IP.

	module: string

	// The state of the provisioned module on the system. When C(present), guarantees that the specified module is provisioned at the requested level provided that there are sufficient resources on the device (such as physical RAM) to support the provisioned module.
	// When C(absent), de-provision the module.
	// C(absent), is not a relevant option to C(mgmt) module as module can not be de-provisioned.

	state?: string

	// Sets the provisioning level for the requested modules. Changing the level for one module may require modifying the level of another module. For example, changing one module to C(dedicated) requires setting all others to C(none). Setting the level of a module to C(none) means that the module is not activated.
	// Use C(state) absent to set C(level) to none and de-provision module.
	// This parameter is not relevant to C(cgnat - pre tmos 15.0) or C(mgmt) and will not be applied to the C(cgnat - pre tmos 15.0) or C(mgmt) module.

	level?: string

	// Sets additional memory for management module. This is in addition to minimum allocated RAM of 1264MB.
	// The accepted value range is C(0 - 8192). Maximum value is restricted by systems available RAM.
	// Specifying C(large) reserves an additional 500MB for mgmt module.
	// Specifying C(medium) reserves an additional 200MB for mgmt module.
	// Specifying C(small) reserves no additional RAM for mgmt module.
	// Use C(large) for configurations containing more than 2000 objects, or more specifically, for any configuration that exceeds 1000 objects per 2 GB of installed memory. Changing the Management C(mgmt) size after initial provisioning causes a reprovision operation

	memory?: string
}

bigip_snat_translation :: {

	// If C(yes), specifies that the NAT sends ARP requests.

	arp?: bool

	// Description of snat-translation. C(none or '') will set to default description of null.

	description?: string

	// Specifies the amount of time that connections to an IP address initiated using a SNAT address are allowed to remain idle before being automatically disconnected. C(indefinite) prevents the connection from timing out.
	// The accepted value range is C(0 - 4294967295) seconds, specifying C(indefinite) will set it to the maximum value.

	ip_idle_timeout?: string

	// The name of SNAT translation.

	name: string

	// The SNAT translation state. If C(absent), delete the SNAT translation if it exists. C(present) creates the SNAT translation and enable it. If C(enabled), enable the SNAT translation if it exists. If C(disabled), create the SNAT translation if needed, and set state to C(disabled).

	state?: string

	// Specifies the amount of time that TCP connections initiated using a SNAT address are allowed to remain idle before being automatically disconnected. C(indefinite) Prevents the connection from timing out.
	// The accepted value range is C(0 - 4294967295) seconds, specifying C(indefinite) will set it to the maximum value.

	tcp_idle_timeout?: string

	// Specifies the IP address of the SNAT translation. When a C(state) of present, enabled, or disabled is provided, this parameter is required.
	// This parameter cannot be updated after it is set.

	address?: string

	// Specifies a limit on the number of connections a translation address must reach before it no longer initiates a connection. The default value of 0 indicates that the setting is disabled.
	// The accepted value range is C(0 - 65535).

	connection_limit?: int

	// Device partition to manage resources on.
	// Required with state C(absent) when partition other than Common used.

	partition?: string

	// The traffic group for the snat-translation address. When creating a new address, if this value is not specified, the default of C(/Common/traffic-group-1) will be used.

	traffic_group?: string

	// Specifies the amount of time that UDP connections initiated using a SNAT address are allowed to remain idle before being automatically disconnected. C(indefinite) Prevents the connection from timing out.
	// The accepted value range is C(0 - 4294967295) seconds, specifying C(indefinite) will set it to the maximum value.

	udp_idle_timeout?: string
}

bigip_snmp :: {

	// Configures the IP addresses of the SNMP clients from which the snmpd daemon accepts requests.
	// This value can be hostnames, IP addresses, or IP networks.
	// You may specify a single list item of C(default) to set the value back to the system's default of C(127.0.0.0/8).
	// You can remove all allowed addresses by either providing the word C(none), or by providing the empty string C("").

	allowed_addresses?: _

	// Specifies the name of the person who administers the SNMP service for this system.

	contact?: string

	// When C(enabled), ensures that the system sends device warning traps to the trap destinations. This is usually enabled by default on a BIG-IP.

	device_warning_traps?: string

	// Specifies the description of this system's physical location.

	location?: string

	// When C(enabled), ensures that the system sends authentication warning traps to the trap destinations. This is usually disabled by default on a BIG-IP.

	agent_authentication_traps?: string

	// When C(enabled), ensures that the system sends a trap whenever the SNMP agent starts running or stops running. This is usually enabled by default on a BIG-IP.

	agent_status_traps?: string
}

bigiq_application_fastl4_udp :: {

	// Settings to configure the virtual which will receive the inbound connection.

	inbound_virtual?: {...}

	// Name of the new application.

	name: string

	// A list of servers that the application is hosted on.
	// If you are familiar with other BIG-IP setting, you might also refer to this list as the list of pool members.
	// When creating a new application, at least one server is required.

	servers?: [..._]

	// Specifies the name of service environment that the application will be deployed to.
	// When creating a new application, this parameter is required.
	// The service environment type will be discovered by this module automatically. Therefore, it is crucial that you maintain unique names for items in the different service environment types.
	// SSGs are not supported for this type of application.

	service_environment?: string

	// The state of the resource on the system.
	// When C(present), guarantees that the resource exists with the provided attributes.
	// When C(absent), removes the resource from the system.

	state?: string

	// If the module should wait for the application to be created, deleted or updated.

	wait?: bool

	// Collects statistics of the BIG-IP that the application is deployed to.
	// This parameter is only relevant when specifying a C(service_environment) which is a BIG-IP; not an SSG.

	add_analytics?: bool

	// Description of the application.

	description?: string
}

bigip_apm_network_access :: {

	// Supported IP version on the network access resource.

	ip_version?: string

	// Specifies a list of IPv4 hosts or networks describing the target LAN.
	// This option is mandatory when creating a new resource and C(split_tunnel) is set to C(yes).

	ipv4_address_space?: [..._]

	// Specifies IPV4 lease pool resource to use with network access.
	// Referencing lease pool can be done in the full path format for example, C(/Common/pool_name).
	// When lease pool is referenced in full path format, the C(partition) parameter is ignored.

	ipv4_lease_pool?: string

	// Device partition to manage resources on.

	partition?: string

	// Enables local access to DNS servers configured on client prior to establishing network access connection.

	allow_local_dns?: bool

	// Specifies the port number that the network access resource uses for secure UDP traffic with DTLS.

	dtls_port?: int

	// Specifies IPV4 address spaces for which traffic is not forced through the tunnel.

	excluded_ipv4_adresses?: [..._]

	// When C(state) is C(present), ensures that the ACL exists.
	// When C(state) is C(absent), ensures that the ACL is removed.

	state?: string

	// User created network access description.

	description?: string

	// When C(yes) the network access connection uses Datagram Transport Level Security instead of TCP, to provide better throughput for high demand applications like VoIP or streaming video.

	dtls?: bool

	// Specifies the name of the APM network access to manage/create.

	name: string

	// Specifies a list of IPv6 hosts or networks describing the target LAN.
	// This option is mandatory when creating a new resource and C(split_tunnel) is set to C(yes).

	ipv6_address_space?: [..._]

	// Specifies IPV6 lease pool resource to use with network access.
	// Referencing lease pool can be done in the full path format for example, C(/Common/pool_name).
	// When lease pool is referenced in full path format, the C(partition) parameter is ignored.

	ipv6_lease_pool?: string

	// Specifies a list of domain names describing the target LAN DNS addresses.

	dns_address_space?: [..._]

	// Specifies the DNS address spaces for which traffic is not forced through the tunnel.

	excluded_dns_addresses?: [..._]

	// Specifies IPV6 address spaces for which traffic is not forced through the tunnel.

	excluded_ipv6_adresses?: [..._]

	// Enables local subnet access and local access to any host or subnet in routes specified in the client routing table.
	// When C(yes) the system does not support integrated IP filtering.

	allow_local_subnet?: bool

	// Specifies the name of a SNAT pool used for implementing selective and intelligent SNATs.
	// When C(none) the system uses no SNAT pool for this network resource.
	// When C(automap) the system uses all of the self IP addresses as the translation addresses for the pool.

	snat_pool?: string

	// Specifies that only the traffic targeted to a specified address space is sent over the network access tunnel.

	split_tunnel?: bool
}

bigip_asm_policy_signature_set :: {

	// Specifies if the security policy learns all requests that match a signature that is included in the signature set.

	learn?: bool

	// Specifies the name of the signature sets to apply on or remove from the ASM policy.
	// Apart from built-in signature sets that ship with the device, users can use user created signature sets.
	// When C(All Response Signatures), configures all signatures in the attack signature pool that can review responses.
	// When C(All Signatures), configures all attack signatures in the attack signature pool.
	// When C(Apache Struts Signatures), configures signatures that target attacks against the Apache Struts web servers. Only available in version 13.x and up.
	// When C(Apache Tomcat Signatures), configures signatures that target attacks against the Apache Tomcat web servers. Only available in version 13.x and up.
	// When C(Cisco Signatures), configures signatures that target attacks against Cisco systems. Only available in version 13.x and up.
	// When C(Command Execution Signatures), configures signatures involving attacks perpetrated by executing commands.
	// When C(Cross Site Scripting Signatures), configures signatures that target attacks caused by cross-site scripting techniques.
	// When C(Directory Indexing Signatures), configures signatures targeting attacks that browse directory listings.
	// When C(Generic Detection Signatures), configures signatures targeting well-known or common web and application attacks.
	// When C(HTTP Response Splitting Signatures), configures signatures targeting attacks that take advantage of responses for which input values have not been sanitized.
	// When C(High Accuracy Detection Evasion Signatures), configures signatures with a high level of accuracy that produce few false positives when identifying evasion attacks. Only available in version 13.x and up.
	// When C(High Accuracy Signatures), configures signatures with a high level of accuracy that produce few false positives when identifying evasion attacks.
	// When C(IIS and Windows Signatures), configures signatures that target attacks against IIS and Windows based systems. Only available in version 13.x and up.
	// When C(Information Leakage Signatures), configures signatures targeting attacks that are looking for system data or debugging information that shows where the system is vulnerable to attack.
	// When C(Java Servlets/JSP Signatures), configures signatures that target attacks against Java Servlets and Java Server Pages (JSP) based applications. Only available in version 13.x and up.
	// When C(Low Accuracy Signatures), configures signatures that may result in more false positives when identifying attacks.
	// When C(Medium Accuracy Signatures), configures signatures with a medium level of accuracy when identifying attacks.
	// When C(OS Command Injection Signatures), configures signatures targeting attacks that attempt to run system level commands through a vulnerable application.
	// When C(OWA Signatures), configures signatures that target attacks against the Microsoft Outlook Web Access (OWA) application.
	// When C(Other Application Attacks Signatures), configures signatures targeting miscellaneous attacks, including session fixation, local file access, injection attempts, header tampering and so on, affecting many applications.
	// When C(Path Traversal Signatures), configures signatures targeting attacks that attempt to access files and directories that are stored outside the web root folder.
	// When C(Predictable Resource Location Signatures), configures signatures targeting attacks that attempt to uncover hidden website content and functionality by forceful browsing, or by directory and file enumeration.
	// When C(Remote File Include Signatures), configures signatures targeting attacks that attempt to exploit a remote file include vulnerability that could enable a remote attacker to execute arbitrary commands on the server hosting the application.
	// When C(SQL Injection Signatures), configures signatures targeting attacks that attempt to insert (inject) a SQL query using the input data from a client to an application.
	// When C(Server Side Code Injection Signatures), configures signatures targeting code injection attacks on the server side.
	// When C(WebSphere signatures), configures signatures targeting attacks on many computing platforms that are integrated using WebSphere including general database, Microsoft Windows, IIS, Microsoft SQL Server, Apache, Oracle, Unix/Linux, IBM DB2, PostgreSQL, and XML.
	// When C(XPath Injection Signatures), configures signatures targeting attacks that attempt to gain access to data structures or bypass permissions when a web site uses user-supplied information to construct XPath queries for XML data.

	name: string

	// This parameter is only used when identifying ASM policy.

	partition?: string

	// Specifies the name of an existing ASM policy to add or remove signature sets.

	policy_name: string

	// When C(present), ensures that the resource exists.
	// When C(absent), ensures the resource is removed.

	state?: string

	// Specifies if the security policy logs the request data in the Statistics screen, when a request matches a signature that is included in the signature set.

	alarm?: bool

	// Effective when the security policy`s enforcement mode is Blocking.
	// Determines how the system treats requests that match a signature included in the signature set.
	// When C(yes) the system blocks all requests that match a signature, and provides the client with a support ID number.
	// When C(no) the system accepts those requests.

	block?: bool
}

bigip_lx_package :: {

	// The LX package that you want to upload or remove. When C(state) is C(present), and you intend to use this module in a C(role), it is recommended that you use the C({{ role_path }}) variable. An example is provided in the C(EXAMPLES) section.
	// When C(state) is C(absent), it is not necessary for the package to exist on the Ansible controller. If the full path to the package is provided, the filename will specifically be cherry picked from it to properly remove the package.

	package?: string

	// Whether the LX package should exist or not.

	state?: string
}

bigip_software_install :: {

	// The volume to install the software image to.

	volume?: string

	// Image to install on the remote device.

	image?: string

	// When C(installed), ensures that the software is installed on the volume and the volume is set to be booted from. The device is B(not) rebooted into the new software.
	// When C(activated), performs the same operation as C(installed), but the system is rebooted to the new software.

	state?: string
}

bigiq_application_fastl4_tcp :: {

	// Settings to configure the virtual which will receive the inbound connection.

	inbound_virtual?: {...}

	// Name of the new application.

	name: string

	// A list of servers that the application is hosted on.
	// If you are familiar with other BIG-IP setting, you might also refer to this list as the list of pool members.
	// When creating a new application, at least one server is required.

	servers?: [..._]

	// Specifies the name of service environment that the application will be deployed to.
	// When creating a new application, this parameter is required.
	// The service environment type will be discovered by this module automatically. Therefore, it is crucial that you maintain unique names for items in the different service environment types.
	// SSGs are not supported for this type of application.

	service_environment?: string

	// The state of the resource on the system.
	// When C(present), guarantees that the resource exists with the provided attributes.
	// When C(absent), removes the resource from the system.

	state?: string

	// If the module should wait for the application to be created, deleted or updated.

	wait?: bool

	// Collects statistics of the BIG-IP that the application is deployed to.
	// This parameter is only relevant when specifying a C(service_environment) which is a BIG-IP; not an SSG.

	add_analytics?: bool

	// Description of the application.

	description?: string
}

bigiq_regkey_pool :: {

	// The state of the regkey pool on the system.
	// When C(present), guarantees that the pool exists.
	// When C(absent), removes the pool, and the licenses it contains, from the system.

	state?: string

	// A description to attach to the pool.

	description?: string

	// Specifies the name of the registration key pool.
	// You must be mindful to name your registration pools unique names. While BIG-IQ does not require this, this module does. If you do not do this, the behavior of the module is undefined and you may end up putting licenses in the wrong registration key pool.

	name: string
}

bigip_device_license :: {

	// Declares whether you accept the BIG-IP EULA or not. By default, this value is C(no). You must specifically declare that you have viewed and accepted the license. This module will not present you with that EULA though, so it is incumbent on you to read it.
	// The EULA can be found here; https://support.f5.com/csp/article/K12902.
	// This parameter is not required when C(state) is C(absent) and will be ignored if it is provided.

	accept_eula?: bool

	// The registration key to use to license the BIG-IP.
	// This parameter is required if the C(state) is equal to C(present).
	// This parameter is not required when C(state) is C(absent) and will be ignored if it is provided.

	license_key?: string

	// The F5 license server to use when getting a license and validating a dossier.
	// This parameter is required if the C(state) is equal to C(present).
	// This parameter is not required when C(state) is C(absent) and will be ignored if it is provided.

	license_server?: string

	// The state of the license on the system.
	// When C(present), only guarantees that a license is there.
	// When C(latest), ensures that the license is always valid.
	// When C(absent), removes the license on the system.
	// When C(revoked), removes the license on the system and revokes its future usage on the F5 license servers.

	state?: string
}

bigip_gtm_monitor_firepass :: {

	// Specifies the number of seconds after which the system times out the probe request to the system.
	// When creating a new monitor, if this parameter is not provided, then the default value will be C(5).

	probe_timeout?: int

	// Specifies the user name, if the monitored target requires authentication.

	target_username?: string

	// C(always) will update passwords if the C(target_password) is specified.
	// C(on_create) will only set the password for newly created monitors.

	update_password?: string

	// The interval specifying how frequently the monitor instance of this template will run.
	// If this parameter is not provided when creating a new monitor, then the default value will be 30.
	// This value B(must) be less than the C(timeout) value.

	interval?: int

	// IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.
	// If this value is an IP address, then a C(port) number must be specified.

	ip?: string

	// Monitor name.

	name: string

	// Specifies the maximum percentage of licensed connections currently in use under which the monitor marks the Secure Access Manager system up.
	// As an example, a setting of 95 percent means that the monitor marks the Secure Access Manager system up until 95 percent of licensed connections are in use.
	// When the number of in-use licensed connections exceeds 95 percent, the monitor marks the Secure Access Manager system down.
	// When creating a new monitor, if this parameter is not specified, the default is C(95).

	concurrency_limit?: int

	// The number of seconds in which the node or service must respond to the monitor request. If the target responds within the set time period, it is considered up. If the target does not respond within the set time period, it is considered down. You can change this number to any number you want, however, it should be 3 times the interval number of seconds plus 1 second.
	// If this parameter is not provided when creating a new monitor, then the default value will be 90.

	timeout?: int

	// Device partition to manage resources on.

	partition?: string

	// Specifies the password, if the monitored target requires authentication.

	target_password?: string

	// Specifies the list of ciphers for this monitor.
	// The items in the cipher list are separated with the colon C(:) symbol.
	// When creating a new monitor, if this parameter is not specified, the default list is C(HIGH:!ADH).

	cipher_list?: string

	// Specifies the number that the monitor uses to mark the Secure Access Manager system up or down.
	// The system compares the Max Load Average setting against a one-minute average of the Secure Access Manager system load.
	// When the Secure Access Manager system-load average falls within the specified Max Load Average, the monitor marks the Secure Access Manager system up.
	// When the average exceeds the setting, the monitor marks the system down.
	// When creating a new monitor, if this parameter is not specified, the default is C(12).

	max_load_average?: int

	// The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(tcp) parent on the C(Common) partition.

	parent?: string

	// Specifies that the monitor allows more than one probe attempt per interval.
	// When C(yes), specifies that the monitor ignores down responses for the duration of the monitor timeout. Once the monitor timeout is reached without the system receiving an up response, the system marks the object down.
	// When C(no), specifies that the monitor immediately marks an object down when it receives a down response.
	// When creating a new monitor, if this parameter is not provided, then the default value will be C(no).

	ignore_down_response?: bool

	// Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'. Note that if specifying an IP address, a value between 1 and 65535 must be specified.

	port?: string

	// When C(present), ensures that the monitor exists.
	// When C(absent), ensures the monitor is removed.

	state?: string
}

bigip_ike_peer :: {

	// Specifies the public key that the digital certificate contains.
	// When creating a new IKE peer, if this value is not specified, and C(phase1_auth_method) is C(rsa-signature), the default is C(default.key).
	// This parameter is invalid when C(phase1_auth_method) is C(pre-shared-key).

	phase1_key?: string

	// Specifies the Diffie-Hellman group to use for IKE Phase 1 and Phase 2 negotiations.

	phase1_perfect_forward_secrecy?: string

	// Displays the IP address of the BIG-IP system that is remote to the system you are configuring.

	remote_address?: string

	// Specifies the identifier type that the local system uses to identify the peer during IKE Phase 1 negotiation.
	// This is a required value when C(version) includes (Cv2).
	// When C(user-fqdn), value of C(verified_id_value) must be in the form of User @ DNS domain string.

	verified_id_type?: string

	// This is a required value when C(version) includes (Cv2).
	// Specifies a value for the identity when using a C(verified_id_type) of C(override).

	verified_id_value?: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies the digital certificate to use for the RSA signature.
	// When creating a new IKE peer, if this value is not specified, and C(phase1_auth_method) is C(rsa-signature), the default is C(default.crt).
	// This parameter is invalid when C(phase1_auth_method) is C(pre-shared-key).

	phase1_cert?: string

	// In IKEv2, specifies whether the certificate sent by the IKE peer is verified using the Trusted Certificate Authorities, a CRL, and/or a peer certificate.
	// In IKEv1, specifies whether the identifier sent by the peer is verified with the credentials in the certificate, in the following manner - ASN1DN; specifies that the entire certificate subject name is compared with the identifier. Address, FQDN, or User FQDN; specifies that the certificate's subjectAltName is compared with the identifier. If the two do not match, the negotiation fails.
	// When creating a new IKE peer, if this value is not specified, and C(phase1_auth_method) is C(rsa-signature), the default is C(no).
	// This parameter is invalid when C(phase1_auth_method) is C(pre-shared-key).

	phase1_verify_peer_cert?: bool

	// This is a required value when C(version) includes (Cv2).
	// Specifies a value for the identity when using a C(presented_id_type) of C(override).

	presented_id_value?: string

	// When C(present), ensures that the resource exists.
	// When C(absent), ensures the resource is removed.

	state?: string

	// Description of the IKE peer.

	description?: string

	// Specifies the algorithm to use for IKE encryption.
	// IKE C(version) C(v2) does not support C(blowfish), C(camellia), or C(cast128).

	phase1_encryption_algorithm?: string

	// Specifies the identifier type that the local system uses to identify itself to the peer during IKE Phase 1 negotiations.

	presented_id_type?: string

	// Specifies the name of the IKE peer.

	name: string

	// Specifies the algorithm to use for IKE authentication.

	phase1_hash_algorithm?: string

	// Specifies a string that the IKE peers share for authenticating each other.
	// This parameter is only relevant when C(phase1_auth_method) is C(pre-shared-key).
	// This parameter is invalid when C(phase1_auth_method) is C(rsa-signature).

	preshared_key?: string

	// C(always) will allow to update passwords if the user chooses to do so. C(on_create) will only set the password for newly created IKE peers.

	update_password?: string

	// Specifies which version of IKE is used.
	// If the system you are configuring is the IPsec initiator, and you select both versions, the system tries using IKEv2 for negotiation. If the remote peer does not support IKEv2, the IPsec tunnel fails. To use IKEv1 in this case, you must deselect Version 2 and try again.
	// If the system you are configuring is the IPsec responder, and you select both versions, the IPsec initiator system determines which IKE version to use.
	// When creating a new IKE peer, this value is required.

	version?: [..._]

	// Specifies the authentication method for phase 1 negotiation.
	// When creating a new IKE peer, if this value is not specified, the default is C(rsa-signature).

	phase1_auth_method?: string
}

bigip_message_routing_transport_config :: {

	// The user defined description of the transport config.

	description?: string

	// Device partition to create transport-config object on.

	partition?: string

	// The iRules you want run on this transport config. iRules help automate the intercepting, processing, and routing of application traffic.

	rules?: [..._]

	// Parameter used to specify the type of the transport-config object to manage.
	// Default setting is C(generic) with more options added in future.

	type?: string

	// Specifies the name of the transport config to manage.

	name: string

	// Specifies a list profiles for the outgoing connection to use to direct and manage traffic.

	profiles?: [..._]

	// Specifies the type of source address translation enabled for the transport config and the pool that the source address translation will use.

	src_addr_translation?: {...}

	// Specifies the source port to be used for the connection being created.
	// If no value is specified an ephemeral port is chosen for the connection being created.
	// The accepted range is between 0 and 65535 inclusive.

	src_port?: int

	// When C(present), ensures that the transport-config object exists.
	// When C(absent), ensures the transport-config object is removed.

	state?: string
}

bigip_profile_http :: {

	// Specifies the string used as the server name in traffic generated by BIG-IP.
	// To remove the entry completely a value of C(none) or C('') should be set.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	server_agent_name?: string

	// When C(present), ensures that the profile exists.
	// When C(absent), ensures the profile is removed.

	state?: string

	// A string that the system inserts as a header in an HTTP request.
	// To remove the entry completely a value of C(none) or C('') should be set.
	// The format of the header must be in C(KEY:VALUE) format, otherwise error is raised.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	header_insert?: string

	// Specifies how to handle chunked and unchunked requests.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	request_chunking?: string

	// C(always) will update passwords if the C(encrypt_cookie_secret) is specified.
	// C(on_create) will only set the password for newly created profiles.

	update_password?: string

	// Enables or disables trusting the client IP address, and statistics from the client IP address, based on the request's XFF (X-forwarded-for) headers, if they exist.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	accept_xff?: bool

	// Specifies an HTTP fallback host.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	fallback_host?: string

	// Specifies protocol enforcement settings for the HTTP profile.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	enforcement?: {...}

	// Enables the system to perform HTTP header transformations for the purpose of keeping server-side connections open. This feature requires configuration of a OneConnect profile.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	oneconnect_transformations?: bool

	// Specifies the name of the profile.

	name: string

	// When specified system inserts an X-Forwarded-For header in an HTTP request with the client IP address, to use with connection pooling.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	insert_xforwarded_for?: bool

	// Specifies the maximum length of time, in seconds, that HSTS functionality requests that clients only use HTTPS to connect to the current host and any sub-domains of the current host's domain name.
	// The accepted value range is C(0 - 4294967295) seconds, a value of C(0) seconds re-enables plaintext HTTP access, while specifying C(indefinite) will set it to the maximum value.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	maximum_age?: string

	// Specifies the proxy mode for the profile.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	proxy_type?: string

	// Specifies the name of a configured DNS resolver, this option is mandatory when C(proxy_type) is set to C(explicit).
	// Format of the name can be either be prepended by partition (C(/Common/foo)), or specified just as an object name (C(foo)).
	// To remove the entry a value of C(none) or C('') can be set, however the profile C(proxy_type) must not be set as C(explicit).

	dns_resolver?: string

	// Specifies one or more HTTP error codes from server responses that should trigger a redirection to the fallback host.
	// The accepted valid error codes are as defined by rfc2616.
	// The codes can be specified as individual items or as valid ranges e.g. C(400-417) or C(500-505).
	// Mixing response code range across error types is invalid e.g. defining C(400-505) will raise an error.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	fallback_status_codes?: [..._]

	// When set to C(yes), applies the HSTS policy to the HSTS host and its sub-domains.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	include_subdomains?: bool

	// Specifies how to handle chunked and unchunked responses.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	response_chunking?: string

	// Specifies sFlow settings for the HTTP profile.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	sflow?: {...}

	// Passphrase for cookie encryption.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	encrypt_cookie_secret?: string

	// When set to C(yes), enables the HSTS settings.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	hsts_mode?: bool

	// Specifies the profile from which this profile inherits settings.
	// When creating a new profile, if this parameter is not specified, the default is the system-supplied C(http) profile.

	parent?: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies whether the system rewrites the URIs that are part of HTTP redirect (3XX) responses.
	// When set to C(none) the system will not rewrite the URI in any HTTP redirect responses.
	// When set to C(all) the system rewrites the URI in all HTTP redirect responses.
	// When set to C(matching) the system rewrites the URI in any HTTP redirect responses that match the request URI.
	// When set to C(nodes) if the URI contains a node IP address instead of a host name, the system changes it to the virtual server address.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	redirect_rewrite?: string

	// Specifies alternative XFF headers instead of the default X-forwarded-for header.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	xff_alternative_names?: [..._]

	// Description of the profile.

	description?: string

	// Cookie names for the system to encrypt.
	// To remove the entry completely a value of C(none) or C('') should be set.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	encrypt_cookies?: [..._]

	// The name of a header, in an HTTP request, which the system removes from request.
	// To remove the entry completely a value of C(none) or C('') should be set.
	// The format of the header must be in C(KEY:VALUE) format, otherwise error is raised.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	header_erase?: string
}

bigip_asm_policy :: {

	// When C(state) is C(present), and C(file) or C(template) parameter is provided, new ASM policy is imported and created with the given C(name).
	// When C(state) is present and no C(file) or C(template) parameter is provided new blank ASM policy is created with the given C(name).
	// When C(state) is C(absent), ensures that the policy is removed, even if it is currently active.

	state?: string

	// An ASM policy built-in template. If the template does not exist we will raise an error.
	// Once the policy has been created, this value cannot change.
	// The C(Comprehensive), C(Drupal), C(Fundamental), C(Joomla), C(Vulnerability Assessment Baseline), and C(Wordpress) templates are only available on BIG-IP versions >= 13.

	template?: string

	// If C(yes) will apply and activate existing inactive policy. If C(no), it will deactivate existing active policy. Generally should be C(yes) only in cases where you want to activate new or existing policy.

	active?: bool

	// Full path to a policy file to be imported into the BIG-IP ASM.
	// Policy files exported from newer versions of BIG-IP cannot be imported into older versions of BIG-IP. The opposite, however, is true; you can import older into newer.

	file?: string

	// The ASM policy to manage or create.

	name: string

	// Device partition to manage resources on.

	partition?: string
}

bigip_command :: {

	// The commands to send to the remote BIG-IP device over the configured provider. The resulting output from the command is returned. If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of retries as expired.
	// Only C(tmsh) commands are supported. If you are piping or adding additional logic that is outside of C(tmsh) (such as grep'ing, awk'ing or other shell related things that are not C(tmsh), this behavior is not supported.

	commands: _

	// Configures the interval in seconds to wait between retries of the command. If the command does not pass the specified conditional, the interval indicates how to long to wait before trying the command again.

	interval?: int

	// The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy. Valid values are C(all) or C(any). If the value is set to C(all) then all conditionals in the I(wait_for) must be satisfied. If the value is set to C(any) then only one of the values must be satisfied.

	match?: string

	// Specifies the number of retries a command should by tried before it is considered failed. The command is run on the target device every retry and evaluated against the I(wait_for) conditionals.

	retries?: int

	// Configures the transport connection to use when connecting to the remote device. The transport argument supports connectivity to the device over cli (ssh) or rest.

	transport: string

	// Specifies what to evaluate from the output of the command and what conditionals to apply.  This argument will cause the task to wait for a particular conditional to be true before moving forward. If the conditional is not true by the configured retries, the task fails. See examples.

	wait_for?: [..._]

	// Whether the module should raise warnings related to command idempotency or not.
	// Note that the F5 Ansible developers specifically leave this on to make you aware that your usage of this module may be better served by official F5 Ansible modules. This module should always be used as a last resort.

	warn?: bool

	// Change into this directory before running the command.

	chdir?: string
}

bigip_configsync_action :: {

	// The device group that you want to perform config-sync actions on.

	device_group: string

	// Indicates that the sync operation overwrites the configuration on the target.

	overwrite_config?: bool

	// Specifies that the system synchronizes configuration data from this device to other members of the device group. In this case, the device will do a "push" to all the other devices in the group. This option is mutually exclusive with the C(sync_group_to_device) option.

	sync_device_to_group?: bool

	// Specifies that the system synchronizes configuration data from the device with the most recent configuration. In this case, the device will do a "pull" from the most recently updated device. This option is mutually exclusive with the C(sync_device_to_group) options.

	sync_most_recent_to_device?: bool
}

bigip_device_ha_group :: {

	// Name of the HA group to create/manage.

	name: string

	// Specifies pools to contribute to the ha score.
	// The pools must exist on the BIG-IP otherwise the operation will fail.

	pools?: [..._]

	// When C(present), ensures that the resource exists.
	// When C(absent), ensures the resource is removed.

	state?: string

	// Specifies trunks to contribute to the ha score.
	// The trunks must exist on the BIG-IP otherwise the operation will fail.

	trunks?: [..._]

	// Specifies the extra value to be added to the active unit's ha score.
	// When system creates HA group this value is set to C(10) by the system.

	active_bonus?: int

	// User created HA group description.

	description?: string

	// When set to C(no) the system disables the ha score feature.

	enable?: bool
}

bigip_firewall_rule_list :: {

	// The description to attach to the policy.
	// This parameter is only supported on versions of BIG-IP >= 12.1.0. On earlier versions it will simply be ignored.

	description?: string

	// The name of the policy to create.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies a list of rules that you want associated with this policy. The order of this list is the order they will be evaluated by BIG-IP. If the specified rules do not exist (for example when creating a new policy) then they will be created.
	// Rules specified here, if they do not exist, will be created with "default deny" behavior. It is expected that you follow-up this module with the actual configuration for these rules.
	// The C(bigip_firewall_rule) module can be used to also create, as well as edit, existing and new rules.

	rules?: [..._]

	// When C(state) is C(present), ensures that the rule list exists.
	// When C(state) is C(absent), ensures that the rule list is removed.

	state?: string
}

bigip_iapp_service :: {

	// The name of the iApp service that you want to deploy.

	name: string

	// A hash of all the required template variables for the iApp template. If your parameters are stored in a file (the more common scenario) it is recommended you use either the C(file) or C(template) lookups to supply the expected parameters.
	// These parameters typically consist of the C(lists), C(tables), and C(variables) fields.

	parameters?: {...}

	// Device partition to manage resources on.

	partition?: string

	// Indicates whether the application service is tied to the template, so when the template is updated, the application service changes to reflect the updates.
	// When C(yes), disallows any updates to the resources that the iApp service has created, if they are not updated directly through the iApp.
	// When C(no), allows updates outside of the iApp.
	// If this option is specified in the Ansible task, it will take precedence over any similar setting in the iApp Service payload that you provide in the C(parameters) field.

	strict_updates?: bool

	// The traffic group for the iApp service. When creating a new service, if this value is not specified, the default of C(/Common/traffic-group-1) will be used.
	// If this option is specified in the Ansible task, it will take precedence over any similar setting in the iApp Service payload that you provide in the C(parameters) field.

	traffic_group?: string

	// Description of the iApp service.
	// If this option is specified in the Ansible task, it will take precedence over any similar setting in the iApp Service payload that you provide in the C(parameters) field.

	description?: string

	// Forces the updating of an iApp service even if the parameters to the service have not changed. This option is of particular importance if the iApp template that underlies the service has been updated in-place. This option is equivalent to re-configuring the iApp if that template has changed.

	force?: bool

	// Metadata associated with the iApp service.
	// If this option is specified in the Ansible task, it will take precedence over any similar setting in the iApp Service payload that you provide in the C(parameters) field.

	metadata?: [..._]

	// The device group for the iApp service.
	// If this option is specified in the Ansible task, it will take precedence over any similar setting in the iApp Service payload that you provide in the C(parameters) field.

	device_group?: string

	// When C(present), ensures that the iApp service is created and running. When C(absent), ensures that the iApp service has been removed.

	state?: string

	// The iApp template from which to instantiate a new service. This template must exist on your BIG-IP before you can successfully create a service.
	// When creating a new service, this parameter is required.

	template?: string
}

bigip_message_routing_peer :: {

	// Specifies how the number of connections per host are to be limited.

	connection_mode?: string

	// The user defined description of the peer.

	description?: string

	// Specifies the name of the peer to manage.

	name: string

	// Device partition to create peer object on.

	partition?: string

	// The name of the ltm virtual or ltm transport-config to use for creating an outgoing connection.
	// The resource must exist on the same partition as the peer object.

	transport_config?: string

	// Parameter used to specify the type of the peer to manage.
	// Default setting is C(generic) with more options added in future.

	type?: string

	// If C(yes), the BIGIP will automatically create outbound connections to the active pool members in the specified C(pool) using the configuration of the specified C(transport_config).
	// For auto-initialization to attempt to create a connection, the peer must be included in a route that is attached to a router instance. For each router instance that the peer is contained in, a connection will be initiated.
	// The C(auto_init) logic will verify at C(auto_init_interval) if the a connection exists between the BIG-IP and the pool members of the pool. If a connection does not exist, it will attempt to reestablish one.

	auto_init?: bool

	// Specifies the distribution of connections between the BIG-IP and a remote host.
	// The accepted range is between 0 and 65535 inclusive.

	number_of_connections?: int

	// Specifies the name of the pool that messages will be routed towards.
	// The specified pool must be on the same partition as the peer.

	pool?: string

	// Specifies the ratio to be used for selection of a peer within a list of peers in a ltm route.
	// The accepted range is between 0 and 4294967295 inclusive.

	ratio?: int

	// When C(present), ensures that the peer exists.
	// When C(absent), ensures the peer is removed.

	state?: string

	// Specifies the interval that attempts to initiate a connection occur.
	// The default value upon peer object creation, that supplied by the system is C(5000) milliseconds.
	// The accepted range is between 0 and 4294967295 inclusive.

	auto_init_interval?: int
}

bigip_device_group_member :: {

	// The device group that you want to add the member to.

	device_group: string

	// Specifies the name of the device that you want to add to the device group. Often this will be the hostname of the device. This member must be trusted by the device already. Trusting can be done with the C(bigip_device_trust) module and the C(peer_hostname) option to that module.

	name: string

	// When C(present), ensures that the device group member exists.
	// When C(absent), ensures the device group member is removed.

	state?: string
}

bigip_gtm_monitor_bigip :: {

	// Specifies, in seconds, the frequency at which the system issues the monitor check when either the resource is down or the status of the resource is unknown.
	// When creating a new monitor, if this parameter is not provided, then the default value will be C(30). This value B(must) be less than the C(timeout) value.

	interval?: int

	// IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.

	ip?: string

	// Monitor name.

	name: string

	// The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(bigip) parent on the C(Common) partition.

	parent?: string

	// Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'. Note that if specifying an IP address, a value between 1 and 65535 must be specified

	port?: string

	// Specifies how the system combines the module values to create the proportion (score) for the load balancing operation.
	// The score represents the module's estimated capacity for handing traffic.
	// Averaged values are appropriate for downstream Web Accelerator or Application Security Manager virtual servers.
	// When creating a new monitor, if this parameter is not specified, the default of C(none) is used, meaning that the system does not use the scores in the load balancing operation.
	// When C(none), specifies that the monitor ignores the nodes and pool member scores.
	// When C(average-nodes), specifies that the system averages the dynamic ratios on the nodes associated with the monitor's target virtual servers and returns that average as the virtual servers' score.
	// When C(sum-nodes), specifies that the system adds together the scores of the nodes associated with the monitor's target virtual servers and uses that value in the load balancing operation.
	// When C(average-members), specifies that the system averages the dynamic ratios on the pool members associated with the monitor's target virtual servers and returns that average as the virtual servers' score.
	// When C(sum-members), specifies that the system adds together the scores of the pool members associated with the monitor's target virtual servers and uses that value in the load balancing operation.

	aggregate_dynamic_ratios?: string

	// Specifies that the monitor allows more than one probe attempt per interval.
	// When C(yes), specifies that the monitor ignores down responses for the duration of the monitor timeout. Once the monitor timeout is reached without the system receiving an up response, the system marks the object down.
	// When C(no), specifies that the monitor immediately marks an object down when it receives a down response.
	// When creating a new monitor, if this parameter is not provided, then the default value will be C(no).

	ignore_down_response?: bool

	// Device partition to manage resources on.

	partition?: string

	// When C(present), ensures that the monitor exists.
	// When C(absent), ensures the monitor is removed.

	state?: string

	// Specifies the number of seconds the target has in which to respond to the monitor request.
	// If the target responds within the set time period, it is considered up.
	// If the target does not respond within the set time period, it is considered down.
	// When this value is set to 0 (zero), the system uses the interval from the parent monitor.
	// When creating a new monitor, if this parameter is not provided, then the default value will be C(90).

	timeout?: int
}

bigip_hostname :: {

	// Hostname of the BIG-IP host.

	hostname: string
}

bigip_pool_member :: {

	// IP address of the pool member. This can be either IPv4 or IPv6. When creating a new pool member, one of either C(address) or C(fqdn) must be provided. This parameter cannot be updated after it is set.

	address?: string

	// Pool name. This pool must exist.

	pool: string

	// Pool member rate limit (connections-per-second). Setting this to 0 disables the limit.

	rate_limit?: int

	// Reuses node definitions if requested.

	reuse_nodes?: bool

	// Pool member connection limit. Setting this to 0 disables the limit.

	connection_limit?: int

	// Pool member description.

	description?: string

	// Partition to manage resources on.

	partition?: string

	// Pool member ratio weight. Valid values range from 1 through 100. New pool members -- unless overridden with this value -- default to 1.

	ratio?: int

	// Remove members not defined in the C(aggregate) parameter.
	// This operation is all or none, meaning that it will stop if there are some pool members that cannot be removed.

	replace_all_with?: bool

	// Specifies, if you activate more than one health monitor, the number of health monitors that must receive successful responses in order for the link to be considered available.
	// Specifying an empty string will remove the monitors and revert to inheriting from pool (default).
	// Specifying C(none) value will remove any health monitoring from the member completely.

	availability_requirements?: {...}

	// Specifies the IP encapsulation using either IPIP (IP encapsulation within IP, RFC 2003) or GRE (Generic Router Encapsulation, RFC 2784) on outbound packets (from BIG-IP system to server-pool member).
	// When C(none), disables IP encapsulation.
	// When C(inherit), inherits IP encapsulation setting from the member's pool.
	// When any other value, Options are None, Inherit from Pool, and Member Specific.

	ip_encapsulation?: string

	// Specifies the health monitors that the system currently uses to monitor this resource.

	monitors?: [..._]

	// Specifies a number representing the priority group for the pool member.
	// When adding a new member, the default is 0, meaning that the member has no priority.
	// To specify a priority, you must activate priority group usage when you create a new pool or when adding or removing pool members. When activated, the system load balances traffic according to the priority group number assigned to the pool member.
	// The higher the number, the higher the priority, so a member with a priority of 3 has higher priority than a member with a priority of 1.

	priority_group?: int

	// Pool member state.

	state: string

	// List of pool member definitions to be created, modified or removed.
	// When using C(aggregates) if one of the aggregate definitions is invalid, the aggregate run will fail, indicating the error it last encountered.
	// The module will C(NOT) rollback any changes it has made prior to encountering the error.
	// The module also will not indicate what changes were made prior to failure, therefore it is strongly advised to run the module in check mode to make basic validation, prior to module execution.

	aggregate?: [..._]

	// FQDN name of the pool member. This can be any name that is a valid RFC 1123 DNS name. Therefore, the only characters that can be used are "A" to "Z", "a" to "z", "0" to "9", the hyphen ("-") and the period (".").
	// FQDN names must include at lease one period; delineating the host from the domain. ex. C(host.domain).
	// FQDN names must end with a letter or a number.
	// When creating a new pool member, one of either C(address) or C(fqdn) must be provided. This parameter cannot be updated after it is set.

	fqdn?: string

	// Specifies whether the system automatically creates ephemeral nodes using the IP addresses returned by the resolution of a DNS query for a node defined by an FQDN.
	// When C(yes), the system generates an ephemeral node for each IP address returned in response to a DNS query for the FQDN of the node. Additionally, when a DNS response indicates the IP address of an ephemeral node no longer exists, the system deletes the ephemeral node.
	// When C(no), the system resolves a DNS query for the FQDN of the node with the single IP address associated with the FQDN.
	// When creating a new pool member, the default for this parameter is C(yes).
	// Once set this parameter cannot be changed afterwards.
	// This parameter is ignored when C(reuse_nodes) is C(yes).

	fqdn_auto_populate?: bool

	// Name of the node to create, or re-use, when creating a new pool member.
	// This parameter is optional and, if not specified, a node name will be created automatically from either the specified C(address) or C(fqdn).
	// The C(enabled) state is an alias of C(present).

	name?: string

	// Pool member port.
	// This value cannot be changed after it has been set.

	port: int

	// When state is C(absent) attempts to remove the node that the pool member references.
	// The node will not be removed if it is still referenced by other pool members. If this happens, the module will not raise an error.
	// Setting this to C(yes) disables this behavior.

	preserve_node?: bool
}

bigip_snmp_community :: {

	// Specifies the object identifier (OID) for the record.
	// When C(version) is C(v3), this parameter is required.
	// When C(version) is either C(v1) or C(v2c), if this value is specified, then C(source) must not be set to C(all).

	oid?: string

	// Specifies the password for the user.
	// When creating a new SNMP C(v3) community, this parameter is required.
	// This value must be at least 8 characters long.

	snmp_auth_password?: string

	// When C(present), ensures that the address list and entries exists.
	// When C(absent), ensures the address list is removed.

	state?: string

	// Specifies the community string (password) for access to the MIB.
	// This parameter is only relevant when C(version) is C(v1), or C(v2c). If C(version) is something else, this parameter is ignored.

	community?: string

	// Name that identifies the SNMP community.
	// When C(version) is C(v1) or C(v2c), this parameter is required.
	// The name C(public) is a reserved name on the BIG-IP. This module handles that name differently than others. Functionally, you should not see a difference however.

	name?: string

	// Specifies the port for the trap destination.
	// This parameter is only relevant when C(version) is C(v1), or C(v2c). If C(version) is something else, this parameter is ignored.

	port?: int

	// Specifies the password for the user.
	// When creating a new SNMP C(v3) community, this parameter is required.
	// This value must be at least 8 characters long.

	snmp_privacy_password?: string

	// Specifies the name of the user for whom you want to grant access to the SNMP v3 MIB.
	// This parameter is only relevant when C(version) is C(v3). If C(version) is something else, this parameter is ignored.
	// When creating a new SNMP C(v3) community, this parameter is required.
	// This parameter cannot be changed once it has been set.

	snmp_username?: string

	// Specifies the source address for access to the MIB.
	// This parameter can accept a value of C(all).
	// If this parameter is not specified, the value C(all) is used.
	// This parameter is only relevant when C(version) is C(v1), or C(v2c). If C(version) is something else, this parameter is ignored.
	// If C(source) is set to C(all), then it is not possible to specify an C(oid). This will raise an error.
	// This parameter should be provided when C(state) is C(absent), so that the correct community is removed. To remove the C(public) SNMP community that comes with a BIG-IP, this parameter should be set to C(default).

	source?: string

	// Specifies whether the record applies to IPv4 or IPv6 addresses.
	// When creating a new community, if this value is not specified, the default of C(4) will be used.
	// This parameter is only relevant when C(version) is C(v1), or C(v2c). If C(version) is something else, this parameter is ignored.

	ip_version?: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies the authentication method for the user.
	// When C(md5), specifies that the system uses the MD5 algorithm to authenticate the user.
	// When C(sha), specifies that the secure hash algorithm (SHA) to authenticate the user.
	// When C(none), specifies that user does not require authentication.
	// When creating a new SNMP C(v3) community, if this parameter is not specified, the default of C(sha) will be used.

	snmp_auth_protocol?: string

	// C(always) will allow to update passwords if the user chooses to do so. C(on_create) will only set the password for newly created resources.

	update_password?: string

	// Specifies to which Simple Network Management Protocol (SNMP) version the trap destination applies.

	version?: string

	// Specifies the user's access level to the MIB.
	// When creating a new community, if this parameter is not specified, the default is C(ro).
	// When C(ro), specifies that the user can view the MIB, but cannot modify the MIB.
	// When C(rw), specifies that the user can view and modify the MIB.

	access?: string

	// Specifies the encryption protocol.
	// When C(aes), specifies that the system encrypts the user information using AES (Advanced Encryption Standard).
	// When C(des), specifies that the system encrypts the user information using DES (Data Encryption Standard).
	// When C(none), specifies that the system does not encrypt the user information.
	// When creating a new SNMP C(v3) community, if this parameter is not specified, the default of C(aes) will be used.

	snmp_privacy_protocol?: string
}

bigip_virtual_address :: {

	// Specifies whether the system automatically deletes the virtual address with the deletion of the last associated virtual server. When C(disabled), specifies that the system leaves the virtual address even when all associated virtual servers have been deleted. When creating the virtual address, the default value is C(enabled).
	// C(enabled) and C(disabled) are deprecated and will be removed in Ansible 2.11. Instead, use known Ansible booleans such as C(yes) and C(no)

	auto_delete?: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies how the systems sends responses to (ICMP) echo requests on a per-virtual address basis for enabling route advertisement. When C(enabled), the BIG-IP system intercepts ICMP echo request packets and responds to them directly. When C(disabled), the BIG-IP system passes ICMP echo requests through to the backend servers. When (selective), causes the BIG-IP system to internally enable or disable responses based on virtual server state; C(when_any_available), C(when_all_available, or C(always), regardless of the state of any virtual servers.

	icmp_echo?: string

	// The route domain of the C(address) that you want to use.
	// This value cannot be modified after it is set.

	route_domain?: string

	// Specifies the number of concurrent connections that the system allows on this virtual address.

	connection_limit?: int

	// Netmask of the provided virtual address. This value cannot be modified after it is set.
	// When creating a new virtual address, if this parameter is not specified, the default value is C(255.255.255.255) for IPv4 addresses and C(ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff) for IPv6 addresses.

	netmask?: string

	// Specifies whether the system uses route advertisement for this virtual address.
	// When disabled, the system does not advertise routes for this virtual address.
	// The majority of these options are only supported on versions 13.0.0-HF1 or higher. On versions less than this, all choices expect C(disabled) will translate to C(enabled).
	// When C(always), the BIG-IP system will always advertise the route for the virtual address, regardless of availability status. This requires an C(enabled) virtual address.
	// When C(enabled), the BIG-IP system will advertise the route for the available virtual address, based on the calculation method in the availability calculation.
	// When C(disabled), the BIG-IP system will not advertise the route for the virtual address, regardless of the availability status.
	// When C(selective), you can also selectively enable ICMP echo responses, which causes the BIG-IP system to internally enable or disable responses based on virtual server state. Either C(any) virtual server, C(all) virtual servers, or C(always), regardless of the state of any virtual server.
	// When C(any), the BIG-IP system will advertise the route for the virtual address when any virtual server is available.
	// When C(all), the BIG-IP system will advertise the route for the virtual address when all virtual servers are available.

	route_advertisement?: string

	// The traffic group for the virtual address. When creating a new address, if this value is not specified, the default of C(/Common/traffic-group-1) will be used.

	traffic_group?: string

	// Enables all BIG-IP systems in a device group to listen for and process traffic on the same virtual address.
	// Spanning for a virtual address occurs when you enable the C(spanning) option on a device and then sync the virtual address to the other members of the device group.
	// Spanning also relies on the upstream router to distribute application flows to the BIG-IP systems using ECMP routes. ECMP defines a route to the virtual address using distinct Floating self-IP addresses configured on each BIG-IP system.
	// You must also configure MAC masquerade addresses and disable C(arp) on the virtual address when Spanning is enabled.
	// When creating a new virtual address, if this parameter is not specified, the default valus is C(no).

	spanning?: bool

	// The virtual address state. If C(absent), an attempt to delete the virtual address will be made. This will only succeed if this virtual address is not in use by a virtual server. C(present) creates the virtual address and enables it. If C(enabled), enable the virtual address if it exists. If C(disabled), create the virtual address if needed, and set state to C(disabled).

	state?: string

	// Virtual address. This value cannot be modified after it is set.
	// If you never created a virtual address, but did create virtual servers, then a virtual address for each virtual server was created automatically. The name of this virtual address is its IP address value.

	address?: string

	// Specifies whether the system accepts ARP requests.
	// When C(no), specifies that the system does not accept ARP requests.
	// When C(yes), then the packets are dropped.
	// Note that both ARP and ICMP Echo must be disabled in order for forwarding virtual servers using that virtual address to forward ICMP packets.
	// When creating a new virtual address, if this parameter is not specified, the default value is C(yes).

	arp?: bool

	// Specifies whether the system accepts ARP requests. When (disabled), specifies that the system does not accept ARP requests. Note that both ARP and ICMP Echo must be disabled in order for forwarding virtual servers using that virtual address to forward ICMP packets. If (enabled), then the packets are dropped.
	// Deprecated. Use the C(arp) parameter instead.
	// When creating a new virtual address, if this parameter is not specified, the default value is C(enabled).

	arp_state?: string

	// Specifies what routes of the virtual address the system advertises. When C(when_any_available), advertises the route when any virtual server is available. When C(when_all_available), advertises the route when all virtual servers are available. When (always), always advertises the route regardless of the virtual servers available.

	availability_calculation?: string

	// Name of the virtual address.
	// If this parameter is not provided, then the value of C(address) will be used.

	name?: string
}

bigip_config :: {

	// Loads the specified configuration that you want to merge into the running configuration. This is equivalent to using the C(tmsh) command C(load sys config from-terminal merge).
	// If you need to read configuration from a file or template, use Ansible's C(file) or C(template) lookup plugins respectively.

	merge_content?: string

	// Loads the default configuration on the device.
	// If this option is specified, the default configuration will be loaded before any commands or other provided configuration is run.

	reset?: bool

	// The C(save) argument instructs the module to save the running-config to startup-config.
	// This operation is performed after any changes are made to the current running config. If no changes are made, the configuration is still saved to the startup config.
	// This option will always cause the module to return changed.

	save?: bool

	// Validates the specified configuration to see whether they are valid to replace the running configuration.
	// The running configuration will not be changed.
	// When this parameter is set to C(yes), no change will be reported by the module.

	verify?: bool
}

bigip_dns_nameserver :: {

	// When C(present), ensures that the resource exists.
	// When C(absent), ensures the resource is removed.

	state?: string

	// Specifies the TSIG key the system uses to communicate with this DNS nameserver (client) or back-end DNS authoritative server (DNS Express server) for AXFR zone transfers.
	// If the nameserver is a client, then the system uses this TSIG key to verify the request and sign the response.
	// If this nameserver is a DNS Express server, then this TSIG key must match the TSIG key for the zone on the back-end DNS authoritative server.

	tsig_key?: string

	// Specifies the IP address on which the DNS nameserver (client) or back-end DNS authoritative server (DNS Express server) listens for DNS messages.
	// When creating a new nameserver, if this value is not specified, the default is C(127.0.0.1).

	address?: string

	// Specifies the name of the nameserver.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies the local route domain that the DNS nameserver (client) or back-end DNS authoritative server (DNS Express server) uses for outbound traffic.
	// When creating a new nameserver, if this value is not specified, the default is C(0).

	route_domain?: string

	// Specifies the service port on which the DNS nameserver (client) or back-end DNS authoritative server (DNS Express server) listens for DNS messages.
	// When creating a new nameserver, if this value is not specified, the default is C(53).

	service_port?: string
}

bigip_firewall_port_list :: {

	// Description of the port list

	description?: string

	// Specifies the name of the port list.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// Simple list of existing port lists to add to this list. Port lists can be specified in either their fully qualified name (/Common/foo) or their short name (foo). If a short name is used, the C(partition) argument will automatically be prepended to the short name.

	port_lists?: [..._]

	// A list of port ranges where the range starts with a port number, is followed by a dash (-) and then a second number.
	// If the first number is greater than the second number, the numbers will be reversed so-as to be properly formatted. ie, 90-78 would become 78-90.

	port_ranges?: [..._]

	// Simple list of port values to add to the list

	ports?: [..._]

	// When C(present), ensures that the address list and entries exists.
	// When C(absent), ensures the address list is removed.

	state?: string
}

bigip_log_publisher :: {

	// Specifies the name of the log publisher.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// When C(present), ensures that the resource exists.
	// When C(absent), ensures the resource is removed.

	state?: string

	// Specifies a description for the log publisher.

	description?: string

	// Specifies log destinations for this log publisher to use.

	destinations?: [..._]
}

bigip_policy_rule :: {

	// Description of the policy rule.

	description?: string

	// The name of the rule.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// The name of the policy that you want to associate this rule with.

	policy: string

	// When C(present), ensures that the key is uploaded to the device. When C(absent), ensures that the key is removed from the device. If the key is currently in use, the module will not be able to remove the key.

	state?: string

	// The actions that you want the policy rule to perform.
	// The available attributes vary by the action, however, each action requires that a C(type) be specified.
	// These conditions can be specified in any order. Despite them being a list, the BIG-IP does not treat their order as anything special.

	actions?: [..._]

	// A list of attributes that describe the condition.
	// See suboptions for details on how to construct each list entry.
	// The ordering of this list is important, the module will ensure the order is kept when modifying the task.
	// The suboption options listed below are not required for all condition types, read the description for more details.
	// These conditions can be specified in any order. Despite them being a list, the BIG-IP does not treat their order as anything special.

	conditions?: [..._]
}

bigiq_device_info :: {

	// When supplied, this argument will restrict the information returned to a given subset.
	// Can specify a list of values to include a larger subset.
	// Values can also be used with an initial C(!) to specify that a specific subset should not be collected.

	gather_subset: [..._]
}

bigiq_regkey_license_assignment :: {

	// The password of the C(device_username).
	// When C(managed) is C(no), this parameter is required.

	device_password?: string

	// Specifies the port of the remote device to connect to.
	// If this parameter is not specified, the default of C(443) will be used.

	device_port?: int

	// The username used to connect to the remote device.
	// This username should be one that has sufficient privileges on the remote device to do licensing. Usually this is the C(Administrator) role.
	// When C(managed) is C(no), this parameter is required.

	device_username?: string

	// The registration key that you want to assign from the pool.

	key: string

	// Whether the specified device is a managed or un-managed device.
	// When C(state) is C(present), this parameter is required.

	managed?: bool

	// The registration key pool to use.

	pool: string

	// When C(present), ensures that the device is assigned the specified license.
	// When C(absent), ensures the license is revokes from the remote device and freed on the BIG-IQ.

	state?: string

	// When C(managed) is C(no), specifies the address, or hostname, where the BIG-IQ can reach the remote device to register.
	// When C(managed) is C(yes), specifies the managed device, or device UUID, that you want to register.
	// If C(managed) is C(yes), it is very important that you do not have more than one device with the same name. BIG-IQ internally recognizes devices by their ID, and therefore, this module's cannot guarantee that the correct device will be registered. The device returned is the device that will be used.

	device?: string
}

bigip_firewall_global_rules :: {

	// Specifies an enforced firewall policy.
	// C(enforced_policy) rules are enforced globally.

	enforced_policy?: string

	// Specifies a service policy that would apply to traffic globally.
	// The service policy is applied to all flows, provided if there are no other context specific service policy configuration that overrides the global service policy. For example, when a service policy is configured both at a global level, as well as on a firewall rule, and a flow matches the rule, the more specific service policy configuration in the rule will override the service policy setting at the global level.
	// The service policy associated here can be created using the C(bigip_service_policy) module.

	service_policy?: string

	// Specifies a staged firewall policy.
	// C(staged_policy) rules are not enforced while all the visibility aspects namely statistics, reporting and logging function as if the staged-policy rules were enforced globally.

	staged_policy?: string

	// Description for the global list of firewall rules.

	description?: string
}

bigip_monitor_external :: {

	// The interval specifying how frequently the monitor instance of this template will run. If this parameter is not provided when creating a new monitor, then the default value will be 5. This value B(must) be less than the C(timeout) value.

	interval?: int

	// IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.

	ip?: string

	// The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(http) parent on the C(Common) partition.

	parent?: string

	// Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'. Note that if specifying an IP address, a value between 1 and 65535 must be specified.

	port?: string

	// When C(present), ensures that the monitor exists.
	// When C(absent), ensures the monitor is removed.

	state?: string

	// Specifies any variables that the script requires.
	// Note that double quotes in values will be suppressed.

	variables?: {...}

	// Specifies any command-line arguments that the script requires.

	arguments?: string

	// The description of the monitor.

	description?: string

	// Device partition to manage resources on.

	partition?: string

	// The number of seconds in which the node or service must respond to the monitor request.
	// If the target responds within the set time period, it is considered up.
	// If the target does not respond within the set time period, it is considered down.
	// You can change this number to any number you want, however, it should be 3 times the interval number of seconds plus 1 second.
	// If this parameter is not provided when creating a new monitor, then the default value will be C(16).

	timeout?: int

	// Specifies the name of the file for the monitor to use. In order to reference a file, you must first import it using options on the System > File Management > External Monitor Program File List > Import screen. The BIG-IP system automatically places the file in the proper location on the file system.

	external_program?: string

	// Specifies the name of the monitor.

	name: string
}

bigip_partition :: {

	// The description to attach to the Partition.

	description?: string

	// Name of the partition

	name: string

	// The default Route Domain to assign to the Partition. If no route domain is specified, then the default route domain for the system (typically zero) will be used only when creating a new partition.

	route_domain?: int

	// Whether the partition should exist or not.

	state?: string
}

bigip_profile_persistence_src_addr :: {

	// Specifies the profile from which this profile inherits settings.
	// When creating a new profile, if this parameter is not specified, the default is the system-supplied C(source_addr) profile.

	parent?: string

	// Specifies the algorithm the system uses for hash persistence load balancing. The hash result is the input for the algorithm.
	// When C(default), specifies that the system uses the index of pool members to obtain the hash result for the input to the algorithm.
	// When C(carp), specifies that the system uses the Cache Array Routing Protocol (CARP) to obtain the hash result for the input to the algorithm.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	hash_algorithm?: string

	// When C(yes), specifies that the system can use any pool that contains this persistence record.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	match_across_pools?: bool

	// When C(yes), specifies that all persistent connections from a client IP address that go to the same virtual IP address also go to the same node.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	match_across_services?: bool

	// When C(yes), specifies that all persistent connections from the same client IP address go to the same node.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	match_across_virtuals?: bool

	// Specifies the name of the profile.

	name: string

	// When C(yes), specifies that the system allows you to specify that pool member connection limits will be overridden for persisted clients.
	// Per-virtual connection limits remain hard limits and are not overridden.

	override_connection_limit?: bool

	// Device partition to manage resources on.

	partition?: string

	// Specifies the duration of the persistence entries.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
	// To specify an indefinite timeout, use the value C(indefinite).
	// If specifying a numeric timeout, the value must be between C(1) and C(4294967295).

	entry_timeout?: string

	// When C(present), ensures that the profile exists.
	// When C(absent), ensures the profile is removed.

	state?: string
}

bigip_profile_tcp :: {

	// Device partition to manage resources on.

	partition?: string

	// When C(yes) the system advertises an option, such as a time-stamp to the server only if it was negotiated with the client.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	proxy_options?: bool

	// When C(present), ensures that the profile exists.
	// When C(absent), ensures the profile is removed.

	state?: string

	// Specifies the length of time that a connection is idle (has no traffic) before the connection is eligible for deletion.
	// When creating a new profile, if this parameter is not specified, the remote device will choose a default value appropriate for the profile, based on its C(parent) profile.
	// When a number is specified, indicates the number of seconds that the TCP connection can remain idle before the system deletes it.
	// When C(0), or C(indefinite), specifies that the system does not delete TCP connections regardless of how long they remain idle.

	idle_timeout?: string

	// Specifies the initial congestion window size for connections to this destination. The actual window size is this value multiplied by the MSS for the same connection.
	// When set to C(0) the system uses the values specified in RFC2414.
	// The valid value range is 0 - 16 inclusive.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	initial_congestion_window_size?: int

	// When C(enabled) the system applies Nagle's algorithm to reduce the number of short segments on the network.
	// When C(auto), the use of Nagle's algorithm is decided based on network conditions.
	// Note that for interactive protocols such as Telnet, rlogin, or SSH, F5 recommends disabling this setting on high-latency networks, to improve application responsiveness.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	nagle?: string

	// Specifies the profile from which this profile inherits settings.
	// When creating a new profile, if this parameter is not specified, the default is the system-supplied C(tcp) profile.

	parent?: string

	// Specifies that connections in a TIME-WAIT state are reused, if a SYN packet, indicating a request for a new connection, is received.
	// When C(no), connections in a TIME-WAIT state remain unused for a specified length of time.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	time_wait_recycle?: bool

	// When C(yes) the system uses early fast retransmits to reduce the recovery time for connections that are receive-buffer or user-data limited.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	early_retransmit?: bool

	// Specifies the initial receive window size for connections to this destination. The actual window size is this value multiplied by the MSS for the same connection.
	// When set to C(0) the system uses the Slow Start value.
	// The valid value range is 0 - 16 inclusive.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	initial_receive_window_size?: int

	// Specifies the name of the profile.

	name: string

	// Specifies the initial RTO C(Retransmission TimeOut) base multiplier for SYN retransmission, in C(milliseconds).
	// This value is modified by the exponential backoff table to select the interval for subsequent retransmissions.
	// The valid value range is 0 - 5000 inclusive.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	syn_rto_base?: int
}

bigip_selfip :: {

	// The IP addresses for the new self IP. This value is ignored upon update as addresses themselves cannot be changed after they are created.
	// This value is required when creating new self IPs.

	address?: string

	// The self IP to create.
	// If this parameter is not specified, then it will default to the value supplied in the C(address) parameter.

	name: string

	// The netmask for the self IP. When creating a new Self IP, this value is required.

	netmask?: string

	// The route domain id of the system. When creating a new Self IP, if this value is not specified, a default value of C(0) will be used.
	// This value cannot be changed after it is set.

	route_domain?: int

	// Configure port lockdown for the Self IP. By default, the Self IP has a "default deny" policy. This can be changed to allow TCP and UDP ports as well as specific protocols. This list should contain C(protocol):C(port) values.

	allow_service?: [..._]

	// Description of the traffic selector.

	description?: string

	// Device partition to manage resources on. You can set different partitions for Self IPs, but the address used may not match any other address used by a Self IP. In that sense, Self IPs are not isolated by partitions as other resources on a BIG-IP are.

	partition?: string

	// When C(present), guarantees that the Self-IP exists with the provided attributes.
	// When C(absent), removes the Self-IP from the system.

	state?: string

	// The traffic group for the Self IP addresses in an active-active, redundant load balancer configuration. When creating a new Self IP, if this value is not specified, the default of C(/Common/traffic-group-local-only) will be used.

	traffic_group?: string

	// The VLAN that the new self IPs will be on. When creating a new Self IP, this value is required.

	vlan?: string
}

bigip_snmp_trap :: {

	// Specifies the community name for the trap destination.

	community?: string

	// Specifies the address for the trap destination. This can be either an IP address or a hostname.

	destination?: string

	// Name of the SNMP configuration endpoint.

	name: string

	// Specifies the name of the trap network. This option is not supported in versions of BIG-IP < 12.1.0. If used on versions < 12.1.0, it will simply be ignored.
	// The value C(default) was removed in BIG-IP version 13.1.0. Specifying this value when configuring a BIG-IP will cause the module to stop and report an error. The usual remedy is to choose one of the other options, such as C(management).

	network?: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies the port for the trap destination.

	port?: string

	// Specifies to which Simple Network Management Protocol (SNMP) version the trap destination applies.

	snmp_version?: string

	// When C(present), ensures that the resource exists.
	// When C(absent), ensures that the resource does not exist.

	state?: string
}

bigip_monitor_http :: {

	// The description of the monitor.

	description?: string

	// IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.

	ip?: string

	// Specifies the password, if the monitored target requires authentication.

	target_password?: string

	// The interval specifying how frequently the monitor instance of this template will run. If this parameter is not provided when creating a new monitor, then the default value will be 5. This value B(must) be less than the C(timeout) value.

	interval?: int

	// The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(http) parent on the C(Common) partition.

	parent?: string

	// Device partition to manage resources on.

	partition?: string

	// Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'. Note that if specifying an IP address, a value between 1 and 65535 must be specified.

	port?: string

	// The receive string for the monitor call.

	receive?: string

	// When C(present), ensures that the monitor exists.
	// When C(absent), ensures the monitor is removed.

	state?: string

	// Specifies the user name, if the monitored target requires authentication.

	target_username?: string

	// Monitor name.

	name: string

	// This setting works like C(receive), except that the system marks the node or pool member disabled when its response matches the C(receive_disable) string but not C(receive). To use this setting, you must specify both C(receive_disable) and C(receive).

	receive_disable?: string

	// Specifies whether the monitor operates in reverse mode.
	// When the monitor is in reverse mode, a successful receive string match marks the monitored object down instead of up. You can use the this mode only if you configure the C(receive) option.
	// This parameter is not compatible with the C(time_until_up) parameter. If C(time_until_up) is specified, it must be C(0). Or, if it already exists, it must be C(0).

	reverse?: bool

	// The send string for the monitor call. When creating a new monitor, if this value is not provided, the default C(GET /\r\n) will be used.

	send?: string

	// Specifies the amount of time in seconds after the first successful response before a node will be marked up. A value of 0 will cause a node to be marked up immediately after a valid response is received from the node. If this parameter is not provided when creating a new monitor, then the default value will be 0.

	time_until_up?: int

	// The number of seconds in which the node or service must respond to the monitor request. If the target responds within the set time period, it is considered up. If the target does not respond within the set time period, it is considered down. You can change this number to any number you want, however, it should be 3 times the interval number of seconds plus 1 second. If this parameter is not provided when creating a new monitor, then the default value will be 16.

	timeout?: int
}

bigip_profile_oneconnect :: {

	// Specifies the maximum number of seconds allowed for a connection in the connection reuse pool.
	// For any connection with an age higher than this value, the system removes that connection from the re-use pool.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	maximum_age?: int

	// Specifies the maximum number of times that a server-side connection can be reused.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	maximum_reuse?: int

	// Specifies the maximum number of connections that the system holds in the connection reuse pool.
	// If the pool is already full, then a server-side connection closes after the response is completed.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	maximum_size?: int

	// Specifies the name of the OneConnect profile.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// When C(present), ensures that the profile exists.
	// When C(absent), ensures the profile is removed.

	state?: string

	// Specifies the number of seconds that a connection is idle before the connection flow is eligible for deletion.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
	// You may specify a number of seconds for the timeout override.
	// When C(disabled), specifies that there is no timeout override for the connection.
	// When C(indefinite), Specifies that a connection may be idle with no timeout override.

	idle_timeout_override?: string

	// When C(none), simultaneous in-flight requests and responses over TCP connections to a pool member are counted toward the limit. This is the historical behavior.
	// When C(idle), idle connections will be dropped as the TCP connection limit is reached. For short intervals, during the overlap of the idle connection being dropped and the new connection being established, the TCP connection limit may be exceeded.
	// When C(strict), the TCP connection limit is honored with no exceptions. This means that idle connections will prevent new TCP connections from being made until they expire, even if they could otherwise be reused.
	// C(strict) is not a recommended configuration except in very special cases with short expiration timeouts.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	limit_type?: string

	// Indicates that connections may be shared not only within a virtual server, but also among similar virtual servers
	// When C(yes), all virtual servers that use the same OneConnect and other internal network profiles can share connections.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	share_pools?: bool

	// Specifies a value that the system applies to the source address to determine its eligibility for reuse.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
	// The system applies the value of this setting to the server-side source address to determine its eligibility for reuse.
	// A mask of C(0) causes the system to share reused connections across all source addresses. A host mask of C(32) causes the system to share only those reused connections originating from the same source address.
	// When you are using a SNAT or SNAT pool, the server-side source address is translated first and then the OneConnect mask is applied to the translated address.

	source_mask?: string

	// Description of the profile.

	description?: string

	// Specifies the profile from which this profile inherits settings.
	// When creating a new profile, if this parameter is not specified, the default is the system-supplied C(oneconnect) profile.

	parent?: string
}

bigip_device_auth_ldap :: {

	// Specifies the distinguished name for the Active Directory or LDAP server user ID.
	// The BIG-IP client authentication module does not support Active Directory or LDAP servers that do not perform bind referral when authenticating referred accounts.
	// Therefore, if you plan to use Active Directory or LDAP as your authentication source and want to use referred accounts, make sure your servers perform bind referral.

	bind_dn?: string

	// Specifies the port that the system uses for access to the remote host server.
	// When configuring LDAP device authentication for the first time, if this parameter is not specified, the default port is C(389).

	port?: int

	// When C(present), ensures the device authentication method exists.
	// When C(absent), ensures the device authentication method does not exist.

	state?: string

	// C(always) will always update the C(bind_password).
	// C(on_create) will only set the C(bind_password) for newly created authentication mechanisms.

	update_password?: string

	// Specifies a password for the Active Directory or LDAP server user ID.

	bind_password?: string

	// Specifies the LDAP directory attribute containing the local user name that is associated with the selected directory entry.
	// When configuring LDAP device authentication for the first time, if this parameter is not specified, the default port is C(samaccountname).

	login_ldap_attr?: string

	// Specifies the LDAP servers that the system must use to obtain authentication information. You must specify a server when you create an LDAP configuration object.

	servers?: [..._]

	// Specifies the distinguished name of the user who is logging on.
	// You specify the template as a variable that the system replaces with user-specific information during the logon attempt.
	// For example, you could specify a user template such as C(%s@siterequest.com) or C(uxml:id=%s,ou=people,dc=siterequest,dc=com).
	// When a user attempts to log on, the system replaces C(%s) with the name the user specified in the Basic Authentication dialog box, and passes that as the distinguished name for the bind operation.
	// The system passes the associated password as the password for the bind operation.
	// This field can contain only one C(%s) and cannot contain any other format specifiers.

	user_template?: string

	// Specifies that the system uses the Local authentication method if the remote authentication method is not available.

	fallback_to_local?: bool

	// Specifies the file location (tree) of the user authentication database on the server.

	remote_directory_tree?: string

	// Specifies the name of an SSL certificate from a certificate authority (CA).
	// To remove this value, use the reserved value C(none).

	ca_cert?: string

	// Checks the user's member attribute in the remote LDAP or AD group.

	check_member_attr?: bool

	// Specifies the name of an SSL client certificate.
	// To remove this value, use the reserved value C(none).

	client_cert?: string

	// Specifies the name of an SSL client key.
	// To remove this value, use the reserved value C(none).

	client_key?: string

	// Specifies the level of the remote Active Directory or LDAP directory that the system should search for the user authentication.

	scope?: string

	// Specifies whether the system uses an SSL port to communicate with the LDAP server.

	ssl?: string

	// Specifies whether the system checks an SSL peer, as a result of which the system requires and verifies the server certificate.

	validate_certs?: bool
}

bigip_profile_server_ssl :: {

	// Specifies the name of the certificate that the system uses for server-side SSL processing.

	certificate?: string

	// Specifies the way the system handles server certificates.
	// When C(ignore), specifies that the system ignores certificates from server systems.
	// When C(require), specifies that the system requires a server to present a valid certificate.

	server_certificate?: string

	// C(always) will allow to update passwords if the user chooses to do so. C(on_create) will only set the password for newly created profiles.

	update_password?: string

	// Specifies the certificates-key chain to associate with the SSL profile.

	chain?: string

	// Specifies the list of ciphers that the system supports. When creating a new profile, the default cipher list is provided by the parent profile.

	ciphers?: string

	// Specifies the file name of the SSL key.

	key?: string

	// Specifies a passphrase used to encrypt the key.

	passphrase?: string

	// Indicates that the system uses this profile as the default SSL profile when there is no match to the server name, or when the client provides no SNI extension support.
	// When creating a new profile, the setting is provided by the parent profile.
	// There can be only one SSL profile with this setting enabled.

	sni_default?: bool

	// Requires that the network peers also provide SNI support, setting only takes effect when C(sni_default) is C(yes).
	// When creating a new profile, the setting is provided by the parent profile.

	sni_require?: bool

	// Specifies the name of the profile.

	name: string

	// The parent template of this monitor template. Once this value has been set, it cannot be changed.

	parent?: string

	// Specifies the name of the OCSP profile for purpose of validating status of server certificate.

	ocsp_profile?: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies the method of secure renegotiations for SSL connections. When creating a new profile, the setting is provided by the parent profile.
	// When C(request) is set the system request secure renegotation of SSL connections.
	// C(require) is a default setting and when set the system permits initial SSL handshakes from clients but terminates renegotiations from unpatched clients.
	// The C(require-strict) setting the system requires strict renegotiation of SSL connections. In this mode the system refuses connections to insecure servers, and terminates existing SSL connections to insecure servers.

	secure_renegotiation?: string

	// Specifies the fully qualified DNS hostname of the server used in Server Name Indication communications. When creating a new profile, the setting is provided by the parent profile.

	server_name?: string

	// When C(present), ensures that the profile exists.
	// When C(absent), ensures the profile is removed.

	state?: string
}

bigip_sys_db :: {

	// The state of the variable on the system. When C(present), guarantees that an existing variable is set to C(value). When C(reset) sets the variable back to the default value. At least one of value and state C(reset) are required.

	state?: string

	// The value to set the key to. At least one of value and state C(reset) are required.

	value?: string

	// The database variable to manipulate.

	key: string
}

bigip_trunk :: {

	// Specifies the rate at which the system sends the LACP control packets.
	// When creating a new trunk, if this parameter is not specified, the default is C(long).
	// When C(long), specifies that the system sends an LACP control packet every 30 seconds.
	// When C(short), specifies that the system sends an LACP control packet every 1 seconds.

	lacp_timeout?: string

	// Specifies the name of the trunk.

	name: string

	// Specifies the basis for the hash that the system uses as the frame distribution algorithm. The system uses the resulting hash to determine which interface to use for forwarding traffic.
	// When creating a new trunk, if this parameter is not specified, the default is C(source-destination-ip).
	// When C(source-destination-mac), specifies that the system bases the hash on the combined MAC addresses of the source and the destination.
	// When C(destination-mac), specifies that the system bases the hash on the MAC address of the destination.
	// When C(source-destination-ip), specifies that the system bases the hash on the combined IP addresses of the source and the destination.

	frame_distribution_hash?: string

	// The interfaces that are part of the trunk.
	// To clear the list of interfaces, specify an empty list.

	interfaces?: [..._]

	// When C(yes), specifies that the system supports the link aggregation control protocol (LACP), which monitors the trunk by exchanging control packets over the member links to determine the health of the links.
	// If LACP detects a failure in a member link, it removes the link from the link aggregation.
	// When creating a new trunk, if this parameter is not specified, LACP is C(no).
	// LACP is disabled by default for backward compatibility. If this does not apply to your network, we recommend that you enable LACP.

	lacp_enabled?: bool

	// Specifies the ether-type value used for the packets handled on this trunk when it is a member in a QinQ vlan.
	// The ether-type can be set to any string containing a valid hexadecimal 16 bits number, or any of the well known ether-types; C(0x8100), C(0x9100), C(0x88a8).
	// This parameter is not supported on Virtual Editions.
	// You should always wrap this value in quotes to prevent Ansible from interpreting the value as a literal hexadecimal number and converting it to an integer.

	qinq_ethertype?: _

	// When C(present), ensures that the resource exists.
	// When C(absent), ensures the resource is removed.

	state?: string

	// Description of the trunk.

	description?: string

	// Specifies the operation mode for link aggregation control protocol (LACP), if LACP is enabled for the trunk.
	// When creating a new trunk, if this parameter is not specified, the default is C(active).
	// When C(active), specifies that the system periodically sends control packets regardless of whether the partner system has issued a request.
	// When C(passive), specifies that the system sends control packets only when the partner system has issued a request.

	lacp_mode?: string

	// Specifies, once the trunk is configured, the policy that the trunk uses to determine which member link (interface) can handle new traffic.
	// When creating a new trunk, if this value is not specific, the default is C(auto).
	// When C(auto), specifies that the system automatically determines which interfaces can handle new traffic. For the C(auto) option, the member links must all be the same media type and speed.
	// When C(maximum-bandwidth), specifies that the system determines which interfaces can handle new traffic based on the members' maximum bandwidth.

	link_selection_policy?: string
}

bigip_ucs :: {

	// During restore of the UCS file, include chassis level configuration that is shared among boot volume sets. For example, cluster default configuration.

	include_chassis_level_config?: bool

	// Performs a full restore of the UCS file and all the files it contains, with the exception of the license file. The option must be used to restore a UCS on RMA devices (Returned Materials Authorization).

	no_license?: bool

	// Bypasses the platform check and allows a UCS that was created using a different platform to be installed. By default (without this option), a UCS created from a different platform is not allowed to be installed.

	no_platform_check?: bool

	// Specifies the passphrase that is necessary to load the specified UCS file.

	passphrase?: string

	// When specified, the device and trust domain certs and keys are not loaded from the UCS. Instead, a new set is regenerated.

	reset_trust?: bool

	// When C(installed), ensures that the UCS is uploaded and installed, on the system. When C(present), ensures that the UCS is uploaded. When C(absent), the UCS will be removed from the system. When C(installed), the uploading of the UCS is idempotent, however the installation of that configuration is not idempotent.

	state?: string

	// The path to the UCS file to install. The parameter must be provided if the C(state) is either C(installed) or C(activated). When C(state) is C(absent), the full path for this parameter will be ignored and only the filename will be used to select a UCS for removal. Therefore you could specify C(/mickey/mouse/test.ucs) and this module would only look for C(test.ucs).

	ucs?: string

	// If C(yes) will upload the file every time and replace the file on the device. If C(no), the file will only be uploaded if it does not already exist. Generally should be C(yes) only in cases where you have reason to believe that the image was corrupted during upload.

	force?: bool
}

bigip_vlan :: {

	// Specifies whether some of the stateless traffic on the VLAN should be disaggregated in a round-robin order instead of using a static hash. The stateless traffic includes non-IP L2 traffic, ICMP, some UDP protocols, and so on.
	// When creating a new VLAN, if this parameter is not specified, the default of (no) is used.

	dag_round_robin?: bool

	// When C(yes), specifies that the VLAN takes the specified C(fail_safe_action) if the system detects a loss of traffic on this VLAN's interfaces.

	fail_safe?: bool

	// Specifies the ratio of packets observed to the samples generated.

	sflow_sampling_rate?: int

	// Specifies the action that the system takes when it does not detect any traffic on this VLAN, and the C(fail_safe_timeout) has expired.

	fail_safe_action?: string

	// Specifies the maximum interval in seconds between two pollings.

	sflow_poll_interval?: int

	// When C(yes), specifies that the system verifies that the return route to an initial packet is the same VLAN from which the packet originated.
	// The system performs this verification only if the C(auto_last_hop) option is C(no).

	source_check?: bool

	// Specifies a list of untagged interfaces and trunks that you want to configure for the VLAN.
	// This parameter is mutually exclusive with the C(tagged_interfaces) and C(interfaces) parameters.

	untagged_interfaces?: [..._]

	// Specifies how the disaggregator (DAG) distributes received tunnel-encapsulated packets to TMM instances. Select C(inner) to distribute packets based on information in inner headers. Select C(outer) to distribute packets based on information in outer headers without inspecting inner headers.
	// When creating a new VLAN, if this parameter is not specified, the default of C(outer) is used.
	// This parameter is not supported on Virtual Editions of BIG-IP.

	dag_tunnel?: string

	// The description to give to the VLAN.

	description?: string

	// Interfaces that you want added to the VLAN. This can include both tagged and untagged interfaces as the C(tagging) parameter specifies.
	// This parameter is mutually exclusive with the C(untagged_interfaces) and C(tagged_interfaces) parameters.

	interfaces?: [..._]

	// Specifies the maximum transmission unit (MTU) for traffic on this VLAN. When creating a new VLAN, if this parameter is not specified, the default value used will be C(1500).
	// This number must be between 576 to 9198.

	mtu?: int

	// Tag number for the VLAN. The tag number can be any integer between 1 and 4094. The system automatically assigns a tag number if you do not specify a value.

	tag?: int

	// Specifies a list of tagged interfaces and trunks that you want to configure for the VLAN. Use tagged interfaces or trunks when you want to assign a single interface or trunk to multiple VLANs.
	// This parameter is mutually exclusive with the C(untagged_interfaces) and C(interfaces) parameters.

	tagged_interfaces?: [..._]

	// Specifies how the traffic on the VLAN will be disaggregated. The value selected determines the traffic disaggregation method. You can choose to disaggregate traffic based on C(source-address) (the source IP address), C(destination-address) (destination IP address), or C(default), which specifies that the default CMP hash uses L4 ports.
	// When creating a new VLAN, if this parameter is not specified, the default of C(default) is used.

	cmp_hash?: string

	// Specifies the number of seconds that a system can run without detecting network traffic on this VLAN before it takes the C(fail_safe_action).

	fail_safe_timeout?: int

	// The VLAN to manage. If the special VLAN C(ALL) is specified with the C(state) value of C(absent) then all VLANs will be removed.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// The state of the VLAN on the system. When C(present), guarantees that the VLAN exists with the provided attributes. When C(absent), removes the VLAN from the system.

	state?: string
}

bigip_remote_role :: {

	// Specifies the name of the remote role.

	name: string

	// Specifies the accessible partitions for the account.
	// This parameter supports the reserved names C(all) and C(Common), as well as specific partitions a user may access.
	// Users who have access to a partition can operate on objects in that partition, as determined by the permissions conferred by the user's C(assigned_role).
	// When creating a new remote role, if this parameter is not specified, the default is C(all).

	partition_access?: string

	// Enables or disables remote access for the specified group of remotely authenticated users.
	// When creating a new remote role, if this parameter is not specified, the default is C(yes).

	remote_access?: bool

	// When C(present), guarantees that the remote role exists.
	// When C(absent), removes the remote role from the system.

	state?: string

	// Specifies terminal-based accessibility for remote accounts not already explicitly assigned a user role.
	// Common values for this include C(tmsh) and C(none), however custom values may also be specified.
	// When creating a new remote role, if this parameter is not specified, the default is C(none).

	terminal_access?: string

	// Specifies the authorization (level of access) for the account.
	// When creating a new remote role, if this parameter is not provided, the default is C(none).
	// The C(partition_access) parameter controls which partitions the account can access.
	// The chosen role may affect the partitions that one is allowed to specify. Specifically, roles such as C(administrator), C(auditor) and C(resource-administrator) required a C(partition_access) of C(all).
	// A set of pre-existing roles ship with the system. They are C(none), C(guest), C(operator), C(application-editor), C(manager), C(certificate-manager), C(irule-manager), C(user-manager), C(resource-administrator), C(auditor), C(administrator), C(firewall-manager).

	assigned_role?: string

	// Specifies the user account attributes saved in the group, in the format C(cn=, ou=, dc=).
	// When creating a new remote role, this parameter is required.

	attribute_string?: string

	// Specifies the order of the line in the file C(/config/bigip/auth/remoterole).
	// The LDAP and Active Directory servers read this file line by line.
	// The order of the information is important; therefore, F5 recommends that you set the first line at 1000. This allows you, in the future, to insert lines before the first line.
	// When creating a new remote role, this parameter is required.

	line_order?: int
}

bigip_apm_policy_import :: {

	// The name of the APM policy or APM access profile to create or override.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// Full path to a file to be imported into the BIG-IP APM.

	source?: string

	// Specifies the type of item to export from device.

	type?: string

	// When set to C(yes) any existing policy with the same name will be overwritten by the new import.
	// If policy does not exist this setting is ignored.

	force?: bool
}

bigip_device_connectivity :: {

	// Specifies whether mirroring occurs within the same cluster or between different clusters on a multi-bladed system.
	// This parameter is only supported on platforms that have multiple blades, such as Viprion hardware. It is not supported on VE.

	cluster_mirroring?: string

	// When C(yes), ensures that the Failover Multicast configuration is enabled and if no further multicast configuration is provided, ensures that C(multicast_interface), C(multicast_address) and C(multicast_port) are the defaults specified in each option's description. When C(no), ensures that Failover Multicast configuration is disabled.

	failover_multicast?: bool

	// Specifies the primary IP address for the system to use to mirror connections.

	mirror_primary_address?: string

	// Port for the system to send multicast messages associated with failover. When C(failover_multicast) is C(yes) and this option is not provided, a default of C(62960) will be used. This value must be between 0 and 65535.

	multicast_port?: int

	// Desired addresses to use for failover operations. Options C(address) and C(port) are supported with dictionary structure where C(address) is the local IP address that the system uses for failover operations. Port specifies the port that the system uses for failover operations. If C(port) is not specified, the default value C(1026) will be used.  If you are specifying the (recommended) management IP address, use 'management-ip' in the address field.

	unicast_failover?: [..._]

	// Local IP address that the system uses for ConfigSync operations.

	config_sync_ip?: string

	// Specifies the secondary IP address for the system to use to mirror connections.

	mirror_secondary_address?: string

	// IP address for the system to send multicast messages associated with failover. When C(failover_multicast) is C(yes) and this option is not provided, a default of C(224.0.0.245) will be used.

	multicast_address?: string

	// Interface over which the system sends multicast messages associated with failover. When C(failover_multicast) is C(yes) and this option is not provided, a default of C(eth0) will be used.

	multicast_interface?: string
}

bigip_device_syslog :: {

	// Specifies the highest level of mail log messages to include in the system log.

	mail_to?: string

	// Specifies the highest level of system messages to include in the system log.

	messages_to?: string

	// Specifies the lowest level of user account messages to include in the system log.

	user_log_from?: string

	// Specifies the lowest level of messages about time-based scheduling to include in the system log.

	cron_from?: string

	// Enables or disables the ISO date format for messages in the log files.

	iso_date?: bool

	// Specifies the highest level of kernel messages to include in the system log.

	kern_to?: string

	// Specifies the highest error level for messages from the local6 facility to include in the log.

	local6_to?: string

	// Specifies the lowest level of system messages to include in the system log.

	messages_from?: string

	// Specifies the highest level of user account messages to include in the system log.

	user_log_to?: string

	// Specifies the highest level of messages about user authentication to include in the system log.

	auth_priv_to?: string

	// Enables or disables logging emergency syslog messages to the console.

	console_log?: bool

	// Specifies the highest level of messages about daemon performance to include in the system log.

	daemon_to?: string

	// Syslog-NG configuration to include in the device syslog config.

	include?: string

	// Specifies the lowest level of kernel messages to include in the system log.

	kern_from?: string

	// Specifies the lowest error level for messages from the local6 facility to include in the log.

	local6_from?: string

	// Specifies the lowest level of mail log messages to include in the system log.

	mail_from?: string

	// Specifies the lowest level of messages about user authentication to include in the system log.

	auth_priv_from?: string

	// Specifies the lowest level of messages about daemon performance to include in the system log.

	daemon_from?: string

	// Specifies the highest level of messages about time-based scheduling to include in the system log.

	cron_to?: string
}

bigip_log_destination :: {

	// When C(type) is C(remote-syslog), specifies the management port log destination, which will be used to forward the logs to a single log server, or a remote high-speed log destination, which will be used to forward the logs to a pool of remote log servers.
	// When C(type) is C(splunk) or C(arcsight), specifies the log destination to which logs are forwarded. This log destination may be a management port destination, a remote high-speed log destination, or a remote Syslog destination which is configured to send logs to an ArcSight or Splunk server.
	// When creating a new log destination and C(type) is C(remote-syslog), C(splunk), or C(arcsight), this parameter is required.

	forward_to?: string

	// Specifies the port of the IP address that will receive messages from the specified local Log Destination.
	// This parameter is only available when C(type) is C(management-port).
	// When creating a new log destination and C(type) is C(management-port), this parameter is required.

	port?: int

	// Specifies the method to use to format the logs associated with the remote Syslog log destination.
	// When creating a new log destination (and C(type) is C(remote-syslog)), if this parameter is not specified, the default is C(bsd-syslog).
	// The C(syslog) and C(rfc5424) choices are two ways of saying the same thing.
	// The C(bsd-syslog) and C(rfc3164) choices are two ways of saying the same thing.

	syslog_format?: string

	// Enter the time (in seconds) between each transmission of IPFIX templates to the pool of IPFIX collectors.
	// The logging destination periodically retransmits all of its IPFIX templates at the interval you set in this field. These retransmissions are helpful for UDP, a lossy transport mechanism.
	// This parameter is only available when C(type) is C(ipfix).

	template_retransmit_interval?: int

	// Is a transport profile based on either TCP or UDP.
	// This profile defines the TCP or UDP options used to send IP-traffic logs to the pool of collectors.
	// This parameter is only available when C(type) is C(ipfix).

	transport_profile?: string

	// Specifies the type of log destination.
	// Once created, this parameter cannot be changed.

	type: string

	// The description of the log destination.

	description?: string

	// Device partition to manage resources on.

	partition?: string

	// This parameter is only available when C(type) is C(remote-high-speed-log).
	// Deprecated. Use the equivalent top-level parameters instead.

	pool_settings?: {...}

	// When C(present), ensures that the resource exists.
	// When C(absent), ensures the resource is removed.

	state?: string

	// If the C(transport_profile) is a TCP profile, you can use this field to choose a Secure Socket Layer (SSL) profile for sending logs to the IPFIX collectors.
	// An SSL server profile defines how to communicate securely over SSL or Transport Layer Security (TLS).
	// This parameter is only available when C(type) is C(ipfix).

	server_ssl_profile?: string

	// Specifies the IP address that will receive messages from the specified local Log Destination.
	// This parameter is only available when C(type) is C(management-port).
	// When creating a new log destination and C(type) is C(management-port), this parameter is required.

	address?: string

	// Specifies the distribution method used by the Remote High Speed Log destination to send messages to pool members.
	// When C(adaptive), connections to pool members will be added as required to provide enough logging bandwidth. This can have the undesirable effect of logs accumulating on only one pool member when it provides sufficient logging bandwidth on its own.
	// When C(balanced), sends each successive log to a new pool member, balancing the logs among them according to the pool's load balancing method.
	// When C(replicated), replicates each log to all pool members, for redundancy.
	// When creating a new log destination and C(type) is C(remote-high-speed-log), if this parameter is not specified, the default is C(adaptive).

	distribution?: string

	// When C(type) is C(remote-high-speed-log), specifies the existing pool of remote high-speed log servers where logs will be sent.
	// When C(type) is C(ipfix), specifies the existing LTM pool of remote IPFIX collectors. Any BIG-IP application that uses this log destination sends its IP-traffic logs to this pool of collectors.
	// When creating a new destination and C(type) is C(remote-high-speed-log) or C(ipfix), this parameter is required.

	pool?: string

	// When C(type) is C(remote-high-speed-log), specifies the protocol for the system to use to send logs to the pool of remote high-speed log servers, where the logs are stored.
	// When C(type) is C(ipfix), can be IPFIX or Netflow v9, depending on the type of collectors you have in the pool that you specify.
	// When C(type) is C(management-port), specifies the protocol used to send messages to the specified location.
	// When C(type) is C(management-port), only C(tcp) and C(udp) are valid values.

	protocol?: string

	// Specifies the name of the log destination.

	name: string

	// This parameter is only available when C(type) is C(remote-syslog).
	// Deprecated. Use the equivalent top-level parameters instead.

	syslog_settings?: {...}

	// Enter the time (in seconds) that the BIG-IP device should pause between deleting an obsolete IPFIX template and reusing its template ID.
	// This feature is useful for systems where you use iRules to create customized IPFIX templates.

	template_delete_delay?: int
}

bigip_management_route :: {

	// Device partition to manage resources on.

	partition?: string

	// When C(present), ensures that the resource exists.
	// When C(absent), ensures the resource is removed.

	state?: string

	// Description of the management route.

	description?: string

	// Specifies that the system forwards packets to the destination through the gateway with the specified IP address.

	gateway?: string

	// Specifies the name of the management route.

	name: string

	// The subnet and netmask to be used for the route.
	// To specify that the route is the default route for the system, provide the value C(default).
	// Only one C(default) entry is allowed.
	// This parameter cannot be changed after it is set. Therefore, if you do need to change it, it is required that you delete and create a new route.

	network?: string
}

bigip_message_routing_route :: {

	// Device partition to create route object on.

	partition?: string

	// Specifies the method to use when selecting a peer from the provided list of C(peers).

	peer_selection_mode?: string

	// Specifies the source address of the route.
	// Setting the attribute to an empty string will create a wildcard matching all message source-addresses, which is the default when creating a new route.

	src_address?: string

	// When C(present), ensures that the route exists.
	// When C(absent), ensures the route is removed.

	state?: string

	// Parameter used to specify the type of the route to manage.
	// Default setting is C(generic) with more options added in future.

	type?: string

	// The user defined description of the static route.

	description?: string

	// Specifies the destination address of the route.
	// Setting the attribute to an empty string will create a wildcard matching all message destination-addresses, which is the default when creating a new route.

	dst_address?: string

	// Specifies the name of the static route.

	name: string

	// Specifies a list of ltm messagerouting-peer objects.
	// The specified peer must be on the same partition as the route.

	peers?: [..._]
}

bigip_password_policy :: {

	// Specifies the minimum number of characters in a valid password.
	// This value must be between 6 and 255.

	min_length?: int

	// Specifies the number of lowercase alpha characters that must be present in a password for the password to be valid.

	required_lowercase?: int

	// Specifies the number of numeric characters that must be present in a password for the password to be valid.

	required_numeric?: int

	// Specifies the number of special characters that must be present in a password for the password to be valid.

	required_special?: int

	// Specifies the number of uppercase alpha characters that must be present in a password for the password to be valid.

	required_uppercase?: int

	// Specifies the number of consecutive unsuccessful login attempts that the system allows before locking out the user.
	// Specify zero (0) to disable this parameter.

	max_login_failures?: int

	// Specifies the maximum number of days a password is valid.

	max_duration?: int

	// Specifies the minimum number of days a password is valid.

	min_duration?: int

	// Specifies whether the user has configured the BIG-IP system to remember a password on a specific computer and how many passwords to remember.

	password_memory?: int

	// Enables or disables the password policy on the BIG-IP system.

	policy_enforcement?: bool

	// Specifies the number of days before a password expires.
	// Based on this value, the BIG-IP system automatically warns users when their password is about to expire.

	expiration_warning?: int
}

bigip_ucs_fetch :: {

	// If C(no), the file will only be transferred if the destination does not exist.

	force?: bool

	// The name of the UCS file to create on the remote server for downloading

	src?: string

	// Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.

	backup?: bool

	// Creates the UCS based on the value of C(src) if the file does not already exist on the remote system.

	create_on_missing?: bool

	// A directory to save the UCS file into.

	dest: string

	// Password to use to encrypt the UCS file if desired.

	encryption_password?: string

	// Make the module fail if the UCS file on the remote system is missing.

	fail_on_missing?: bool
}

bigip_firewall_log_profile :: {

	// Port Misuse log configuration.

	port_misuse?: {...}

	// When C(state) is C(present), ensures the resource exists.
	// When C(state) is C(absent), ensures that resource is removed. Attempts to remove built-in system profiles are ignored and no change is returned.

	state?: string

	// Description of the log profile.

	description?: string

	// Configures DoS related settings of the log profile.

	dos_protection?: {...}

	// Configures IP Intelligence related settings of the log profile.

	ip_intelligence?: {...}

	// Specifies the name of the log profile.

	name: string

	// Device partition to create log profile on.
	// Parameter also used when specifying names for log publishers, unless log publisher names are in fullpath format.

	partition?: string
}

bigip_firewall_log_profile_network :: {

	// Modify log settings for logging of TCP events on the client side.

	log_tcp_events?: {...}

	// When C(state) is C(present), ensures the resource exists.
	// Only built-in profile that allows updating network log settings is global-network, attempts to do so on other built-in profiles will be ignored.
	// When C(state) is C(absent), ensures that resource is removed.
	// The C(absent) state is ignored for global-network log profile.

	state?: string

	// Modify log settings for ACL rules configured with a reject action.

	log_matches_reject_rule?: {...}

	// Specifies the name of the log publisher used for Network events.
	// To specify the log_publisher on a different partition from the AFM log profile, specify the name in fullpath format, e.g. C(/Foobar/log-publisher), otherwise the partition for log publisher is inferred from C(partition) module parameter.

	log_publisher?: string

	// Specifies the name of the AFM log profile to be updated.

	profile_name: string

	// Specifies the delimiter string when using a C(log_storage_format) of C(field-list).
	// When creating a new profile, if this parameter is not specified, the default value of C(,) (the comma character) will be used.
	// This option is valid when the C(log_storage_format) is set to C(field-list). It will be ignored otherwise.
	// Depending on the delimiter used, it may be necessary to wrap the delimiter in quotes to prevent YAML errors from occurring.
	// The special character C($) should not be used, and will raise an error if used, as it is reserved for internal use.
	// The maximum length allowed for this parameter is C(31) characters.

	log_format_delimiter?: string

	// Modify log settings for ACL rules configured with a drop action.

	log_matches_drop_rule?: {...}

	// This option is used to enable or disable the logging of translated (i.e server side) fields in ACL match and TCP events.
	// Translated fields include (but are not limited to) source address/port, destination address/port, IP protocol, route domain, and VLAN.

	log_translation_fields?: bool

	// Defines a rate limit for all combined network firewall log messages per second. Beyond this rate limit, log messages are not logged.
	// To specify an indefinite rate, use the value C(indefinite).
	// If specifying a numeric rate, the value must be between C(1) and C(4294967295).

	rate_limit?: string

	// Specifies a set of fields to be logged.
	// This option is valid when the C(log_storage_format) is set to C(field-list). It will be ignored otherwise.
	// The order of the list is important as the server displays the selected traffic items in the log sequentially according to it.

	log_message_fields?: [..._]

	// Specifies the type of the storage format.
	// When creating a new log profile, if this parameter is not specified, the default is C(none).
	// When C(field-list), specifies that the log displays only the items you specify in the C(log_message_fields) list with C(log_format_delimiter) as the delimiter between the items.
	// When C(none), the messages will be logged in the default format, which is C("management_ip_address", "bigip_hostname","context_type", "context_name","src_geo","src_ip", "dest_geo","dest_ip","src_port", "dest_port","vlan","protocol","route_domain", "translated_src_ip", "translated_dest_ip", "translated_src_port","translated_dest_port", "translated_vlan","translated_ip_protocol", "translated_route_domain", "acl_policy_type", "acl_policy_name","acl_rule_name","action", "drop_reason","sa_translation_type", "sa_translation_pool","flow_id", "source_user", "source_fqdn","dest_fqdn").

	log_storage_format?: string

	// Modify log settings for logging of TCP error packets.

	log_tcp_errors?: {...}

	// Device partition to create log profile on.
	// Parameter also used when specifying names for log publishers, unless log publisher names are in fullpath format.

	partition?: string

	// Modify log settings for logging of IP error packets.

	log_ip_errors?: {...}

	// Modify log settings for ACL rules configured with an "accept" or "accept decisively" action.

	log_matches_accept_rule?: {...}
}

bigip_gtm_virtual_server :: {

	// Specifies the IP Address of the virtual server.
	// When creating a new GTM virtual server, this parameter is required.

	address?: string

	// Specifies resource thresholds or limit requirements at the server level.
	// When you enable one or more limit settings, the system then uses that data to take servers in and out of service.
	// You can define limits for any or all of the limit settings. However, when a server does not meet the resource threshold limit requirement, the system marks the entire server as unavailable and directs load-balancing traffic to another resource.
	// The limit settings available depend on the type of server.

	limits?: {...}

	// Specifies a link to assign to the server or virtual server.

	link?: string

	// Specifies the name of the server that the virtual server is associated with.

	server_name?: string

	// When C(present), ensures that the resource exists.
	// When C(absent), ensures the resource is removed.

	state?: string

	// Specifies the virtual servers on which the current virtual server depends.
	// If any of the specified servers are unavailable, the current virtual server is also listed as unavailable.

	virtual_server_dependencies?: [..._]

	// Specifies, if you activate more than one health monitor, the number of health monitors that must receive successful responses in order for the link to be considered available.

	availability_requirements?: {...}

	// Specifies the health monitors that the system currently uses to monitor this resource.
	// When C(availability_requirements.type) is C(require), you may only have a single monitor in the C(monitors) list.

	monitors?: [..._]

	// Specifies the name of the virtual server.

	name?: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies the service port number for the virtual server or pool member. For example, the HTTP service is typically port 80.
	// To specify all ports, use an C(*).
	// When creating a new GTM virtual server, if this parameter is not specified, a default of C(*) will be used.

	port?: int

	// Specifies the translation IP address for the virtual server.
	// To unset this parameter, provide an empty string (C("")) as a value.
	// When creating a new GTM virtual server, if this parameter is not specified, a default of C(::) will be used.

	translation_address?: string

	// Specifies the translation port number or service name for the virtual server.
	// To specify all ports, use an C(*).
	// When creating a new GTM virtual server, if this parameter is not specified, a default of C(*) will be used.

	translation_port?: string
}

bigip_monitor_snmp_dca :: {

	// Specifies the community name that the system must use to authenticate with the host server through SNMP. When creating a new monitor, the default value is C(public). Note that this value is case sensitive.

	community?: string

	// Specifies the coefficient that the system uses to calculate the weight of the CPU threshold in the dynamic ratio load balancing algorithm. When creating a new monitor, the default is C(1.5).

	cpu_coefficient?: string

	// The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(snmp_dca) parent on the C(Common) partition.

	parent?: string

	// Specifies the SNMP agent running on the monitored server. When creating a new monitor, the default is C(UCD) (UC-Davis).

	agent_type?: string

	// Specifies the maximum acceptable CPU usage on the target server. When creating a new monitor, the default is C(80) percent.

	cpu_threshold?: int

	// Specifies descriptive text that identifies the monitor.

	description?: string

	// Specifies the number of seconds the target has in which to respond to the monitor request. When creating a new monitor, the default is C(30) seconds. If the target responds within the set time period, it is considered 'up'. If the target does not respond within the set time period, it is considered 'down'. When this value is set to 0 (zero), the system uses the interval from the parent monitor. Note that C(timeout) and C(time_until_up) combine to control when a resource is set to up.

	timeout?: int

	// Specifies the coefficient that the system uses to calculate the weight of the memory threshold in the dynamic ratio load balancing algorithm. When creating a new monitor, the default is C(1.0).

	memory_coefficient?: string

	// Specifies the maximum acceptable memory usage on the target server. When creating a new monitor, the default is C(70) percent.

	memory_threshold?: int

	// Monitor name.

	name: string

	// Specifies the version of SNMP that the host server uses. When creating a new monitor, the default is C(v1). When C(v1), specifies that the host server uses SNMP version 1. When C(v2c), specifies that the host server uses SNMP version 2c.

	version?: string

	// When C(present), ensures that the monitor exists.
	// When C(absent), ensures the monitor is removed.

	state?: string

	// Specifies the number of seconds to wait after a resource first responds correctly to the monitor before setting the resource to 'up'. During the interval, all responses from the resource must be correct. When the interval expires, the resource is marked 'up'. A value of 0, means that the resource is marked up immediately upon receipt of the first correct response. When creating a new monitor, the default is C(0).

	time_until_up?: int

	// Specifies the coefficient that the system uses to calculate the weight of the disk threshold in the dynamic ratio load balancing algorithm. When creating a new monitor, the default is C(2.0).

	disk_coefficient?: string

	// Specifies the maximum acceptable disk usage on the target server. When creating a new monitor, the default is C(90) percent.

	disk_threshold?: int

	// Specifies, in seconds, the frequency at which the system issues the monitor check when either the resource is down or the status of the resource is unknown. When creating a new monitor, the default is C(10).

	interval?: int

	// Device partition to manage resources on.

	partition?: string
}

bigip_pool :: {

	// Monitor rule type when C(monitors) is specified.
	// When creating a new pool, if this value is not specified, the default of 'and_list' will be used.
	// When C(single) ensures that all specified monitors are checked, but additionally includes checks to make sure you only specified a single monitor.
	// When C(and_list) ensures that B(all) monitors are checked.
	// When C(m_of_n) ensures that C(quorum) of C(monitors) are checked. C(m_of_n) B(requires) that a C(quorum) of 1 or greater be set either in the playbook, or already existing on the device.
	// Both C(single) and C(and_list) are functionally identical since BIG-IP considers all monitors as "a list".

	monitor_type?: string

	// Device partition to manage resources on.

	partition?: string

	// Monitor quorum value when C(monitor_type) is C(m_of_n).
	// Quorum must be a value of 1 or greater when C(monitor_type) is C(m_of_n).

	quorum?: int

	// List of pool definitions to be created, modified or removed.
	// When using C(aggregates) if one of the aggregate definitions is invalid, the aggregate run will fail, indicating the error it last encountered.
	// The module will C(NOT) rollback any changes it has made prior to encountering the error.
	// The module also will not indicate what changes were made prior to failure, therefore it is strongly advised to run the module in check mode to make basic validation, prior to module execution.

	aggregate?: [..._]

	// Arbitrary key/value pairs that you can attach to a pool. This is useful in situations where you might want to annotate a pool to me managed by Ansible.
	// Key names will be stored as strings; this includes names that are numbers.
	// Values for all of the keys will be stored as strings; this includes values that are numbers.
	// Data will be persisted, not ephemeral.

	metadata?: _

	// Remove pools not defined in the C(aggregate) parameter.
	// This operation is all or none, meaning that it will stop if there are some pools that cannot be removed.

	replace_all_with?: bool

	// Load balancing method. When creating a new pool, if this value is not specified, the default of C(round-robin) will be used.

	lb_method?: string

	// Monitor template name list. If the partition is not provided as part of the monitor name, then the C(partition) option will be used instead.

	monitors?: [..._]

	// Specifies whether the system load balances traffic according to the priority number assigned to the pool member.
	// When creating a new pool, if this parameter is not specified, the default of C(0) will be used.
	// To disable this setting, provide the value C(0).
	// Once you enable this setting, you can specify pool member priority when you create a new pool or on a pool member's properties screen.
	// The system treats same-priority pool members as a group.
	// To enable priority group activation, provide a number from C(0) to C(65535) that represents the minimum number of members that must be available in one priority group before the system directs traffic to members in a lower priority group.
	// When a sufficient number of members become available in the higher priority group, the system again directs traffic to the higher priority group.

	priority_group_activation?: int

	// Sets the action to take when node goes down in pool.

	service_down_action?: string

	// Specifies descriptive text that identifies the pool.

	description?: string

	// Pool name

	name: string

	// When C(present), guarantees that the pool exists with the provided attributes.
	// When C(absent), removes the pool from the system.

	state?: string

	// Sets the number of times the system tries to contact a pool member after a passive failure.

	reselect_tries?: int

	// Sets the ramp-up time (in seconds) to gradually ramp up the load on newly added or freshly detected up pool members.

	slow_ramp_time?: int
}

bigip_snat_pool :: {

	// A general description of the SNAT pool, provided by the user for their benefit. It is optional.

	description?: string

	// List of members to put in the SNAT pool. When a C(state) of present is provided, this parameter is required. Otherwise, it is optional.
	// The members can be either IP addresses, or names of the SNAT translation objects.

	members?: [..._]

	// The name of the SNAT pool.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// Whether the SNAT pool should exist or not.

	state?: string
}

bigip_ssl_key :: {

	// Device partition to manage resources on.

	partition?: string

	// Passphrase on key.

	passphrase?: string

	// When C(present), ensures that the key is uploaded to the device. When C(absent), ensures that the key is removed from the device. If the key is currently in use, the module will not be able to remove the key.

	state?: string

	// Sets the contents of a key directly to the specified value. This is used with lookup plugins or for anything with formatting or templating. This must be provided when C(state) is C(present).

	content?: string

	// The name of the key.

	name: string
}

bigip_firewall_policy :: {

	// The description to attach to the policy.
	// This parameter is only supported on versions of BIG-IP >= 12.1.0. On earlier versions it will simply be ignored.

	description?: string

	// The name of the policy to create.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies a list of rules that you want associated with this policy. The order of this list is the order they will be evaluated by BIG-IP. If the specified rules do not exist (for example when creating a new policy) then they will be created.
	// Rules specified here, if they do not exist, will be created with "default deny" behavior. It is expected that you follow-up this module with the actual configuration for these rules.
	// The C(bigip_firewall_rule) module can be used to also create, as well as edit, existing and new rules.

	rules?: [..._]

	// When C(state) is C(present), ensures that the policy exists.
	// When C(state) is C(absent), ensures that the policy is removed.

	state?: string
}

bigip_qkview :: {

	// If C(no), the file will only be transferred if the destination does not exist.

	force?: bool

	// Max file size, in bytes, of the qkview to create. By default, no max file size is specified.

	max_file_size?: int

	// When C(True), includes the ASM request log data. When C(False), excludes the ASM request log data.

	asm_request_log?: bool

	// Include complete information in the qkview.

	complete_information?: bool

	// Destination on your local filesystem when you want to save the qkview.

	dest: string

	// Exclude various file from the qkview.

	exclude?: [..._]

	// Exclude core files from the qkview.

	exclude_core?: bool

	// Name of the qkview to create on the remote BIG-IP.

	filename?: string
}

bigip_software_image :: {

	// When C(yes), will upload the file every time and replace the file on the device.
	// When C(no), the file will only be uploaded if it does not already exist.
	// Generally should be C(yes) only in cases where you have reason to believe that the image was corrupted during upload.

	force?: bool

	// The image to put on the remote device.
	// This may be an absolute or relative location on the Ansible controller.
	// Image names, whether they are base ISOs or hotfix ISOs, B(must) be unique.

	image?: string

	// When C(present), ensures that the image is uploaded.
	// When C(absent), ensures that the image is removed.

	state?: string
}

bigip_timer_policy :: {

	// Specifies descriptive text that identifies the timer policy.

	description?: string

	// Specifies the name of the timer policy.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// Rules that you want assigned to the timer policy

	rules?: [..._]

	// When C(present), ensures that the resource exists.
	// When C(absent), ensures the resource is removed.

	state?: string
}

bigip_appsvcs_extension :: {

	// Declaration of tenants configured on the system.
	// This parameter is most often used along with the C(file) or C(template) lookup plugins. Refer to the examples section for correct usage.
	// For anything advanced or with formatting consider using the C(template) lookup.
	// This can additionally be used for specifying application service configurations directly in YAML, however that is not an encouraged practice and, if used at all, should only be used for the absolute smallest of configurations to prevent your Playbooks from becoming too large.
	// If you C(content) includes encrypted values (such as ciphertexts, passphrases, etc), the returned C(changed) value will always be true.
	// If you are using the C(to_nice_json) filter, it will cause this module to fail because the purpose of that filter is to format the JSON to be human-readable and this process includes inserting "extra characters that break JSON validators.

	content: _

	// Force updates a declaration.
	// This parameter should be used in cases where your declaration includes items that are encrypted or in cases (such as WAF Policies) where you want a large reload to take place.

	force?: bool

	// When C(state) is C(present), ensures the configuration exists.
	// When C(state) is C(absent), ensures that the configuration is removed.

	state?: string

	// A list of tenants that you want to remove.
	// This parameter is only relevant when C(state) is C(absent). It will be ignored when C(state) is C(present).
	// A value of C(all) will remove all tenants.
	// Tenants can be specified as a list as well to remove only specific tenants.

	tenants?: _
}

bigip_firewall_dos_profile :: {

	// The default whitelist address list for the system to use to determine which IP addresses are legitimate.
	// The system does not examine traffic from the IP addresses in the list when performing DoS prevention.
	// To define a new whitelist, use the C(bigip_firewall_address_list) module.

	default_whitelist?: string

	// The description of the DoS profile.

	description?: string

	// Specifies the name of the profile.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// When C(present), ensures that the resource exists.
	// When C(absent), ensures the resource is removed.

	state?: string

	// Specifies the threshold sensitivity for the DoS profile.
	// Thresholds for detecting attacks are higher when sensitivity is C(low), and lower when sensitivity is C(high).
	// When creating a new profile, if this parameter is not specified, the default is C(medium).

	threshold_sensitivity?: string
}

bigip_message_routing_router :: {

	// Specifies the maximum time in milliseconds that a message will be held on the standby device as it waits for the active device to route the message.
	// Messages on the standby device held for longer then the configurable sweeper interval, will be dropped.
	// The accepted range is between 0 and 4294967295 inclusive.

	mirrored_msg_sweeper_interval?: int

	// Specifies the traffic-group of the router profile.
	// Setting the C(traffic_group) to an empty string value C("") will cause the device to inherit from containing folder, which means the value of C(inherited_traffic_group) on device will be C(yes).

	traffic_group?: string

	// If C(yes), the router will route a message to an existing connection on the same TMM as the message was received on.

	use_local_connection?: bool

	// When set to C(yes) the C(traffic_group) will be inherited from the containing folder. When not specified the system sets this to C(no) when creating new router profile.

	inherited_traffic_group?: bool

	// The maximum number of bytes worth of pending messages that will be held while waiting for a connection to a peer to be created. Once reached, any additional messages to the peer will be flagged as undeliverable and returned to the originator.
	// The accepted range is between 0 and 4294967295 inclusive.

	max_pending_bytes?: int

	// Enables or disables state mirroring. State mirroring can be used to maintain the same state information in the standby unit that is in the active unit.

	mirror?: bool

	// When C(present), ensures that the router profile exists.
	// When C(absent), ensures the router profile is removed.

	state?: string

	// Specifies the name of the router profile.

	name: string

	// Device partition to create router profile on.

	partition?: string

	// Specifies a list of static routes for the router instance to use.
	// The route must be on the same partition as router profile.

	routes?: [..._]

	// The parent template of this router profile. Once this value has been set, it cannot be changed.
	// The default values are set by the system if not specified and they correspond to the router type created, ie. C(/Common/messagerouter) for C(generic) C(type) and so on.

	parent?: string

	// The user defined description of the router profile.

	description?: string

	// When C(yes), the remote port on clientside connections ie. connections where the peer connected to the BIG-IP is ignored when searching for an existing connection.

	ignore_client_port?: bool

	// The maximum number of pending messages that will be held while waiting for a connection to a peer to be created. Once reached, any additional messages to the peer will be flagged as undeliverable and returned to the originator.
	// The accepted range is between 0 and 65535 inclusive.

	max_pending_messages?: int

	// Sets the maximum number of time a message may be resubmitted for rerouting by the C(MR::retry) iRule command.
	// The accepted range is between 0 and 4294967295 inclusive.

	max_retries?: int

	// Parameter used to specify the type of the router profile to manage.
	// Default setting is C(generic) with more options added in future.

	type?: string
}

bigiq_application_https_waf :: {

	// Collects statistics of the BIG-IP that the application is deployed to.
	// This parameter is only relevant when specifying a C(service_environment) which is a BIG-IP; not an SSG.

	add_analytics?: bool

	// Description of the application.

	description?: string

	// Specifies host names that are used to access the web application that this security policy protects.
	// When creating a new application, this parameter is required.

	domain_names?: [..._]

	// The state of the resource on the system.
	// When C(present), guarantees that the resource exists with the provided attributes.
	// When C(absent), removes the resource from the system.

	state?: string

	// If the module should wait for the application to be created, deleted or updated.

	wait?: bool

	// Specifies the SSL profile for managing client-side SSL traffic.

	client_ssl_profile?: {...}

	// Settings to configure the virtual which will receive the inbound connection.
	// This virtual will be used to host the HTTPS endpoint of the application.
	// Traffic destined to the C(redirect_virtual) will be offloaded to this parameter to ensure that proper redirection from insecure, to secure, occurs.

	inbound_virtual?: {...}

	// Name of the new application.

	name: string

	// Settings to configure the virtual which will receive the connection to be redirected.
	// This virtual will be used to host the HTTP endpoint of the application.
	// Traffic destined to this parameter will be offloaded to the C(inbound_virtual) parameter to ensure that proper redirection from insecure, to secure, occurs.

	redirect_virtual?: {...}

	// A list of servers that the application is hosted on.
	// If you are familiar with other BIG-IP setting, you might also refer to this list as the list of pool members.
	// When creating a new application, at least one server is required.

	servers?: [..._]

	// Specifies the name of service environment that the application will be deployed to.
	// When creating a new application, this parameter is required.

	service_environment?: string
}

bigiq_regkey_license :: {

	// A key that signifies that you accept the F5 EULA for this license.
	// A copy of the EULA can be found here https://askf5.f5.com/csp/article/K12902
	// This is required when C(state) is C(present).

	accept_eula?: bool

	// Description of the license.

	description?: string

	// The license key to put in the pool.

	license_key: string

	// The registration key pool that you want to place the license in.
	// You must be mindful to name your registration pools unique names. While BIG-IQ does not require this, this module does. If you do not do this, the behavior of the module is undefined and you may end up putting licenses in the wrong registration key pool.

	regkey_pool: string

	// The state of the regkey license in the pool on the system.
	// When C(present), guarantees that the license exists in the pool.
	// When C(absent), removes the license from the pool.

	state?: string
}

bigip_apm_acl :: {

	// Device partition to manage resources on.

	partition?: string

	// Specifies whether alphabetic case is considered when matching paths in an access control entry.

	path_match_case?: bool

	// When C(state) is C(present), ensures that the ACL exists.
	// When C(state) is C(absent), ensures that the ACL is removed.

	state?: string

	// Specifies the type of ACL to create.
	// Once the type is set it cannot be changed.

	type?: string

	// Specifies a number that indicates the order of this ACL relative to other ACLs.
	// When not set, the device will always place the ACL after the last one created.
	// The lower number the higher the ACL will be in the general order, with lowest number C(0) being the topmost one.
	// Valid range of values is between C(0) and C(65535) inclusive.

	acl_order?: int

	// User created ACL description.

	description?: string

	// Access control entries that define the ACL matching and its respective behavior.
	// The order in which the rules are placed as arguments to this parameter, determines their order in the ACL, in other words changing the order of the same elements will cause a change on the unit.

	entries?: [..._]

	// Specifies the name of the ACL to manage.

	name: string
}

bigip_asm_policy_fetch :: {

	// A directory to save the policy file into.
	// This option is ignored when C(inline) is set to C(yes).

	dest?: string

	// If C(no), the file will only be transferred if it does not exist in the the destination.

	force?: bool

	// If C(yes), the ASM policy will be exported C(inline) as a string instead of a file.
	// The policy can be be retrieved in playbook C(result) dictionary under C(inline_policy) key.

	inline?: bool

	// The name of the policy exported to create a file on the remote device for downloading.

	name: string

	// Device partition which contains ASM policy to export.

	partition?: string

	// If C(yes), the returned C(inline) ASM policy content will be Base64 encoded.
	// Only applies to C(inline) ASM policy exports.

	base64?: bool

	// If C(yes), the exported ASM policy will be in binary format.
	// Only applies to C(file) ASM policy exports.

	binary?: bool

	// If C(yes), only the ASM policy custom settings will be exported.
	// Only applies to XML type ASM policy exports.

	compact?: bool

	// The name of the file to be create on the remote device for downloading.
	// When C(binary) is set to C(no) the ASM policy will be in XML format.

	file?: string
}

bigip_cli_alias :: {

	// The command to alias.

	command?: string

	// Description of the alias.

	description?: string

	// Specifies the name of the alias.

	name: string

	// Device partition to manage resources on.
	// This parameter is disregarded when the C(scope) is C(private).

	partition?: string

	// The scope of the alias; whether it is shared on the system, or usable only for the user who created it.

	scope?: string

	// When C(present), ensures that the resource exists.
	// When C(absent), ensures the resource is removed.

	state?: string
}

bigip_remote_user :: {

	// Enables or disables the default console access for all remote user accounts.
	// The default system value is C(disabled).

	console_access?: bool

	// Specifies the default partition for all remote user accounts.
	// The default system value is C(all) for all partitions.

	default_partition?: string

	// Specifies the default role for all remote user accounts.
	// The default system value is C(no-access).

	default_role?: string

	// User defined description.

	description?: string
}

bigip_service_policy :: {

	// Whether the resource should exist or not.

	state?: string

	// The timer policy to attach to the service policy.

	timer_policy?: string

	// Description of the service policy.

	description?: string

	// Name of the service policy.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// The port misuse policy to attach to the service policy.
	// Requires that C(afm) be provisioned to use. If C(afm) is not provisioned, this parameter will be ignored.

	port_misuse_policy?: string
}

bigip_traffic_selector :: {

	// Specifies the host or network IP address from which the application traffic originates.
	// When creating a new traffic selector, this parameter is required.

	source_address?: string

	// When C(present), ensures that the resource exists.
	// When C(absent), ensures the resource is removed.

	state?: string

	// Description of the traffic selector.

	description?: string

	// Specifies the host or network IP address to which the application traffic is destined.
	// When creating a new traffic selector, this parameter is required.

	destination_address?: string

	// Specifies the IPsec policy that tells the BIG-IP system how to handle the packets.
	// When creating a new traffic selector, if this parameter is not specified, the default is C(default-ipsec-policy).

	ipsec_policy?: string

	// Specifies the name of the traffic selector.

	name: string

	// Specifies the order in which traffic is matched, if traffic can be matched to multiple traffic selectors.
	// Traffic is matched to the traffic selector with the highest priority (lowest order number).
	// When creating a new traffic selector, if this parameter is not specified, the default is C(last).

	order?: int

	// Device partition to manage resources on.

	partition?: string
}

bigiq_device_discovery :: {

	// Sets the conflict resolution policy for Access module C(apm) objects, only used when C(apm) module is specified.

	access_conflict_policy?: string

	// Access group name to import Access configuration for devices, once set it cannot be changed.

	access_group_name?: string

	// The IP address of the BIG-IP device to be imported/managed.

	device_address: string

	// Sets the conflict resolution policy for objects that are specific to a particular to a BIG-IP device and not shared among BIG-IP devices.

	device_conflict_policy?: string

	// The administrator password for the BIG-IP device.
	// This parameter is only required when adding a new BIG-IP device to be managed.

	device_password?: string

	// The port on which a device trust setup between BIG-IQ and BIG-IP should happen.

	device_port?: int

	// DSC cluster name of the BIG-IP device to be managed.
	// This is optional if the managed device is not a part of a cluster group.
	// When C(use_bigiq_sync) is set to C(yes) then this parameter becomes mandatory.

	ha_name?: string

	// Specify the statistics collection for discovered device.

	statistics?: {...}

	// When set to true, BIG-IQ will manually synchronize configuration changes between members in a DSC cluster.

	use_bigiq_sync?: bool

	// Forces rediscovery and import of existing modules on the managed BIG-IP

	force?: bool

	// List of modules to be discovered and imported into the device.
	// These modules must be provisioned on the target device otherwise operation will fail.
	// The C(ltm) module must always be specified when performing discovery or re-discovery of the the device.
	// When C(asm) or C(afm) are specified C(shared_security) module needs to also be declared.

	modules?: [..._]

	// The state of the managed device on the system.
	// When C(present), enables new device addition as well as device rediscovery/import.
	// When C(absent), completely removes the device from the system.

	state?: string

	// Specifies if the imported device is the first device in the access group to import shared configuration for that access group.

	access_group_first_device?: bool

	// Sets the conflict resolution policy for shared objects across BIG-IP devices, except LTM profiles and monitors.

	conflict_policy?: string

	// The administrator username for the BIG-IP device.
	// This parameter is only required when adding a new BIG-IP device to be managed.

	device_username?: string

	// Sets the conflict resolution policy for LTM profile and monitor objects that are specific to a BIG-IP software version.

	versioned_conflict_policy?: string
}

bigiq_utility_license_assignment :: {

	// Specifies the port of the remote device to connect to.
	// If this parameter is not specified, the default of C(443) will be used.

	device_port?: int

	// The username used to connect to the remote device.
	// This username should be one that has sufficient privileges on the remote device to do licensing. Usually this is the C(Administrator) role.
	// When C(managed) is C(no), this parameter is required.

	device_username?: string

	// Name of the license offering to assign to the device.

	offering?: string

	// When C(present), ensures that the device is assigned the specified license.
	// When C(absent), ensures the license is revokes from the remote device and freed on the BIG-IQ.

	state?: string

	// Sets the rate at which this license usage is billed.
	// Depending on your license, you may have different units of measures available to you. If a particular unit is not available to you, the module will notify you at licensing time.

	unit_of_measure?: string

	// When C(managed) is C(no), specifies the address, or hostname, where the BIG-IQ can reach the remote device to register.
	// When C(managed) is C(yes), specifies the managed device, or device UUID, that you want to register.
	// If C(managed) is C(yes), it is very important that you do not have more than one device with the same name. BIG-IQ internally recognizes devices by their ID, and therefore, this module's cannot guarantee that the correct device will be registered. The device returned is the device that will be used.

	device?: string

	// The password of the C(device_username).
	// When C(managed) is C(no), this parameter is required.

	device_password?: string

	// The registration key that you want choose an offering from.

	key: string

	// Whether the specified device is a managed or un-managed device.
	// When C(state) is C(present), this parameter is required.

	managed?: bool
}

bigip_device_group :: {

	// Indicates whether configuration synchronization occurs manually or automatically.
	// When creating a new device group, this option will default to C(no).

	auto_sync?: bool

	// Specifies whether the system synchronizes the entire configuration during synchronization operations.
	// When C(no), the system performs incremental synchronization operations, based on the cache size specified in C(max_incremental_sync_size).
	// Incremental configuration synchronization is a mechanism for synchronizing a device-group's configuration among its members, without requiring a full configuration load for each configuration change.
	// In order for this to work, all devices in the device-group must initially agree on the configuration. Typically this requires at least one full configuration load to each device.
	// When creating a new device group, this option will default to C(no).

	full_sync?: bool

	// Specifies the size of the changes cache for incremental sync.
	// For example, using the default, if you make more than 1024 KB worth of incremental changes, the system performs a full synchronization operation.
	// Using incremental synchronization operations can reduce the per-device sync/load time for configuration changes.
	// This setting is relevant only when C(full_sync) is C(no).

	max_incremental_sync_size?: int

	// Specifies that the type of group.
	// A C(sync-failover) device group contains devices that synchronize their configuration data and fail over to one another when a device becomes unavailable.
	// A C(sync-only) device group has no such failover. When creating a new device group, this option will default to C(sync-only).
	// This setting cannot be changed once it has been set.

	type?: string

	// When C(state) is C(present), ensures the device group exists.
	// When C(state) is C(absent), ensures that the device group is removed.

	state?: string

	// Description of the device group.

	description?: string

	// Specifies the name of the device group.

	name: string

	// Indicates whether failover occurs over the network or is hard-wired.
	// This parameter is only valid for C(type)'s that are C(sync-failover).

	network_failover?: bool

	// When performing an auto-sync, specifies whether the configuration will be saved or not.
	// When C(no), only the running configuration will be changed on the device(s) being synced to.
	// When creating a new device group, this option will default to C(no).

	save_on_auto_sync?: bool
}

bigip_dns_resolver :: {

	// Specifies whether the system answers and issues TCP-formatted queries.
	// When creating a new resolver, if this parameter is not specified, the default is C(yes).

	use_tcp?: bool

	// Specifies whether the system answers DNS queries for the default zones localhost, reverse 127.0.0.1 and ::1, and AS112.
	// When creating a new resolver, if this parameter is not specified, the default is C(no), meaning that the system passes along the DNS queries for the default zones.

	answer_default_zones?: bool

	// When C(present), ensures that the resource exists.
	// When C(absent), ensures the resource is removed.

	state?: string

	// Specifies whether the system can use IPv4 to query backend nameservers.
	// An IPv4 Self IP and default route must be available for these queries to work successfully.
	// When creating a new resolver, if this parameter is not specified, the default is C(yes).

	use_ipv4?: bool

	// When C(yes), specifies that the internal DNS resolver randomizes character case in domain name queries issued to the root DNS servers.
	// When creating a new resolver, if this parameter is not specified, the default is C(yes).

	randomize_query_case?: bool

	// Specifies the route domain the resolver uses for outbound traffic.

	route_domain?: int

	// Specifies whether the system can use IPv6 to query backend nameservers.
	// An IPv6 Self IP and default route must be available for these queries to work successfully.
	// When creating a new resolver, if this parameter is not specified, the default is C(yes).

	use_ipv6?: bool

	// Specifies whether the system answers and issues UDP-formatted queries.
	// When creating a new resolver, if this parameter is not specified, the default is C(yes).

	use_udp?: bool

	// Specifies the size of the internal DNS resolver cache.
	// When creating a new resolver, if this parameter is not specified, the default is 5767168 bytes.
	// After the cache reaches this size, when new or refreshed content arrives, the system removes expired and older content and caches the new or updated content.

	cache_size?: int

	// Specifies the name of the DNS resolver.

	name: string

	// Device partition to manage resources on.

	partition?: string
}

bigip_firewall_rule :: {

	// Specifies whether logging is enabled or disabled for the firewall rule.
	// When creating a new rule, if this parameter is not specified, the default if C(no).

	logging?: bool

	// The policy which contains the rule to be managed.
	// One of either C(parent_policy) or C(parent_rule_list) is required.

	parent_policy?: string

	// Specifies the protocol to which the rule applies.
	// Protocols may be specified by either their name or numeric value.
	// A special protocol value C(any) can be specified to match any protocol. The numeric equivalent of this protocol is C(255).

	protocol?: string

	// Specifies an existing rule list to use in the rule.
	// This parameter is mutually exclusive with many of the other individual-rule specific settings. This includes C(logging), C(action), C(source), C(destination), C(irule'), C(protocol) and C(logging).
	// This parameter is only used when C(parent_policy) is specified, otherwise it is ignored.

	rule_list?: string

	// Specifies the action for the firewall rule.
	// When C(accept), allows packets with the specified source, destination, and protocol to pass through the firewall. Packets that match the rule, and are accepted, traverse the system as if the firewall is not present.
	// When C(drop), drops packets with the specified source, destination, and protocol. Dropping a packet is a silent action with no notification to the source or destination systems. Dropping the packet causes the connection to be retried until the retry threshold is reached.
	// When C(reject), rejects packets with the specified source, destination, and protocol. When a packet is rejected the firewall sends a destination unreachable message to the sender.
	// When C(accept-decisively), allows packets with the specified source, destination, and protocol to pass through the firewall, and does not require any further processing by any of the further firewalls. Packets that match the rule, and are accepted, traverse the system as if the firewall is not present. If the Rule List is applied to a virtual server, management IP, or self IP firewall rule, then Accept Decisively is equivalent to Accept.
	// When creating a new rule, if this parameter is not provided, the default is C(reject).

	action?: string

	// Specifies packet destinations to which the rule applies.
	// Leaving this field blank applies the rule to all addresses and all ports.
	// You can specify the following destination items. An IPv4 or IPv6 address, an IPv4 or IPv6 address range, geographic location, VLAN, address list, port, port range, port list or address list.
	// You can specify a mix of different types of items for the source address.

	destination?: [..._]

	// Indicates the activity state of the rule or rule list.
	// When C(disabled), specifies that the rule or rule list does not apply at all.
	// When C(enabled), specifies that the system applies the firewall rule or rule list to the given context and addresses.
	// When C(scheduled), specifies that the system applies the rule or rule list according to the specified schedule.
	// When creating a new rule, if this parameter is not provided, the default is C(enabled).

	status?: string

	// Specifies an iRule that is applied to the firewall rule.
	// An iRule can be started when the firewall rule matches traffic.

	irule?: string

	// Specifies a schedule for the firewall rule.
	// You configure schedules to define days and times when the firewall rule is made active.

	schedule?: string

	// Specifies packet sources to which the rule applies.
	// Leaving this field blank applies the rule to all addresses and all ports.
	// You can specify the following source items. An IPv4 or IPv6 address, an IPv4 or IPv6 address range, geographic location, VLAN, address list, port, port range, port list or address list.
	// You can specify a mix of different types of items for the source address.

	source?: [..._]

	// When C(state) is C(present), ensures that the rule exists.
	// When C(state) is C(absent), ensures that the rule is removed.

	state?: string

	// Device partition to manage resources on.

	partition?: string

	// The rule description.

	description?: string

	// Specifies the Internet Control Message Protocol (ICMP) or ICMPv6 message C(type) and C(code) that the rule uses.
	// This parameter is only relevant when C(protocol) is either C(icmp)(1) or C(icmpv6)(58).

	icmp_message?: [..._]

	// Specifies the name of the rule.

	name: string

	// The rule list which contains the rule to be managed.
	// One of either C(parent_policy) or C(parent_rule_list) is required.

	parent_rule_list?: string
}

bigip_gtm_pool :: {

	// Device partition to manage resources on.

	partition?: string

	// The load balancing mode that the system tries if the C(preferred_lb_method) is unsuccessful in picking a pool.

	alternate_lb_method?: string

	// Specifies the IPv4, or IPv6 address of the server to which the system directs requests when it cannot use one of its pools to do so. Note that the system uses the fallback IP only if you select the C(fallback_ip) load balancing method.

	fallback_ip?: string

	// The load balancing mode that the system tries if both the C(preferred_lb_method) and C(alternate_lb_method)s are unsuccessful in picking a pool.

	fallback_lb_method?: string

	// Specifies the maximum number of available virtual servers that the system lists in a response.
	// The maximum is 500.

	max_answers_returned?: int

	// Members to assign to the pool.
	// The order of the members in this list is the order that they will be listed in the pool.

	members?: [..._]

	// Specifies the health monitors that the system currently uses to monitor this resource.
	// When C(availability_requirements.type) is C(require), you may only have a single monitor in the C(monitors) list.

	monitors?: [..._]

	// Name of the GTM pool.

	name: string

	// Pool state. When C(present), ensures that the pool is created and enabled. When C(absent), ensures that the pool is removed from the system. When C(enabled) or C(disabled), ensures that the pool is enabled or disabled (respectively) on the remote device.

	state?: string

	// The type of GTM pool that you want to create. On BIG-IP releases prior to version 12, this parameter is not required. On later versions of BIG-IP, this is a required parameter.

	type?: string

	// Specifies, if you activate more than one health monitor, the number of health monitors that must receive successful responses in order for the link to be considered available.

	availability_requirements?: {...}

	// The load balancing mode that the system tries first.

	preferred_lb_method?: string

	// Specifies the number of seconds that the IP address, once found, is valid.

	ttl?: int
}

bigip_ipsec_policy :: {

	// Specifies the algorithm to use for IKE authentication.

	auth_algorithm?: string

	// Specifies the processing mode.
	// When C(transport), specifies a mode that encapsulates only the payload (adding an ESP header, trailer, and authentication tag).
	// When C(tunnel), specifies a mode that includes encapsulation of the header as well as the payload (adding a new IP header, in addition to adding an ESP header, trailer, and authentication tag). If you select this option, you must also provide IP addresses for the local and remote endpoints of the IPsec tunnel.
	// When C(isession), specifies the use of iSession over an IPsec tunnel. To use this option, you must also configure the iSession endpoints with IPsec in the Acceleration section of the user interface.
	// When C(interface), specifies that the IPsec policy can be used in the tunnel profile for network interfaces.

	mode?: string

	// Specifies the IPsec protocol
	// Options include ESP (Encapsulating Security Protocol) or AH (Authentication Header).

	protocol?: string

	// Specifies the local endpoint IP address of the IPsec tunnel.
	// This parameter is only valid when C(mode) is C(tunnel).

	tunnel_local_address?: string

	// Specifies the remote endpoint IP address of the IPsec tunnel.
	// This parameter is only valid when C(mode) is C(tunnel).

	tunnel_remote_address?: string

	// Description of the policy

	description?: string

	// When C(mode) is C(interface) indicate if the IPv4 C(any) address should be used. By default C(BIG-IP) assumes C(any6) address for tunnel addresses when C(mode) is C(interface).
	// This option takes effect only when C(mode) is set to C(interface).

	ipv4_interface?: bool

	// Specifies the length of time, in minutes, before the IKE security association expires.

	lifetime?: int

	// Specifies the name of the IPSec policy.

	name: string

	// Specifies the Diffie-Hellman group to use for IKE Phase 2 negotiation.

	perfect_forward_secrecy?: string

	// Specifies whether to use IPComp encapsulation.
	// When C(none), specifies that IPComp is disabled.
	// When C(deflate), specifies that IPComp is enabled and uses the Deflate compression algorithm.

	ipcomp?: string

	// Specifies the length of time, in kilobytes, before the IKE security association expires.

	kb_lifetime?: int

	// When C(present), ensures that the resource exists.
	// When C(absent), ensures the resource is removed.

	state?: string

	// Specifies the algorithm to use for IKE encryption.

	encrypt_algorithm?: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies the route domain, when C(interface) is selected for the C(mode) setting.

	route_domain?: int
}

bigip_message_routing_protocol :: {

	// Specifies the name of the generic parser profile.

	name: string

	// When set, matching of responses to requests is disabled.

	no_response?: bool

	// The parent template of this parser profile. Once this value has been set, it cannot be changed.
	// When creating a new profile, if this parameter is not specified, the default is the system-supplied C(genericmsg) profile.

	parent?: string

	// Device partition to create route object on.

	partition?: string

	// When C(present), ensures that the route exists.
	// When C(absent), ensures the route is removed.

	state?: string

	// The user defined description of the generic parser profile.

	description?: string

	// When C(yes), the generic message parser will be disabled ignoring all incoming packets and not directly send message data.
	// This mode supports iRule script protocol implementations that will generate messages from the incoming transport stream and send outgoing messages on the outgoing transport stream.

	disable_parser?: bool

	// Specifies the maximum size of the send buffer in bytes. If the number of bytes in the send buffer for a connection exceeds this value, the generic message protocol will stop receiving outgoing messages from the router until the size of the size of the buffer drops below this setting.
	// The accepted range is between 0 and 4294967295 inclusive.

	max_egress_buffer?: int

	// Specifies the maximum size of a received message. If a message exceeds this size, the connection will be reset.
	// The accepted range is between 0 and 4294967295 inclusive.

	max_msg_size?: int

	// The string of characters used to terminate a message. If the message-terminator is not specified, the generic message parser will not separate the input stream into messages.

	msg_terminator?: string
}

bigiq_application_fasthttp :: {

	// Description of the application.

	description?: string

	// Settings to configure the virtual which will receive the inbound connection.
	// This virtual will be used to host the HTTP endpoint of the application.

	inbound_virtual?: {...}

	// Name of the new application.

	name: string

	// A list of servers that the application is hosted on.
	// If you are familiar with other BIG-IP setting, you might also refer to this list as the list of pool members.
	// When creating a new application, at least one server is required.

	servers?: [..._]

	// Specifies the name of service environment that the application will be deployed to.
	// When creating a new application, this parameter is required.
	// The service environment type will be discovered by this module automatically. Therefore, it is crucial that you maintain unique names for items in the different service environment types (at this time, SSGs and BIGIPs).

	service_environment?: string

	// The state of the resource on the system.
	// When C(present), guarantees that the resource exists with the provided attributes.
	// When C(absent), removes the resource from the system.

	state?: string

	// If the module should wait for the application to be created, deleted or updated.

	wait?: bool

	// Collects statistics of the BIG-IP that the application is deployed to.
	// This parameter is only relevant when specifying a C(service_environment) which is a BIG-IP; not an SSG.

	add_analytics?: bool
}

bigip_device_certificate :: {

	// Specified if the module should generate new certificate.
	// When C(yes) the device certificate and key will be replaced

	new_cert?: bool

	// Configures the transport connection to use when connecting to the remote device.
	// This module currently supports only connectivity to the device over cli (ssh).

	transport: string

	// Certificate properties, required when generating new certificates.

	issuer?: {...}

	// Specifies the desired key size in bits.
	// Mandatory option when generating a new certificate.

	key_size?: int

	// Specifies the interval for which the self-signed certificate is valid.
	// The maximum value is 25 years: C(9125) days

	days_valid: int

	// When C(yes), will update or overwrite the existing certificate when it is not expired device.
	// When C(no), the certificate will only be updated/overwritten if expired.
	// Generally should be C(yes) only in cases where you need to update certificate that is about to expire.
	// This option is also needed when generating new certificate to replace non expired one.

	force?: bool

	// Specifies the full name of the key file.
	// If the name is not default C(server.key), the module will configure C(httpd) to use them prior to restarting the C(httpd) daemon.

	key_name?: string

	// Specified if the certificate should be added to the trusted client and server certificate files.

	add_to_trusted?: bool

	// Specifies the full name of the certificate file.
	// If the name is not default C(server.crt), the module will configure C(httpd) to use them prior to restarting the C(httpd) daemon.

	cert_name?: string
}

bigip_facts :: {

	// Shell-style glob matching string used to filter fact keys. Not applicable for software, provision, and system_info fact categories.

	filter?: string

	// Fact category or list of categories to collect

	include: string

	// BIG-IP session support; may be useful to avoid concurrency issues in certain circumstances.

	session?: bool
}

bigip_gtm_datacenter :: {

	// Device partition to manage resources on.

	partition?: string

	// The virtual address state. If C(absent), an attempt to delete the virtual address will be made. This will only succeed if this virtual address is not in use by a virtual server. C(present) creates the virtual address and enables it. If C(enabled), enable the virtual address if it exists. If C(disabled), create the virtual address if needed, and set state to C(disabled).

	state?: string

	// The name of the contact for the data center.

	contact?: string

	// The description of the data center.

	description?: string

	// The location of the data center.

	location?: string

	// The name of the data center.

	name: string
}

bigip_gtm_server :: {

	// Data center the server belongs to. When creating a new GTM server, this value is required.

	datacenter?: string

	// Specifies the name of the prober pool to use to monitor this server's resources.
	// From C(TMOS) version C(13.x) and up, this parameter is mandatory when C(prober_preference) is set to C(pool).
	// Format of the name can be either be prepended by partition (C(/Common/foo)), or specified just as an object name (C(foo)).
	// In C(TMOS) version C(12.x) prober_pool can be set to empty string to revert to default setting of inherit.

	prober_pool?: string

	// Specifies resource thresholds or limit requirements at the pool member level.
	// When you enable one or more limit settings, the system then uses that data to take members in and out of service.
	// You can define limits for any or all of the limit settings. However, when a member does not meet the resource threshold limit requirement, the system marks the member as unavailable and directs load-balancing traffic to another resource.

	limits?: {...}

	// Specifies whether the system auto-discovers the links for this server. When creating a new GTM server, if this parameter is not specified, the default value C(disabled) is used.
	// If you set this parameter to C(enabled) or C(enabled-no-delete), you must also ensure that the C(virtual_server_discovery) parameter is also set to C(enabled) or C(enabled-no-delete).

	link_discovery?: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies the type of prober to use to monitor this server's resources when the preferred prober is not available.
	// This option is ignored in C(TMOS) version C(12.x).
	// From C(TMOS) version C(13.x) and up, when prober_preference is set to C(pool) a C(prober_pool) parameter must be specified.
	// The choices are mutually exclusive with prober_preference parameter, with the exception of C(any-available) or C(none) option.

	prober_fallback?: string

	// Specifies, if you activate more than one health monitor, the number of health monitors that must receive successful responses in order for the link to be considered available.

	availability_requirements?: {...}

	// Lists the self IP addresses and translations for each device. When creating a new GTM server, this value is required. This list is a complex list that specifies a number of keys.
	// The C(name) key specifies a name for the device. The device name must be unique per server. This key is required.
	// The C(address) key contains an IP address, or list of IP addresses, for the destination server. This key is required.
	// The C(translation) key contains an IP address to translate the C(address) value above to. This key is optional.
	// Specifying duplicate C(name) fields is a supported means of providing device addresses. In this scenario, the addresses will be assigned to the C(name)'s list of addresses.

	devices?: [..._]

	// Specifies whether the Global Traffic Manager uses this BIG-IP system to conduct a variety of probes before delegating traffic to it.

	iquery_options?: {...}

	// The server state. If C(absent), an attempt to delete the server will be made. This will only succeed if this server is not in use by a virtual server. C(present) creates the server and enables it. If C(enabled), enable the server if it exists. If C(disabled), create the server if needed, and set state to C(disabled).

	state?: string

	// Specifies the health monitors that the system currently uses to monitor this resource.
	// When C(availability_requirements.type) is C(require), you may only have a single monitor in the C(monitors) list.

	monitors?: [..._]

	// The name of the server.

	name: string

	// Specifies the type of prober to use to monitor this server's resources.
	// This option is ignored in C(TMOS) version C(12.x).
	// From C(TMOS) version C(13.x) and up, when prober_preference is set to C(pool) a C(prober_pool) parameter must be specified.

	prober_preference?: string

	// Specifies the server type. The server type determines the metrics that the system can collect from the server. When creating a new GTM server, the default value C(bigip) is used.

	server_type?: string

	// Specifies whether the system auto-discovers the virtual servers for this server. When creating a new GTM server, if this parameter is not specified, the default value C(disabled) is used.

	virtual_server_discovery?: string
}

bigip_monitor_ldap :: {

	// Specifies whether, upon receipt of an LDAP referral entry, the target follows (or chases) that referral.

	chase_referrals?: bool

	// Specifies whether the monitor sends error messages and additional information to a log file created and labeled specifically for this monitor.

	debug?: bool

	// Specifies whether the system automatically changes the status of a resource to B(enabled) at the next successful monitor check.
	// If you set this option to C(yes), you must manually re-enable the resource before the system can use it for load balancing connections.
	// When C(yes), specifies that you must manually re-enable the resource after an unsuccessful monitor check.
	// When C(no), specifies that the system automatically changes the status of a resource to B(enabled) at the next successful monitor check.

	manual_resume?: bool

	// Monitor name.

	name: string

	// Specifies the secure protocol type for communications with the target.

	security?: string

	// Specifies the interval for the system to use to perform the health check when a resource is up.
	// When C(0), specifies that the system uses the interval specified in C(interval) to check the health of the resource.
	// When any other number, enables specification of a different interval to use when checking the health of a resource that is up.

	up_interval?: int

	// C(always) will update passwords if the C(target_password) is specified.
	// C(on_create) will only set the password for newly created monitors.

	update_password?: string

	// Specifies the location in the LDAP tree from which the monitor starts the health check.

	base?: string

	// Specifies an LDAP key for which the monitor searches.

	filter?: string

	// Specifies whether the target must include attributes in its response to be considered up.

	mandatory_attributes?: bool

	// Specifies the number of seconds to wait after a resource first responds correctly to the monitor before setting the resource to 'up'.
	// During the interval, all responses from the resource must be correct.
	// When the interval expires, the resource is marked 'up'.
	// A value of 0, means that the resource is marked up immediately upon receipt of the first correct response.

	time_until_up?: int

	// Specifies descriptive text that identifies the monitor.

	description?: string

	// When C(present), ensures that the monitor exists.
	// When C(absent), ensures the monitor is removed.

	state?: string

	// Specifies the user name, if the monitored target requires authentication.

	target_username?: string

	// The parent template of this monitor template. Once this value has been set, it cannot be changed.
	// By default, this value is the C(ldap) parent on the C(Common) partition.

	parent?: string

	// IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.

	ip?: string

	// Device partition to manage resources on.

	partition?: string

	// Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.
	// Note that if specifying an IP address, a value between 1 and 65535 must be specified.

	port?: string

	// Specifies the password, if the monitored target requires authentication.

	target_password?: string

	// Specifies the number of seconds the target has in which to respond to the monitor request.
	// If the target responds within the set time period, it is considered 'up'. If the target does not respond within the set time period, it is considered 'down'. When this value is set to 0 (zero), the system uses the interval from the parent monitor.
	// Note that C(timeout) and C(time_until_up) combine to control when a resource is set to up.

	timeout?: int

	// Specifies, in seconds, the frequency at which the system issues the monitor check when either the resource is down or the status of the resource is unknown.

	interval?: int
}

bigip_profile_http2 :: {

	// Specifies the size of data frames, in bytes, that HTTP/2 sends to the client.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
	// The valid value range in bytes is C(1024 - 16384).

	frame_size?: int

	// Specifies the name of the profile.

	name: string

	// Specifies what will cause an incoming connection to be handled as a HTTP/2 connection.
	// The C(alpn) and C(always) are mutually exclusive.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	activation_modes?: [..._]

	// Specifies whether an HTTP header indicating the use of HTTP/2 should be inserted into the request that goes to the server.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	insert_header?: bool

	// When C(present), ensures that the profile exists.
	// When C(absent), ensures the profile is removed.

	state?: string

	// Specifies the number of outstanding concurrent requests that are allowed on a single HTTP/2 connection.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
	// The valid value range is C(1 - 256).

	streams?: int

	// Description of the profile.

	description?: string

	// Specifies the total size of combined data frames, in bytes, that HTTP/2 sends in a single write.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
	// The valid value range in bytes is C(2048 - 32768).

	write_size?: int

	// Specifies whether the system requires TLS for communications between specified senders and recipients.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	enforce_tls_requirements?: bool

	// Specifies the size of the header table, in bytes.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
	// The valid value range in bytes is C(0 - 65535).

	header_table_size?: int

	// Specifies the number of seconds that an HTTP/2 connection is idly left open before being shut down.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	idle_timeout?: int

	// Specifies the name of the HTTP header controlled by C(insert_header) parameter.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.

	insert_header_name?: string

	// Specifies the profile from which this profile inherits settings.
	// When creating a new profile, if this parameter is not specified, the default is the system-supplied C(http2) profile.

	parent?: string

	// Device partition to manage resources on.

	partition?: string

	// Specifies the way that the HTTP/2 profile performs flow control.
	// When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
	// The valid value range in kilobytes is C(16 - 128).

	receive_window?: int
}

bigip_ssl_ocsp :: {

	// Specifies the certificates used for validating the OCSP response when the responder's certificate has been omitted from the response.

	trusted_responders?: string

	// C(always) will allow to update passwords if the user chooses to do so. C(on_create) will only set the password for newly created OCSP validators.

	update_password?: string

	// Specifies the lifetime of the OCSP response in the cache, in seconds.

	cache_timeout?: string

	// Specifies a hash algorithm used to sign an OCSP request.

	hash_algorithm?: string

	// Specifies a passphrase used to sign an OCSP request.

	passphrase?: string

	// Specifies the proxy server pool the BIG-IP system uses to fetch the OCSP response.
	// This involves creating a pool with proxy-servers.
	// Use this option when either the OCSP responder cannot be reached on any of BIG-IP system's interfaces or one or more servers can proxy an HTTP request to an external server and fetch the response.

	proxy_server_pool?: string

	// Specifies the absolute URL that overrides the OCSP responder URL obtained from the certificate's AIA extensions. This should be an HTTP-based URL.

	responder_url?: string

	// Specifies whether the responder's certificate is checked for an OCSP signing extension.

	strict_responder_checking?: bool

	// Specifies the tolerable absolute difference in the clocks of the responder and the BIG-IP system, in seconds.

	clock_skew?: int

	// Specifies the internal DNS resolver the BIG-IP system uses to fetch the OCSP response.
	// This involves specifying one or more DNS servers in the DNS resolver configuration.
	// Use this option when either there is a DNS server that can do the name-resolution of the OCSP responders or the OCSP responder can be reached on one of BIG-IP system's interfaces.

	dns_resolver?: string

	// Specifies the lifetime of an error response in the cache, in seconds.

	cache_error_timeout?: int

	// Specifies a certificate used to sign an OCSP request.

	certificate?: string

	// Device partition to manage resources on.

	partition?: string

	// When C(present), ensures that the resource exists.
	// When C(absent), ensures that the resource does not exist.

	state?: string

	// Specifies the maximum allowed lag time that the BIG-IP system accepts for the 'thisUpdate' time in the OCSP response.

	status_age?: int

	// Specifies the time interval that the BIG-IP system waits for before ending the connection to the OCSP responder, in seconds.

	connection_timeout?: int

	// Specifies the maximum number of connections per second allowed for the OCSP certificate validator.

	connections_limit?: int

	// Specifies a key used to sign an OCSP request.

	key?: string

	// Specifies the name of the OCSP certificate validator.

	name: string

	// Specifies the route domain for fetching an OCSP response using HTTP forward proxy.

	route_domain?: string
}

bigip_cli_script :: {

	// The content of the script.
	// This parameter is typically used in conjunction with Ansible's C(file), or template lookup plugins. If this sounds foreign to you, see the examples in this documentation.

	content?: string

	// Description of the cli script.

	description?: string

	// Specifies the name of the script.

	name: string

	// Device partition to manage resources on.

	partition?: string

	// When C(present), ensures that the script exists.
	// When C(absent), ensures the script is removed.

	state?: string
}

bigip_device_trust :: {

	// The hostname that you want to associate with the device. This value will be used to easily distinguish this device in BIG-IP configuration.
	// When trusting a new device, if this parameter is not specified, the value of C(peer_server) will be used as a default.

	peer_hostname?: string

	// The password of the API username of the remote peer device that you are trusting. If this value is not specified, then the value of C(password), or the environment variable C(F5_PASSWORD) will be used.

	peer_password?: string

	// The peer address to connect to and trust for synchronizing configuration. This is typically the management address of the remote device, but may also be a Self IP.

	peer_server: string

	// The API username of the remote peer device that you are trusting. Note that the CLI user cannot be used unless it too has an API account. If this value is not specified, then the value of C(user), or the environment variable C(F5_USER) will be used.

	peer_user?: string

	// When C(present), ensures the specified devices are trusted.
	// When C(absent), removes the device trusts.

	state?: string

	// Specifies whether the device you are adding is a Peer or a Subordinate. The default is C(peer).
	// The difference between the two is a matter of mitigating risk of compromise.
	// A subordinate device cannot sign a certificate for another device.
	// In the case where the security of an authority device in a trust domain is compromised, the risk of compromise is minimized for any subordinate device.
	// Designating devices as subordinate devices is recommended for device groups with a large number of member devices, where the risk of compromise is high.

	type?: string
}

bigip_monitor_dns :: {

	// The description of the monitor.

	description?: string

	// When C(present), ensures that the monitor exists.
	// When C(absent), ensures the monitor is removed.

	state?: string

	// Specifies the interval for the system to use to perform the health check when a resource is up.
	// When C(0), specifies that the system uses the interval specified in C(interval) to check the health of the resource.
	// When any other number, enables specification of a different interval to use when checking the health of a resource that is up.
	// When creating a new monitor, if this parameter is not provided, the default C(0) will be used.

	up_interval?: int

	// Specifies whether adaptive response time monitoring is enabled for this monitor.
	// When C(yes), the monitor determines the state of a service based on how divergent from the mean latency a monitor probe for that service is allowed to be. Also, values for the C(allowed_divergence), C(adaptive_limit), and and C(sampling_timespan) will be enforced.
	// When C(disabled), the monitor determines the state of a service based on the C(interval), C(up_interval), C(time_until_up), and C(timeout) monitor settings.

	adaptive?: bool

	// Specifies the type of DNS query that the monitor sends.
	// When creating a new monitor, if this value is not specified, the default value is C(query-type).
	// When C(query-type), specifies that the response should contain at least one answer of which the resource record type matches the query type.
	// When C(any-type), specifies that the DNS message should contain at least one answer.
	// When C(anything), specifies that an empty answer is enough to mark the status of the node up.

	answer_section_contains?: string

	// Specifies a query name for the monitor to use in a DNS query.

	query_name?: string

	// Specifies the IP address that the monitor uses from the resource record sections of the DNS response.
	// The IP address should be specified in the dotted-decimal notation or IPv6 notation.

	receive?: string

	// Specifies the length, in seconds, of the probe history window that the system uses to calculate the mean latency and standard deviation of a monitor probe.
	// While this value can be configured when C(adaptive) is C(no), it will not take effect on the system until C(adaptive) is C(yes).

	sampling_timespan?: int

	// Specifies whether the monitor operates in transparent mode.
	// Monitors in transparent mode can monitor pool members through firewalls.
	// When creating a new monitor, if this parameter is not provided, then the default value will be C(no).

	transparent?: bool

	// Specifies the absolute number of milliseconds that may not be exceeded by a monitor probe, regardless of C(allowed_divergence) setting, for a probe to be considered successful.
	// This value applies regardless of the value of the C(allowed_divergence) setting.
	// While this value can be configured when C(adaptive) is C(no), it will not take effect on the system until C(adaptive) is C(yes).

	adaptive_limit?: int

	// The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(dns) parent on the C(Common) partition.

	parent?: string

	// When specifying a new monitor, if C(adaptive) is C(yes), and C(type) is C(relative), the default is C(25) percent.

	allowed_divergence_value?: int

	// The interval specifying how frequently the monitor instance of this template will run.
	// This value B(must) be less than the C(timeout) value.
	// When creating a new monitor, if this parameter is not provided, the default C(5) will be used.

	interval?: int

	// IP address part of the IP/port definition.
	// If this parameter is not provided when creating a new monitor, then the default value will be C(*).

	ip?: string

	// Specifies whether the system automatically changes the status of a resource to B(enabled) at the next successful monitor check.
	// If you set this option to C(yes), you must manually re-enable the resource before the system can use it for load balancing connections.
	// When creating a new monitor, if this parameter is not specified, the default value is C(no).
	// When C(yes), specifies that you must manually re-enable the resource after an unsuccessful monitor check.
	// When C(no), specifies that the system automatically changes the status of a resource to B(enabled) at the next successful monitor check.

	manual_resume?: bool

	// Specifies the name of the monitor.

	name: string

	// Specifies the type of DNS query that the monitor sends.
	// When creating a new monitor, if this parameter is not specified, the default value is C(a).
	// When C(a), specifies that the monitor will send a DNS query of type A.
	// When C(aaaa), specifies that the monitor will send a DNS query of type AAAA.

	query_type?: string

	// Specifies the RCODE required in the response for an up status.
	// When creating a new monitor, if this parameter is not specified, the default value is C(no-error).
	// When C(no-error), specifies that the status of the node will be marked up if the received DNS message has no error.
	// When C(anything), specifies that the status of the node will be marked up irrespective of the RCODE in the DNS message received.
	// If this parameter is set to C(anything), it will disregard the C(receive) string, and nullify it if the monitor is being updated.

	accept_rcode?: string

	// When specifying a new monitor, if C(adaptive) is C(yes), the default is C(relative)
	// When C(absolute), the number of milliseconds the latency of a monitor probe can exceed the mean latency of a monitor probe for the service being probed. In typical cases, if the monitor detects three probes in a row that miss the latency value you set, the pool member or node is marked down.
	// When C(relative), the percentage of deviation the latency of a monitor probe can exceed the mean latency of a monitor probe for the service being probed.

	allowed_divergence_type?: string

	// The number of seconds in which the node or service must respond to the monitor request.
	// If the target responds within the set time period, it is considered up.
	// If the target does not respond within the set time period, it is considered down.
	// You can change this number to any number you want, however, it should be 3 times the interval number of seconds plus 1 second.
	// If this parameter is not provided when creating a new monitor, then the default value will be C(16).

	timeout?: int

	// Specifies whether the monitor operates in reverse mode.
	// When the monitor is in reverse mode, a successful receive string match marks the monitored object down instead of up. You can use the this mode only if you configure the C(receive) option.
	// This parameter is not compatible with the C(time_until_up) parameter. If C(time_until_up) is specified, it must be C(0). Or, if it already exists, it must be C(0).

	reverse?: bool

	// Specifies the amount of time in seconds after the first successful response before a node will be marked up.
	// A value of 0 will cause a node to be marked up immediately after a valid response is received from the node.
	// If this parameter is not provided when creating a new monitor, then the default value will be C(0).

	time_until_up?: int

	// Device partition to manage resources on.

	partition?: string

	// Port address part of the IP/port definition.
	// If this parameter is not provided when creating a new monitor, then the default value will be C(*).
	// Note that if specifying an IP address, a value between 1 and 65535 must be specified.

	port?: string
}

bigiq_application_https_offload :: {

	// Specifies the SSL profile for managing client-side SSL traffic.

	client_ssl_profile?: {...}

	// Settings to configure the virtual which will receive the inbound connection.
	// This virtual will be used to host the HTTPS endpoint of the application.
	// Traffic destined to the C(redirect_virtual) will be offloaded to this parameter to ensure that proper redirection from insecure, to secure, occurs.

	inbound_virtual?: {...}

	// Name of the new application.

	name: string

	// Settings to configure the virtual which will receive the connection to be redirected.
	// This virtual will be used to host the HTTP endpoint of the application.
	// Traffic destined to this parameter will be offloaded to the C(inbound_virtual) parameter to ensure that proper redirection from insecure, to secure, occurs.

	redirect_virtual?: {...}

	// Collects statistics of the BIG-IP that the application is deployed to.
	// This parameter is only relevant when specifying a C(service_environment) which is a BIG-IP; not an SSG.

	add_analytics?: bool

	// A list of servers that the application is hosted on.
	// If you are familiar with other BIG-IP setting, you might also refer to this list as the list of pool members.
	// When creating a new application, at least one server is required.

	servers?: [..._]

	// Specifies the name of service environment or the hostname of the BIG-IP that the application will be deployed to.
	// When creating a new application, this parameter is required.

	service_environment?: string

	// The state of the resource on the system.
	// When C(present), guarantees that the resource exists with the provided attributes.
	// When C(absent), removes the resource from the system.

	state?: string

	// If the module should wait for the application to be created, deleted or updated.

	wait?: bool

	// Description of the application.

	description?: string
}

bigip_gtm_global :: {

	// Specifies whether this system is a member of a synchronization group.
	// When you enable synchronization, the system periodically queries other systems in the synchronization group to obtain and distribute configuration and metrics collection updates.
	// The synchronization group may contain systems configured as Global Traffic Manager and Link Controller systems.

	synchronization?: bool

	// Specifies the name of the synchronization group to which the system belongs.

	synchronization_group_name?: string

	// Specifies that the system synchronizes Domain Name System (DNS) zone files among the synchronization group members.

	synchronize_zone_files?: bool
}

bigip_imish_config :: {

	// Use this argument to specify one or more lines that should be ignored during the diff.
	// This is used for lines in the configuration that are automatically updated by the system.
	// This argument takes a list of regular expressions or exact line matches.

	diff_ignore_lines?: [..._]

	// The ordered set of commands that should be configured in the section.
	// The commands must be the exact same commands as found in the device running-config.
	// Be sure to note the configuration command syntax as some commands are automatically modified by the device config parser.

	lines?: [..._]

	// Route domain to manage BGP configuration on.

	route_domain?: string

	// When changes are made to the device running-configuration, the changes are not copied to non-volatile storage by default.
	// If the argument is set to I(always), then the running-config will always be copied to the startup-config and the I(modified) flag will always be set to C(True).
	// If the argument is set to I(modified), then the running-config will only be copied to the startup-config if it has changed since the last save to startup-config.
	// If the argument is set to I(never), the running-config will never be copied to the startup-config.
	// If the argument is set to I(changed), then the running-config will only be copied to the startup-config if the task has made a change.

	save_when?: string

	// The I(src) argument provides a path to the configuration file to load into the remote system.
	// The path can either be a full system path to the configuration file if the value starts with / or relative to the root of the implemented role or playbook.
	// This argument is mutually exclusive with the I(lines) and I(parents) arguments.

	src?: string

	// When using the C(ansible-playbook --diff) command line argument the module can generate diffs against different sources.
	// When this option is configure as I(startup), the module will return the diff of the running-config against the startup-config.
	// When this option is configured as I(intended), the module will return the diff of the running-config against the configuration provided in the C(intended_config) argument.
	// When this option is configured as I(running), the module will return the before and after diff of the running-config with respect to any changes made to the device configuration.

	diff_against?: string

	// The C(intended_config) provides the master configuration that the node should conform to and is used to check the final running-config against.
	// This argument will not modify any settings on the remote device and is strictly used to check the compliance of the current device's configuration against.
	// When specifying this argument, the task should also modify the C(diff_against) value and set it to I(intended).

	intended_config?: string

	// Instructs the module on the way to perform the configuration on the device.
	// If the replace argument is set to I(line) then the modified lines are pushed to the device in configuration mode.
	// If the replace argument is set to I(block) then the entire command block is pushed to the device in configuration mode if any line is not correct.

	replace?: string

	// The module, by default, will connect to the remote device and retrieve the current running-config to use as a base for comparing against the contents of source.
	// There are times when it is not desirable to have the task get the current running-config for every task in a playbook.
	// The I(running_config) argument allows the implementer to pass in the configuration to use as the base config for comparison.

	running_config?: string

	// Instructs the module on the way to perform the matching of the set of commands against the current device config.
	// If match is set to I(line), commands are matched line by line.
	// If match is set to I(strict), command lines are matched with respect to position.
	// If match is set to I(exact), command lines must be an equal match.
	// Finally, if match is set to I(none), the module will not attempt to compare the source configuration with the running configuration on the remote device.

	match?: string

	// The ordered set of commands to append to the end of the command stack if a change needs to be made.
	// Just like with I(before) this allows the playbook designer to append a set of commands to be executed after the command set.

	after?: [..._]

	// This argument will cause the module to create a full backup of the current C(running-config) from the remote device before any changes are made.
	// The backup file is written to the C(backup) folder in the playbook root directory or role root directory, if playbook is part of an ansible role. If the directory does not exist, it is created.

	backup?: bool

	// This is a dict object containing configurable options related to backup file path. The value of this option is read only when C(backup) is set to I(yes), if C(backup) is set to I(no) this option will be silently ignored.

	backup_options?: {...}

	// The ordered set of commands to push on to the command stack if a change needs to be made.
	// This allows the playbook designer the opportunity to perform configuration commands prior to pushing any changes without affecting how the set of commands are matched against the system.

	before?: [..._]

	// The ordered set of parents that uniquely identify the section or hierarchy the commands should be checked against.
	// If the C(parents) argument is omitted, the commands are checked against the set of top level or global commands.

	parents?: [..._]
}
