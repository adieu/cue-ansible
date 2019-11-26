package ansible

module: bigip_provision: {
	module:            "bigip_provision"
	short_description: "Manage BIG-IP module provisioning"
	description: [
		"Manage BIG-IP module provisioning. This module will only provision at the standard levels of Dedicated, Nominal, and Minimum.",
	]

	version_added: 2.4
	options: {
		module: {
			description: [
				"The module to provision in BIG-IP.",
			]
			type:     "str"
			required: true
			choices: [
				"am",
				"afm",
				"apm",
				"asm",
				"avr",
				"cgnat",
				"fps",
				"gtm",
				"ilx",
				"lc",
				"ltm",
				"mgmt",
				"pem",
				"sam",
				"sslo",
				"swg",
				"urldb",
				"vcmp",
			]
			aliases: [
				"name",
			]
		}
		level: {
			description: [
				"Sets the provisioning level for the requested modules. Changing the level for one module may require modifying the level of another module. For example, changing one module to C(dedicated) requires setting all others to C(none). Setting the level of a module to C(none) means that the module is not activated.",
				"Use C(state) absent to set C(level) to none and de-provision module.",
				"This parameter is not relevant to C(cgnat - pre tmos 15.0) or C(mgmt) and will not be applied to the C(cgnat - pre tmos 15.0) or C(mgmt) module.",
			]

			type: "str"
			choices: [
				"dedicated",
				"nominal",
				"minimum",
			]
			default: "nominal"
		}
		memory: {
			description: [
				"Sets additional memory for management module. This is in addition to minimum allocated RAM of 1264MB.",
				"The accepted value range is C(0 - 8192). Maximum value is restricted by systems available RAM.",
				"Specifying C(large) reserves an additional 500MB for mgmt module.",
				"Specifying C(medium) reserves an additional 200MB for mgmt module.",
				"Specifying C(small) reserves no additional RAM for mgmt module.",
				"Use C(large) for configurations containing more than 2000 objects, or more specifically, for any configuration that exceeds 1000 objects per 2 GB of installed memory. Changing the Management C(mgmt) size after initial provisioning causes a reprovision operation",
			]

			type:          "str"
			version_added: 2.9
		}
		state: {
			description: [
				"The state of the provisioned module on the system. When C(present), guarantees that the specified module is provisioned at the requested level provided that there are sufficient resources on the device (such as physical RAM) to support the provisioned module.",
				"When C(absent), de-provision the module.",
				"C(absent), is not a relevant option to C(mgmt) module as module can not be de-provisioned.",
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
	author: [
		"Tim Rupp (@caphrim007)",
		"Greg Crosby (@crosbygw)",
	]
}
