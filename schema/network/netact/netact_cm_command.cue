package ansible

module: netact_cm_command: {
	module: "netact_cm_command"

	short_description: "Manage network configuration data in Nokia Core and Radio networks"

	version_added: "2.5"

	description:
		"netact_cm_command can be used to run various configuration management operations. This module requires that the target hosts have Nokia NetAct network management system installed. Module will access the Configurator command line interface in NetAct to upload network configuration to NetAct, run configuration export, plan import and configuration provision operations To set the scope of the operation, define Distinguished Name (DN) or Working Set (WS) or Maintenance Region (MR) as input"

	options: {
		operation: {
			description:
				"Supported operations allow user to upload actual configuration from the network, to import and provision prepared plans, or export reference or actual configuration for planning purposes. Provision_Mass_Modification enables provisioning the same parameters to multiple network elements. This operation supports modifications only to one object class at a time. With this option NetAct Configurator creates and provisions a plan to the network with the given scope and options."

			required: true
			choices: [
				"upload",
				"provision",
				"import",
				"export",
				"Provision_Mass_Modification",
			]
			aliases: [
				"op",
			]
		}
		opsName: {
			description: [
				"user specified operation name",
			]
			required: false
		}
		DN: {
			description:
				"Sets the exact scope of the operation in form of a list of managed object Distinguished Names (DN) in the network. A single DN or a list of DNs can be given (comma separated list without spaces). Alternatively, if DN or a list of DNs is not given, working set (WS) or Maintenance Region (MR) must be provided as parameter to set the scope of operation."

			required: false
		}

		WS: {
			description:
				"Sets the scope of the operation to use one or more pre-defined working sets (WS) in NetAct. A working set contains network elements selected by user according to defined criteria. A single WS name, or multiple WSs can be provided (comma-separated list without spaces). Alternatively, if a WS name or a list of WSs is not given, Distinguished Name (DN) or Maintenance Region(MR) must be provided as parameter to set the scope of operation."

			required: false
		}
		MR: {
			description:
				"Sets the scope of the operation to network elements assigned to a Maintenance Region (MR) Value can be set as MR IDs including the Maintenance Region Collection (MRC) information (for example MRC-FIN1/MR-Hel). Multiple MRs can be given (comma-separated list without spaces) The value of this parameter is searched through MR IDs under given MRC. If there is no match, then it is searched from all MR names. Alternatively, if MR ID or a list or MR IDs is not given, Distinguished Name (DN) or Working Set (WS) must be provided as parameter to set the scope of operation."

			required: false
		}
		planName: {
			description: [
				"Specifies a plan name.",
			]
			required: false
		}
		typeOption: {
			description:
					"Specifies the type of the export operation."
			required: false
			choices: [
				"plan",
				"actual",
				"reference",
				"template",
				"siteTemplate",
			]
			aliases: [
				"type",
			]
		}
		fileFormat: {
			description:
					"Indicates file format."
			required: false
			choices: [
				"RAML2",
				"CSV",
				"XLSX",
			]
		}
		fileName: {
			description: [
				"Specifies a file name. Valid for Import and Export operations.",
			]
			required: false
		}
		inputFile: {
			description:
				"Specifies full path to plan file location for the import operation. This parameter (inputFile) or the fileName parameter must be filled. If both are present then the inputFile is used."

			required: false
		}
		createBackupPlan: {
			description: [
				"Specifies if backup plan generation is enabled.",
			]
			required: false
			type:     "bool"
		}
		backupPlanName: {
			description: [
				"Specifies a backup plan name",
			]
			required: false
		}
		verbose: {
			description:
					"NetAct Configurator will print more info"
			required: false
		}
		extra_opts: {
			description:
				"Extra options to be set for operations. Check Configuration Management > Configuration Management Operating Procedures > Command Line Operations in Nokia NetAct user documentation for further information for extra options."

			required: false
		}
	}
	notes: [
		"Check mode is not currently supported",
	]
	author: ["Harri Tuominen (@hatuomin)"]
}
