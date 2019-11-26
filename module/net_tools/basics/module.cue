package basics

cloudflare_dns :: {

	// Proxy through Cloudflare network or just use DNS.

	proxied?: bool

	// Record service.
	// Required for C(type=SRV)

	service?: string

	// Service protocol. Required for C(type=SRV) and C(type=TLSA).
	// Common values are TCP and UDP.
	// Before Ansible 2.6 only TCP and UDP were available.

	proto?: string

	// Service port.
	// Required for C(type=SRV) and C(type=TLSA).

	port?: int

	// Record to add.
	// Required if C(state=present).
	// Default is C(@) (e.g. the zone name).

	record?: string

	// Selector number.
	// Required for C(type=TLSA) when C(state=present).

	selector?: int

	// The TTL to give the new record.
	// Must be between 120 and 2,147,483,647 seconds, or 1 for automatic.

	ttl?: int

	// Service weight.
	// Required for C(type=SRV).

	weight?: int

	// The name of the Zone to work with (e.g. "example.com").
	// The Zone must already exist.

	zone: string

	// Account email. Required for api keys authentication.

	account_email?: string

	// API token.
	// Required for api token authentication.
	// You can obtain your API token from the bottom of the Cloudflare 'My Account' page, found here: U(https://dash.cloudflare.com/)

	api_token?: string

	// Hash type number.
	// Required for C(type=DS), C(type=SSHFP) and C(type=TLSA) when C(state=present).

	hash_type?: int

	// DNSSEC key tag.
	// Needed for C(type=DS) when C(state=present).

	key_tag?: int

	// Record priority.
	// Required for C(type=MX) and C(type=SRV)

	priority?: string

	// Whether the record should be the only one for that record type and record name.
	// Only use with C(state=present).
	// This will delete all other records with the same record name and type.

	solo?: bool

	// Timeout for Cloudflare API calls.

	timeout?: int

	// The type of DNS record to create. Required if C(state=present).
	// C(type=DS), C(type=SSHFP) and C(type=TLSA) added in Ansible 2.7.

	type?: string

	// Algorithm number.
	// Required for C(type=DS) and C(type=SSHFP) when C(state=present).

	algorithm?: int

	// Certificate usage number.
	// Required for C(type=TLSA) when C(state=present).

	cert_usage?: int

	// Whether the record(s) should exist or not.

	state?: string

	// The record value.
	// Required for C(state=present).

	value?: string

	// Account API key.
	// Required for api keys authentication.
	// You can obtain your API key from the bottom of the Cloudflare 'My Account' page, found here: U(https://dash.cloudflare.com/)

	account_api_key?: string
}

haproxy :: {

	// The value passed in argument.
	// If the value ends with the `%` sign, then the new weight will be relative to the initially configured weight.
	// Relative weights are only permitted between 0 and 100% and absolute weights are permitted between 0 and 256.

	weight?: string

	// Name of the HAProxy backend pool.
	// If this parameter is unset, it will be auto-detected.

	backend?: string

	// Fail whenever trying to enable/disable a backend host that does not exist

	fail_on_not_found?: bool

	// Name of the backend host to change.

	host: string

	// Number of seconds to wait between retries.

	wait_interval?: int

	// Wait until the server reports a status of 'UP' when C(state=enabled), status of 'MAINT' when C(state=disabled) or status of 'DRAIN' when C(state=drain)

	wait?: bool

	// Number of times to check for status after changing the state.

	wait_retries?: int

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
}

ipinfoio_facts :: {

	// Set http user agent

	http_agent?: string

	// HTTP connection timeout in seconds

	timeout?: string
}

snmp_facts :: {

	// Authentication level.
	// Required if version is v3.

	level?: string

	// Encryption algorithm.
	// Required if level is authPriv.

	privacy?: string

	// Encryption key.
	// Required if version is authPriv.

	privkey?: string

	// Authentication key.
	// Required if version is v3.

	authkey?: string

	// Set to target snmp server (normally C({{ inventory_hostname }})).

	host: string

	// Username for SNMPv3.
	// Required if version is v3.

	username?: string

	// SNMP Version to use, v2/v2c or v3.

	version: string

	// The SNMP community string, required if version is v2/v2c.

	community?: string

	// Hashing algorithm.
	// Required if version is v3.

	integrity?: string
}

dnsmadeeasy :: {

	// Decides if the sandbox API should be used. Otherwise (default) the production API of DNS Made Easy is used.

	sandbox?: bool

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool

	// Name or id of the contact list that the monitor will notify.
	// The default C('') means the Account Owner.

	contactList: string

	// If true, fallback to the primary IP address is manual after a failover.
	// If false, fallback to the primary IP address is automatic after a failover.

	autoFailover?: bool

	// If C(yes), add or change the failover.  This is applicable only for A records.

	failover?: bool

	// The fully qualified domain name used by the monitor.

	httpFqdn?: string

	// Port used by the monitor.

	port: string

	// Protocol used by the monitor.

	protocol: string

	// Record type.

	record_type?: string

	// Number of checks the monitor performs before a failover occurs where Low = 8, Medium = 5,and High = 3.

	sensitivity: string

	// The string in the httpFile that the monitor queries for HTTP or HTTPS.

	httpQueryString?: string

	// Quinary IP address for the failover.

	ip5?: string

	// Record name to get/create/delete/update. If record_name is not specified; all records for the domain will be returned in "result" regardless of the state argument.

	record_name?: string

	// The file at the Fqdn that the monitor queries for HTTP or HTTPS.

	httpFile?: string

	// Primary IP address for the failover.
	// Required if adding or changing the monitor or failover.

	ip1?: string

	// Secondary IP address for the failover.
	// Required if adding or changing the failover.

	ip2?: string

	// Tertiary IP address for the failover.

	ip3?: string

	// Number of emails sent to the contact list by the monitor.

	maxEmails: string

	// record's "Time to live".  Number of seconds the record remains cached in DNS servers.

	record_ttl?: string

	// Account API Key.

	account_key: string

	// Domain to work with. Can be the domain name (e.g. "mydomain.com") or the numeric ID of the domain in DNS Made Easy (e.g. "839989") for faster resolution

	domain: string

	// Quaternary IP address for the failover.

	ip4?: string

	// Record value. HTTPRED: <redirection URL>, MX: <priority> <target name>, NS: <name server>, PTR: <target name>, SRV: <priority> <weight> <port> <target name>, TXT: <text value>"

	// If record_value is not specified; no changes will be made and the record will be returned in 'result' (in other words, this module can be used to fetch a record's current id, type, and ttl)


	record_value?: string

	// whether the record should exist or not

	state: string

	// Description used by the monitor.

	systemDescription: string

	// Account Secret Key.

	account_secret: string

	// If C(yes), add or change the monitor.  This is applicable only for A records.

	monitor?: bool
}

hetzner_failover_ip_info :: {

	// The failover IP address.

	failover_ip: string
}

lldp :: {
}

nmcli :: {

	// This is only used with bond - miimon.
	// This parameter defaults to C(100) when unset.

	miimon?: int

	// This is only used with VLAN - VLAN ID in range <0-4095>.

	vlanid?: int

	// This is only used with VXLAN - VXLAN local IP address.

	vxlan_local?: string

	// A list of DNS search domains.

	dns4_search?: [..._]

	// The IPv6 gateway for this interface.
	// Use the format C(2001:db8::1).

	gw6?: string

	// This is only used with VLAN - VLAN ingress priority mapping.

	ingress?: string

	// Master <master (ifname, or connection UUID or conn_name) of bridge, team, bond master connection profile.

	master?: string

	// This is only used with bridge - [max-age <6-42>] STP maximum message age, in seconds.

	maxage?: int

	// This is only used with bond - ARP interval.

	arp_interval?: int

	// A list of up to 3 dns servers.
	// IPv4 format e.g. to add two IPv4 DNS server addresses, use C(192.0.2.53 198.51.100.53).

	dns4?: [..._]

	// This is only used with VLAN - VLAN egress priority mapping.

	egress?: string

	// This is only used with bridge and controls whether Spanning Tree Protocol (STP) is enabled for this bridge.

	stp?: bool

	// This is only used with bond - updelay.

	updelay?: int

	// This is only used with 'bridge-slave' - 'hairpin mode' for the slave, which allows frames to be sent back out through the slave the frame was received on.

	hairpin?: bool

	// This is only used with bridge - [hello-time <1-10>] STP hello time, in seconds.

	hellotime?: int

	// This is used with IPIP/SIT - parent device this IPIP/SIT tunnel, can use ifname.

	ip_tunnel_dev?: string

	// This is only used with VLAN - flags.

	flags?: string

	// The interface to bind the connection to.
	// The connection will only be applicable to this interface name.
	// A special value of C('*') can be used for interface-independent connections.
	// The ifname argument is mandatory for all connection types except bond, team, bridge and vlan.
	// This parameter defaults to C(conn_name) when left unset.

	ifname?: string

	// This is only used with bond and is the primary interface name (for "active-backup" mode), this is the usually the 'ifname'.

	primary?: string

	// This is the type of device or network connection that you wish to create or modify.
	// Type C(generic) is added in Ansible 2.5.

	type?: string

	// This is only used with VLAN - parent device this VLAN is on, can use ifname.

	vlandev?: string

	// The IPv4 gateway for this interface.
	// Use the format C(192.0.2.1).

	gw4?: string

	// This is used with IPIP/SIT - IPIP/SIT local IP address.

	ip_tunnel_local?: string

	// This is only used with VXLAN - VXLAN destination IP address.

	vxlan_remote?: string

	// Whether the connection should start on boot.
	// Whether the connection profile can be automatically activated

	autoconnect?: bool

	// This is only used with bond - downdelay.

	downdelay?: int

	// This is only used with 'bridge' - sets STP priority.

	priority?: int

	// This is only used with 'bridge-slave' - [<0-63>] - STP priority of this slave.

	slavepriority?: int

	// The connection MTU, e.g. 9000. This can't be applied when creating the interface and is done once the interface has been created.
	// Can be used when modifying Team, VLAN, Ethernet (Future plans to implement wifi, pppoe, infiniband)
	// This parameter defaults to C(1500) when unset.

	mtu?: int

	// Whether the device should exist or not, taking action if the state is different from what is stated.

	state: string

	// This is only used with VXLAN - VXLAN ID.

	vxlan_id?: int

	// This is only used with bond - ARP IP target.

	arp_ip_target?: string

	// The name used to call the connection. Pattern is <type>[-<ifname>][-<num>].

	conn_name: string

	// DHCP Client Identifier sent to the DHCP server.

	dhcp_client_id?: string

	// A list of DNS search domains.

	dns6_search?: [..._]

	// This is only used with bridge - MAC address of the bridge.
	// Note this requires a recent kernel feature, originally introduced in 3.15 upstream kernel.

	mac?: string

	// The IPv6 address to this interface.
	// Use the format C(abbe::cafe).

	ip6?: string

	// This is the type of device or network connection that you wish to create for a bond, team or bridge.

	mode?: string

	// This is only used with 'bridge-slave' - [<1-65535>] - STP port cost for destinations via this slave.

	path_cost?: int

	// This is only used with bridge - [ageing-time <0-1000000>] the Ethernet MAC address aging time, in seconds.

	ageingtime?: int

	// A list of up to 3 dns servers.
	// IPv6 format e.g. to add two IPv6 DNS server addresses, use C(2001:4860:4860::8888 2001:4860:4860::8844).

	dns6?: [..._]

	// This is only used with bridge - [forward-delay <2-30>] STP forwarding delay, in seconds.

	forwarddelay?: int

	// This is used with IPIP/SIT - IPIP/SIT destination IP address.

	ip_tunnel_remote?: string

	// The IPv4 address to this interface.
	// Use the format C(192.0.2.24/24).

	ip4?: string
}

hetzner_failover_ip :: {

	// Timeout to use when routing or unrouting the failover IP.
	// Note that the API call returns when the failover IP has been successfully routed to the new address, respectively successfully unrouted.

	timeout?: int

	// The new value for the failover IP address.
	// Required when setting I(state) to C(routed).

	value?: string

	// The failover IP address.

	failover_ip: string

	// Defines whether the IP will be routed or not.
	// If set to C(routed), I(value) must be specified.

	state?: string
}

ip_netns :: {

	// Name of the namespace

	name?: string

	// Whether the namespace should exist

	state?: string
}

netcup_dns :: {

	// API key for authentification, must be obtained via the netcup CCP (U(https://ccp.netcup.net))

	api_key: string

	// API password for authentification, must be obtained via the netcup CCP (https://ccp.netcup.net)

	api_password: string

	// Record to add or delete, supports wildcard (*). Default is C(@) (e.g. the zone name)

	record?: string

	// Whether the record should be the only one for that record type and record name. Only use with C(state=present)
	// This will delete all other records with the same record name and type.

	solo?: bool

	// Record value

	value: string

	// Netcup customer id

	customer_id: string

	// Domainname the records should be added / removed

	domain: string

	// Record priority. Required for C(type=MX)

	priority?: string

	// Whether the record should exist or not

	state?: string

	// Record type

	type: string
}

slurp :: {

	// The file on the remote system to fetch. This I(must) be a file, not a directory.

	src: string
}

uri :: {

	// Whether or not to return the body of the response as a "content" key in the dictionary result.
	// Independently of this option, if the reported Content-type is "application/json", then the JSON is always loaded into a key called C(json) in the dictionary results.

	return_content?: bool

	// The socket level timeout in seconds

	timeout?: int

	// The body of the http request/response to the web service. If C(body_format) is set to 'json' it will take an already formatted JSON string or convert a data structure into JSON. If C(body_format) is set to 'form-urlencoded' it will convert a dictionary or list of tuples into an 'application/x-www-form-urlencoded' string. (Added in v2.7)

	body?: _

	// A filename, when it already exists, this step will not be run.

	creates?: string

	// If C(yes) do not get a cached copy.
	// Alias C(thirsty) has been deprecated and will be removed in 2.13.

	force?: bool

	// Header to identify as, generally appears in web server logs.

	http_agent?: string

	// If C(no), the module will search for src on originating/master machine.
	// If C(yes) the module will use the C(src) path on the remote/target machine.

	remote_src?: bool

	// PEM formatted certificate chain file to be used for SSL client authentication.
	// This file can also include the key as well, and if the key is included, I(client_key) is not required

	client_cert?: string

	// Force the sending of the Basic authentication header upon initial request.
	// The library used by the uri module only sends authentication information when a webservice responds to an initial request with a 401 status. Since some basic auth services do not properly send a 401, logins will fail.

	force_basic_auth?: bool

	// Path to file to be submitted to the remote server.
	// Cannot be used with I(body).

	src?: string

	// A filename, when it does not exist, this step will not be run.

	removes?: string

	// A list of valid, numeric, HTTP status codes that signifies success of the request.

	status_code?: [..._]

	// Path to Unix domain socket to use for connection

	unix_socket?: string

	// The serialization format of the body. When set to C(json) or C(form-urlencoded), encodes the body argument, if needed, and automatically sets the Content-Type header accordingly. As of C(2.3) it is possible to override the `Content-Type` header, when set to C(json) or C(form-urlencoded) via the I(headers) option.

	body_format?: string

	// PEM formatted file that contains your private key to be used for SSL client authentication.
	// If I(client_cert) contains both the certificate and key, this option is not required.

	client_key?: string

	// Whether or not the URI module should follow redirects. C(all) will follow all redirects. C(safe) will follow only "safe" redirects, where "safe" means that the client is only doing a GET or HEAD on the URI to which it is being redirected. C(none) will not follow any redirects. Note that C(yes) and C(no) choices are accepted for backwards compatibility, where C(yes) is the equivalent of C(all) and C(no) is the equivalent of C(safe). C(yes) and C(no) are deprecated and will be removed in some future version of Ansible.

	follow_redirects?: string

	// Add custom HTTP headers to a request in the format of a YAML hash. As of C(2.3) supplying C(Content-Type) here will override the header generated by supplying C(json) or C(form-urlencoded) for I(body_format).

	headers?: {...}

	// The HTTP method of the request or response.
	// In more recent versions we do not restrict the method at the module level anymore but it still must be a valid method accepted by the service handling the request.

	method?: string

	// HTTP or HTTPS URL in the form (http|https)://host.domain[:port]/path

	url: string

	// A password for the module to use for Digest, Basic or WSSE authentication.

	url_password?: string

	// If C(no), it will not use a proxy, even if one is defined in an environment variable on the target hosts.

	use_proxy?: bool

	// If C(no), SSL certificates will not be validated.
	// This should only set to C(no) used on personally controlled sites using self-signed certificates.
	// Prior to 1.9.2 the code defaulted to C(no).

	validate_certs?: bool

	// A path of where to download the file to (if desired). If I(dest) is a directory, the basename of the file on the remote server will be used.

	dest?: string

	// A username for the module to use for Digest, Basic or WSSE authentication.

	url_username?: string
}

dnsimple :: {

	// Account email. If omitted, the environment variables C(DNSIMPLE_EMAIL) and C(DNSIMPLE_API_TOKEN) will be looked for.
	// If those aren't found, a C(.dnsimple) file will be looked for, see: U(https://github.com/mikemaccana/dnsimple-python#getting-started).

	account_email?: string

	// Record priority.

	priority?: int

	// Whether the record should be the only one for that record type and record name.
	// Only use with C(state) is set to C(present) on a record.

	solo?: bool

	// The TTL to give the new record in seconds.

	ttl?: int

	// Record value.
	// Must be specified when trying to ensure a record exists.

	value?: string

	// Account API token. See I(account_email) for more information.

	account_api_token?: string

	// Domain to work with. Can be the domain name (e.g. "mydomain.com") or the numeric ID of the domain in DNSimple.
	// If omitted, a list of domains will be returned.
	// If domain is present but the domain doesn't exist, it will be created.

	domain?: string

	// Record to add, if blank a record for the domain will be created, supports the wildcard (*).

	record?: string

	// List of records to ensure they either exist or do not exist.

	record_ids?: [..._]

	// whether the record should exist or not.

	state?: string

	// The type of DNS record to create.

	type?: string
}

get_url :: {

	// PEM formatted certificate chain file to be used for SSL client authentication.
	// This file can also include the key as well, and if the key is included, C(client_key) is not required.

	client_cert?: string

	// PEM formatted file that contains your private key to be used for SSL client authentication.
	// If C(client_cert) contains both the certificate and key, this option is not required.

	client_key?: string

	// Absolute path of where temporary file is downloaded to.
	// When run on Ansible 2.5 or greater, path defaults to ansible's remote_tmp setting
	// When run on Ansible prior to 2.5, it defaults to C(TMPDIR), C(TEMP) or C(TMP) env variables or a platform specific value.
	// U(https://docs.python.org/2/library/tempfile.html#tempfile.tempdir)

	tmp_dest?: string

	// The username for use in HTTP basic authentication.
	// This parameter can be used without C(url_password) for sites that allow empty passwords.
	// Since version 2.8 you can also use the C(username) alias for this option.

	url_username?: string

	// if C(no), it will not use a proxy, even if one is defined in an environment variable on the target hosts.

	use_proxy?: bool

	// If C(no), SSL certificates will not be validated.
	// This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool

	// If a checksum is passed to this parameter, the digest of the destination file will be calculated after it is downloaded to ensure its integrity and verify that the transfer completed successfully. Format: <algorithm>:<checksum|url>, e.g. checksum="sha256:D98291AC[...]B6DC7B97", checksum="sha256:http://example.com/path/sha256sum.txt"
	// If you worry about portability, only the sha1 algorithm is available on all platforms and python versions.
	// The third party hashlib library can be installed for access to additional algorithms.
	// Additionally, if a checksum is passed to this parameter, and the file exist under the C(dest) location, the I(destination_checksum) would be calculated, and if checksum equals I(destination_checksum), the file download would be skipped (unless C(force) is true). If the checksum does not equal I(destination_checksum), the destination file is deleted.

	checksum?: string

	// Header to identify as, generally appears in web server logs.

	http_agent?: string

	// If a SHA-256 checksum is passed to this parameter, the digest of the destination file will be calculated after it is downloaded to ensure its integrity and verify that the transfer completed successfully. This option is deprecated. Use C(checksum) instead.

	sha256sum?: string

	// Absolute path of where to download the file to.
	// If C(dest) is a directory, either the server provided filename or, if none provided, the base name of the URL on the remote server will be used. If a directory, C(force) has no effect.
	// If C(dest) is a directory, the file will always be downloaded (regardless of the C(force) option), but replaced only if the contents changed..

	dest: string

	// If C(yes) and C(dest) is not a directory, will download the file every time and replace the file if the contents change. If C(no), the file will only be downloaded if the destination does not exist. Generally should be C(yes) only for small local files.
	// Prior to 0.6, this module behaved as if C(yes) was the default.
	// Alias C(thirsty) has been deprecated and will be removed in 2.13.

	force?: bool

	// Add custom HTTP headers to a request in hash/dict format.
	// The hash/dict format was added in Ansible 2.6.
	// Previous versions used a C("key:value,key:value") string format.
	// The C("key:value,key:value") string format is deprecated and will be removed in version 2.10.

	headers?: _

	// HTTP, HTTPS, or FTP URL in the form (http|https|ftp)://[user[:pass]]@host.domain[:port]/path

	url: string

	// The password for use in HTTP basic authentication.
	// If the C(url_username) parameter is not specified, the C(url_password) parameter will not be used.
	// Since version 2.8 you can also use the 'password' alias for this option.

	url_password?: string

	// Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.

	backup?: bool

	// Force the sending of the Basic authentication header upon initial request.
	// httplib2, the library used by the uri module only sends authentication information when a webservice responds to an initial request with a 401 status. Since some basic auth services do not properly send a 401, logins will fail.

	force_basic_auth?: bool

	// Timeout in seconds for URL request.

	timeout?: int
}

ipify_facts :: {

	// When set to C(NO), SSL certificates will not be validated.

	validate_certs?: bool

	// URL of the ipify.org API service.
	// C(?format=json) will be appended per default.

	api_url?: string

	// HTTP connection timeout in seconds.

	timeout?: int
}

nsupdate :: {

	// Use TSIG key secret, associated with C(key_name), to authenticate against C(server)

	key_secret?: string

	// Use this TCP port when connecting to C(server).

	port?: string

	// Sets the transport protocol (TCP or UDP). TCP is the recommended and a more robust option.

	protocol?: string

	// Sets the DNS record to modify. When zone is omitted this has to be absolute (ending with a dot).

	record: string

	// Sets the record type.

	type?: string

	// Sets the record value.

	value?: string

	// Specify key algorithm used by C(key_secret).

	key_algorithm?: string

	// Use TSIG key name to authenticate against DNS C(server)

	key_name?: string

	// Apply DNS modification on this server.

	server: string

	// Manage DNS record.

	state?: string

	// Sets the record TTL.

	ttl?: string

	// DNS record will be modified on this C(zone).
	// When omitted DNS will be queried to attempt finding the correct zone.
	// Starting with Ansible 2.7 this parameter is optional.

	zone?: string
}

omapi_host :: {

	// Sets the lease host IP address.

	ip?: string

	// Sets the lease host MAC address.

	macaddr: string

	// Sets OMAPI server host to interact with.

	host?: string

	// Sets the host lease hostname (mandatory if state=present).

	hostname?: string

	// Sets the TSIG key content for authenticating against OMAPI server.

	key: string

	// Sets the TSIG key name for authenticating against OMAPI server.

	key_name: string

	// Sets the OMAPI server port to interact with.

	port?: int

	// Create or remove OMAPI host.

	state: string

	// Attach a list of OMAPI DHCP statements with host lease (without ending semicolon).

	statements?: [..._]

	// Enable dynamic DNS updates for this host.

	ddns?: bool
}
