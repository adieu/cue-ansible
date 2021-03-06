package ansible

module: netapp_e_auditlog: {
	module:            "netapp_e_auditlog"
	short_description: "NetApp E-Series manage audit-log configuration"
	description: [
		"This module allows an e-series storage system owner to set audit-log configuration parameters.",
	]
	version_added: "2.7"
	author:        "Nathan Swartz (@ndswartz)"
	extends_documentation_fragment: [
		"netapp.eseries",
	]
	options: {
		max_records: {
			description: [
				"The maximum number log messages audit-log will retain.",
				"Max records must be between and including 100 and 50000.",
			]
			default: 50000
		}
		log_level: {
			description: "Filters the log messages according to the specified log level selection."
			choices: [
				"all",
				"writeOnly",
			]
			default: "writeOnly"
		}
		full_policy: {
			description: "Specifies what audit-log should do once the number of entries approach the record limit."
			choices: [
				"overWrite",
				"preventSystemAccess",
			]
			default: "overWrite"
		}
		threshold: {
			description: [
				"This is the memory full percent threshold that audit-log will start issuing warning messages.",
				"Percent range must be between and including 60 and 90.",
			]
			default: 90
		}
		force: {
			description: [
				"Forces the audit-log configuration to delete log history when log messages fullness cause immediate warning or full condition.",
				"Warning! This will cause any existing audit-log messages to be deleted.",
				"This is only applicable for I(full_policy=preventSystemAccess).",
			]
			type:    "bool"
			default: false
		}
		log_path: {
			description: "A local path to a file to be used for debug logging."
			required:    false
		}
	}
	notes: [
		"Check mode is supported.",
		"This module is currently only supported with the Embedded Web Services API v3.0 and higher.",
	]
}
