package ansible

module: nso_config: {
	module:                         "nso_config"
	extends_documentation_fragment: "nso"
	short_description:              "Manage Cisco NSO configuration and service synchronization."
	description: [
		"This module provides support for managing configuration in Cisco NSO and can also ensure services are in sync.",
	]

	requirements: [
		"Cisco NSO version 3.4.12 or higher, 4.2.7 or higher, 4.3.8 or higher, 4.4.3 or higher, 4.5 or higher.",
	]

	author: "Claes Nästén (@cnasten)", options: data: {
		description: """
		NSO data in format as | display json converted to YAML. List entries can be annotated with a __state entry. Set to in-sync/deep-in-sync for services to verify service is in sync with the network. Set to absent in list entries to ensure they are deleted if they exist in NSO.

		"""

		required: true
	}, version_added:
		"2.5"
}
