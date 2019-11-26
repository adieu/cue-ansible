package ansible

module: nxos_vtp_domain: {
	module:                         "nxos_vtp_domain"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages VTP domain configuration."
	description: [
		"Manages VTP domain configuration.",
	]
	author: [
		"Gabriele Gerbino (@GGabriele)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"VTP feature must be active on the device to use this module.",
		"This module is used to manage only VTP domain names.",
		"VTP domain names are case-sensible.",
		"If it's never been configured before, VTP version is set to 1 by default. Otherwise, it leaves the previous configured version untouched. Use M(nxos_vtp_version) to change it.",
		"Use this in combination with M(nxos_vtp_password) and M(nxos_vtp_version) to fully manage VTP operations.",
	]

	options: domain: {
		description: [
			"VTP domain name.",
		]
		required: true
	}
}
