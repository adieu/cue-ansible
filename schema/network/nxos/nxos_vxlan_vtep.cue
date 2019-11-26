package ansible

module: nxos_vxlan_vtep: {
	module:                         "nxos_vxlan_vtep"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages VXLAN Network Virtualization Endpoint (NVE)."
	description: [
		"Manages VXLAN Network Virtualization Endpoint (NVE) overlay interface that terminates VXLAN tunnels.",
	]

	author: "Gabriele Gerbino (@GGabriele)"
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"The module is used to manage NVE properties, not to create NVE interfaces. Use M(nxos_interface) if you wish to do so.",
		"C(state=absent) removes the interface.",
		"Default, where supported, restores params default value.",
	]
	options: {
		interface: {
			description: [
				"Interface name for the VXLAN Network Virtualization Endpoint.",
			]
			required: true
		}
		description: description: [
			"Description of the NVE interface.",
		]
		host_reachability: {
			description: [
				"Specify mechanism for host reachability advertisement.",
			]
			type: "bool"
		}
		shutdown: {
			description: [
				"Administratively shutdown the NVE interface.",
			]
			type: "bool"
		}
		source_interface: description: [
			"Specify the loopback interface whose IP address should be used for the NVE interface.",
		]

		source_interface_hold_down_time: description: [
			"Suppresses advertisement of the NVE loopback address until the overlay has converged.",
		]

		global_mcast_group_L3: {
			description: [
				"Global multicast ip prefix for L3 VNIs or the keyword 'default' This is available on NX-OS 9K series running 9.2.x or higher.",
			]

			version_added: "2.8"
		}
		global_mcast_group_L2: {
			description: [
				"Global multicast ip prefix for L2 VNIs or the keyword 'default' This is available on NX-OS 9K series running 9.2.x or higher.",
			]

			version_added: "2.8"
		}
		global_suppress_arp: {
			description: [
				"Enables ARP suppression for all VNIs This is available on NX-OS 9K series running 9.2.x or higher.",
			]

			type:          "bool"
			version_added: "2.8"
		}
		global_ingress_replication_bgp: {
			description: [
				"Configures ingress replication protocol as bgp for all VNIs This is available on NX-OS 9K series running 9.2.x or higher.",
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
