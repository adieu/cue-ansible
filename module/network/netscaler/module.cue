package netscaler

netscaler_cs_vserver :: {

	// The server version string returned by the mysql vserver.
	// Minimum length = 1
	// Maximum length = 31

	mysqlserverversion?: string

	// Process traffic with the push virtual server that is bound to this content switching virtual server (specified by the Push VServer parameter). The service type of the push virtual server should be either C(HTTP) or C(SSL).

	push?: string

	// Enable network address translation (NAT) for real-time streaming protocol (RTSP) connections.

	rtspnat?: bool

	// The name of the ssl certificate that is bound to this service.
	// The ssl certificate must already exist.
	// Creating the certificate can be done with the M(netscaler_ssl_certkey) module.
	// This option is only applicable only when C(servicetype) is C(SSL).

	ssl_certkey?: string

	// Enable logging appflow flow information.

	appflowlog?: string

	// Use this option to specify whether a virtual server, used for load balancing or content switching, routes requests to the cache redirection virtual server before sending it to the configured servers.

	cacheable?: bool

	// Name of the HTTP profile containing HTTP configuration settings for the virtual server. The service type of the virtual server should be either C(HTTP) or C(SSL).
	// Minimum length = 1
	// Maximum length = 127

	httpprofilename?: string

	// IP address pattern, in dotted decimal notation, for identifying packets to be accepted by the virtual server. The IP Mask parameter specifies which part of the destination IP address is matched against the pattern. Mutually exclusive with the IP Address parameter.
	// For example, if the IP pattern assigned to the virtual server is C(198.51.100.0) and the IP mask is C(255.255.240.0) (a forward mask), the first 20 bits in the destination IP addresses are matched with the first 20 bits in the pattern. The virtual server accepts requests with IP addresses that range from 198.51.96.1 to 198.51.111.254. You can also use a pattern such as C(0.0.2.2) and a mask such as C(0.0.255.255) (a reverse mask).
	// If a destination IP address matches more than one IP pattern, the pattern with the longest match is selected, and the associated virtual server processes the request. For example, if the virtual servers, C(vs1) and C(vs2), have the same IP pattern, C(0.0.100.128), but different IP masks of C(0.0.255.255) and C(0.0.224.255), a destination IP address of 198.51.100.128 has the longest match with the IP pattern of C(vs1). If a destination IP address matches two or more virtual servers to the same extent, the request is processed by the virtual server whose port number matches the port number in the request.

	ippattern?: string

	// Virtual server target type.

	targettype?: string

	// Idle time, in seconds, after which the client connection is terminated. The default values are:
	// Minimum value = C(0)
	// Maximum value = C(31536000)

	clttimeout?: string

	// The character set returned by the mysql vserver.

	mysqlcharacterset?: string

	// A host route is injected according to the setting on the virtual servers
	// * If set to C(PASSIVE) on all the virtual servers that share the IP address, the appliance always injects the hostroute.
	// * If set to C(ACTIVE) on all the virtual servers that share the IP address, the appliance injects even if one virtual server is UP.
	// * If set to C(ACTIVE) on some virtual servers and C(PASSIVE) on the others, the appliance, injects even if one virtual server set to C(ACTIVE) is UP.

	rhistate?: string

	// Type of spillover used to divert traffic to the backup virtual server when the primary virtual server reaches the spillover threshold. Connection spillover is based on the number of connections. Bandwidth spillover is based on the total Kbps of incoming and outgoing traffic.

	somethod?: string

	// Name of the backup virtual server that you are configuring. Must begin with an ASCII alphanumeric or underscore C(_) character, and must contain only ASCII alphanumeric, underscore C(_), hash C(#), period C(.), space C( ), colon C(:), at sign C(@), equal sign C(=), and hyphen C(-) characters. Can be changed after the backup virtual server is created. You can assign a different backup virtual server or rename the existing virtual server.
	// Minimum length = 1

	backupvserver?: string

	// String specifying the listen policy for the content switching virtual server. Can be either the name of an existing expression or an in-line expression.

	listenpolicy?: string

	// Number of consecutive IP addresses, starting with the address specified by the IP Address parameter, to include in a range of addresses assigned to this virtual server.
	// Minimum value = C(1)
	// Maximum value = C(254)

	range?: string

	// Maintain source-IP based persistence on primary and backup virtual servers.

	sopersistence?: string

	// Domain name for which to change the time to live (TTL) and/or backup service IP address.
	// Minimum length = 1

	domainname?: string

	// Name of the DNS profile to be associated with the VServer. DNS profile properties will applied to the transactions processed by a VServer. This parameter is valid only for DNS and DNS-TCP VServers.
	// Minimum length = 1
	// Maximum length = 127

	dnsprofilename?: string

	// Can be active or passive.

	icmpvsrresponse?: string

	// Enable state updates for a specific content switching virtual server. By default, the Content Switching virtual server is always UP, regardless of the state of the Load Balancing virtual servers bound to it. This parameter interacts with the global setting as follows:
	// Global Level | Vserver Level | Result
	// enabled enabled enabled
	// enabled disabled enabled
	// disabled enabled enabled
	// disabled disabled disabled
	// If you want to enable state updates for only some content switching virtual servers, be sure to disable the state update parameter.

	stateupdate?: string

	// Depending on the spillover method, the maximum number of connections or the maximum total bandwidth (Kbps) that a virtual server can handle before spillover occurs.
	// Minimum value = C(1)
	// Maximum value = C(4294967287)

	sothreshold?: string

	// Continue forwarding the traffic to backup virtual server even after the primary server comes UP from the DOWN state.

	disableprimaryondown?: string

	// URL to which traffic is redirected if the virtual server becomes unavailable. The service type of the virtual server should be either C(HTTP) or C(SSL).
	// Caution: Make sure that the domain in the URL does not match the domain specified for a content switching policy. If it does, requests are continuously redirected to the unavailable virtual server.
	// Minimum length = 1

	redirecturl?: string

	// .
	// Minimum value = C(1)

	sitedomainttl?: string

	// Time-out value, in minutes, for spillover persistence.
	// Minimum value = C(2)
	// Maximum value = C(1440)

	sopersistencetimeout?: string

	// The protocol version returned by the mysql vserver.

	mysqlprotocolversion?: string

	// State of port rewrite while performing HTTP redirect.

	redirectportrewrite?: string

	// Action to be performed if spillover is to take effect, but no backup chain to spillover is usable or exists.

	sobackupaction?: string

	// FQDN of the authentication virtual server. The service type of the virtual server should be either C(HTTP) or C(SSL).
	// Minimum length = 3
	// Maximum length = 252

	authenticationhost?: string

	// Enable HTTP 401-response based authentication.

	authn401?: bool

	// Name of the authentication profile to be used when authentication is turned on.

	authnprofile?: string

	// Consider case in URLs (for policies that use URLs instead of RULES). For example, with the C(on) setting, the URLs /a/1.html and /A/1.HTML are treated differently and can have different targets (set by content switching policies). With the C(off) setting, /a/1.html and /A/1.HTML are switched to the same target.

	casesensitive?: bool

	// Port number for content switching virtual server.
	// Minimum value = 1
	// Range C(1) - C(65535)
	// * in CLI is represented as 65535 in NITRO API

	port?: string

	// Type of precedence to use for both RULE-based and URL-based policies on the content switching virtual server. With the default C(RULE) setting, incoming requests are evaluated against the rule-based content switching policies. If none of the rules match, the URL in the request is evaluated against the URL-based content switching policies.

	precedence?: string

	// Oracle server version.

	oracleserverversion?: string

	// Insert the virtual server's VIP address and port number in the request header. Available values function as follows:
	// C(VIPADDR) - Header contains the vserver's IP address and port number without any translation.
	// C(OFF) - The virtual IP and port header insertion option is disabled.
	// C(V6TOV4MAPPING) - Header contains the mapped IPv4 address corresponding to the IPv6 address of the vserver and the port number. An IPv6 address can be mapped to a user-specified IPv4 address using the set ns ip6 command.

	insertvserveripport?: string

	// IP mask, in dotted decimal notation, for the IP Pattern parameter. Can have leading or trailing non-zero octets (for example, C(255.255.240.0) or C(0.0.255.255)). Accordingly, the mask specifies whether the first n bits or the last n bits of the destination IP address in a client request are to be matched with the corresponding bits in the IP pattern. The former is called a forward mask. The latter is called a reverse mask.

	ipmask?: string

	// The version of the MSSQL server.

	mssqlserverversion?: string

	// The name of the network profile.
	// Minimum length = 1
	// Maximum length = 127

	netprofile?: string

	// Name for the content switching virtual server. Must begin with an ASCII alphanumeric or underscore C(_) character, and must contain only ASCII alphanumeric, underscore C(_), hash C(#), period C(.), space, colon C(:), at sign C(@), equal sign C(=), and hyphen C(-) characters.
	// Cannot be changed after the CS virtual server is created.
	// Minimum length = 1

	name?: string

	// Expression for extracting the label from the response received from server. This string can be either an existing rule name or an inline expression. The service type of the virtual server should be either C(HTTP) or C(SSL).

	pushlabel?: string

	// Protocol used by the virtual server.

	servicetype?: string

	// .
	// Minimum length = 1

	backupip?: string

	// The default Load Balancing virtual server.

	lbvserver?: string

	// Name of virtual server IP and port header, for use with the VServer IP Port Insertion parameter.
	// Minimum length = 1

	vipheader?: string

	// .
	// Minimum value = C(0)
	// Maximum value = C(1440)

	cookietimeout?: string

	// Use L2 Parameters to identify a connection.

	l2conn?: bool

	// Name of the TCP profile containing TCP configuration settings for the virtual server.
	// Minimum length = 1
	// Maximum length = 127

	tcpprofilename?: string

	// Authenticate users who request a connection to the content switching virtual server.

	authentication?: bool

	// Allow multiple Web 2.0 connections from the same client to connect to the virtual server and expect updates.

	pushmulticlients?: bool

	// Name of the load balancing virtual server, of type C(PUSH) or C(SSL_PUSH), to which the server pushes updates received on the client-facing load balancing virtual server.
	// Minimum length = 1

	pushvserver?: string

	// Integer value that uniquely identifies the traffic domain in which you want to configure the entity. If you do not specify an ID, the entity becomes part of the default traffic domain, which has an ID of 0.
	// Minimum value = 0
	// Maximum value = 4094

	td?: string

	// .
	// Minimum value = C(1)

	ttl?: string

	// Information about this virtual server.

	comment?: string

	// .
	// Minimum length = 1

	cookiedomain?: string

	// Name of the DB profile.
	// Minimum length = 1
	// Maximum length = 127

	dbprofilename?: string

	// When set to C(yes) the cs vserver will be disabled.
	// When set to C(no) the cs vserver will be enabled.
	// Note that due to limitations of the underlying NITRO API a C(disabled) state change alone does not cause the module result to report a changed status.

	disabled?: bool

	// Name of authentication virtual server that authenticates the incoming user requests to this content switching virtual server. .
	// Minimum length = 1
	// Maximum length = 252

	authnvsname?: string

	// Flush all active transactions associated with a virtual server whose state transitions from UP to DOWN. Do not enable this option for applications that must complete their transactions.

	downstateflush?: string

	// IP address of the content switching virtual server.
	// Minimum length = 1

	ipv46?: string

	// The server capabilities returned by the mysql vserver.

	mysqlservercapabilities?: string
}

netscaler_gslb_site :: {

	// Exchange, with other GSLB sites, network metrics such as round-trip time (RTT), learned from communications with various local DNS (LDNS) servers used by clients. RTT information is used in the dynamic RTT load balancing method, and is exchanged every 5 seconds.

	nwmetricexchange?: string

	// Parent site of the GSLB site, in a parent-child topology.

	parentsite?: string

	// IP address to be used to globally access the remote cluster when it is deployed behind a NAT. It can be same as the normal cluster IP address.

	publicclip?: string

	// Public IP address for the local site. Required only if the appliance is deployed in a private address space and the site has a public IP address hosted on an external firewall or a NAT device.
	// Minimum length = 1

	publicip?: string

	// IP address for the GSLB site. The GSLB site uses this IP address to communicate with other GSLB sites. For a local site, use any IP address that is owned by the appliance (for example, a SNIP or MIP address, or the IP address of the ADNS service).
	// Minimum length = 1

	siteipaddress?: string

	// Name for the GSLB site. Must begin with an ASCII alphanumeric or underscore C(_) character, and must contain only ASCII alphanumeric, underscore C(_), hash C(#), period C(.), space C( ), colon C(:), at C(@), equals C(=), and hyphen C(-) characters. Cannot be changed after the virtual server is created.
	// Minimum length = 1

	sitename?: string

	// Cluster IP address. Specify this parameter to connect to the remote cluster site for GSLB auto-sync. Note: The cluster IP address is defined when creating the cluster.

	clip?: string

	// Exchange metrics with other sites. Metrics are exchanged by using Metric Exchange Protocol (MEP). The appliances in the GSLB setup exchange health information once every second.
	// If you disable metrics exchange, you can use only static load balancing methods (such as round robin, static proximity, or the hash-based methods), and if you disable metrics exchange when a dynamic load balancing method (such as least connection) is in operation, the appliance falls back to round robin. Also, if you disable metrics exchange, you must use a monitor to determine the state of GSLB services. Otherwise, the service is marked as DOWN.

	metricexchange?: string

	// Type of site to create. If the type is not specified, the appliance automatically detects and sets the type on the basis of the IP address being assigned to the site. If the specified site IP address is owned by the appliance (for example, a MIP address or SNIP address), the site is a local site. Otherwise, it is a remote site.

	sitetype?: string

	// Specify the conditions under which the GSLB service must be monitored by a monitor, if one is bound. Available settings function as follows:
	// * C(ALWAYS) - Monitor the GSLB service at all times.
	// * C(MEPDOWN) - Monitor the GSLB service only when the exchange of metrics through the Metrics Exchange Protocol (MEP) is disabled.
	// C(MEPDOWN_SVCDOWN) - Monitor the service in either of the following situations:
	// * The exchange of metrics through MEP is disabled.
	// * The exchange of metrics through MEP is enabled but the status of the service, learned through metrics exchange, is DOWN.

	triggermonitor?: string

	// The naptr replacement suffix configured here will be used to construct the naptr replacement field in NAPTR record.
	// Minimum length = 1

	naptrreplacementsuffix?: string

	// Exchange persistent session entries with other GSLB sites every five seconds.

	sessionexchange?: string
}

netscaler_gslb_vserver :: {

	// Name for the GSLB virtual server. Must begin with an ASCII alphanumeric or underscore C(_) character, and must contain only ASCII alphanumeric, underscore C(_), hash C(#), period C(.), space, colon C(:), at C(@), equals C(=), and hyphen C(-) characters. Can be changed after the virtual server is created.
	// Minimum length = 1

	name?: string

	// The persistence ID for the GSLB virtual server. The ID is a positive integer that enables GSLB sites to identify the GSLB virtual server, and is required if source IP address based or spill over based persistence is enabled on the virtual server.
	// Minimum value = C(0)
	// Maximum value = C(65535)

	persistenceid?: string

	// Number of bits to consider, in an IPv6 source IP address, for creating the hash that is required by the C(SOURCEIPHASH) load balancing method.
	// Default value: C(128)
	// Minimum value = C(1)
	// Maximum value = C(128)

	v6netmasklen?: string

	// Number of bits to consider in an IPv6 source IP address when creating source IP address based persistence sessions.
	// Default value: C(128)
	// Minimum value = C(1)
	// Maximum value = C(128)

	v6persistmasklen?: string

	// List of bindings for domains for this glsb vserver.

	domain_bindings?: string

	// Enable logging appflow flow information.

	appflowlog?: string

	// Threshold at which spillover occurs. Specify an integer for the CONNECTION spillover method, a bandwidth value in kilobits per second for the BANDWIDTH method (do not enter the units), or a percentage for the HEALTH method (do not enter the percentage symbol).
	// Minimum value = C(1)
	// Maximum value = C(4294967287)

	sothreshold?: string

	// Timeout for spillover persistence, in minutes.
	// Default value: C(2)
	// Minimum value = C(2)
	// Maximum value = C(1440)

	sopersistencetimeout?: string

	// Any comments that you might want to associate with the GSLB virtual server.

	comment?: string

	// DNS record type to associate with the GSLB virtual server's domain name.
	// Default value: A
	// Possible values = A, AAAA, CNAME, NAPTR

	dnsrecordtype?: string

	// Action to be performed if spillover is to take effect, but no backup chain to spillover is usable or exists.

	sobackupaction?: string

	// When set to C(yes) the GSLB Vserver state will be set to C(disabled).
	// When set to C(no) the GSLB Vserver state will be set to C(enabled).
	// Note that due to limitations of the underlying NITRO API a C(disabled) state change alone does not cause the module result to report a changed status.

	disabled?: bool

	// Use source IP address based persistence for the virtual server.
	// After the load balancing method selects a service for the first packet, the IP address received in response to the DNS query is used for subsequent requests from the same client.

	persistencetype?: string

	// Idle time, in minutes, after which a persistence entry is cleared.
	// Default value: C(2)
	// Minimum value = C(2)
	// Maximum value = C(1440)

	timeout?: string

	// Backup load balancing method. Becomes operational if the primary load balancing method fails or cannot be used. Valid only if the primary method is based on either round-trip time (RTT) or static proximity.

	backuplbmethod?: string

	// List of bindings for gslb services bound to this gslb virtual server.

	service_bindings?: string

	// Site selection tolerance, in milliseconds, for implementing the RTT load balancing method. If a site's RTT deviates from the lowest RTT by more than the specified tolerance, the site is not considered when the NetScaler appliance makes a GSLB decision. The appliance implements the round robin method of global server load balancing between sites whose RTT values are within the specified tolerance. If the tolerance is 0 (zero), the appliance always sends clients the IP address of the site with the lowest RTT.
	// Minimum value = C(0)
	// Maximum value = C(100)

	tolerance?: string

	// Continue to direct traffic to the backup chain even after the primary GSLB virtual server returns to the UP state. Used when spillover is configured for the virtual server.

	disableprimaryondown?: string

	// Load balancing method for the GSLB virtual server.
	// Default value: LEASTCONNECTION
	// Possible values = ROUNDROBIN, LEASTCONNECTION, LEASTRESPONSETIME, SOURCEIPHASH, LEASTBANDWIDTH, LEASTPACKETS, STATICPROXIMITY, RTT, CUSTOMLOAD

	lbmethod?: string

	// Include multiple IP addresses in the DNS responses sent to clients.

	mir?: string

	// IPv4 network mask for use in the SOURCEIPHASH load balancing method.
	// Minimum length = 1

	netmask?: string

	// Protocol used by services bound to the virtual server.
	// 

	servicetype?: string

	// If spillover occurs, maintain source IP address based persistence for both primary and backup GSLB virtual servers.

	sopersistence?: string

	// If the primary state of all bound GSLB services is DOWN, consider the effective states of all the GSLB services, obtained through the Metrics Exchange Protocol (MEP), when determining the state of the GSLB virtual server. To consider the effective state, set the parameter to STATE_ONLY. To disregard the effective state, set the parameter to NONE.
	// The effective state of a GSLB service is the ability of the corresponding virtual server to serve traffic. The effective state of the load balancing virtual server, which is transferred to the GSLB service, is UP even if only one virtual server in the backup chain of virtual servers is in the UP state.

	considereffectivestate?: string

	// Specify if the appliance should consider the service count, service weights, or ignore both when using weight-based load balancing methods. The state of the number of services bound to the virtual server help the appliance to select the service.

	dynamicweight?: string

	// The optional IPv4 network mask applied to IPv4 addresses to establish source IP address based persistence.
	// Minimum length = 1

	persistmask?: string

	// Type of threshold that, when exceeded, triggers spillover. Available settings function as follows:
	// * C(CONNECTION) - Spillover occurs when the number of client connections exceeds the threshold.
	// * C(DYNAMICCONNECTION) - Spillover occurs when the number of client connections at the GSLB virtual server exceeds the sum of the maximum client (Max Clients) settings for bound GSLB services. Do not specify a spillover threshold for this setting, because the threshold is implied by the Max Clients settings of the bound GSLB services.
	// * C(BANDWIDTH) - Spillover occurs when the bandwidth consumed by the GSLB virtual server's incoming and outgoing traffic exceeds the threshold.
	// * C(HEALTH) - Spillover occurs when the percentage of weights of the GSLB services that are UP drops below the threshold. For example, if services gslbSvc1, gslbSvc2, and gslbSvc3 are bound to a virtual server, with weights 1, 2, and 3, and the spillover threshold is 50%, spillover occurs if gslbSvc1 and gslbSvc3 or gslbSvc2 and gslbSvc3 transition to DOWN.
	// * C(NONE) - Spillover does not occur.

	somethod?: string
}

netscaler_server :: {

	// When set to C(true) the server state will be set to C(disabled).
	// When set to C(false) the server state will be set to C(enabled).
	// Note that due to limitations of the underlying NITRO API a C(disabled) state change alone does not cause the module result to report a changed status.

	disabled?: bool

	// Domain name of the server. For a domain based configuration, you must create the server first.
	// Minimum length = 1

	domain?: string

	// Time, in seconds, for which the NetScaler appliance must wait, after DNS resolution fails, before sending the next DNS query to resolve the domain name.
	// Minimum value = C(5)
	// Maximum value = C(20939)

	domainresolveretry?: string

	// IPv4 or IPv6 address of the server. If you create an IP address based server, you can specify the name of the server, instead of its IP address, when creating a service. Note: If you do not create a server entry, the server IP address that you enter when you create a service becomes the name of the server.

	ipaddress?: string

	// Support IPv6 addressing mode. If you configure a server with the IPv6 addressing mode, you cannot use the server in the IPv4 addressing mode.

	ipv6address?: bool

	// Integer value that uniquely identifies the traffic domain in which you want to configure the entity. If you do not specify an ID, the entity becomes part of the default traffic domain, which has an ID of 0.
	// Minimum value = C(0)
	// Maximum value = C(4094)

	td?: string

	// IP address used to transform the server's DNS-resolved IP address.

	translationip?: string

	// Any information about the server.

	comment?: string

	// Time, in seconds, after which all the services configured on the server are disabled.
	// This option is meaningful only when setting the I(disabled) option to C(true)

	delay?: string

	// Shut down gracefully, without accepting any new connections, and disabling each service when all of its connections are closed.
	// This option is meaningful only when setting the I(disabled) option to C(true)

	graceful?: bool

	// Name for the server.
	// Must begin with an ASCII alphabetic or underscore C(_) character, and must contain only ASCII alphanumeric, underscore C(_), hash C(#), period C(.), space C( ), colon C(:), at C(@), equals C(=), and hyphen C(-) characters.
	// Can be changed after the name is created.
	// Minimum length = 1

	name?: string

	// The netmask of the translation ip.

	translationmask?: string
}

netscaler_service :: {

	// When set to C(yes) the service state will be set to DISABLED.
	// When set to C(no) the service state will be set to ENABLED.
	// Note that due to limitations of the underlying NITRO API a C(disabled) state change alone does not cause the module result to report a changed status.

	disabled?: bool

	// Minimum sum of weights of the monitors that are bound to this service. Used to determine whether to mark a service as UP or DOWN.
	// Minimum value = 0
	// Maximum value = 65535

	monthreshold?: string

	// Individual Path monitoring decisions.

	pathmonitorindv?: string

	// Enable RTSP session ID mapping for the service.

	rtspsessionidremap?: bool

	// Name of the server that hosts the service.
	// Minimum length = 1

	servername?: string

	// Time, in seconds, after which to terminate an idle server connection.
	// Minimum value = 0
	// Maximum value = 31536000

	svrtimeout?: string

	// Use Layer 2 mode to bridge the packets sent to this service if it is marked as DOWN. If the service is DOWN, and this parameter is disabled, the packets are dropped.

	accessdown?: bool

	// Before forwarding a request to the service, insert an HTTP header with the client's IPv4 or IPv6 address as its value. Used if the server needs the client's IP address for security, accounting, or other purposes, and setting the Use Source IP parameter is not a viable option.

	cip?: string

	// Shut down gracefully, not accepting any new connections, and disabling the service when all of its connections are closed.

	graceful?: bool

	// Name of the HTTP profile that contains HTTP configuration settings for the service.
	// Minimum length = 1
	// Maximum length = 127

	httpprofilename?: string

	// Port number of the service.
	// Range 1 - 65535
	// * in CLI is represented as 65535 in NITRO API

	port?: string

	// Enable TCP buffering for the service.

	tcpb?: bool

	// Time, in seconds, after which to terminate an idle client connection.
	// Minimum value = 0
	// Maximum value = 31536000

	clttimeout?: string

	// IP to assign to the service.
	// Minimum length = 1

	ip?: string

	// Maximum bandwidth, in Kbps, allocated to the service.
	// Minimum value = 0
	// Maximum value = 4294967287

	maxbandwidth?: string

	// Network profile to use for the service.
	// Minimum length = 1
	// Maximum length = 127

	netprofile?: string

	// Integer value that uniquely identifies the traffic domain in which you want to configure the entity. If you do not specify an ID, the entity becomes part of the default traffic domain, which has an ID of 0.
	// Minimum value = 0
	// Maximum value = 4094

	td?: string

	// Use the proxy port as the source port when initiating connections with the server. With the NO setting, the client-side connection port is used as the source port for the server-side connection.
	// Note: This parameter is available only when the Use Source IP (USIP) parameter is set to YES.

	useproxyport?: bool

	// Port to which clear text data must be sent after the appliance decrypts incoming SSL traffic. Applicable to transparent SSL services.
	// Minimum value = 1

	cleartextport?: string

	// Unique identifier for the service. Used when the persistency type for the virtual server is set to Custom Server ID.

	customserverid?: string

	// Name of the DNS profile to be associated with the service. DNS profile properties will applied to the transactions processed by a service. This parameter is valid only for ADNS and ADNS-TCP services.
	// Minimum length = 1
	// Maximum length = 127

	dnsprofilename?: string

	// Flush all active transactions associated with a service whose state transitions from UP to DOWN. Do not enable this option for applications that must complete their transactions.

	downstateflush?: string

	// Monitor the health of this service

	healthmonitor?: bool

	// Path monitoring for clustering.

	pathmonitor?: string

	// Enable logging of AppFlow information.

	appflowlog?: string

	// Use the transparent cache redirection virtual server to forward requests to the cache server.
	// Note: Do not specify this parameter if you set the Cache Type parameter.

	cacheable?: bool

	// Cache type supported by the cache server.

	cachetype?: string

	// Enable surge protection for the service.

	sp?: bool

	// Name of the TCP profile that contains TCP configuration settings for the service.
	// Minimum length = 1
	// Maximum length = 127

	tcpprofilename?: string

	// Use the client's IP address as the source IP address when initiating a connection to the server. When creating a service, if you do not set this parameter, the service inherits the global Use Source IP setting (available in the enable ns mode and disable ns mode CLI commands, or in the System > Settings > Configure modes > Configure Modes dialog box). However, you can override this setting after you create the service.

	usip?: bool

	// Enable client keep-alive for the service.

	cka?: bool

	// Enable compression for the service.

	cmp?: bool

	// Any information about the service.

	comment?: string

	// The new IP address of the service.

	ipaddress?: string

	// Maximum number of simultaneous open connections to the service.
	// Minimum value = 0
	// Maximum value = 4294967294

	maxclient?: string

	// By turning on this option packets destined to a service in a cluster will not under go any steering. Turn this option for single packet request response mode or when the upstream device is performing a proper RSS for connection based distribution.

	processlocal?: string

	// Name for the HTTP header whose value must be set to the IP address of the client. Used with the Client IP parameter. If you set the Client IP parameter, and you do not specify a name for the header, the appliance uses the header name specified for the global Client IP Header parameter (the cipHeader parameter in the set ns param CLI command or the Client IP Header parameter in the Configure HTTP Parameters dialog box at System > Settings > Change HTTP parameters). If the global Client IP Header parameter is not specified, the appliance inserts a header with the name "client-ip.".
	// Minimum length = 1

	cipheader?: string

	// A numerical identifier that can be used by hash based load balancing methods. Must be unique for each service.
	// Minimum value = 1

	hashid?: string

	// Maximum number of requests that can be sent on a persistent connection to the service.
	// Note: Connection requests beyond this value are rejected.
	// Minimum value = 0
	// Maximum value = 65535

	maxreq?: string

	// A list of load balancing monitors to bind to this service.
	// Each monitor entry is a dictionary which may contain the following options.
	// Note that if not using the built in monitors they must first be setup.

	monitor_bindings?: string

	// Name for the service. Must begin with an ASCII alphabetic or underscore C(_) character, and must contain only ASCII alphanumeric, underscore C(_), hash C(#), period C(.), space C( ), colon C(:), at C(@), equals C(=), and hyphen C(-) characters. Cannot be changed after the service has been created.
	// Minimum length = 1

	name?: string

	// The identifier for the service. This is used when the persistency type is set to Custom Server ID.

	serverid?: string

	// Protocol in which data is exchanged with the service.

	servicetype?: string
}

netscaler_lb_monitor :: {

	// Host-IP-Address value for the Capabilities-Exchange-Request (CER) message to use for monitoring Diameter servers. If Host-IP-Address is not specified, the appliance inserts the mapped IP (MIP) address or subnet IP (SNIP) address from which the CER request (the monitoring probe) is sent.
	// Minimum length = 1

	hostipaddress?: string

	// RTSP request to send to the server (for example, C("OPTIONS *")).

	rtsprequest?: string

	// This option will enable monitoring of services running on storefront server. Storefront services are monitored by probing to a Windows service that runs on the Storefront server and exposes details of which storefront services are running.

	storefrontcheckbackendservices?: bool

	// Validate the credentials of the Xen Desktop DDC server user. Applicable to monitors of type C(CITRIX-XD-DDC).

	validatecred?: bool

	// Time interval between two successive probes. Must be greater than the value of Response Time-out.
	// Minimum value = C(1)
	// Maximum value = C(20940)

	interval?: string

	// Product-Name value for the Capabilities-Exchange-Request (CER) message to use for monitoring Diameter servers.
	// Minimum length = 1

	productname?: string

	// SIP user to be registered. Applicable only if the monitor is of type C(SIP-UDP) and the SIP Method parameter is set to C(REGISTER).
	// Minimum length = 1

	sipreguri?: string

	// Enable/Disable probing for Account Service. Applicable only to Store Front monitors. For multi-tenancy configuration users my skip account service.

	storefrontacctservice?: bool

	// Origin-Realm value for the Capabilities-Exchange-Request (CER) message to use for monitoring Diameter servers.
	// Minimum length = 1

	originrealm?: string

	// Type of DNS record for which to send monitoring queries. Set to C(Address) for querying A records, C(AAAA) for querying AAAA records, and C(Zone) for querying the SOA record.

	querytype?: string

	// String expected from the server for the service to be marked as UP. Applicable to C(TCP-ECV), C(HTTP-ECV), and C(UDP-ECV) monitors.

	recv?: string

	// String of arguments for the script. The string is copied verbatim into the request.

	scriptargs?: string

	// Secondary password that users might have to provide to log on to the Access Gateway server. Applicable to C(CITRIX-AG) monitors.

	secondarypassword?: string

	// Number of consecutive probe failures after which the appliance generates an SNMP trap called monProbeFailed.
	// Minimum value = C(0)
	// Maximum value = C(32)

	alertretries?: string

	// Default syntax expression that evaluates the database server's response to a MYSQL-ECV or MSSQL-ECV monitoring query. Must produce a Boolean result. The result determines the state of the server. If the expression returns TRUE, the probe succeeds.
	// For example, if you want the appliance to evaluate the error message to determine the state of the server, use the rule C(MYSQL.RES.ROW(10) .TEXT_ELEM(2).EQ("MySQL")).

	evalrule?: string

	// Inband-Security-Id for the Capabilities-Exchange-Request (CER) message to use for monitoring Diameter servers.

	inbandsecurityid?: string

	// Name of the service identifier that is used to connect to the Oracle database during authentication.
	// Minimum length = 1

	oraclesid?: string

	// Calling Stations Id to be used in Account Request Packet. Applicable to monitors of type C(RADIUS_ACCOUNTING).
	// Minimum length = 1

	radmsisdn?: string

	// NAS-Identifier to send in the Access-Request packet. Applicable to monitors of type C(RADIUS).
	// Minimum length = 1

	radnasid?: string

	// Use a secure SSL connection when monitoring a service. Applicable only to TCP based monitors. The secure option cannot be used with a C(CITRIX-AG) monitor, because a CITRIX-AG monitor uses a secure connection by default.

	secure?: bool

	// SQL query for a C(MYSQL-ECV) or C(MSSQL-ECV) monitor. Sent to the database server after the server authenticates the connection.
	// Minimum length = 1

	sqlquery?: string

	// Probe the service by encoding the destination IP address in the IP TOS (6) bits.

	tos?: bool

	// String expected from the server for the service to be marked as trofs. Applicable to HTTP-ECV/TCP-ECV monitors.

	trofsstring?: string

	// User name with which to probe the C(RADIUS), C(NNTP), C(FTP), C(FTP-EXTENDED), C(MYSQL), C(MSSQL), C(POP3), C(CITRIX-AG), C(CITRIX-XD-DDC), C(CITRIX-WI-EXTENDED), C(CITRIX-XNC) or C(CITRIX-XDM) server.
	// Minimum length = 1

	username?: string

	// Authentication key (shared secret text string) for RADIUS clients and servers to exchange. Applicable to monitors of type C(RADIUS) and C(RADIUS_ACCOUNTING).
	// Minimum length = 1

	radkey?: string

	// Mark a service as DOWN, instead of UP, when probe criteria are satisfied, and as UP instead of DOWN when probe criteria are not satisfied.

	reverse?: bool

	// Number of consecutive successful probes required to transition a service's state from DOWN to UP.
	// Minimum value = C(1)
	// Maximum value = C(32)

	successretries?: string

	// Vendor-Id value for the Capabilities-Exchange-Request (CER) message to use for monitoring Diameter servers.

	vendorid?: string

	// List of Vendor-Specific-Acct-Application-Id attribute value pairs (AVPs) to use for monitoring Diameter servers. A maximum of eight of these AVPs are supported in a monitoring message. The specified value is combined with the value of vendorSpecificVendorId to obtain the Vendor-Specific-Application-Id AVP in the CER monitoring message.
	// Minimum value = C(0)
	// Maximum value = C(4294967295)

	vendorspecificacctapplicationids?: string

	// Custom header string to include in the monitoring probes.

	customheaders?: string

	// Number of retries that must fail, out of the number specified for the Retries parameter, for a service to be marked as DOWN. For example, if the Retries parameter is set to 10 and the Failure Retries parameter is set to 6, out of the ten probes sent, at least six probes must fail if the service is to be marked as DOWN. The default value of 0 means that all the retries must fail if the service is to be marked as DOWN.
	// Minimum value = C(0)
	// Maximum value = C(32)

	failureretries?: string

	// Name for the monitor. Must begin with an ASCII alphanumeric or underscore C(_) character, and must contain only ASCII alphanumeric, underscore, hash C(#), period C(.), space C( ), colon C(:), at C(@), equals C(=), and hyphen C(-) characters.
	// Minimum length = 1

	monitorname?: string

	// Name of the network profile.
	// Minimum length = 1
	// Maximum length = 127

	netprofile?: string

	// Network Access Server (NAS) IP address to use as the source IP address when monitoring a RADIUS server. Applicable to monitors of type C(RADIUS) and C(RADIUS_ACCOUNTING).

	radnasip?: string

	// List of Supported-Vendor-Id attribute value pairs (AVPs) for the Capabilities-Exchange-Request (CER) message to use for monitoring Diameter servers. A maximum eight of these AVPs are supported in a monitoring message.
	// Minimum value = C(1)
	// Maximum value = C(4294967295)

	supportedvendorids?: string

	// monitor interval units.

	units3?: string

	// List of Auth-Application-Id attribute value pairs (AVPs) for the Capabilities-Exchange-Request (CER) message to use for monitoring Diameter servers. A maximum of eight of these AVPs are supported in a monitoring CER message.
	// Minimum value = C(0)
	// Maximum value = C(4294967295)

	authapplicationid?: string

	// Domain in which the XenDesktop Desktop Delivery Controller (DDC) servers or Web Interface servers are present. Required by C(CITRIX-XD-DDC) and C(CITRIX-WI-EXTENDED) monitors for logging on to the DDC servers and Web Interface servers, respectively.

	domain?: string

	// Called Station Id to be used in Account Request Packet. Applicable to monitors of type C(RADIUS_ACCOUNTING).
	// Minimum length = 1

	radapn?: string

	// Community name for C(SNMP) monitors.
	// Minimum length = 1

	snmpcommunity?: string

	// The TOS ID of the specified destination IP. Applicable only when the TOS parameter is set.
	// Minimum value = C(1)
	// Maximum value = C(63)

	tosid?: string

	// Time duration for which to wait before probing a service that has been marked as DOWN. Expressed in milliseconds, seconds, or minutes.
	// Minimum value = C(1)
	// Maximum value = C(20939)

	downtime?: string

	// Domain name to resolve as part of monitoring the DNS service (for example, C(example.com)).

	query?: string

	// Account Type to be used in Account Request Packet. Applicable to monitors of type C(RADIUS_ACCOUNTING).
	// Minimum value = 0
	// Maximum value = 15

	radaccounttype?: string

	// Store Name. For monitors of type C(STOREFRONT), C(storename) is an optional argument defining storefront service store name. Applicable to C(STOREFRONT) monitors.
	// Minimum length = 1

	storename?: string

	// SNMP OID for C(SNMP) monitors.
	// Minimum length = 1

	Snmpoid?: string

	// The base distinguished name of the LDAP service, from where the LDAP server can begin the search for the attributes in the monitoring query. Required for C(LDAP) service monitoring.
	// Minimum length = 1

	basedn?: string

	// Port number on which the dispatcher listens for the monitoring probe.

	dispatcherport?: string

	// Name of a newsgroup available on the NNTP service that is to be monitored. The appliance periodically generates an NNTP query for the name of the newsgroup and evaluates the response. If the newsgroup is found on the server, the service is marked as UP. If the newsgroup does not exist or if the search fails, the service is marked as DOWN. Applicable to NNTP monitors.
	// Minimum length = 1

	group?: string

	// Account Session ID to be used in Account Request Packet. Applicable to monitors of type C(RADIUS_ACCOUNTING).
	// Minimum length = 1

	radaccountsession?: string

	// SNMP version to be used for C(SNMP) monitors.

	snmpversion?: string

	// List of Acct-Application-Id attribute value pairs (AVPs) for the Capabilities-Exchange-Request (CER) message to use for monitoring Diameter servers. A maximum of eight of these AVPs are supported in a monitoring message.
	// Minimum value = C(0)
	// Maximum value = C(4294967295)

	acctapplicationid?: string

	// IP address of the service to which to send probes. If the parameter is set to 0, the IP address of the server to which the monitor is bound is considered the destination IP address.

	destip?: string

	// Maximum number of probes to send to establish the state of a service for which a monitoring probe failed.
	// Minimum value = C(1)
	// Maximum value = C(127)

	retries?: string

	// SIP URI string to send to the service (for example, C(sip:sip.test)). Applicable only to monitors of type C(SIP-UDP).
	// Minimum length = 1

	sipuri?: string

	// URL of the logon page. For monitors of type C(CITRIX-WEB-INTERFACE), to monitor a dynamic page under the site path, terminate the site path with a slash C(/). Applicable to C(CITRIX-WEB-INTERFACE), C(CITRIX-WI-EXTENDED) and C(CITRIX-XDM) monitors.
	// Minimum length = 1

	sitepath?: string

	// State of the monitor. The C(disabled) setting disables not only the monitor being configured, but all monitors of the same type, until the parameter is set to C(enabled). If the monitor is bound to a service, the state of the monitor is not taken into account when the state of the service is determined.

	state?: string

	// Code expected when the server is under maintenance.

	trofscode?: string

	// Unit of measurement for the Down Time parameter. Cannot be changed after the monitor is created.

	units2?: string

	// Action to perform when the response to an inline monitor (a monitor of type C(HTTP-INLINE)) indicates that the service is down. A service monitored by an inline monitor is considered C(DOWN) if the response code is not one of the codes that have been specified for the Response Code parameter.
	// Available settings function as follows:
	// * C(NONE) - Do not take any action. However, the show service command and the show lb monitor command indicate the total number of responses that were checked and the number of consecutive error responses received after the last successful probe.
	// * C(LOG) - Log the event in NSLOG or SYSLOG.
	// * C(DOWN) - Mark the service as being down, and then do not direct any traffic to the service until the configured down time has expired. Persistent connections to the service are terminated as soon as the service is marked as C(DOWN). Also, log the event in NSLOG or SYSLOG.

	action?: string

	// TCP or UDP port to which to send the probe. If the parameter is set to 0, the port number of the service to which the monitor is bound is considered the destination port. For a monitor of type C(USER), however, the destination port is the port number that is included in the HTTP request sent to the dispatcher. Does not apply to monitors of type C(PING).

	destport?: string

	// Filter criteria for the LDAP query. Optional.
	// Minimum length = 1

	filter?: string

	// Hostname in the FQDN format (Example: C(porche.cars.org)). Applicable to C(STOREFRONT) monitors.
	// Minimum length = 1

	hostname?: string

	// Version number of the Citrix Advanced Access Control Logon Agent. Required by the C(CITRIX-AAC-LAS) monitor.

	lasversion?: string

	// Metric table to which to bind metrics.
	// Minimum length = 1
	// Maximum length = 99

	metrictable?: string

	// Origin-Host value for the Capabilities-Exchange-Request (CER) message to use for monitoring Diameter servers.
	// Minimum length = 1

	originhost?: string

	// Time value added to the learned average response time in dynamic response time monitoring (DRTM). When a deviation is specified, the appliance learns the average response time of bound services and adds the deviation to the average. The final value is then continually adjusted to accommodate response time variations over time. Specified in milliseconds, seconds, or minutes.
	// Minimum value = C(0)
	// Maximum value = C(20939)

	deviation?: string

	// Send the monitoring probe to the service through an IP tunnel. A destination IP address must be specified.

	iptunnel?: bool

	// Password that is required for logging on to the C(RADIUS), C(NNTP), C(FTP), C(FTP-EXTENDED), C(MYSQL), C(MSSQL), C(POP3), C(CITRIX-AG), C(CITRIX-XD-DDC), C(CITRIX-WI-EXTENDED), C(CITRIX-XNC-ECV) or C(CITRIX-XDM) server. Used in conjunction with the user name specified for the C(username) parameter.
	// Minimum length = 1

	password?: string

	// The monitor is bound to a transparent device such as a firewall or router. The state of a transparent device depends on the responsiveness of the services behind it. If a transparent device is being monitored, a destination IP address must be specified. The probe is sent to the specified IP address by using the MAC address of the transparent device.

	transparent?: bool

	// Name of the application used to determine the state of the service. Applicable to monitors of type C(CITRIX-XML-SERVICE).
	// Minimum length = 1

	application?: string

	// Name of the database to connect to during authentication.
	// Minimum length = 1

	database?: string

	// Name of the logon point that is configured for the Citrix Access Gateway Advanced Access Control software. Required if you want to monitor the associated login page or Logon Agent. Applicable to C(CITRIX-AAC-LAS) and C(CITRIX-AAC-LOGINPAGE) monitors.

	logonpointname?: string

	// Calculate the least response times for bound services. If this parameter is not enabled, the appliance does not learn the response times of the bound services. Also used for LRTM load balancing.

	lrtm?: string

	// Path and name of the script to execute. The script must be available on the NetScaler appliance, in the /nsconfig/monitors/ directory.
	// Minimum length = 1

	scriptname?: string

	// Threshold for C(SNMP) monitors.
	// Minimum length = 1

	snmpthreshold?: string

	// Unit of measurement for the Deviation parameter. Cannot be changed after the monitor is created.

	units1?: string

	// List of Vendor-Specific-Auth-Application-Id attribute value pairs (AVPs) for the Capabilities-Exchange-Request (CER) message to use for monitoring Diameter servers. A maximum of eight of these AVPs are supported in a monitoring message. The specified value is combined with the value of vendorSpecificVendorId to obtain the Vendor-Specific-Application-Id AVP in the CER monitoring message.
	// Minimum value = C(0)
	// Maximum value = C(4294967295)

	vendorspecificauthapplicationids?: string

	// Name of a file on the FTP server. The appliance monitors the FTP service by periodically checking the existence of the file on the server. Applicable to C(FTP-EXTENDED) monitors.
	// Minimum length = 1

	filename?: string

	// Firmware-Revision value for the Capabilities-Exchange-Request (CER) message to use for monitoring Diameter servers.

	firmwarerevision?: string

	// HTTP request to send to the server (for example, C("HEAD /file.html")).

	httprequest?: string

	// KCD Account used by C(MSSQL) monitor.
	// Minimum length = 1
	// Maximum length = 32

	kcdaccount?: string

	// Store the database list populated with the responses to monitor probes. Used in database specific load balancing if C(MSSQL-ECV)/C(MYSQL-ECV) monitor is configured.

	storedb?: string

	// monitor response timeout units.

	units4?: string

	// Attribute to evaluate when the LDAP server responds to the query. Success or failure of the monitoring probe depends on whether the attribute exists in the response. Optional.
	// Minimum length = 1

	attribute?: string

	// IP address of the dispatcher to which to send the probe.

	dispatcherip?: string

	// Version of MSSQL server that is to be monitored.

	mssqlprotocolversion?: string

	// Source ip with which the packet will go out . Applicable to monitors of type C(RADIUS_ACCOUNTING).

	radframedip?: string

	// Response time threshold, specified as a percentage of the Response Time-out parameter. If the response to a monitor probe has not arrived when the threshold is reached, the appliance generates an SNMP trap called monRespTimeoutAboveThresh. After the response time returns to a value below the threshold, the appliance generates a monRespTimeoutBelowThresh SNMP trap. For the traps to be generated, the "MONITOR-RTO-THRESHOLD" alarm must also be enabled.
	// Minimum value = C(0)
	// Maximum value = C(100)

	resptimeoutthresh?: string

	// SIP method to use for the query. Applicable only to monitors of type C(SIP-UDP).

	sipmethod?: string

	// Vendor-Id to use in the Vendor-Specific-Application-Id grouped attribute-value pair (AVP) in the monitoring CER message. To specify Auth-Application-Id or Acct-Application-Id in Vendor-Specific-Application-Id, use vendorSpecificAuthApplicationIds or vendorSpecificAcctApplicationIds, respectively. Only one Vendor-Id is supported for all the Vendor-Specific-Application-Id AVPs in a CER monitoring message.
	// Minimum value = 1

	vendorspecificvendorid?: string

	// The distinguished name with which an LDAP monitor can perform the Bind operation on the LDAP server. Optional. Applicable to C(LDAP) monitors.
	// Minimum length = 1

	binddn?: string

	// Set of IP addresses expected in the monitoring response from the DNS server, if the record type is A or AAAA. Applicable to C(DNS) monitors.
	// Minimum length = 1

	ipaddress?: string

	// Maximum number of hops that the SIP request used for monitoring can traverse to reach the server. Applicable only to monitors of type C(SIP-UDP).
	// Minimum value = C(0)
	// Maximum value = C(255)

	maxforwards?: string

	// Response codes for which to mark the service as UP. For any other response code, the action performed depends on the monitor type. C(HTTP) monitors and C(RADIUS) monitors mark the service as C(DOWN), while C(HTTP-INLINE) monitors perform the action indicated by the Action parameter.

	respcode?: string

	// Amount of time for which the appliance must wait before it marks a probe as FAILED. Must be less than the value specified for the Interval parameter.
	// Note: For C(UDP-ECV) monitors for which a receive string is not configured, response timeout does not apply. For C(UDP-ECV) monitors with no receive string, probe failure is indicated by an ICMP port unreachable error received from the service.
	// Minimum value = C(1)
	// Maximum value = C(20939)

	resptimeout?: string

	// String to send to the service. Applicable to C(TCP-ECV), C(HTTP-ECV), and C(UDP-ECV) monitors.

	send?: string

	// Type of monitor that you want to create.

	type?: string
}

netscaler_gslb_service :: {

	// Name of the GSLB site to which the service belongs.
	// Minimum length = 1

	sitename?: string

	// The public IP address that a NAT device translates to the GSLB service's private IP address. Optional.

	publicip?: string

	// Type of service to create.

	servicetype?: string

	// Maximum number of SSL VPN users that can be logged on concurrently to the VPN virtual server that is represented by this GSLB service. A GSLB service whose user count reaches the maximum is not considered when a GSLB decision is made, until the count drops below the maximum.
	// Minimum value = C(0)
	// Maximum value = C(65535)

	maxaaausers?: string

	// Integer specifying the maximum bandwidth allowed for the service. A GSLB service whose bandwidth reaches the maximum is not considered when a GSLB decision is made, until its bandwidth consumption drops below the maximum.

	maxbandwidth?: string

	// The maximum number of open connections that the service can support at any given time. A GSLB service whose connection count reaches the maximum is not considered when a GSLB decision is made, until the connection count drops below the maximum.
	// Minimum value = C(0)
	// Maximum value = C(4294967294)

	maxclient?: string

	// Name of the server hosting the GSLB service.
	// Minimum length = 1

	servername?: string

	// Use cookie-based site persistence. Applicable only to C(HTTP) and C(SSL) GSLB services.

	sitepersistence?: string

	// Canonical name of the GSLB service. Used in CNAME-based GSLB.
	// Minimum length = 1

	cnameentry?: string

	// Flush all active transactions associated with the GSLB service when its state transitions from UP to DOWN. Do not enable this option for services that must complete their transactions. Applicable if connection proxy based site persistence is used.

	downstateflush?: string

	// Any comments that you might want to associate with the GSLB service.

	comment?: string

	// Monitor the health of the GSLB service.

	healthmonitor?: bool

	// Monitoring threshold value for the GSLB service. If the sum of the weights of the monitors that are bound to this GSLB service and are in the UP state is not equal to or greater than this threshold value, the service is marked as DOWN.
	// Minimum value = C(0)
	// Maximum value = C(65535)

	monthreshold?: string

	// Port on which the load balancing entity represented by this GSLB service listens.
	// Minimum value = 1
	// Range 1 - 65535
	// * in CLI is represented as 65535 in NITRO API

	port?: string

	// Name for the GSLB service. Must begin with an ASCII alphanumeric or underscore C(_) character, and must contain only ASCII alphanumeric, underscore C(_), hash C(#), period C(.), space, colon C(:), at C(@), equals C(=), and hyphen C(-) characters. Can be changed after the GSLB service is created.
	// 
	// Minimum length = 1

	servicename?: string

	// Name for the HTTP header that stores the client's IP address. Used with the Client IP option. If client IP header insertion is enabled on the service and a name is not specified for the header, the NetScaler appliance uses the name specified by the cipHeader parameter in the set ns param command or, in the GUI, the Client IP Header parameter in the Configure HTTP Parameters dialog box.
	// Minimum length = 1

	cipheader?: string

	// Idle time, in seconds, after which a client connection is terminated. Applicable if connection proxy based site persistence is used.
	// Minimum value = 0
	// Maximum value = 31536000

	clttimeout?: string

	// Unique hash identifier for the GSLB service, used by hash based load balancing methods.
	// Minimum value = C(1)

	hashid?: string

	// IP address for the GSLB service. Should represent a load balancing, content switching, or VPN virtual server on the NetScaler appliance, or the IP address of another load balancing device.

	ipaddress?: string

	// Bind monitors to this gslb service

	monitor_bindings?: string

	// The public port associated with the GSLB service's public IP address. The port is mapped to the service's private port number. Applicable to the local GSLB service. Optional.

	publicport?: string

	// The site's prefix string. When the service is bound to a GSLB virtual server, a GSLB site domain is generated internally for each bound service-domain pair by concatenating the site prefix of the service and the name of the domain. If the special string NONE is specified, the site-prefix string is unset. When implementing HTTP redirect site persistence, the NetScaler appliance redirects GSLB requests to GSLB services by using their site domains.

	siteprefix?: string

	// Enable logging appflow flow information.

	appflowlog?: string

	// In the request that is forwarded to the GSLB service, insert a header that stores the client's IP address. Client IP header insertion is used in connection-proxy based site persistence.

	cip?: string
}

netscaler_lb_vserver :: {

	// Fully qualified domain name (FQDN) of the authentication virtual server to which the user must be redirected for authentication. Make sure that the Authentication parameter is set to C(yes).
	// Minimum length = 3
	// Maximum length = 252

	authenticationhost?: string

	// Idle time, in seconds, after which a client connection is terminated.
	// Minimum value = C(0)
	// Maximum value = C(31536000)

	clttimeout?: string

	// Offset to be considered when extracting a token from the TCP payload. Applicable to virtual servers, of type TCP, using the token method of load balancing. Must be within the first 24 KB of the TCP payload.
	// Minimum value = C(0)
	// Maximum value = C(25400)

	dataoffset?: string

	// This argument decides the behavior incase the service which is selected from an existing persistence session has reached threshold.

	skippersistency?: string

	// Name of the network profile to associate with the virtual server. If you set this parameter, the virtual server uses only the IP addresses in the network profile as source IP addresses when initiating connections with servers.
	// Minimum length = 1
	// Maximum length = 127

	netprofile?: string

	// Type of persistence for the virtual server. Available settings function as follows:
	// * C(SOURCEIP) - Connections from the same client IP address belong to the same persistence session.
	// * C(COOKIEINSERT) - Connections that have the same HTTP Cookie, inserted by a Set-Cookie directive from a server, belong to the same persistence session.
	// * C(SSLSESSION) - Connections that have the same SSL Session ID belong to the same persistence session.
	// * C(CUSTOMSERVERID) - Connections with the same server ID form part of the same session. For this persistence type, set the Server ID (CustomServerID) parameter for each service and configure the Rule parameter to identify the server ID in a request.
	// * C(RULE) - All connections that match a user defined rule belong to the same persistence session.
	// * C(URLPASSIVE) - Requests that have the same server ID in the URL query belong to the same persistence session. The server ID is the hexadecimal representation of the IP address and port of the service to which the request must be forwarded. This persistence type requires a rule to identify the server ID in the request.
	// * C(DESTIP) - Connections to the same destination IP address belong to the same persistence session.
	// * C(SRCIPDESTIP) - Connections that have the same source IP address and destination IP address belong to the same persistence session.
	// * C(CALLID) - Connections that have the same CALL-ID SIP header belong to the same persistence session.
	// * C(RTSPSID) - Connections that have the same RTSP Session ID belong to the same persistence session.
	// * FIXSESSION - Connections that have the same SenderCompID and TargetCompID values belong to the same persistence session.

	persistencetype?: string

	// Time period for which a persistence session is in effect.
	// Minimum value = C(0)
	// Maximum value = C(1440)

	timeout?: string

	// Name of an authentication virtual server with which to authenticate users.
	// Minimum length = 1
	// Maximum length = 252

	authnvsname?: string

	// Any comments that you might want to associate with the virtual server.

	comment?: string

	// Enable database specific load balancing for MySQL and MSSQL service types.

	dbslb?: string

	// When set to C(yes) the lb vserver will be disabled.
	// When set to C(no) the lb vserver will be enabled.
	// Note that due to limitations of the underlying NITRO API a C(disabled) state change alone does not cause the module result to report a changed status.

	disabled?: bool

	// IP address pattern, in dotted decimal notation, for identifying packets to be accepted by the virtual server. The IP Mask parameter specifies which part of the destination IP address is matched against the pattern. Mutually exclusive with the IP Address parameter.
	// For example, if the IP pattern assigned to the virtual server is C(198.51.100.0) and the IP mask is C(255.255.240.0) (a forward mask), the first 20 bits in the destination IP addresses are matched with the first 20 bits in the pattern. The virtual server accepts requests with IP addresses that range from C(198.51.96.1) to C(198.51.111.254). You can also use a pattern such as C(0.0.2.2) and a mask such as C(0.0.255.255) (a reverse mask).
	// If a destination IP address matches more than one IP pattern, the pattern with the longest match is selected, and the associated virtual server processes the request. For example, if virtual servers C(vs1) and C(vs2) have the same IP pattern, C(0.0.100.128), but different IP masks of C(0.0.255.255) and C(0.0.224.255), a destination IP address of C(198.51.100.128) has the longest match with the IP pattern of vs1. If a destination IP address matches two or more virtual servers to the same extent, the request is processed by the virtual server whose port number matches the port number in the request.

	ippattern?: string

	// Enable or disable user authentication with HTTP 401 responses.

	authn401?: bool

	// Length of the token to be extracted from the data segment of an incoming packet, for use in the token method of load balancing. The length of the token, specified in bytes, must not be greater than 24 KB. Applicable to virtual servers of type TCP.
	// Minimum value = C(1)
	// Maximum value = C(100)

	datalength?: string

	// Use Layer 2 parameters (channel number, MAC address, and VLAN ID) in addition to the 4-tuple (<source IP>:<source port>::<destination IP>:<destination port>) that is used to identify a connection. Allows multiple TCP and non-TCP connections with the same 4-tuple to co-exist on the NetScaler appliance.

	l2conn?: bool

	// IPv4 subnet mask to apply to the destination IP address or source IP address when the load balancing method is C(DESTINATIONIPHASH) or C(SOURCEIPHASH).
	// Minimum length = 1

	netmask?: string

	// Name for the inserted header. The default name is vip-header.
	// Minimum length = 1

	vipheader?: string

	// If spillover occurs, maintain source IP address based persistence for both primary and backup virtual servers.

	sopersistence?: string

	// Number of bits to consider in an IPv6 destination or source IP address, for creating the hash that is required by the C(DESTINATIONIPHASH) and C(SOURCEIPHASH) load balancing methods.
	// Minimum value = C(1)
	// Maximum value = C(128)

	v6netmasklen?: string

	// Use this parameter to specify the cookie name for C(COOKIE) persistence type. It specifies the name of cookie with a maximum of 32 characters. If not specified, cookie name is internally generated.

	cookiename?: string

	// Flush all active transactions associated with a virtual server whose state transitions from UP to DOWN. Do not enable this option for applications that must complete their transactions.

	downstateflush?: string

	// Load balancing method. The available settings function as follows:
	// * C(ROUNDROBIN) - Distribute requests in rotation, regardless of the load. Weights can be assigned to services to enforce weighted round robin distribution.
	// * C(LEASTCONNECTION) (default) - Select the service with the fewest connections.
	// * C(LEASTRESPONSETIME) - Select the service with the lowest average response time.
	// * C(LEASTBANDWIDTH) - Select the service currently handling the least traffic.
	// * C(LEASTPACKETS) - Select the service currently serving the lowest number of packets per second.
	// * C(CUSTOMLOAD) - Base service selection on the SNMP metrics obtained by custom load monitors.
	// * C(LRTM) - Select the service with the lowest response time. Response times are learned through monitoring probes. This method also takes the number of active connections into account.
	// Also available are a number of hashing methods, in which the appliance extracts a predetermined portion of the request, creates a hash of the portion, and then checks whether any previous requests had the same hash value. If it finds a match, it forwards the request to the service that served those previous requests. Following are the hashing methods:
	// * C(URLHASH) - Create a hash of the request URL (or part of the URL).
	// * C(DOMAINHASH) - Create a hash of the domain name in the request (or part of the domain name). The domain name is taken from either the URL or the Host header. If the domain name appears in both locations, the URL is preferred. If the request does not contain a domain name, the load balancing method defaults to C(LEASTCONNECTION).
	// * C(DESTINATIONIPHASH) - Create a hash of the destination IP address in the IP header.
	// * C(SOURCEIPHASH) - Create a hash of the source IP address in the IP header.
	// * C(TOKEN) - Extract a token from the request, create a hash of the token, and then select the service to which any previous requests with the same token hash value were sent.
	// * C(SRCIPDESTIPHASH) - Create a hash of the string obtained by concatenating the source IP address and destination IP address in the IP header.
	// * C(SRCIPSRCPORTHASH) - Create a hash of the source IP address and source port in the IP header.
	// * C(CALLIDHASH) - Create a hash of the SIP Call-ID header.

	lbmethod?: string

	// This option is used to retain vlan information of incoming packet when macmode is enabled.

	macmoderetainvlan?: string

	// List of service groups along with the weights that are load balanced.
	// The following suboptions are available.

	servicegroupbindings?: string

	// Type of threshold that, when exceeded, triggers spillover. Available settings function as follows:
	// * C(CONNECTION) - Spillover occurs when the number of client connections exceeds the threshold.
	// * DYNAMICCONNECTION - Spillover occurs when the number of client connections at the virtual server exceeds the sum of the maximum client (Max Clients) settings for bound services. Do not specify a spillover threshold for this setting, because the threshold is implied by the Max Clients settings of bound services.
	// * C(BANDWIDTH) - Spillover occurs when the bandwidth consumed by the virtual server's incoming and outgoing traffic exceeds the threshold.
	// * C(HEALTH) - Spillover occurs when the percentage of weights of the services that are UP drops below the threshold. For example, if services svc1, svc2, and svc3 are bound to a virtual server, with weights 1, 2, and 3, and the spillover threshold is 50%, spillover occurs if svc1 and svc3 or svc2 and svc3 transition to DOWN.
	// * C(NONE) - Spillover does not occur.

	somethod?: string

	// Backup load balancing method. Becomes operational if the primary load balancing me
	// thod fails or cannot be used.
	// Valid only if the primary method is based on static proximity.

	backuplbmethod?: string

	// Mode in which the connection failover feature must operate for the virtual server. After a failover, established TCP connections and UDP packet flows are kept active and resumed on the secondary appliance. Clients remain connected to the same servers. Available settings function as follows:
	// * C(STATEFUL) - The primary appliance shares state information with the secondary appliance, in real time, resulting in some runtime processing overhead.
	// * C(STATELESS) - State information is not shared, and the new primary appliance tries to re-create the packet flow on the basis of the information contained in the packets it receives.
	// * C(DISABLED) - Connection failover does not occur.

	connfailover?: string

	// Character set that the virtual server advertises to clients.

	mysqlcharacterset?: string

	// Oracle server version.

	oracleserverversion?: string

	// By turning on this option packets destined to a vserver in a cluster will not under go any steering. Turn this option for single packet request response mode or when the upstream device is performing a proper RSS for connection based distribution.

	processlocal?: string

	// Number of bytes to consider for the hash value used in the URLHASH and DOMAINHASH load balancing methods.
	// Minimum value = C(1)
	// Maximum value = C(4096)

	hashlength?: string

	// MySQL server version string that the virtual server advertises to clients.
	// Minimum length = 1
	// Maximum length = 31

	mysqlserverversion?: string

	// Process traffic with the push virtual server that is bound to this load balancing virtual server.

	push?: string

	// Number of IP addresses that the appliance must generate and assign to the virtual server. The virtual server then functions as a network virtual server, accepting traffic on any of the generated IP addresses. The IP addresses are generated automatically, as follows:
	// * For a range of n, the last octet of the address specified by the IP Address parameter increments n-1 times.
	// * If the last octet exceeds 255, it rolls over to 0 and the third octet increments by 1.
	// Note: The Range parameter assigns multiple IP addresses to one virtual server. To generate an array of virtual servers, each of which owns only one IP address, use brackets in the IP Address and Name parameters to specify the range. For example:
	// add lb vserver my_vserver[1-3] HTTP 192.0.2.[1-3] 80.
	// Minimum value = C(1)
	// Maximum value = C(254)

	range?: string

	// Threshold at which spillover occurs. Specify an integer for the C(CONNECTION) spillover method, a bandwidth value in kilobits per second for the C(BANDWIDTH) method (do not enter the units), or a percentage for the C(HEALTH) method (do not enter the percentage symbol).
	// Minimum value = C(1)
	// Maximum value = C(4294967287)

	sothreshold?: string

	// If the primary virtual server goes down, do not allow it to return to primary status until manually enabled.

	disableprimaryondown?: string

	// Default syntax expression identifying traffic accepted by the virtual server. Can be either an expression (for example, C(CLIENT.IP.DST.IN_SUBNET(192.0.2.0/24)) or the name of a named expression. In the above example, the virtual server accepts all requests whose destination IP address is in the 192.0.2.0/24 subnet.

	listenpolicy?: string

	// URL to which to redirect traffic if the virtual server becomes unavailable.
	// WARNING! Make sure that the domain in the URL does not match the domain specified for a content switching policy. If it does, requests are continuously redirected to the unavailable virtual server.
	// Minimum length = 1

	redirurl?: string

	// Integer value that uniquely identifies the traffic domain in which you want to configure the entity. If you do not specify an ID, the entity becomes part of the default traffic domain, which has an ID of 0.
	// Minimum value = C(0)
	// Maximum value = C(4094)

	td?: string

	// How the NetScaler appliance responds to ping requests received for an IP address that is common to one or more virtual servers. Available settings function as follows:
	// * If set to C(PASSIVE) on all the virtual servers that share the IP address, the appliance always responds to the ping requests.
	// * If set to C(ACTIVE) on all the virtual servers that share the IP address, the appliance responds to the ping requests if at least one of the virtual servers is UP. Otherwise, the appliance does not respond.
	// * If set to C(ACTIVE) on some virtual servers and PASSIVE on the others, the appliance responds if at least one virtual server with the ACTIVE setting is UP. Otherwise, the appliance does not respond.
	// Note: This parameter is available at the virtual server level. A similar parameter, ICMP Response, is available at the IP address level, for IPv4 addresses of type VIP. To set that parameter, use the add ip command in the CLI or the Create IP dialog box in the GUI.

	icmpvsrresponse?: string

	// IP mask, in dotted decimal notation, for the IP Pattern parameter. Can have leading or trailing non-zero octets (for example, C(255.255.240.0) or C(0.0.255.255)). Accordingly, the mask specifies whether the first n bits or the last n bits of the destination IP address in a client request are to be matched with the corresponding bits in the IP pattern. The former is called a forward mask. The latter is called a reverse mask.

	ipmask?: string

	// Integer specifying the priority of the listen policy. A higher number specifies a lower priority. If a request matches the listen policies of more than one virtual server the virtual server whose listen policy has the highest priority (the lowest priority number) accepts the request.
	// Minimum value = C(0)
	// Maximum value = C(101)

	listenpriority?: string

	// For a load balancing virtual server of type C(MSSQL), the Microsoft SQL Server version. Set this parameter if you expect some clients to run a version different from the version of the database. This setting provides compatibility between the client-side and server-side connections by ensuring that all communication conforms to the server's version.

	mssqlserverversion?: string

	// Backup persistence type for the virtual server. Becomes operational if the primary persistence mechanism fails.

	persistencebackup?: string

	// Threshold in percent of active services below which vserver state is made down. If this threshold is 0, vserver state will be up even if one bound service is up.
	// Minimum value = C(0)
	// Maximum value = C(100)

	healththreshold?: string

	// IPv4 or IPv6 address to assign to the virtual server.

	ipv46?: string

	// Redirection mode for load balancing. Available settings function as follows:
	// * C(IP) - Before forwarding a request to a server, change the destination IP address to the server's IP address.
	// * C(MAC) - Before forwarding a request to a server, change the destination MAC address to the server's MAC address. The destination IP address is not changed. MAC-based redirection mode is used mostly in firewall load balancing deployments.
	// * C(IPTUNNEL) - Perform IP-in-IP encapsulation for client IP packets. In the outer IP headers, set the destination IP address to the IP address of the server and the source IP address to the subnet IP (SNIP). The client IP packets are not modified. Applicable to both IPv4 and IPv6 packets.
	// * C(TOS) - Encode the virtual server's TOS ID in the TOS field of the IP header.
	// You can use either the C(IPTUNNEL) or the C(TOS) option to implement Direct Server Return (DSR).

	m?: string

	// Number of requests, or percentage of the load on existing services, by which to increase the load on a new service at each interval in slow-start mode. A non-zero value indicates that slow-start is applicable. A zero value indicates that the global RR startup parameter is applied. Changing the value to zero will cause services currently in slow start to take the full traffic as determined by the LB method. Subsequently, any new services added will use the global RR factor.

	newservicerequest?: string

	// Name of the authentication profile to be used when authentication is turned on.

	authnprofile?: string

	// Minimum number of members expected to be present when vserver is used in Autoscale.
	// Minimum value = C(0)
	// Maximum value = C(5000)

	minautoscalemembers?: string

	// Name of the load balancing virtual server, of type PUSH or SSL_PUSH, to which the server pushes updates received on the load balancing virtual server that you are configuring.
	// Minimum length = 1

	pushvserver?: string

	// Name of the TCP profile whose settings are to be applied to the virtual server.
	// Minimum length = 1
	// Maximum length = 127

	tcpprofilename?: string

	// Apply AppFlow logging to the virtual server.

	appflowlog?: string

	// If this option is enabled while resolving DNS64 query AAAA queries are not sent to back end dns server.

	bypassaaaa?: bool

	// Maximum number of members expected to be present when vserver is used in Autoscale.
	// Minimum value = C(0)
	// Maximum value = C(5000)

	maxautoscalemembers?: string

	// When set to YES, this option causes the DNS replies from this vserver to have the RA bit turned on. Typically one would set this option to YES, when the vserver is load balancing a set of DNS servers thatsupport recursive queries.

	recursionavailable?: bool

	// The name of the ssl certificate that is bound to this service.
	// The ssl certificate must already exist.
	// Creating the certificate can be done with the M(netscaler_ssl_certkey) module.
	// This option is only applicable only when C(servicetype) is C(SSL).

	ssl_certkey?: string

	// Persistence mask for IP based persistence types, for IPv4 virtual servers.
	// Minimum length = 1

	persistmask?: string

	// List of services along with the weights that are load balanced.
	// The following suboptions are available.

	servicebindings?: string

	// Timeout for spillover persistence, in minutes.
	// Minimum value = C(2)
	// Maximum value = C(1440)

	sopersistencetimeout?: string

	// Enable or disable user authentication.

	authentication?: bool

	// Units in which to increment load at each interval in slow-start mode.

	newservicerequestunit?: string

	// Default syntax expression specifying which part of a server's response to use for creating rule based persistence sessions (persistence type RULE). Can be either an expression or the name of a named expression.
	// Example:
	// C(HTTP.RES.HEADER("setcookie").VALUE(0).TYPECAST_NVLIST_T('=',';').VALUE("server1")).

	resrule?: string

	// Name of the HTTP profile whose settings are to be applied to the virtual server.
	// Minimum length = 1
	// Maximum length = 127

	httpprofilename?: string

	// Server capabilities that the virtual server advertises to clients.

	mysqlservercapabilities?: string

	// Use network address translation (NAT) for RTSP data connections.

	rtspnat?: bool

	// Persistence mask for IP based persistence types, for IPv6 virtual servers.
	// Minimum value = C(1)
	// Maximum value = C(128)

	v6persistmasklen?: string

	// Perform load balancing on a per-packet basis, without establishing sessions. Recommended for load balancing of intrusion detection system (IDS) servers and scenarios involving direct server return (DSR), where session information is unnecessary.

	sessionless?: string

	// TOS ID of the virtual server. Applicable only when the load balancing redirection mode is set to TOS.
	// Minimum value = C(1)
	// Maximum value = C(63)

	tosid?: string

	// Route cacheable requests to a cache redirection virtual server. The load balancing virtual server can forward requests only to a transparent cache redirection virtual server that has an IP address and port combination of *:80, so such a cache redirection virtual server must be configured on the appliance.

	cacheable?: bool

	// Name of the DB profile whose settings are to be applied to the virtual server.
	// Minimum length = 1
	// Maximum length = 127

	dbprofilename?: string

	// Name of the DNS profile to be associated with the VServer. DNS profile properties will be applied to the transactions processed by a VServer. This parameter is valid only for DNS and DNS-TCP VServers.
	// Minimum length = 1
	// Maximum length = 127

	dnsprofilename?: string

	// Port number for the virtual server.
	// Range C(1) - C(65535)
	// * in CLI is represented as C(65535) in NITRO API

	port?: string

	// Allow multiple Web 2.0 connections from the same client to connect to the virtual server and expect updates.

	pushmulticlients?: bool

	// Interval, in seconds, between successive increments in the load on a new service or a service whose state has just changed from DOWN to UP. A value of 0 (zero) specifies manual slow start.
	// Minimum value = C(0)
	// Maximum value = C(3600)

	newservicerequestincrementinterval?: string

	// Persist AVP number for Diameter Persistency.
	// In case this AVP is not defined in Base RFC 3588 and it is nested inside a Grouped AVP,
	// define a sequence of AVP numbers (max 3) in order of parent to child. So say persist AVP number X
	// is nested inside AVP Y which is nested in Z, then define the list as Z Y X.
	// Minimum value = C(1)

	persistavpno?: string

	// Expression for extracting a label from the server's response. Can be either an expression or the name of a named expression.

	pushlabel?: string

	// Time period for which backup persistence is in effect.
	// Minimum value = C(2)
	// Maximum value = C(1440)

	backuppersistencetimeout?: string

	// This argument is for enabling/disabling the C(dns64) on lbvserver.

	dns64?: string

	// Insert an HTTP header, whose value is the IP address and port number of the virtual server, before forwarding a request to the server. The format of the header is <vipHeader>: <virtual server IP address>_<port number >, where vipHeader is the name that you specify for the header. If the virtual server has an IPv6 address, the address in the header is enclosed in brackets ([ and ]) to separate it from the port number. If you have mapped an IPv4 address to a virtual server's IPv6 address, the value of this parameter determines which IP address is inserted in the header, as follows:
	// * C(VIPADDR) - Insert the IP address of the virtual server in the HTTP header regardless of whether the virtual server has an IPv4 address or an IPv6 address. A mapped IPv4 address, if configured, is ignored.
	// * C(V6TOV4MAPPING) - Insert the IPv4 address that is mapped to the virtual server's IPv6 address. If a mapped IPv4 address is not configured, insert the IPv6 address.
	// * C(OFF) - Disable header insertion.

	insertvserveripport?: string

	// MySQL protocol version that the virtual server advertises to clients.

	mysqlprotocolversion?: string

	// Name for the virtual server. Must begin with an ASCII alphanumeric or underscore C(_) character, and must contain only ASCII alphanumeric, underscore, hash C(#), period C(.), space C( ), colon C(:), at sign C(@), equal sign C(=), and hyphen C(-) characters. Can be changed after the virtual server is created.
	// Minimum length = 1

	name?: string

	// Rewrite the port and change the protocol to ensure successful HTTP redirects from services.

	redirectportrewrite?: string

	// Route Health Injection (RHI) functionality of the NetSaler appliance for advertising the route of the VIP address associated with the virtual server. When Vserver RHI Level (RHI) parameter is set to VSVR_CNTRLD, the following are different RHI behaviors for the VIP address on the basis of RHIstate (RHI STATE) settings on the virtual servers associated with the VIP address:
	// * If you set C(rhistate) to C(PASSIVE) on all virtual servers, the NetScaler ADC always advertises the route for the VIP address.
	// * If you set C(rhistate) to C(ACTIVE) on all virtual servers, the NetScaler ADC advertises the route for the VIP address if at least one of the associated virtual servers is in UP state.
	// * If you set C(rhistate) to C(ACTIVE) on some and PASSIVE on others, the NetScaler ADC advertises the route for the VIP address if at least one of the associated virtual servers, whose C(rhistate) set to C(ACTIVE), is in UP state.

	rhistate?: string

	// Protocol used by the service (also called the service type).

	servicetype?: string

	// Action to be performed if spillover is to take effect, but no backup chain to spillover is usable or exists.

	sobackupaction?: string
}

netscaler_ssl_certkey :: {

	// Pass phrase used to encrypt the private-key. Required when adding an encrypted private-key in PEM format.
	// Minimum length = 1

	passplain?: string

	// Passphrase that was used to encrypt the private-key. Use this option to load encrypted private-keys in PEM format.

	password?: string

	// Name of and, optionally, path to the X509 certificate file that is used to form the certificate-key pair. The certificate file should be present on the appliance's hard-disk drive or solid-state drive. Storing a certificate in any location other than the default might cause inconsistency in a high availability setup. /nsconfig/ssl/ is the default path.
	// Minimum length = 1

	cert?: string

	// Name for the certificate and private-key pair. Must begin with an ASCII alphanumeric or underscore C(_) character, and must contain only ASCII alphanumeric, underscore C(_), hash C(#), period C(.), space C( ), colon C(:), at C(@), equals C(=), and hyphen C(-) characters. Cannot be changed after the certificate-key pair is created.
	// The following requirement applies only to the NetScaler CLI:
	// If the name includes one or more spaces, enclose the name in double or single quotation marks (for example, "my cert" or 'my cert').
	// Minimum length = 1

	certkey?: string

	// Issue an alert when the certificate is about to expire.

	expirymonitor?: string

	// Input format of the certificate and the private-key files. The three formats supported by the appliance are:
	// PEM - Privacy Enhanced Mail
	// DER - Distinguished Encoding Rule
	// PFX - Personal Information Exchange.

	inform?: string

	// Name of and, optionally, path to the private-key file that is used to form the certificate-key pair. The certificate file should be present on the appliance's hard-disk drive or solid-state drive. Storing a certificate in any location other than the default might cause inconsistency in a high availability setup. /nsconfig/ssl/ is the default path.
	// Minimum length = 1

	key?: string

	// Time, in number of days, before certificate expiration, at which to generate an alert that the certificate is about to expire.
	// Minimum value = C(10)
	// Maximum value = C(100)

	notificationperiod?: string
}

netscaler_cs_action :: {

	// Comments associated with this cs action.

	comment?: string

	// Name for the content switching action. Must begin with an ASCII alphanumeric or underscore C(_) character, and must contain only ASCII alphanumeric, underscore C(_), hash C(#), period C(.), space C( ), colon C(:), at sign C(@), equal sign C(=), and hyphen C(-) characters. Can be changed after the content switching action is created.

	name?: string

	// Name of the load balancing virtual server to which the content is switched.

	targetlbvserver?: string

	// Name of the VPN virtual server to which the content is switched.

	targetvserver?: string

	// Information about this content switching action.

	targetvserverexpr?: string
}

netscaler_cs_policy :: {

	// Content switching action that names the target load balancing virtual server to which the traffic is switched.

	action?: string

	// The domain name. The string value can range to 63 characters.
	// Minimum length = 1

	domain?: string

	// Name for the content switching policy. Must begin with an ASCII alphanumeric or underscore C(_) character, and must contain only ASCII alphanumeric, underscore, hash C(#), period C(.), space C( ), colon C(:), at sign C(@), equal sign C(=), and hyphen C(-) characters. Cannot be changed after a policy is created.
	// The following requirement applies only to the NetScaler CLI:
	// If the name includes one or more spaces, enclose the name in double or single quotation marks (for example, my policy or my policy).
	// Minimum length = 1

	policyname?: string

	// Expression, or name of a named expression, against which traffic is evaluated. Written in the classic or default syntax.
	// Note:
	// Maximum length of a string literal in the expression is 255 characters. A longer string can be split into smaller strings of up to 255 characters each, and the smaller strings concatenated with the + operator. For example, you can create a 500-character string as follows: '"<string of 255 characters>" + "<string of 245 characters>"'

	rule?: string

	// URL string that is matched with the URL of a request. Can contain a wildcard character. Specify the string value in the following format: C([[prefix] [*]] [.suffix]).
	// Minimum length = 1
	// Maximum length = 208

	url?: string
}

netscaler_nitro_request :: {

	// The attributes of the Nitro object we are operating on.
	// It is required for the following I(operation) values: C(add), C(update), C(action).

	attributes?: string

	// The name of the resource we are operating on.
	// It is required for the following I(operation) values: C(update), C(get), C(delete).

	name?: string

	// The authentication token provided by the C(mas_login) operation. It is required when issuing Nitro API calls through a MAS proxy.

	nitro_auth_token?: string

	// Which protocol to use when accessing the Nitro API objects.

	nitro_protocol?: string

	// Define the Nitro operation that we want to perform.

	operation?: string

	// A dictionary which defines the key arguments by which we will select the Nitro object to operate on.
	// It is required for the following I(operation) values: C(get_by_args), C('delete_by_args').

	args?: string

	// A list of numeric values that signify that the operation was successful.

	expected_nitro_errorcode: string

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool

	// The id of the target Netscaler instance when issuing a Nitro request through a MAS proxy.

	instance_id?: string

	// The IP address of the target Netscaler instance when issuing a Nitro request through a MAS proxy.

	instance_ip?: string

	// The type of resource we are operating on.
	// It is required for all I(operation) values except C(mas_login) and C(save_config).

	resource?: string

	// The action to perform when the I(operation) value is set to C(action).
	// Some common values for this parameter are C(enable), C(disable), C(rename).

	action?: string

	// A dictionary which defines the filter with which to refine the Nitro objects returned by the C(get_filtered) I(operation).

	filter?: string

	// The name of the target Netscaler instance when issuing a Nitro request through a MAS proxy.

	instance_name?: string

	// The password with which to authenticate to the Netscaler node.

	nitro_pass: string

	// The username with which to authenticate to the Netscaler node.

	nitro_user: string

	// The IP address of the Netscaler or MAS instance where the Nitro API calls will be made.
	// The port can be specified with the colon C(:). E.g. C(192.168.1.1:555).

	nsip?: string
}

netscaler_save_config :: {

	// The password with which to authenticate to the netscaler node.

	nitro_pass: string

	// Which protocol to use when accessing the nitro API objects.

	nitro_protocol?: string

	// Time in seconds until a timeout error is thrown when establishing a new session with Netscaler.

	nitro_timeout?: string

	// The username with which to authenticate to the netscaler node.

	nitro_user: string

	// The ip address of the netscaler appliance where the nitro API calls will be made.
	// The port can be specified with the colon (:). E.g. C(192.168.1.1:555).

	nsip: string

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool
}

netscaler_servicegroup :: {

	// Enable compression for the specified service.

	cmp?: bool

	// Name of the HTTP profile that contains HTTP configuration settings for the service group.
	// Minimum length = 1
	// Maximum length = 127

	httpprofilename?: string

	// Name of the TCP profile that contains TCP configuration settings for the service group.
	// Minimum length = 1
	// Maximum length = 127

	tcpprofilename?: string

	// Use the proxy port as the source port when initiating connections with the server. With the NO setting, the client-side connection port is used as the source port for the server-side connection.
	// Note: This parameter is available only when the Use Source IP C(usip) parameter is set to C(yes).

	useproxyport?: bool

	// Use client's IP address as the source IP address when initiating connection to the server. With the NO setting, which is the default, a mapped IP (MIP) address or subnet IP (SNIP) address is used as the source IP address to initiate server side connections.

	usip?: bool

	// Insert the Client IP header in requests forwarded to the service.

	cip?: string

	// Time, in seconds, after which to terminate an idle client connection.
	// Minimum value = C(0)
	// Maximum value = C(31536000)

	clttimeout?: string

	// Flush all active transactions associated with all the services in the service group whose state transitions from UP to DOWN. Do not enable this option for applications that must complete their transactions.

	downstateflush?: string

	// Enable RTSP session ID mapping for the service group.

	rtspsessionidremap?: bool

	// Enable surge protection for the service group.

	sp?: bool

	// Name of the HTTP header whose value must be set to the IP address of the client. Used with the Client IP parameter. If client IP insertion is enabled, and the client IP header is not specified, the value of Client IP Header parameter or the value set by the set ns config command is used as client's IP header name.
	// Minimum length = 1

	cipheader?: string

	// Maximum number of simultaneous open connections for the service group.
	// Minimum value = C(0)
	// Maximum value = C(4294967294)

	maxclient?: string

	// Protocol used to exchange data with the service.

	servicetype?: string

	// Any information about the service group.

	comment?: string

	// Wait for all existing connections to the service to terminate before shutting down the service.

	graceful?: bool

	// Maximum bandwidth, in Kbps, allocated for all the services in the service group.
	// Minimum value = C(0)
	// Maximum value = C(4294967287)

	maxbandwidth?: string

	// Name of the service group. Must begin with an ASCII alphabetic or underscore C(_) character, and must contain only ASCII alphanumeric, underscore C(_), hash C(#), period C(.), space C( ), colon C(:), at C(@), equals C(=), and hyphen C(-) characters. Can be changed after the name is created.
	// Minimum length = 1

	servicegroupname?: string

	// A list of dictionaries describing each service member of the service group.

	servicemembers?: string

	// Enable TCP buffering for the service group.

	tcpb?: bool

	// Auto scale option for a servicegroup.

	autoscale?: string

	// Maximum number of requests that can be sent on a persistent connection to the service group.
	// Note: Connection requests beyond this value are rejected.
	// Minimum value = C(0)
	// Maximum value = C(65535)

	maxreq?: string

	// Individual Path monitoring decisions.

	pathmonitorindv?: bool

	// Enable logging of AppFlow information for the specified service group.

	appflowlog?: string

	// Enable client keep-alive for the service group.

	cka?: bool

	// member port.

	memberport?: string

	// Cache type supported by the cache server.

	cachetype?: string

	// When set to C(yes) the service group state will be set to DISABLED.
	// When set to C(no) the service group state will be set to ENABLED.
	// Note that due to limitations of the underlying NITRO API a C(disabled) state change alone does not cause the module result to report a changed status.

	disabled?: bool

	// Monitor the health of this service. Available settings function as follows:
	// C(yes) - Send probes to check the health of the service.
	// C(no) - Do not send probes to check the health of the service. With the NO option, the appliance shows the service as UP at all times.

	healthmonitor?: bool

	// A list of monitornames to bind to this service
	// Note that the monitors must have already been setup possibly using the M(netscaler_lb_monitor) module or some other method

	monitorbindings?: string

	// Minimum sum of weights of the monitors that are bound to this service. Used to determine whether to mark a service as UP or DOWN.
	// Minimum value = C(0)
	// Maximum value = C(65535)

	monthreshold?: string

	// Path monitoring for clustering.

	pathmonitor?: bool

	// Use the transparent cache redirection virtual server to forward the request to the cache server.
	// Note: Do not set this parameter if you set the Cache Type.

	cacheable?: bool

	// Time, in seconds, after which to terminate an idle server connection.
	// Minimum value = C(0)
	// Maximum value = C(31536000)

	svrtimeout?: string

	// Network profile for the service group.
	// Minimum length = 1
	// Maximum length = 127

	netprofile?: string
}
