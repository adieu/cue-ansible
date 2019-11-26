package ansible

module: na_ontap_cifs: {
	author: "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Create or destroy or modify(path) cifs-share on ONTAP",
	]
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	module: "na_ontap_cifs"

	options: {

		path: {
			description:
				"The file system path that is shared through this CIFS share. The path is the full, user visible path relative to the vserver root, and it might be crossing junction mount points. The path is in UTF8 and uses forward slash as directory separator"

			required: false
		}

		vserver: {
			description: [
				"Vserver containing the CIFS share.",
			]
			required: true
		}

		share_name: {
			description:
				"The name of the CIFS share. The CIFS share name is a UTF-8 string with the following characters being illegal; control characters from 0x00 to 0x1F, both inclusive, 0x22 (double quotes)"

			required: true
		}

		share_properties: {
			description: [
				"The list of properties for the CIFS share",
			]
			required:      false
			version_added: "2.8"
		}

		symlink_properties: {
			description: [
				"The list of symlink properties for this CIFS share",
			]
			required:      false
			version_added: "2.8"
		}

		state: {
			choices: ["present", "absent"]
			description: [
				"Whether the specified CIFS share should exist or not.",
			]
			required: false
			default:  "present"
		}

		vscan_fileop_profile: {
			choices: ["no_scan", "standard", "strict", "writes_only"]
			description: [
				"Profile_set of file_ops to which vscan on access scanning is applicable.",
			]
			required:      false
			version_added: "2.9"
		}
	}

	short_description: "NetApp ONTAP Manage cifs-share"
	version_added:     "2.6"
}
