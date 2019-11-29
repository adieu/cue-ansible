package netact

netact_cm_command :: {
	register?: string
	when?:     string
	tags?: [...string]
	notify?:     string | [...string]
	connection?: string
	name?:       string
	vars?: {...}
	with_items?: [...string]
	become?: bool
	netact_cm_command: {
		inputFile?:        string
		DN?:               string
		createBackupPlan?: bool
		fileName?:         string
		opsName?:          string
		planName?:         string
		WS?:               string
		verbose?:          string
		extra_opts?:       string
		backupPlanName?:   string
		fileFormat?:       string
		operation:         string
		typeOption?:       string
		MR?:               string
	}
}
