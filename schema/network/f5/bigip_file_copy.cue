package ansible

module: bigip_file_copy: {
	module:            "bigip_file_copy"
	short_description: "Manage files in datastores on a BIG-IP"
	description: [
		"Manages files on a variety of datastores on a BIG-IP.",
	]
	version_added: 2.8
	options: {
		name: {
			description: [
				"The name of the file as it should reside on the BIG-IP.",
				"If this is not specified, then the filename provided in the C(source) parameter is used instead.",
			]

			type: "str"
		}
		source: {
			description: [
				"Specifies the path of the file to upload.",
				"This parameter is required if C(state) is C(present).",
			]
			type: "path"
			aliases: [
				"src",
			]
		}
		datastore: {
			description: [
				"Specifies the datastore to put the file in.",
				"There are several different datastores and each of them allows files to be exposed in different ways.",
				"When C(external-monitor), the specified file will be stored as an external monitor file and be available for use in external monitors",
				"When C(ifile), the specified file will be stored as an iFile.",
				"When C(lw4o6-table), the specified file will be store as an Lightweight 4 over 6 (lw4o6) tunnel binding table, which include an IPv6 address for the lwB4, public IPv4 address, and restricted port set.",
			]

			type: "str"
			choices: [
				"external-monitor",
				"ifile",
				"lw4o6-table",
			]
			default: "ifile"
		}
		force: {
			description: [
				"Force overwrite a file.",
				"By default, files will only be overwritten if the SHA of the file is different for the given filename. This parameter can be used to force overwrite the file even if it already exists and its SHA matches.",
				"The C(lw4o6-table) datastore does not keep checksums of its file. Therefore, you would need to provide this argument to update any of these files.",
			]

			type: "bool"
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:    "str"
			default: "Common"
		}
		state: {
			description: [
				"When C(present), ensures that the resource exists.",
				"When C(absent), ensures the resource is removed.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
	}
	extends_documentation_fragment: "f5"
	author: ["Tim Rupp (@caphrim007)"]
}
