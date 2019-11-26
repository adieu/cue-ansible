package ansible

module: na_ontap_vscan_on_access_policy: {
	module:            "na_ontap_vscan_on_access_policy"
	short_description: "NetApp ONTAP Vscan on access policy configuration."
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.8"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Configure on access policy for Vscan (virus scan)",
	]
	options: {
		state: {
			description: [
				"Whether a Vscan on Access policy is present or not",
			]
			choices: ["present", "absent"]
			default: "present"
		}

		vserver: {
			description: [
				"the name of the data vserver to use.",
			]
			required: true
		}

		policy_name: {
			description: [
				"The name of the policy",
			]
			required: true
		}

		file_ext_to_exclude: description: [
			"File extensions for which On-Access scanning must not be performed.",
		]

		file_ext_to_include: description: [
			"File extensions for which On-Access scanning is considered. The default value is '*', which means that all files are considered for scanning except",
			"those which are excluded from scanning.",
		]

		filters: description: [
			"A list of filters which can be used to define the scope of the On-Access policy more precisely. The filters can be added in any order. Possible values",
			"scan_ro_volume  Enable scans for read-only volume,",
			"scan_execute_access  Scan only files opened with execute-access (CIFS only)",
		]

		is_scan_mandatory: {
			description: [
				"Specifies whether access to a file is allowed if there are no external virus-scanning servers available for virus scanning. It is true if not provided at the time of creating a policy.",
			]

			type: "bool"
		}

		max_file_size: description: [
			"Max file-size (in bytes) allowed for scanning. The default value of 2147483648 (2GB) is taken if not provided at the time of creating a policy.",
		]

		paths_to_exclude: description: [
			"File paths for which On-Access scanning must not be performed.",
		]

		scan_files_with_no_ext: {
			description: [
				"Specifies whether files without any extension are considered for scanning or not.",
			]
			default: true
		}
	}
}
