package ansible

module: win_dsc: {
	module:            "win_dsc"
	version_added:     "2.4"
	short_description: "Invokes a PowerShell DSC configuration"
	description: [
		"Configures a resource using PowerShell DSC.",
		"Requires PowerShell version 5.0 or newer.",
		"Most of the options for this module are dynamic and will vary depending on the DSC Resource specified in I(resource_name).",
		"See :doc:`/user_guide/windows_dsc` for more information on how to use this module.",
	]
	options: {
		resource_name: {
			description: [
				"The name of the DSC Resource to use.",
				"Must be accessible to PowerShell using any of the default paths.",
			]
			type:     "str"
			required: true
		}
		module_version: {
			description: [
				"Can be used to configure the exact version of the DSC resource to be invoked.",
				"Useful if the target node has multiple versions installed of the module containing the DSC resource.",
				"If not specified, the module will follow standard PowerShell convention and use the highest version available.",
			]

			type:    "str"
			default: "latest"
		}
		free_form: {
			description: [
				"The M(win_dsc) module takes in multiple free form options based on the DSC resource being invoked by I(resource_name).",
				"There is no option actually named C(free_form) so see the examples.",
				"This module will try and convert the option to the correct type required by the DSC resource and throw a warning if it fails.",
				"If the type of the DSC resource option is a C(CimInstance) or C(CimInstance[]), this means the value should be a dictionary or list of dictionaries based on the values required by that option.",
				"If the type of the DSC resource option is a C(PSCredential) then there needs to be 2 options set in the Ansible task definition suffixed with C(_username) and C(_password).",
				"If the type of the DSC resource option is an array, then a list should be provided but a comma separated string also work. Use a list where possible as no escaping is required and it works with more complex types list C(CimInstance[]).",
				"If the type of the DSC resource option is a C(DateTime), you should use a string in the form of an ISO 8901 string to ensure the exact date is used.",
				"Since Ansible 2.8, Ansible will now validate the input fields against the DSC resource definition automatically. Older versions will silently ignore invalid fields.",
			]

			type:     "str"
			required: true
		}
	}
	notes: [
		"By default there are a few builtin resources that come with PowerShell 5.0, see U(https://docs.microsoft.com/en-us/powershell/dsc/resources/resources) for more information on these resources.",
		"Custom DSC resources can be installed with M(win_psmodule) using the I(name) option.",
		"The DSC engine run's each task as the SYSTEM account, any resources that need to be accessed with a different account need to have C(PsDscRunAsCredential) set.",
		"To see the valid options for a DSC resource, run the module with C(-vvv) to show the possible module invocation. Default values are not shown in this output but are applied within the DSC engine.",
	]

	author: ["Trond Hindenes (@trondhindenes)"]
}
