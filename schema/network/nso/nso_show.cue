package ansible

module: nso_show: {
	module:                         "nso_show"
	extends_documentation_fragment: "nso"
	short_description:              "Displays data from Cisco NSO."
	description: [
		"This module provides support for displaying data from Cisco NSO.",
	]
	requirements: [
		"Cisco NSO version 3.4.12 or higher, 4.1.9 or higher, 4.2.6 or higher, 4.3.7 or higher, 4.4.5 or higher, 4.5 or higher.",
	]

	author: "Claes Nästén (@cnasten)", options: {

		path: {
			description: "Path to NSO data."
			required:    true
		}
		operational: {
			description: """
		Controls whether or not operational data is included in the result.

		"""

			type:    "bool"
			default: false
		}
	}, version_added:
		"2.5"
}
