package ansible

module: netconf_get: {
	module:        "netconf_get"
	version_added: "2.6"
	author: [
		"Ganesh Nalawade (@ganeshrn)",
		"Sven Wisotzky (@wisotzky)",
	]
	short_description: "Fetch configuration/state data from NETCONF enabled network devices."
	description: [
		"NETCONF is a network management protocol developed and standardized by the IETF. It is documented in RFC 6241.",
		"This module allows the user to fetch configuration and state data from NETCONF enabled network devices.",
	]

	extends_documentation_fragment: "network_agnostic"
	options: {
		source: {
			description: [
				"This argument specifies the datastore from which configuration data should be fetched. Valid values are I(running), I(candidate) and I(startup). If the C(source) value is not set both configuration and state information are returned in response from running datastore.",
			]

			choices: ["running", "candidate", "startup"]
		}
		filter: description: [
			"This argument specifies the XML string which acts as a filter to restrict the portions of the data to be are retrieved from the remote device. If this option is not specified entire configuration or state data is returned in result depending on the value of C(source) option. The C(filter) value can be either XML string or XPath, if the filter is in XPath format the NETCONF server running on remote host should support xpath capability else it will result in an error.",
		]

		display: {
			description: [
				"Encoding scheme to use when serializing output from the device. The option I(json) will serialize the output as JSON data. If the option value is I(json) it requires jxmlease to be installed on control node. The option I(pretty) is similar to received XML response but is using human readable format (spaces, new lines). The option value I(xml) is similar to received XML response but removes all XML namespaces.",
			]

			choices: ["json", "pretty", "xml"]
		}
		lock: {
			description: [
				"Instructs the module to explicitly lock the datastore specified as C(source). If no I(source) is defined, the I(running) datastore will be locked. By setting the option value I(always) is will explicitly lock the datastore mentioned in C(source) option. By setting the option value I(never) it will not lock the C(source) datastore. The value I(if-supported) allows better interworking with NETCONF servers, which do not support the (un)lock operation for all supported datastores.",
			]

			default: "never"
			choices: ["never", "always", "if-supported"]
		}
	}
	requirements: [
		"ncclient (>=v0.5.2)",
		"jxmlease",
	]

	notes: [
		"This module requires the NETCONF system service be enabled on the remote device being managed.",
		"This module supports the use of connection=netconf",
	]
}
