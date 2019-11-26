package ansible

module: pn_switch_setup: {
	module:            "pn_switch_setup"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.8"
	short_description: "CLI command to modify switch-setup"
	description: [
		"This module can be used to modify switch setup.",
	]
	options: {
		pn_cliswitch: {
			description: [
				"Target switch to run the CLI on.",
			]
			required: false
			type:     "str"
		}
		state: {
			description: [
				"State the action to perform. Use C(update) to modify the switch-setup.",
			]
			required: true
			type:     "str"
			choices: ["update"]
		}
		pn_force: {
			description: [
				"Force analytics-store change even if it involves removing data.",
			]
			required: false
			type:     "bool"
		}
		pn_dns_ip: {
			description: [
				"DNS IP address.",
			]
			required: false
			type:     "str"
		}
		pn_mgmt_netmask: {
			description: [
				"Netmask.",
			]
			required: false
			type:     "str"
		}
		pn_gateway_ip6: {
			description: [
				"Gateway IPv6 address.",
			]
			required: false
			type:     "str"
		}
		pn_in_band_ip6_assign: {
			description: [
				"Data IPv6 address assignment.",
			]
			required: false
			type:     "str"
			choices: ["none", "autoconf"]
		}
		pn_domain_name: {
			description: [
				"Domain name.",
			]
			required: false
			type:     "str"
		}
		pn_timezone: {
			description: [
				"Timezone to be configured.",
			]
			required: false
			type:     "str"
		}
		pn_in_band_netmask: {
			description: [
				"Data in-band netmask.",
			]
			required: false
			type:     "str"
		}
		pn_in_band_ip6: {
			description: [
				"Data in-band IPv6 address.",
			]
			required: false
			type:     "str"
		}
		pn_in_band_netmask_ip6: {
			description: [
				"Data in-band IPv6 netmask.",
			]
			required: false
			type:     "str"
		}
		pn_motd: {
			description: [
				"Message of the Day.",
			]
			required: false
			type:     "str"
		}
		pn_loopback_ip6: {
			description: [
				"loopback IPv6 address.",
			]
			required: false
			type:     "str"
		}
		pn_mgmt_ip6_assignment: {
			description: [
				"IPv6 address assignment.",
			]
			required: false
			choices: ["none", "autoconf"]
		}
		pn_ntp_secondary_server: {
			description: [
				"Secondary NTP server.",
			]
			required: false
			type:     "str"
		}
		pn_in_band_ip: {
			description: [
				"data in-band IP address.",
			]
			required: false
			type:     "str"
		}
		pn_eula_accepted: {
			description: [
				"Accept EULA.",
			]
			required: false
			type:     "str"
			choices: ["true", "false"]
		}
		pn_mgmt_ip: {
			description: [
				"Management IP address.",
			]
			required: false
			type:     "str"
		}
		pn_ntp_server: {
			description: [
				"NTP server.",
			]
			required: false
			type:     "str"
		}
		pn_mgmt_ip_assignment: {
			description: [
				"IP address assignment.",
			]
			required: false
			type:     "str"
			choices: ["none", "dhcp"]
		}
		pn_date: {
			description: [
				"Date.",
			]
			required: false
			type:     "str"
		}
		pn_password: {
			description: [
				"plain text password.",
			]
			required: false
			type:     "str"
		}
		pn_banner: {
			description: [
				"Banner to display on server-switch.",
			]
			required: false
			type:     "str"
		}
		pn_loopback_ip: {
			description: [
				"loopback IPv4 address.",
			]
			required: false
			type:     "str"
		}
		pn_dns_secondary_ip: {
			description: [
				"secondary DNS IP address.",
			]
			required: false
			type:     "str"
		}
		pn_switch_name: {
			description: [
				"switch name.",
			]
			required: false
			type:     "str"
		}
		pn_eula_timestamp: {
			description: [
				"EULA timestamp.",
			]
			required: false
			type:     "str"
		}
		pn_mgmt_netmask_ip6: {
			description: [
				"IPv6 netmask.",
			]
			required: false
			type:     "str"
		}
		pn_enable_host_ports: {
			description: [
				"Enable host ports by default.",
			]
			required: false
			type:     "bool"
		}
		pn_mgmt_ip6: {
			description: [
				"IPv6 address.",
			]
			required: false
			type:     "str"
		}
		pn_analytics_store: {
			description: [
				"type of disk storage for analytics.",
			]
			required: false
			type:     "str"
			choices: ["default", "optimized"]
		}
		pn_gateway_ip: {
			description: [
				"gateway IPv4 address.",
			]
			required: false
			type:     "str"
		}
	}
}
