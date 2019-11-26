package ansible

module: junos_rpc: {
	module:            "junos_rpc"
	version_added:     "2.3"
	author:            "Peter Sprygada (@privateip)"
	short_description: "Runs an arbitrary RPC over NetConf on an Juniper JUNOS device"
	description: [
		"Sends a request to the remote device running JUNOS to execute the specified RPC using the NetConf transport.  The reply is then returned to the playbook in the C(xml) key.  If an alternate output format is requested, the reply is transformed to the requested output.",
	]

	extends_documentation_fragment: "junos"
	options: {
		rpc: {
			description: [
				"The C(rpc) argument specifies the RPC call to send to the remote devices to be executed.  The RPC Reply message is parsed and the contents are returned to the playbook.",
			]

			required: true
		}
		args: description: [
			"The C(args) argument provides a set of arguments for the RPC call and are encoded in the request message.  This argument accepts a set of key=value arguments.",
		]

		attrs: {
			description: [
				"The C(attrs) arguments defines a list of attributes and their values to set for the RPC call. This accepts a dictionary of key-values.",
			]

			version_added: "2.5"
		}
		output: {
			description: [
				"The C(output) argument specifies the desired output of the return data.  This argument accepts one of C(xml), C(text), or C(json).  For C(json), the JUNOS device must be running a version of software that supports native JSON output.",
			]

			default: "xml"
		}
	}
	requirements: [
		"ncclient (>=v0.5.2)",
	]
	notes: [
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Tested against vSRX JUNOS version 15.1X49-D15.4, vqfx-10000 JUNOS Version 15.1X53-D60.4.",
		"Recommended connection is C(netconf). See L(the Junos OS Platform Options,../network/user_guide/platform_junos.html).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
}
