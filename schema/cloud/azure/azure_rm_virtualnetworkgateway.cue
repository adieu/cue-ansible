package ansible

module: azure_rm_virtualnetworkgateway: {
	module: "azure_rm_virtualnetworkgateway"

	version_added: "2.8"

	short_description: "Manage Azure virtual network gateways"

	description: [
		"Create, update or delete a virtual network gateway(VPN Gateway).",
		"When creating a VPN Gateway you must provide the name of an existing virtual network.",
	]

	options: {
		resource_group: {
			description: [
				"Name of a resource group where VPN Gateway exists or will be created.",
			]
			required: true
		}
		name: {
			description: [
				"Name of VPN Gateway.",
			]
			required: true
		}
		state: {
			description: [
				"State of the VPN Gateway. Use C(present) to create or update VPN gateway and C(absent) to delete VPN gateway.",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
			required: false
		}
		location: {
			description: [
				"Valid Azure location. Defaults to location of the resource group.",
			]
			required: false
		}
		virtual_network: {
			description: [
				"An existing virtual network with which the VPN Gateway will be associated.",
				"Required when creating a VPN Gateway.",
				"Can be the name of the virtual network.",
				"Must be in the same resource group as VPN gateway when specified by name.",
				"Can be the resource ID of the virtual network.",
				"Can be a dict which contains I(name) and I(resource_group) of the virtual network.",
			]
			aliases: [
				"virtual_network_name",
			]
			required: true
		}
		ip_configurations: {
			description: [
				"List of IP configurations.",
			]
			suboptions: {
				name: {
					description: [
						"Name of the IP configuration.",
					]
					required: true
				}
				private_ip_allocation_method: {
					description: [
						"Private IP allocation method.",
					]
					choices: [
						"dynamic",
						"static",
					]
					default: "dynamic"
				}
				public_ip_address_name: description: [
					"Name of the public IP address. Use 'None' to disable the public IP address.",
				]
				subnet: {
					description: [
						"ID of the gateway subnet for VPN.",
					]
					default: "GatewaySubnet"
				}
			}
		}
		gateway_type: {
			description: [
				"The type of this virtual network gateway.",
			]
			default: "vpn"
			choices: [
				"vpn",
				"express_route",
			]
		}
		vpn_type: {
			description: [
				"The type of this virtual private network.",
			]
			default: "route_based"
			choices: [
				"route_based",
				"policy_based",
			]
		}
		enable_bgp: {
			description: [
				"Whether BGP is enabled for this virtual network gateway or not.",
			]
			default: false
		}
		sku: {
			description: [
				"The reference of the VirtualNetworkGatewaySku resource which represents the SKU selected for Virtual network gateway.",
			]
			default: "VpnGw1"
			choices: [
				"VpnGw1",
				"VpnGw2",
				"VpnGw3",
			]
		}
		bgp_settings: {
			description: [
				"Virtual network gateway's BGP speaker settings.",
			]
			suboptions: asn: {
				description: [
					"The BGP speaker's ASN.",
				]
				required: true
			}
		}
	}

	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: ["Madhura Naniwadekar (@Madhura-CSI)"]
}
