package ansible

module: nso_query: {
	module:                         "nso_query"
	extends_documentation_fragment: "nso"
	short_description:              "Query data from Cisco NSO."
	description: [
		"This module provides support for querying data from Cisco NSO using XPath.",
	]
	requirements: [
		"Cisco NSO version 3.4 or higher.",
	]
	author: "Claes Nästén (@cnasten)", options: {

		xpath: {
			description: "XPath selection relative to the root."
			required:    true
		}
		fields: {
			description: """
		List of fields to select from matching nodes.

		"""

			required: true
		}
	}, version_added:
		"2.5"
}
