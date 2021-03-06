package ansible

module: nxos_vxlan_vtep_vni: {
	module:                         "nxos_vxlan_vtep_vni"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Creates a Virtual Network Identifier member (VNI)"
	description: [
		"Creates a Virtual Network Identifier member (VNI) for an NVE overlay interface.",
	]

	author: "Gabriele Gerbino (@GGabriele)"
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"default, where supported, restores params default value.",
	]
	options: {
		interface: {
			description: [
				"Interface name for the VXLAN Network Virtualization Endpoint.",
			]
			required: true
		}
		vni: {
			description: [
				"ID of the Virtual Network Identifier.",
			]
			required: true
		}
		assoc_vrf: {
			description: [
				"This attribute is used to identify and separate processing VNIs that are associated with a VRF and used for routing. The VRF and VNI specified with this command must match the configuration of the VNI under the VRF.",
			]

			type: "bool"
		}
		ingress_replication: {
			description: [
				"Specifies mechanism for host reachability advertisement.",
			]
			choices: ["bgp", "static", "default"]
		}
		multicast_group: description: [
			"The multicast group (range) of the VNI. Valid values are string and keyword 'default'.",
		]

		peer_list: description: [
			"Set the ingress-replication static peer list. Valid values are an array, a space-separated string of ip addresses, or the keyword 'default'.",
		]

		suppress_arp: {
			description: [
				"Suppress arp under layer 2 VNI.",
			]
			type: "bool"
		}
		suppress_arp_disable: {
			description: [
				"Overrides the global ARP suppression config. This is available on NX-OS 9K series running 9.2.x or higher.",
			]

			type:          "bool"
			version_added: "2.8"
		}
		state: {
			description: [
				"Determines whether the config should be present or not on the device.",
			]

			default: "present"
			choices: ["present", "absent"]
		}
	}
}
