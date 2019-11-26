package ansible

module: bigip_data_group: {
	module:            "bigip_data_group"
	short_description: "Manage data groups on a BIG-IP"
	description: [
		"Allows for managing data groups on a BIG-IP. Data groups provide a way to store collections of values on a BIG-IP for later use in things such as LTM rules, iRules, and ASM policies.",
	]

	version_added: 2.6
	options: {
		name: {
			description: [
				"Specifies the name of the data group.",
			]
			type:     "str"
			required: true
		}
		description: {
			description: [
				"The description of the data group.",
			]
			type:          "str"
			version_added: 2.8
		}
		type: {
			description: [
				"The type of records in this data group.",
				"This parameter is especially important because it causes BIG-IP to store your data in different ways so-as to optimize access to it. For example, it would be wrong to specify a list of records containing IP addresses, but label them as a C(string) type.",
				"This value cannot be changed once the data group is created.",
			]
			type: "str"
			choices: [
				"address",
				"addr",
				"ip",
				"string",
				"str",
				"integer",
				"int",
			]
			default: "string"
		}
		internal: {
			description: [
				"The type of this data group.",
				"You should only consider setting this value in cases where you know exactly what you're doing, B(or), you are working with a pre-existing internal data group.",
				"Be aware that if you deliberately force this parameter to C(yes), and you have a either a large number of records or a large total records size, this large amount of data will be reflected in your BIG-IP configuration. This can lead to B(long) system configuration load times due to needing to parse and verify the large configuration.",
				"There is a limit of either 4 megabytes or 65,000 records (whichever is more restrictive) for uploads when this parameter is C(yes).",
				"This value cannot be changed once the data group is created.",
			]
			type:    "bool"
			default: false
		}
		external_file_name: {
			description: [
				"When creating a new data group, this specifies the file name that you want to give an external data group file on the BIG-IP.",
				"This parameter is ignored when C(internal) is C(yes).",
				"This parameter can be used to select an existing data group file to use with an existing external data group.",
				"If this value is not provided, it will be given the value specified in C(name) and, therefore, match the name of the data group.",
				"This value may only contain letters, numbers, underscores, dashes, or a period.",
			]
			type: "str"
		}
		records: {
			description: [
				"Specifies the records that you want to add to a data group.",
				"If you have a large number of records, it is recommended that you use C(records_content) instead of typing all those records here.",
				"The technical limit of either 1. the number of records, or 2. the total size of all records, varies with the size of the total resources on your system; in particular, RAM.",
				"When C(internal) is C(no), at least one record must be specified in either C(records) or C(records_content).",
				"When C(type) is: C(ip), C(address), C(addr) if the addresses use non default route domain, they must be explicit about it that is they must contain a route domain notation C(%) eg. 10.10.1.1%11. This is true regardless if the data group resides in a partition or not.",
			]

			type: "list"
			suboptions: {
				key: {
					description: [
						"The key describing the record in the data group.",
						"Your key will be used for validation of the C(type) parameter to this module.",
					]
					type:     "str"
					required: true
				}
				value: {
					description: [
						"The value of the key describing the record in the data group.",
					]
					type: "raw"
				}
			}
		}
		records_src: {
			description: [
				"Path to a file with records in it.",
				"The file should be well-formed. This means that it includes records, one per line, that resemble the following format \"key separator value\". For example, C(foo := bar).",
				"BIG-IP is strict about this format, but this module is a bit more lax. It will allow you to include arbitrary amounts (including none) of empty space on either side of the separator. For an illustration of this, see the Examples section.",
				"Record keys are limited in length to no more than 65520 characters.",
				"Values of record keys are limited in length to no more than 65520 characters.",
				"The total number of records you can have in your BIG-IP is limited by the memory of the BIG-IP.",
				"The format of this content is slightly different depending on whether you specify a C(type) of C(address), C(integer), or C(string). See the examples section for examples of the different types of payload formats that are expected in your data group file.",
				"When C(internal) is C(no), at least one record must be specified in either C(records) or C(records_content).",
			]

			type: "path"
		}
		separator: {
			description: [
				"When specifying C(records_content), this is the string of characters that will be used to break apart entries in the C(records_content) into key/value pairs.",
				"By default, this parameter's value is C(:=).",
				"This value cannot be changed once it is set.",
				"This parameter is only relevant when C(internal) is C(no). It will be ignored otherwise.",
			]

			type:    "str"
			default: ":="
		}
		delete_data_group_file: {
			description: [
				"When C(yes), will ensure that the remote data group file is deleted.",
				"This parameter is only relevant when C(state) is C(absent) and C(internal) is C(no).",
			]
			type:    "bool"
			default: false
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
				"When C(state) is C(present), ensures the data group exists.",
				"When C(state) is C(absent), ensures that the data group is removed.",
				"The use of state in this module refers to the entire data group, not its members.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
	}
	notes: [
		"This module does NOT support atomic updates of data group members in a type C(internal) data group.",
	]
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
		"Greg Crosby (@crosbygw)",
	]
}
