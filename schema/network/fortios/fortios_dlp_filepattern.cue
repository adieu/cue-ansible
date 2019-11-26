package ansible

module: fortios_dlp_filepattern: {
	module:            "fortios_dlp_filepattern"
	short_description: "Configure file patterns used by DLP blocking in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify dlp feature and filepattern category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
	]

	version_added: "2.8"
	author: [
		"Miguel Angel Munoz (@mamunozgonzalez)",
		"Nicolas Thomas (@thomnico)",
	]
	notes: [
		"Requires fortiosapi library developed by Fortinet",
		"Run as a local_action in your playbook",
	]
	requirements: [
		"fortiosapi>=0.9.8",
	]
	options: {
		host: {
			description: [
				"FortiOS or FortiGate IP address.",
			]
			type:     "str"
			required: false
		}
		username: {
			description: [
				"FortiOS or FortiGate username.",
			]
			type:     "str"
			required: false
		}
		password: {
			description: [
				"FortiOS or FortiGate password.",
			]
			type:    "str"
			default: ""
		}
		vdom: {
			description: [
				"Virtual domain, among those defined previously. A vdom is a virtual instance of the FortiGate that can be configured and used as a different unit.",
			]

			type:    "str"
			default: "root"
		}
		https: {
			description: [
				"Indicates if the requests towards FortiGate must use HTTPS protocol.",
			]
			type:    "bool"
			default: true
		}
		ssl_verify: {
			description: [
				"Ensures FortiGate certificate must be verified by a proper CA.",
			]
			type:          "bool"
			default:       true
			version_added: 2.9
		}
		state: {
			description: [
				"Indicates whether to create or remove the object. This attribute was present already in previous version in a deeper level. It has been moved out to this outer level.",
			]

			type:     "str"
			required: false
			choices: [
				"present",
				"absent",
			]
			version_added: 2.9
		}
		dlp_filepattern: {
			description: [
				"Configure file patterns used by DLP blocking.",
			]
			default: null
			type:    "dict"
			suboptions: {
				state: {
					description: [
						"B(Deprecated)",
						"Starting with Ansible 2.9 we recommend using the top-level 'state' parameter.",
						"HORIZONTALLINE",
						"Indicates whether to create or remove the object.",
					]
					type:     "str"
					required: false
					choices: [
						"present",
						"absent",
					]
				}
				comment: {
					description: [
						"Optional comments.",
					]
					type: "str"
				}
				entries: {
					description: [
						"Configure file patterns used by DLP blocking.",
					]
					type: "list"
					suboptions: {
						file_type: {
							description: [
								"Select a file type.",
							]
							type: "str"
							choices: [
								"7z",
								"arj",
								"cab",
								"lzh",
								"rar",
								"tar",
								"zip",
								"bzip",
								"gzip",
								"bzip2",
								"xz",
								"bat",
								"msc",
								"uue",
								"mime",
								"base64",
								"binhex",
								"elf",
								"exe",
								"hta",
								"html",
								"jad",
								"class",
								"cod",
								"javascript",
								"msoffice",
								"msofficex",
								"fsg",
								"upx",
								"petite",
								"aspack",
								"sis",
								"hlp",
								"activemime",
								"jpeg",
								"gif",
								"tiff",
								"png",
								"bmp",
								"ignored",
								"unknown",
								"mpeg",
								"mov",
								"mp3",
								"wma",
								"wav",
								"pdf",
								"avi",
								"rm",
								"torrent",
								"hibun",
								"msi",
								"mach-o",
								"dmg",
								".net",
								"xar",
								"chm",
								"iso",
								"crx",
							]
						}
						filter_type: {
							description: [
								"Filter by file name pattern or by file type.",
							]
							type: "str"
							choices: [
								"pattern",
								"type",
							]
						}
						pattern: {
							description: [
								"Add a file name pattern.",
							]
							required: true
							type:     "str"
						}
					}
				}
				id: {
					description: [
						"ID.",
					]
					required: true
					type:     "int"
				}
				name: {
					description: [
						"Name of table containing the file pattern list.",
					]
					type: "str"
				}
			}
		}
	}
}
