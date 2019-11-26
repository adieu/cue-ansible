package ansible

module: bigip_profile_http_compression: {
	module:            "bigip_profile_http_compression"
	short_description: "Manage HTTP compression profiles on a BIG-IP"
	description: [
		"Manage HTTP compression profiles on a BIG-IP.",
	]
	version_added: 2.7
	options: {
		name: {
			description: [
				"Specifies the name of the compression profile.",
			]
			type:     "str"
			required: true
		}
		parent: {
			description: [
				"Specifies the profile from which this profile inherits settings.",
				"When creating a new profile, if this parameter is not specified, the default is the system-supplied C(httpcompression) profile.",
			]

			type: "str"
		}
		description: {
			description: [
				"Description of the HTTP compression profile.",
			]
			type: "str"
		}
		buffer_size: {
			description: [
				"Maximum number of compressed bytes that the system buffers before inserting a Content-Length header (which specifies the compressed size) into the response.",
				"When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.",
			]

			type: "int"
		}
		gzip_level: {
			description: [
				"Specifies the degree to which the system compresses the content.",
				"Higher compression levels cause the compression process to be slower.",
				"Valid values are between 1 (least compression and fastest) to 9 (most compression and slowest).",
			]

			type: "int"
			choices: [
				1,
				2,
				3,
				4,
				5,
				6,
				7,
				8,
				9,
			]
		}
		gzip_memory_level: {
			description: [
				"Number of kilobytes of memory that the system uses for internal compression buffers when compressing a server response.",
			]

			type: "int"
			choices: [
				1,
				2,
				4,
				8,
				16,
				32,
				64,
				128,
				256,
			]
		}
		gzip_window_size: {
			description: [
				"Number of kilobytes in the window size that the system uses when compressing a server response.",
			]

			type: "int"
			choices: [
				1,
				2,
				4,
				8,
				16,
				32,
				64,
				128,
			]
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
				"When C(present), ensures that the profile exists.",
				"When C(absent), ensures the profile is removed.",
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
