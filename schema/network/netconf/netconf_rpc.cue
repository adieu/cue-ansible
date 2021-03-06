package ansible

module: netconf_rpc: {
	module:        "netconf_rpc"
	version_added: "2.6"
	author: [
		"Ganesh Nalawade (@ganeshrn)",
		"Sven Wisotzky (@wisotzky)",
	]
	short_description: "Execute operations on NETCONF enabled network devices."
	description: [
		"NETCONF is a network management protocol developed and standardized by the IETF. It is documented in RFC 6241.",
		"This module allows the user to execute NETCONF RPC requests as defined by IETF RFC standards as well as proprietary requests.",
	]

	extends_documentation_fragment: "network_agnostic"
	options: {
		rpc: description: [
			"This argument specifies the request (name of the operation) to be executed on the remote NETCONF enabled device.",
		]

		xmlns: description: [
			"NETCONF operations not defined in rfc6241 typically require the appropriate XML namespace to be set. In the case the I(request) option is not already provided in XML format, the namespace can be defined by the I(xmlns) option.",
		]

		content: description: [
			"This argument specifies the optional request content (all RPC attributes). The I(content) value can either be provided as XML formatted string or as dictionary.",
		]

		display: {
			description: [
				"Encoding scheme to use when serializing output from the device. The option I(json) will serialize the output as JSON data. If the option value is I(json) it requires jxmlease to be installed on control node. The option I(pretty) is similar to received XML response but is using human readable format (spaces, new lines). The option value I(xml) is similar to received XML response but removes all XML namespaces.",
			]

			choices: ["json", "pretty", "xml"]
		}
	}
	requirements: [
		"ncclient (>=v0.5.2)",
		"jxmlease",
	]

	notes: [
		"This module requires the NETCONF system service be enabled on the remote device being managed.",
		"This module supports the use of connection=netconf",
		"To execute C(get-config), C(get) or C(edit-config) requests it is recommended to use the Ansible I(netconf_get) and I(netconf_config) modules.",
	]
}
