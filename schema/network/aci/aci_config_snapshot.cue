package ansible

module: aci_config_snapshot: {
	module:            "aci_config_snapshot"
	short_description: "Manage Config Snapshots (config:Snapshot, config:ExportP)"
	description: [
		"Manage Config Snapshots on Cisco ACI fabrics.",
		"Creating new Snapshots is done using the configExportP class.",
		"Removing Snapshots is done using the configSnapshot class.",
	]
	version_added: "2.4"
	options: {
		description: {
			description: [
				"The description for the Config Export Policy.",
			]
			type: "str"
			aliases: ["descr"]
		}
		export_policy: {
			description: [
				"The name of the Export Policy to use for Config Snapshots.",
			]
			type: "str"
			aliases: ["name"]
		}
		format: {
			description: [
				"Sets the config backup to be formatted in JSON or XML.",
				"The APIC defaults to C(json) when unset.",
			]
			type: "str"
			choices: ["json", "xml"]
		}
		include_secure: {
			description: [
				"Determines if secure information should be included in the backup.",
				"The APIC defaults to C(yes) when unset.",
			]
			type: "bool"
		}
		max_count: {
			description: [
				"Determines how many snapshots can exist for the Export Policy before the APIC starts to rollover.",
				"Accepted values range between C(1) and C(10).",
				"The APIC defaults to C(3) when unset.",
			]
			type: "int"
		}
		snapshot: {
			description: [
				"The name of the snapshot to delete.",
			]
			type: "str"
		}
		state: {
			description: [
				"Use C(present) or C(absent) for adding or removing.",
				"Use C(query) for listing an object or multiple objects.",
			]
			type: "str"
			choices: ["absent", "present", "query"]
			default: "present"
		}
	}
	extends_documentation_fragment: "aci"
	notes: [
		"The APIC does not provide a mechanism for naming the snapshots.",
		"Snapshot files use the following naming structure: ce_<config export policy name>-<yyyy>-<mm>-<dd>T<hh>:<mm>:<ss>.<mss>+<hh>:<mm>.",
		"Snapshot objects use the following naming structure: run-<yyyy>-<mm>-<dd>T<hh>-<mm>-<ss>.",
	]
	seealso: [{
		module: "aci_config_rollback"
	}, {
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC classes B(config:Snapshot) and B(config:ExportP)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Jacob McGill (@jmcgill298)"]
}
