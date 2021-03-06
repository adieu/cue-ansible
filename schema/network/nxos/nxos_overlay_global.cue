package ansible

module: nxos_overlay_global: {
	module:                         "nxos_overlay_global"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Configures anycast gateway MAC of the switch."
	description: [
		"Configures anycast gateway MAC of the switch.",
	]
	author: "Gabriele Gerbino (@GGabriele)"
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"Default restores params default value",
		"Supported MAC address format are \"E.E.E\", \"EE-EE-EE-EE-EE-EE\", \"EE:EE:EE:EE:EE:EE\" and \"EEEE.EEEE.EEEE\"",
	]

	options: anycast_gateway_mac: {
		description: [
			"Anycast gateway mac of the switch.",
		]
		required: true
	}
}
