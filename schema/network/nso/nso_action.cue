package ansible

module: nso_action: {
	module:                         "nso_action"
	extends_documentation_fragment: "nso"
	short_description:              "Executes Cisco NSO actions and verifies output."
	description: [
		"This module provides support for executing Cisco NSO actions and then verifying that the output is as expected.",
	]

	requirements: [
		"Cisco NSO version 3.4 or higher.",
	]
	author: "Claes Nästén (@cnasten)", options: {

		path: {
			description: "Path to NSO action."
			required:    true
		}
		input: description: """
		NSO action parameters.

		"""

		output_required: description: """
		Required output parameters.

		"""

		output_invalid: description: """
		List of result parameter names that will cause the task to fail if they are present.

		"""

		validate_strict: {
			description: """
		If set to true, the task will fail if any output parameters not in output_required is present in the output.

		"""

			type: "bool"
		}
	}, version_added:
		"2.5"
}
