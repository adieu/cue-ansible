package ansible

module: nmcli: {
	module: "nmcli"
	author: [
		"Chris Long (@alcamie101)",
	]
	short_description: "Manage Networking"
	requirements: [
		"dbus",
		"NetworkManager-glib",
		"nmcli",
	]
	version_added: "2.0"
	description: [
		"Manage the network devices. Create, modify and manage various connection and device type e.g., ethernet, teams, bonds, vlans etc.",
		"On CentOS and Fedora like systems, the requirements can be met by installing the following packages: NetworkManager-glib, libnm-qt-devel.x86_64, nm-connection-editor.x86_64, libsemanage-python, policycoreutils-python.",
		"On Ubuntu and Debian like systems, the requirements can be met by installing the following packages: network-manager, python-dbus (or python3-dbus, depending on the Python version in use), libnm-glib-dev.",
		"On openSUSE, the requirements can be met by installing the following packages: NetworkManager, python2-dbus-python (or python3-dbus-python), typelib-1_0-NMClient-1_0 and typelib-1_0-NetworkManager-1_0.",
	]

	options: {
		state: {
			description: [
				"Whether the device should exist or not, taking action if the state is different from what is stated.",
			]
			type:     "str"
			required: true
			choices: ["absent", "present"]
		}
		autoconnect: {
			description: [
				"Whether the connection should start on boot.",
				"Whether the connection profile can be automatically activated",
			]
			type:    "bool"
			default: true
		}
		conn_name: {
			description: [
				"The name used to call the connection. Pattern is <type>[-<ifname>][-<num>].",
			]
			type:     "str"
			required: true
		}
		ifname: {
			description: [
				"The interface to bind the connection to.",
				"The connection will only be applicable to this interface name.",
				"A special value of C('*') can be used for interface-independent connections.",
				"The ifname argument is mandatory for all connection types except bond, team, bridge and vlan.",
				"This parameter defaults to C(conn_name) when left unset.",
			]
			type: "str"
		}
		type: {
			description: [
				"This is the type of device or network connection that you wish to create or modify.",
				"Type C(generic) is added in Ansible 2.5.",
			]
			type: "str"
			choices: ["bond", "bond-slave", "bridge", "bridge-slave", "ethernet", "generic", "ipip", "sit", "team", "team-slave", "vlan", "vxlan"]
		}
		mode: {
			description: [
				"This is the type of device or network connection that you wish to create for a bond, team or bridge.",
			]
			type: "str"
			choices: ["802.3ad", "active-backup", "balance-alb", "balance-rr", "balance-tlb", "balance-xor", "broadcast"]
			default: "balance-rr"
		}
		master: {
			description: [
				"Master <master (ifname, or connection UUID or conn_name) of bridge, team, bond master connection profile.",
			]
			type: "str"
		}
		ip4: {
			description: [
				"The IPv4 address to this interface.",
				"Use the format C(192.0.2.24/24).",
			]
			type: "str"
		}
		gw4: {
			description: [
				"The IPv4 gateway for this interface.",
				"Use the format C(192.0.2.1).",
			]
			type: "str"
		}
		dns4: {
			description: [
				"A list of up to 3 dns servers.",
				"IPv4 format e.g. to add two IPv4 DNS server addresses, use C(192.0.2.53 198.51.100.53).",
			]
			type: "list"
		}
		dns4_search: {
			description: [
				"A list of DNS search domains.",
			]
			type:          "list"
			version_added: "2.5"
		}
		ip6: {
			description: [
				"The IPv6 address to this interface.",
				"Use the format C(abbe::cafe).",
			]
			type: "str"
		}
		gw6: {
			description: [
				"The IPv6 gateway for this interface.",
				"Use the format C(2001:db8::1).",
			]
			type: "str"
		}
		dns6: {
			description: [
				"A list of up to 3 dns servers.",
				"IPv6 format e.g. to add two IPv6 DNS server addresses, use C(2001:4860:4860::8888 2001:4860:4860::8844).",
			]
			type: "list"
		}
		dns6_search: {
			description: [
				"A list of DNS search domains.",
			]
			type:          "list"
			version_added: "2.5"
		}
		mtu: {
			description: [
				"The connection MTU, e.g. 9000. This can't be applied when creating the interface and is done once the interface has been created.",
				"Can be used when modifying Team, VLAN, Ethernet (Future plans to implement wifi, pppoe, infiniband)",
				"This parameter defaults to C(1500) when unset.",
			]
			type: "int"
		}
		dhcp_client_id: {
			description: [
				"DHCP Client Identifier sent to the DHCP server.",
			]
			type:          "str"
			version_added: "2.5"
		}
		primary: {
			description: [
				"This is only used with bond and is the primary interface name (for \"active-backup\" mode), this is the usually the 'ifname'.",
			]
			type: "str"
		}
		miimon: {
			description: [
				"This is only used with bond - miimon.",
				"This parameter defaults to C(100) when unset.",
			]
			type: "int"
		}
		downdelay: {
			description: [
				"This is only used with bond - downdelay.",
			]
			type: "int"
		}
		updelay: {
			description: [
				"This is only used with bond - updelay.",
			]
			type: "int"
		}
		arp_interval: {
			description: [
				"This is only used with bond - ARP interval.",
			]
			type: "int"
		}
		arp_ip_target: {
			description: [
				"This is only used with bond - ARP IP target.",
			]
			type: "str"
		}
		stp: {
			description: [
				"This is only used with bridge and controls whether Spanning Tree Protocol (STP) is enabled for this bridge.",
			]
			type:    "bool"
			default: true
		}
		priority: {
			description: [
				"This is only used with 'bridge' - sets STP priority.",
			]
			type:    "int"
			default: 128
		}
		forwarddelay: {
			description: [
				"This is only used with bridge - [forward-delay <2-30>] STP forwarding delay, in seconds.",
			]
			type:    "int"
			default: 15
		}
		hellotime: {
			description: [
				"This is only used with bridge - [hello-time <1-10>] STP hello time, in seconds.",
			]
			type:    "int"
			default: 2
		}
		maxage: {
			description: [
				"This is only used with bridge - [max-age <6-42>] STP maximum message age, in seconds.",
			]
			type:    "int"
			default: 20
		}
		ageingtime: {
			description: [
				"This is only used with bridge - [ageing-time <0-1000000>] the Ethernet MAC address aging time, in seconds.",
			]
			type:    "int"
			default: 300
		}
		mac: description: [
			"This is only used with bridge - MAC address of the bridge.",
			"Note this requires a recent kernel feature, originally introduced in 3.15 upstream kernel.",
		]
		slavepriority: {
			description: [
				"This is only used with 'bridge-slave' - [<0-63>] - STP priority of this slave.",
			]
			type:    "int"
			default: 32
		}
		path_cost: {
			description: [
				"This is only used with 'bridge-slave' - [<1-65535>] - STP port cost for destinations via this slave.",
			]
			type:    "int"
			default: 100
		}
		hairpin: {
			description: [
				"This is only used with 'bridge-slave' - 'hairpin mode' for the slave, which allows frames to be sent back out through the slave the frame was received on.",
			]

			type:    "bool"
			default: true
		}
		vlanid: {
			description: [
				"This is only used with VLAN - VLAN ID in range <0-4095>.",
			]
			type: "int"
		}
		vlandev: {
			description: [
				"This is only used with VLAN - parent device this VLAN is on, can use ifname.",
			]
			type: "str"
		}
		flags: {
			description: [
				"This is only used with VLAN - flags.",
			]
			type: "str"
		}
		ingress: {
			description: [
				"This is only used with VLAN - VLAN ingress priority mapping.",
			]
			type: "str"
		}
		egress: {
			description: [
				"This is only used with VLAN - VLAN egress priority mapping.",
			]
			type: "str"
		}
		vxlan_id: {
			description: [
				"This is only used with VXLAN - VXLAN ID.",
			]
			type:          "int"
			version_added: "2.8"
		}
		vxlan_remote: {
			description: [
				"This is only used with VXLAN - VXLAN destination IP address.",
			]
			type:          "str"
			version_added: "2.8"
		}
		vxlan_local: {
			description: [
				"This is only used with VXLAN - VXLAN local IP address.",
			]
			type:          "str"
			version_added: "2.8"
		}
		ip_tunnel_dev: {
			description: [
				"This is used with IPIP/SIT - parent device this IPIP/SIT tunnel, can use ifname.",
			]
			type:          "str"
			version_added: "2.8"
		}
		ip_tunnel_remote: {
			description: [
				"This is used with IPIP/SIT - IPIP/SIT destination IP address.",
			]
			type:          "str"
			version_added: "2.8"
		}
		ip_tunnel_local: {
			description: [
				"This is used with IPIP/SIT - IPIP/SIT local IP address.",
			]
			type:          "str"
			version_added: "2.8"
		}
	}
}
