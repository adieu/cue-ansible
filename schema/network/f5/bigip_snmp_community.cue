package ansible

module: bigip_snmp_community: {
	module:            "bigip_snmp_community"
	short_description: "Manages SNMP communities on a BIG-IP."
	description: [
		"Assists in managing SNMP communities on a BIG-IP. Different SNMP versions are supported by this module. Take note of the different parameters offered by this module, as different parameters work for different versions of SNMP. Typically this becomes an interest if you are mixing versions C(v2c) and C(3).",
	]

	version_added: 2.6
	options: {
		state: {
			description: [
				"When C(present), ensures that the address list and entries exists.",
				"When C(absent), ensures the address list is removed.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
		version: {
			description: [
				"Specifies to which Simple Network Management Protocol (SNMP) version the trap destination applies.",
			]
			type: "str"
			choices: [
				"v1",
				"v2c",
				"v3",
			]
			default: "v2c"
		}
		name: {
			description: [
				"Name that identifies the SNMP community.",
				"When C(version) is C(v1) or C(v2c), this parameter is required.",
				"The name C(public) is a reserved name on the BIG-IP. This module handles that name differently than others. Functionally, you should not see a difference however.",
			]

			type: "str"
		}
		community: {
			description: [
				"Specifies the community string (password) for access to the MIB.",
				"This parameter is only relevant when C(version) is C(v1), or C(v2c). If C(version) is something else, this parameter is ignored.",
			]

			type: "str"
		}
		source: {
			description: [
				"Specifies the source address for access to the MIB.",
				"This parameter can accept a value of C(all).",
				"If this parameter is not specified, the value C(all) is used.",
				"This parameter is only relevant when C(version) is C(v1), or C(v2c). If C(version) is something else, this parameter is ignored.",
				"If C(source) is set to C(all), then it is not possible to specify an C(oid). This will raise an error.",
				"This parameter should be provided when C(state) is C(absent), so that the correct community is removed. To remove the C(public) SNMP community that comes with a BIG-IP, this parameter should be set to C(default).",
			]

			type: "str"
		}
		port: {
			description: [
				"Specifies the port for the trap destination.",
				"This parameter is only relevant when C(version) is C(v1), or C(v2c). If C(version) is something else, this parameter is ignored.",
			]

			type: "int"
		}
		oid: {
			description: [
				"Specifies the object identifier (OID) for the record.",
				"When C(version) is C(v3), this parameter is required.",
				"When C(version) is either C(v1) or C(v2c), if this value is specified, then C(source) must not be set to C(all).",
			]

			type: "str"
		}
		access: {
			description: [
				"Specifies the user's access level to the MIB.",
				"When creating a new community, if this parameter is not specified, the default is C(ro).",
				"When C(ro), specifies that the user can view the MIB, but cannot modify the MIB.",
				"When C(rw), specifies that the user can view and modify the MIB.",
			]
			type: "str"
			choices: [
				"ro",
				"rw",
				"read-only",
				"read-write",
			]
		}
		ip_version: {
			description: [
				"Specifies whether the record applies to IPv4 or IPv6 addresses.",
				"When creating a new community, if this value is not specified, the default of C(4) will be used.",
				"This parameter is only relevant when C(version) is C(v1), or C(v2c). If C(version) is something else, this parameter is ignored.",
			]

			type: "str"
			choices: [
				"4",
				"6",
			]
		}
		snmp_username: {
			description: [
				"Specifies the name of the user for whom you want to grant access to the SNMP v3 MIB.",
				"This parameter is only relevant when C(version) is C(v3). If C(version) is something else, this parameter is ignored.",
				"When creating a new SNMP C(v3) community, this parameter is required.",
				"This parameter cannot be changed once it has been set.",
			]
			type: "str"
		}
		snmp_auth_protocol: {
			description: [
				"Specifies the authentication method for the user.",
				"When C(md5), specifies that the system uses the MD5 algorithm to authenticate the user.",
				"When C(sha), specifies that the secure hash algorithm (SHA) to authenticate the user.",
				"When C(none), specifies that user does not require authentication.",
				"When creating a new SNMP C(v3) community, if this parameter is not specified, the default of C(sha) will be used.",
			]

			type: "str"
			choices: [
				"md5",
				"sha",
				"none",
			]
		}
		snmp_auth_password: {
			description: [
				"Specifies the password for the user.",
				"When creating a new SNMP C(v3) community, this parameter is required.",
				"This value must be at least 8 characters long.",
			]
			type: "str"
		}
		snmp_privacy_protocol: {
			description: [
				"Specifies the encryption protocol.",
				"When C(aes), specifies that the system encrypts the user information using AES (Advanced Encryption Standard).",
				"When C(des), specifies that the system encrypts the user information using DES (Data Encryption Standard).",
				"When C(none), specifies that the system does not encrypt the user information.",
				"When creating a new SNMP C(v3) community, if this parameter is not specified, the default of C(aes) will be used.",
			]

			type: "str"
			choices: [
				"aes",
				"des",
				"none",
			]
		}
		snmp_privacy_password: {
			description: [
				"Specifies the password for the user.",
				"When creating a new SNMP C(v3) community, this parameter is required.",
				"This value must be at least 8 characters long.",
			]
			type: "str"
		}
		update_password: {
			description: [
				"C(always) will allow to update passwords if the user chooses to do so. C(on_create) will only set the password for newly created resources.",
			]

			type: "str"
			choices: [
				"always",
				"on_create",
			]
			default: "always"
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:    "str"
			default: "Common"
		}
	}
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
