package ansible

module: nxos_evpn_vni: {
	module:                         "nxos_evpn_vni"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages Cisco EVPN VXLAN Network Identifier (VNI)."
	description: [
		"Manages Cisco Ethernet Virtual Private Network (EVPN) VXLAN Network Identifier (VNI) configurations of a Nexus device.",
	]

	author: "Gabriele Gerbino (@GGabriele)"
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"default, where supported, restores params default value.",
		"RD override is not permitted. You should set it to the default values first and then reconfigure it.",
		"C(route_target_both), C(route_target_import) and C(route_target_export valid) values are a list of extended communities, (i.e. ['1.2.3.4:5', '33:55']) or the keywords 'auto' or 'default'.",
		"The C(route_target_both) property is discouraged due to the inconsistent behavior of the property across Nexus platforms and image versions. For this reason it is recommended to use explicit C(route_target_export) and C(route_target_import) properties instead of C(route_target_both).",
		"RD valid values are a string in one of the route-distinguisher formats, the keyword 'auto', or the keyword 'default'.",
	]

	options: {
		vni: {
			description: [
				"The EVPN VXLAN Network Identifier.",
			]
			required: true
		}
		route_distinguisher: {
			description: [
				"The VPN Route Distinguisher (RD). The RD is combined with the IPv4 or IPv6 prefix learned by the PE router to create a globally unique address.",
			]

			required: true
		}
		route_target_both: description: [
			"Enables/Disables route-target settings for both import and export target communities using a single property.",
		]

		route_target_import: description: [
			"Sets the route-target 'import' extended communities.",
		]
		route_target_export: description: [
			"Sets the route-target 'export' extended communities.",
		]
		state: {
			description: [
				"Determines whether the config should be present or not on the device.",
			]

			default: "present"
			choices: ["present", "absent"]
		}
	}
}
