package nios

nios_fixed_address :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nios_fixed_address: {

		// Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance.

		comment?: string

		// The MAC address of the interface.

		mac: string

		// Specifies the hostname with which fixed DHCP ip-address is stored for respective mac.

		name?: string

		// Specifies the network range in which ipaddr exists.

		network: string

		// Configures the set of DHCP options to be included as part of the configured network instance.  This argument accepts a list of values (see suboptions).  When configuring suboptions at least one of C(name) or C(num) must be specified.

		options?: string

		// Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.

		state?: string

		// Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.

		extattrs?: string

		// IPV4/V6 address of the fixed address.

		ipaddr: string

		// Configures the name of the network view to associate with this configured instance.

		network_view?: string
	}
}

nios_naptr_record :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nios_naptr_record: {

		// Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.

		extattrs?: string

		// Configures the flags field for this NAPTR record. These control the interpretation of the fields for an NAPTR record object. Supported values for the flags field are "U", "S", "P" and "A".

		flags?: string

		// Specifies the fully qualified hostname to add or remove from the system

		name: string

		// Configures the services field (128 characters maximum) for this NAPTR record. The services field contains protocol and service identifiers, such as "http+E2U" or "SIPS+D2T".

		services?: string

		// Configures the TTL to be associated with this NAPTR record

		ttl?: string

		// Sets the DNS view to associate this a record with. The DNS view must already be configured on the system

		view: string

		// Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance.

		comment?: string

		// Configures the order (0-65535) for this NAPTR record. This parameter specifies the order in which the NAPTR rules are applied when multiple rules are present.

		order: string

		// Configures the preference (0-65535) for this NAPTR record. The preference field determines the order NAPTR records are processed when multiple records with the same order parameter are present.

		preference: string

		// Configures the regexp field for this NAPTR record. This is the regular expression-based rewriting rule of the NAPTR record. This should be a POSIX compliant regular expression, including the substitution rule and flags. Refer to RFC 2915 for the field syntax details.

		regexp?: string

		// Configures the replacement field for this NAPTR record. For nonterminal NAPTR records, this field specifies the next domain name to look up.

		replacement: string

		// Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.

		state?: string
	}
}

nios_network_view :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nios_network_view: {

		// Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance.

		comment?: string

		// Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.

		extattrs?: string

		// Specifies the fully qualified hostname to add or remove from the system. User can also update the hostname as it is possible to pass a dict containing I(new_name), I(old_name). See examples.

		name: string

		// Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.

		state?: string
	}
}

omapi_host :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	omapi_host: {

		// Sets OMAPI server host to interact with.

		host?: string

		// Sets the host lease hostname (mandatory if state=present).

		hostname?: string

		// Sets the lease host MAC address.

		macaddr: string

		// Sets the OMAPI server port to interact with.

		port?: int

		// Attach a list of OMAPI DHCP statements with host lease (without ending semicolon).

		statements?: [...]

		// Enable dynamic DNS updates for this host.

		ddns?: bool

		// Sets the lease host IP address.

		ip?: string

		// Sets the TSIG key content for authenticating against OMAPI server.

		key: string

		// Sets the TSIG key name for authenticating against OMAPI server.

		key_name: string

		// Create or remove OMAPI host.

		state: string
	}
}

hetzner_failover_ip_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	hetzner_failover_ip_info: {

		failover_ip: string

		// The failover IP address.
	}
}

nios_dns_view :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nios_dns_view: {

		// Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.

		extattrs?: string

		// Specifies the fully qualified hostname to add or remove from the system. User can also update the hostname as it is possible to pass a dict containing I(new_name), I(old_name). See examples.

		name: string

		// Specifies the name of the network view to assign the configured DNS view to.  The network view must already be configured on the target system.

		network_view: string

		// Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.

		state?: string

		// Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance.

		comment?: string
	}
}

ipify_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	ipify_facts: {

		// URL of the ipify.org API service.
		// C(?format=json) will be appended per default.

		api_url?: string

		// HTTP connection timeout in seconds.

		timeout?: int

		// When set to C(NO), SSL certificates will not be validated.

		validate_certs?: bool
	}
}

nios_mx_record :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nios_mx_record: {

		// Specifies the fully qualified hostname to add or remove from the system

		name: string

		// Configures the preference (0-65535) for this MX record.

		preference: string

		// Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.

		state?: string

		// Configures the TTL to be associated with this host record

		ttl?: string

		// Sets the DNS view to associate this a record with.  The DNS view must already be configured on the system

		view: string

		// Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance.

		comment?: string

		// Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.

		extattrs?: string

		// Configures the mail exchanger FQDN for this MX record.

		mail_exchanger: string
	}
}

dnsmadeeasy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	dnsmadeeasy: {

		// Account API Key.

		account_key: string

		// If C(yes), add or change the monitor.  This is applicable only for A records.

		monitor?: bool

		// Port used by the monitor.

		port: string

		// record's "Time to live".  Number of seconds the record remains cached in DNS servers.

		record_ttl?: string

		// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

		validate_certs?: bool

		// If true, fallback to the primary IP address is manual after a failover.
		// If false, fallback to the primary IP address is automatic after a failover.

		autoFailover?: bool

		// Name or id of the contact list that the monitor will notify.
		// The default C('') means the Account Owner.

		contactList: string

		// Number of checks the monitor performs before a failover occurs where Low = 8, Medium = 5,and High = 3.

		sensitivity: string

		// Number of emails sent to the contact list by the monitor.

		maxEmails: string

		// Protocol used by the monitor.

		protocol: string

		// Record name to get/create/delete/update. If record_name is not specified; all records for the domain will be returned in "result" regardless of the state argument.

		record_name?: string

		// Quinary IP address for the failover.

		ip5?: string

		// Record type.

		record_type?: string

		// If C(yes), add or change the failover.  This is applicable only for A records.

		failover?: bool

		// The file at the Fqdn that the monitor queries for HTTP or HTTPS.

		httpFile?: string

		// The fully qualified domain name used by the monitor.

		httpFqdn?: string

		// Quaternary IP address for the failover.

		ip4?: string

		// Record value. HTTPRED: <redirection URL>, MX: <priority> <target name>, NS: <name server>, PTR: <target name>, SRV: <priority> <weight> <port> <target name>, TXT: <text value>"

		// If record_value is not specified; no changes will be made and the record will be returned in 'result' (in other words, this module can be used to fetch a record's current id, type, and ttl)

		record_value?: string

		// Description used by the monitor.

		systemDescription: string

		// whether the record should exist or not

		state: string

		// Domain to work with. Can be the domain name (e.g. "mydomain.com") or the numeric ID of the domain in DNS Made Easy (e.g. "839989") for faster resolution

		domain: string

		// Primary IP address for the failover.
		// Required if adding or changing the monitor or failover.

		ip1?: string

		// Secondary IP address for the failover.
		// Required if adding or changing the failover.

		ip2?: string

		// Tertiary IP address for the failover.

		ip3?: string

		// Account Secret Key.

		account_secret: string

		// The string in the httpFile that the monitor queries for HTTP or HTTPS.

		httpQueryString?: string

		// Decides if the sandbox API should be used. Otherwise (default) the production API of DNS Made Easy is used.

		sandbox?: bool
	}
}

nios_cname_record :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nios_cname_record: {

		// Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance.

		comment?: string

		// Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.

		extattrs?: string

		// Specifies the fully qualified hostname to add or remove from the system

		name: string

		// Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.

		state?: string

		// Configures the TTL to be associated with this CNAME record

		ttl?: string

		// Sets the DNS view to associate this CNAME record with.  The DNS view must already be configured on the system

		view: string

		// Configures the canonical name for this CNAME record.

		canonical: string
	}
}

nios_zone :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nios_zone: {

		// Configures the grid secondary servers for this zone.

		grid_secondaries?: string

		// Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance.

		comment?: string

		// Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.

		extattrs?: string

		// Specifies the qualified domain name to either add or remove from the NIOS instance based on the configured C(state) value.

		fqdn: string

		// Configures the grid primary servers for this zone.

		grid_primary?: string

		// Configures the name server group for this zone. Name server group is mutually exclusive with grid primary and grid secondaries.

		ns_group?: string

		// If set to true, causes the NIOS DNS service to restart and load the new zone configuration

		restart_if_needed?: bool

		// Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.

		state?: string

		// Configures the DNS view name for the configured resource.  The specified DNS zone must already exist on the running NIOS instance prior to configuring zones.

		view: string

		// Create an authorative Reverse-Mapping Zone which is an area of network space for which one or more name servers-primary and secondary-have the responsibility to respond to address-to-name queries. It supports reverse-mapping zones for both IPv4 and IPv6 addresses.

		zone_format?: string
	}
}

nios_srv_record :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nios_srv_record: {

		// Specifies the fully qualified hostname to add or remove from the system

		name: string

		// Configures the port (0-65535) of this SRV record.

		port: string

		// Configures the TTL to be associated with this host record

		ttl?: string

		// Configures the weight (0-65535) for this SRV record.

		weight: string

		// Sets the DNS view to associate this a record with.  The DNS view must already be configured on the system

		view: string

		// Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance.

		comment?: string

		// Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.

		extattrs?: string

		// Configures the priority (0-65535) for this SRV record.

		priority: string

		// Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.

		state?: string

		// Configures the target FQDN for this SRV record.

		target: string
	}
}

nsupdate :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nsupdate: {

		// Specify key algorithm used by C(key_secret).

		key_algorithm?: string

		// Use TSIG key secret, associated with C(key_name), to authenticate against C(server)

		key_secret?: string

		// Sets the record TTL.

		ttl?: string

		// Sets the record type.

		type?: string

		// DNS record will be modified on this C(zone).
		// When omitted DNS will be queried to attempt finding the correct zone.
		// Starting with Ansible 2.7 this parameter is optional.

		zone?: string

		// Manage DNS record.

		state?: string

		// Sets the record value.

		value?: string

		// Use TSIG key name to authenticate against DNS C(server)

		key_name?: string

		// Use this TCP port when connecting to C(server).

		port?: string

		// Sets the transport protocol (TCP or UDP). TCP is the recommended and a more robust option.

		protocol?: string

		// Sets the DNS record to modify. When zone is omitted this has to be absolute (ending with a dot).

		record: string

		// Apply DNS modification on this server.

		server: string
	}
}

hetzner_failover_ip :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	hetzner_failover_ip: {

		// The new value for the failover IP address.
		// Required when setting I(state) to C(routed).

		value?: string

		// The failover IP address.

		failover_ip: string

		// Defines whether the IP will be routed or not.
		// If set to C(routed), I(value) must be specified.

		state?: string

		// Timeout to use when routing or unrouting the failover IP.
		// Note that the API call returns when the failover IP has been successfully routed to the new address, respectively successfully unrouted.

		timeout?: int
	}
}

nios_ptr_record :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nios_ptr_record: {

		// The name of the DNS PTR record in FQDN format to add or remove from the system. The field is required only for an PTR object in Forward Mapping Zone.

		name?: string

		// The domain name of the DNS PTR record in FQDN format.

		ptrdname: string

		// Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.

		extattrs?: string

		// The IPv4 Address of the record. Mutually exclusive with the ipv6addr.

		ipv4addr: string

		// Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.

		state?: string

		// Time To Live (TTL) value for the record. A 32-bit unsigned integer that represents the duration, in seconds, that the record is valid (cached). Zero indicates that the record should not be cached.

		ttl?: string

		// Sets the DNS view to associate this a record with. The DNS view must already be configured on the system

		view?: string

		// Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance. Maximum 256 characters.

		comment?: string

		// The IPv6 Address of the record. Mutually exclusive with the ipv4addr.

		ipv6addr: string
	}
}

lldp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	lldp: {
	}
}

netcup_dns :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	netcup_dns: {

		// API password for authentification, must be obtained via the netcup CCP (https://ccp.netcup.net)

		api_password: string

		// Record type

		type: string

		// Whether the record should be the only one for that record type and record name. Only use with C(state=present)
		// This will delete all other records with the same record name and type.

		solo?: bool

		// Whether the record should exist or not

		state?: string

		// Record value

		value: string

		// API key for authentification, must be obtained via the netcup CCP (U(https://ccp.netcup.net))

		api_key: string

		// Netcup customer id

		customer_id: string

		// Domainname the records should be added / removed

		domain: string

		// Record priority. Required for C(type=MX)

		priority?: string

		// Record to add or delete, supports wildcard (*). Default is C(@) (e.g. the zone name)

		record?: string
	}
}

nios_aaaa_record :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nios_aaaa_record: {

		// Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance.

		comment?: string

		// Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.

		extattrs?: string

		// Configures the IPv6 address for this AAAA record.

		ipv6addr: string

		// Specifies the fully qualified hostname to add or remove from the system

		name: string

		// Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.

		state?: string

		// Configures the TTL to be associated with this AAAA record

		ttl?: string

		// Sets the DNS view to associate this AAAA record with.  The DNS view must already be configured on the system

		view: string
	}
}

nios_host_record :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nios_host_record: {

		// Sets the DNS to particular parent. If user needs to bypass DNS user can make the value to false.

		configure_for_dns?: bool

		// Sets the DNS view to associate this host record with.  The DNS view must already be configured on the system

		view: string

		// Specifies the fully qualified hostname to add or remove from the system. User can also update the hostname as it is possible to pass a dict containing I(new_name), I(old_name). See examples.

		name: string

		// Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.

		state?: string

		// Configures the TTL to be associated with this host record

		ttl?: string

		// Configures an optional list of additional aliases to add to the host record. These are equivalent to CNAMEs but held within a host record. Must be in list format.

		aliases?: string

		// Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance.

		comment?: string

		// Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.

		extattrs?: string

		// Configures the IPv4 addresses for this host record.  This argument accepts a list of values (see suboptions)

		ipv4addrs?: string

		// Configures the IPv6 addresses for the host record.  This argument accepts a list of values (see options)

		ipv6addrs?: string
	}
}

nmcli :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nmcli: {

		// Master <master (ifname, or connection UUID or conn_name) of bridge, team, bond master connection profile.

		master?: string

		// This is only used with bond - miimon.
		// This parameter defaults to C(100) when unset.

		miimon?: int

		// This is only used with bond and is the primary interface name (for "active-backup" mode), this is the usually the 'ifname'.

		primary?: string

		// This is only used with bridge - [ageing-time <0-1000000>] the Ethernet MAC address aging time, in seconds.

		ageingtime?: int

		// This is only used with bond - downdelay.

		downdelay?: int

		// The IPv4 address to this interface.
		// Use the format C(192.0.2.24/24).

		ip4?: string

		// This is only used with bridge - MAC address of the bridge.
		// Note this requires a recent kernel feature, originally introduced in 3.15 upstream kernel.

		mac?: string

		// A list of DNS search domains.

		dns4_search?: [...]

		// This is only used with bridge - [forward-delay <2-30>] STP forwarding delay, in seconds.

		forwarddelay?: int

		// This is only used with VXLAN - VXLAN ID.

		vxlan_id?: int

		// The IPv6 gateway for this interface.
		// Use the format C(2001:db8::1).

		gw6?: string

		// This is only used with VLAN - VLAN ingress priority mapping.

		ingress?: string

		// This is used with IPIP/SIT - parent device this IPIP/SIT tunnel, can use ifname.

		ip_tunnel_dev?: string

		// This is used with IPIP/SIT - IPIP/SIT local IP address.

		ip_tunnel_local?: string

		// The connection MTU, e.g. 9000. This can't be applied when creating the interface and is done once the interface has been created.
		// Can be used when modifying Team, VLAN, Ethernet (Future plans to implement wifi, pppoe, infiniband)
		// This parameter defaults to C(1500) when unset.

		mtu?: int

		// This is only used with 'bridge-slave' - [<1-65535>] - STP port cost for destinations via this slave.

		path_cost?: int

		// This is the type of device or network connection that you wish to create or modify.
		// Type C(generic) is added in Ansible 2.5.

		type?: string

		// This is only used with VLAN - VLAN ID in range <0-4095>.

		vlanid?: int

		// A list of up to 3 dns servers.
		// IPv4 format e.g. to add two IPv4 DNS server addresses, use C(192.0.2.53 198.51.100.53).

		dns4?: [...]

		// This is only used with 'bridge-slave' - 'hairpin mode' for the slave, which allows frames to be sent back out through the slave the frame was received on.

		hairpin?: bool

		// The IPv6 address to this interface.
		// Use the format C(abbe::cafe).

		ip6?: string

		// This is only used with bridge - [max-age <6-42>] STP maximum message age, in seconds.

		maxage?: int

		// This is only used with VXLAN - VXLAN local IP address.

		vxlan_local?: string

		// This is only used with 'bridge' - sets STP priority.

		priority?: int

		// This is only used with 'bridge-slave' - [<0-63>] - STP priority of this slave.

		slavepriority?: int

		// This is only used with bond - updelay.

		updelay?: int

		// This is only used with bond - ARP IP target.

		arp_ip_target?: string

		// The name used to call the connection. Pattern is <type>[-<ifname>][-<num>].

		conn_name: string

		// A list of up to 3 dns servers.
		// IPv6 format e.g. to add two IPv6 DNS server addresses, use C(2001:4860:4860::8888 2001:4860:4860::8844).

		dns6?: [...]

		// A list of DNS search domains.

		dns6_search?: [...]

		// This is only used with bond - ARP interval.

		arp_interval?: int

		// This is only used with bridge - [hello-time <1-10>] STP hello time, in seconds.

		hellotime?: int

		// This is the type of device or network connection that you wish to create for a bond, team or bridge.

		mode?: string

		// Whether the device should exist or not, taking action if the state is different from what is stated.

		state: string

		// This is only used with bridge and controls whether Spanning Tree Protocol (STP) is enabled for this bridge.

		stp?: bool

		// This is only used with VLAN - parent device this VLAN is on, can use ifname.

		vlandev?: string

		// This is only used with VLAN - flags.

		flags?: string

		// The IPv4 gateway for this interface.
		// Use the format C(192.0.2.1).

		gw4?: string

		// The interface to bind the connection to.
		// The connection will only be applicable to this interface name.
		// A special value of C('*') can be used for interface-independent connections.
		// The ifname argument is mandatory for all connection types except bond, team, bridge and vlan.
		// This parameter defaults to C(conn_name) when left unset.

		ifname?: string

		// This is used with IPIP/SIT - IPIP/SIT destination IP address.

		ip_tunnel_remote?: string

		// This is only used with VXLAN - VXLAN destination IP address.

		vxlan_remote?: string

		// Whether the connection should start on boot.
		// Whether the connection profile can be automatically activated

		autoconnect?: bool

		// DHCP Client Identifier sent to the DHCP server.

		dhcp_client_id?: string

		// This is only used with VLAN - VLAN egress priority mapping.

		egress?: string
	}
}

cloudflare_dns :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	cloudflare_dns: {

		// Service protocol. Required for C(type=SRV) and C(type=TLSA).
		// Common values are TCP and UDP.
		// Before Ansible 2.6 only TCP and UDP were available.

		proto?: string

		// Selector number.
		// Required for C(type=TLSA) when C(state=present).

		selector?: int

		// The record value.
		// Required for C(state=present).

		value?: string

		// Algorithm number.
		// Required for C(type=DS) and C(type=SSHFP) when C(state=present).

		algorithm?: int

		// Hash type number.
		// Required for C(type=DS), C(type=SSHFP) and C(type=TLSA) when C(state=present).

		hash_type?: int

		// Certificate usage number.
		// Required for C(type=TLSA) when C(state=present).

		cert_usage?: int

		// Service port.
		// Required for C(type=SRV) and C(type=TLSA).

		port?: int

		// Record priority.
		// Required for C(type=MX) and C(type=SRV)

		priority?: string

		// Record to add.
		// Required if C(state=present).
		// Default is C(@) (e.g. the zone name).

		record?: string

		// Record service.
		// Required for C(type=SRV)

		service?: string

		// Whether the record should be the only one for that record type and record name.
		// Only use with C(state=present).
		// This will delete all other records with the same record name and type.

		solo?: bool

		// Account email. Required for api keys authentication.

		account_email?: string

		// API token.
		// Required for api token authentication.
		// You can obtain your API token from the bottom of the Cloudflare 'My Account' page, found here: U(https://dash.cloudflare.com/)

		api_token?: string

		// Whether the record(s) should exist or not.

		state?: string

		// Service weight.
		// Required for C(type=SRV).

		weight?: int

		// The TTL to give the new record.
		// Must be between 120 and 2,147,483,647 seconds, or 1 for automatic.

		ttl?: int

		// The name of the Zone to work with (e.g. "example.com").
		// The Zone must already exist.

		zone: string

		// Account API key.
		// Required for api keys authentication.
		// You can obtain your API key from the bottom of the Cloudflare 'My Account' page, found here: U(https://dash.cloudflare.com/)

		account_api_key?: string

		// DNSSEC key tag.
		// Needed for C(type=DS) when C(state=present).

		key_tag?: int

		// The type of DNS record to create. Required if C(state=present).
		// C(type=DS), C(type=SSHFP) and C(type=TLSA) added in Ansible 2.7.

		type?: string

		// Proxy through Cloudflare network or just use DNS.

		proxied?: bool

		// Timeout for Cloudflare API calls.

		timeout?: int
	}
}

dnsimple :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	dnsimple: {

		// Domain to work with. Can be the domain name (e.g. "mydomain.com") or the numeric ID of the domain in DNSimple.
		// If omitted, a list of domains will be returned.
		// If domain is present but the domain doesn't exist, it will be created.

		domain?: string

		// List of records to ensure they either exist or do not exist.

		record_ids?: [...]

		// Whether the record should be the only one for that record type and record name.
		// Only use with C(state) is set to C(present) on a record.

		solo?: bool

		// whether the record should exist or not.

		state?: string

		// The TTL to give the new record in seconds.

		ttl?: int

		// Account email. If omitted, the environment variables C(DNSIMPLE_EMAIL) and C(DNSIMPLE_API_TOKEN) will be looked for.
		// If those aren't found, a C(.dnsimple) file will be looked for, see: U(https://github.com/mikemaccana/dnsimple-python#getting-started).

		account_email?: string

		// Record priority.

		priority?: int

		// Record to add, if blank a record for the domain will be created, supports the wildcard (*).

		record?: string

		// The type of DNS record to create.

		type?: string

		// Record value.
		// Must be specified when trying to ensure a record exists.

		value?: string

		// Account API token. See I(account_email) for more information.

		account_api_token?: string
	}
}

nios_member :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nios_member: {

		// Address configuration type (IPV4/IPV6/BOTH)

		config_addr_type?: string

		// If set to True, the member has two physical nodes (HA pair).

		enable_ha?: bool

		// Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.

		state?: string

		// Flag for initiating a create token request for pre-provisioned members.

		create_token?: bool

		// Settings for the Grid member LAN2 port if 'lan2_enabled' is set to "true".

		lan2_port_setting?: string

		// Configures the Hardware Platform.

		platform?: string

		// Pre-provisioning information.

		pre_provisioning?: string

		// The name of the upgrade group to which this Grid member belongs.

		upgrade_group?: string

		// Extensible attributes associated with the object.

		extattrs?: string

		// Specifies the host name of the member to either add or remove from the NIOS instance.

		host_name: string

		// Configures the IPv6 settings for the grid member.

		ipv6_setting: string

		// When set to "true", the LAN2 port is enabled as an independent port or as a port for failover purposes.

		lan2_enabled?: bool

		// The list of external syslog servers.

		syslog_servers?: string

		// Use flag for external_syslog_server_enable , syslog_servers, syslog_proxy_setting, syslog_size

		use_syslog_proxy_setting?: bool

		// A descriptive comment of the Grid member.

		comment?: string

		// Determines if external syslog servers should be enabled

		external_syslog_server_enable?: bool

		// Settings for the member MGMT port.

		mgmt_port_setting?: string

		// Configures the node information list with detailed status report on the operations of the Grid Member.

		node_info?: string

		// Virtual router identifier. Provide this ID if "ha_enabled" is set to "true". This is a unique VRID number (from 1 to 255) for the local subnet.

		router_id?: string

		// Configures the network settings for the grid member.

		vip_setting: string
	}
}

nios_network :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nios_network: {

		// If set to true it'll create the network container to be added or removed from the system.

		container?: bool

		// Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.

		extattrs?: string

		// Specifies the network to add or remove from the system.  The value should use CIDR notation.

		network: string

		// Configures the name of the network view to associate with this configured instance.

		network_view: string

		// Configures the set of DHCP options to be included as part of the configured network instance.  This argument accepts a list of values (see suboptions).  When configuring suboptions at least one of C(name) or C(num) must be specified.

		options?: string

		// Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.

		state?: string

		// Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance.

		comment?: string
	}
}

nios_nsgroup :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nios_nsgroup: {

		// Allows to provide a list of external secondary nameservers, that are not members of the grid.

		external_secondaries?: string

		// Configures the list of grid member hosts that act as secondary nameservers. This option is required when setting I(use_external_primaries) to C(true).

		grid_secondaries?: string

		// Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance.

		comment?: string

		// Configures a list of external nameservers (non-members of the grid). This option is required when setting I(use_external_primaries) to C(true).

		external_primaries?: string

		// If set to C(True) this nsgroup will become the default nameserver group for new zones.

		is_grid_default?: bool

		// Specifies the name of the NIOS nameserver group to be managed.

		name: string

		// Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.

		state?: string

		// This flag controls whether the group is using an external primary nameserver. Note that modification of this field requires passing values for I(grid_secondaries) and I(external_primaries).

		use_external_primary?: bool

		// Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.

		extattrs?: string

		// This host is to be used as primary server in this nameserver group. It must be a grid member. This option is required when setting I(use_external_primaries) to C(false).

		grid_primary?: string
	}
}

nios_txt_record :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nios_txt_record: {

		// Configures the TTL to be associated with this tst record

		ttl?: string

		// Sets the DNS view to associate this tst record with.  The DNS view must already be configured on the system

		view: string

		// Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance.

		comment?: string

		// Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.

		extattrs?: string

		// Specifies the fully qualified hostname to add or remove from the system

		name: string

		// Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.

		state?: string

		// Text associated with the record. It can contain up to 255 bytes per substring, up to a total of 512 bytes. To enter leading, trailing, or embedded spaces in the text, add quotes around the text to preserve the spaces.

		text?: string
	}
}

haproxy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	haproxy: {

		// Name of the HAProxy backend pool.
		// If this parameter is unset, it will be auto-detected.

		backend?: string

		// Fail whenever trying to enable/disable a backend host that does not exist

		fail_on_not_found?: bool

		// Name of the backend host to change.

		host: string

		// Number of seconds to wait between retries.

		wait_interval?: int

		// Number of times to check for status after changing the state.

		wait_retries?: int

		// The value passed in argument.
		// If the value ends with the `%` sign, then the new weight will be relative to the initially configured weight.
		// Relative weights are only permitted between 0 and 100% and absolute weights are permitted between 0 and 256.

		weight?: string

		// Wait until the server has no active connections or until the timeout determined by wait_interval and wait_retries is reached.
		// Continue only after the status changes to 'MAINT'.
		// This overrides the shutdown_sessions option.

		drain?: bool

		// When disabling a server, immediately terminate all the sessions attached to the specified server.
		// This can be used to terminate long-running sessions after a server is put into maintenance mode. Overridden by the drain option.

		shutdown_sessions?: bool

		// Path to the HAProxy socket file.

		socket?: string

		// Desired state of the provided backend host.
		// Note that C(drain) state was added in version 2.4.
		// It is supported only by HAProxy version 1.5 or later,
		// When used on versions < 1.5, it will be ignored.

		state: string

		// Wait until the server reports a status of 'UP' when C(state=enabled), status of 'MAINT' when C(state=disabled) or status of 'DRAIN' when C(state=drain)

		wait?: bool
	}
}

nios_a_record :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	nios_a_record: {

		// Configures the TTL to be associated with this A record

		ttl?: string

		// Sets the DNS view to associate this A record with.  The DNS view must already be configured on the system

		view: string

		// Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance.

		comment?: string

		// Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.

		extattrs?: string

		// Configures the IPv4 address for this A record. Users can dynamically allocate ipv4 address to A record by passing dictionary containing, I(nios_next_ip) and I(CIDR network range). See example

		ipv4addr: string

		// Specifies the fully qualified hostname to add or remove from the system

		name: string

		// Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.

		state?: string
	}
}

snmp_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	snmp_facts: {

		// SNMP Version to use, v2/v2c or v3.

		version: string

		// The SNMP community string, required if version is v2/v2c.

		community?: string

		// Authentication level.
		// Required if version is v3.

		level?: string

		// Encryption algorithm.
		// Required if level is authPriv.

		privacy?: string

		// Encryption key.
		// Required if version is authPriv.

		privkey?: string

		// Username for SNMPv3.
		// Required if version is v3.

		username?: string

		// Authentication key.
		// Required if version is v3.

		authkey?: string

		// Set to target snmp server (normally C({{ inventory_hostname }})).

		host: string

		// Hashing algorithm.
		// Required if version is v3.

		integrity?: string
	}
}

ip_netns :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	ip_netns: {

		// Name of the namespace

		name?: string

		// Whether the namespace should exist

		state?: string
	}
}

ipinfoio_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	ipinfoio_facts: {

		// Set http user agent

		http_agent?: string

		// HTTP connection timeout in seconds

		timeout?: string
	}
}
