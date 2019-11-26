package ansible

module: win_dns_client: {
	module:            "win_dns_client"
	version_added:     "2.3"
	short_description: "Configures DNS lookup on Windows hosts"
	description: [
		"The C(win_dns_client) module configures the DNS client on Windows network adapters.",
	]
	options: {
		adapter_names: {
			description: [
				"Adapter name or list of adapter names for which to manage DNS settings ('*' is supported as a wildcard value).",
				"The adapter name used is the connection caption in the Network Control Panel or the InterfaceAlias of C(Get-DnsClientServerAddress).",
			]
			type:     "list"
			required: true
		}
		dns_servers: {
			description: [
				"Single or ordered list of DNS servers (IPv4 and IPv6 addresses) to configure for lookup. An empty list will configure the adapter to use the DHCP-assigned values on connections where DHCP is enabled, or disable DNS lookup on statically-configured connections.",
				"IPv6 DNS servers can only be set on Windows Server 2012 or newer, older hosts can only set IPv4 addresses.",
				"Before 2.10 use ipv4_addresses instead.",
			]
			type:     "list"
			required: true
			aliases: ["ipv4_addresses", "ip_addresses", "addresses"]
		}
	}
	notes: [
		"When setting an empty list of DNS server addresses on an adapter with DHCP enabled, a change will always be registered, since it is not possible to detect the difference between a DHCP-sourced server value and one that is statically set.",
	]

	author: ["Matt Davis (@nitzmahone)"]
}
