package ansible

module: meraki_vlan: {
	module:            "meraki_vlan"
	short_description: "Manage VLANs in the Meraki cloud"
	version_added:     "2.7"
	description: [
		"Create, edit, query, or delete VLANs in a Meraki environment.",
	]
	notes: [
		"Meraki's API will return an error if VLANs aren't enabled on a network. VLANs are returned properly if VLANs are enabled on a network.",
		"Some of the options are likely only used for developers within Meraki.",
		"Meraki's API defaults to networks having VLAN support disabled and there is no way to enable VLANs support in the API. VLAN support must be enabled manually.",
	]
	options: {
		state: {
			description: [
				"Specifies whether object should be queried, created/modified, or removed.",
			]
			choices: ["absent", "present", "query"]
			default: "query"
			type:    "str"
		}
		net_name: {
			description: [
				"Name of network which VLAN is in or should be in.",
			]
			aliases: ["network"]
			type: "str"
		}
		net_id: {
			description: [
				"ID of network which VLAN is in or should be in.",
			]
			type: "str"
		}
		vlan_id: {
			description: [
				"ID number of VLAN.",
				"ID should be between 1-4096.",
			]
			type: "int"
		}
		name: {
			description: [
				"Name of VLAN.",
			]
			aliases: ["vlan_name"]
			type: "str"
		}
		subnet: {
			description: [
				"CIDR notation of network subnet.",
			]
			type: "str"
		}
		appliance_ip: {
			description: [
				"IP address of appliance.",
				"Address must be within subnet specified in C(subnet) parameter.",
			]
			type: "str"
		}
		dns_nameservers: {
			description: [
				"Semi-colon delimited list of DNS IP addresses.",
				"Specify one of the following options for preprogrammed DNS entries opendns, google_dns, upstream_dns",
			]
			type: "str"
		}
		reserved_ip_range: {
			description: [
				"IP address ranges which should be reserve and not distributed via DHCP.",
			]
			type: "list"
		}
		vpn_nat_subnet: {
			description: [
				"The translated VPN subnet if VPN and VPN subnet translation are enabled on the VLAN.",
			]
			type: "str"
		}
		fixed_ip_assignments: {
			description: [
				"Static IP address assignments to be distributed via DHCP by MAC address.",
			]
			type: "list"
		}
	}
	author: [
		"Kevin Breit (@kbreit)",
	]
	extends_documentation_fragment: "meraki"
}
