package netact

netact_cm_command :: {
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	name?:   string
	netact_cm_command: {

		// Sets the scope of the operation to use one or more pre-defined working sets (WS) in NetAct. A working set contains network elements selected by user according to defined criteria. A single WS name, or multiple WSs can be provided (comma-separated list without spaces). Alternatively, if a WS name or a list of WSs is not given, Distinguished Name (DN) or Maintenance Region(MR) must be provided as parameter to set the scope of operation.

		WS?: string

		// Specifies if backup plan generation is enabled.

		createBackupPlan?: bool

		// Indicates file format.

		fileFormat?: string

		// NetAct Configurator will print more info

		verbose?: string

		// Sets the scope of the operation to network elements assigned to a Maintenance Region (MR) Value can be set as MR IDs including the Maintenance Region Collection (MRC) information (for example MRC-FIN1/MR-Hel). Multiple MRs can be given (comma-separated list without spaces) The value of this parameter is searched through MR IDs under given MRC. If there is no match, then it is searched from all MR names. Alternatively, if MR ID or a list or MR IDs is not given, Distinguished Name (DN) or Working Set (WS) must be provided as parameter to set the scope of operation.

		MR?: string

		// Specifies a backup plan name

		backupPlanName?: string

		// Specifies full path to plan file location for the import operation. This parameter (inputFile) or the fileName parameter must be filled. If both are present then the inputFile is used.

		inputFile?: string

		// user specified operation name

		opsName?: string

		// Specifies a plan name.

		planName?: string

		// Specifies the type of the export operation.

		typeOption?: string

		// Sets the exact scope of the operation in form of a list of managed object Distinguished Names (DN) in the network. A single DN or a list of DNs can be given (comma separated list without spaces). Alternatively, if DN or a list of DNs is not given, working set (WS) or Maintenance Region (MR) must be provided as parameter to set the scope of operation.

		DN?: string

		// Extra options to be set for operations. Check Configuration Management > Configuration Management Operating Procedures > Command Line Operations in Nokia NetAct user documentation for further information for extra options.

		extra_opts?: string

		// Specifies a file name. Valid for Import and Export operations.

		fileName?: string

		// Supported operations allow user to upload actual configuration from the network, to import and provision prepared plans, or export reference or actual configuration for planning purposes. Provision_Mass_Modification enables provisioning the same parameters to multiple network elements. This operation supports modifications only to one object class at a time. With this option NetAct Configurator creates and provisions a plan to the network with the given scope and options.

		operation: string
	}
}
