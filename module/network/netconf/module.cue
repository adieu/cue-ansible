package netconf

netconf_config :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	netconf_config: {

		// This argument will configure a timeout value for the commit to be confirmed before it is automatically rolled back. If the C(confirm_commit) argument is set to False, this argument is silently ignored. If the value of this argument is set to 0, the commit is confirmed immediately. The remote host MUST support :candidate and :confirmed-commit capability for this option to .

		confirm?: string

		// This argument will execute commit operation on remote device. It can be used to confirm a previous commit.

		confirm_commit?: bool

		// This argument specifies the XML string which acts as a filter to restrict the portions of the data retrieved from the remote device when comparing the before and after state of the device following calls to edit_config. When not specified, the entire configuration or state data is returned for comparison depending on the value of C(source) option. The C(get_filter) value can be either XML string or XPath, if the filter is in XPath format the NETCONF server running on remote host should support xpath capability else it will result in an error.

		get_filter?: string

		// Instructs the module to explicitly lock the datastore specified as C(target). By setting the option value I(always) is will explicitly lock the datastore mentioned in C(target) option. It the value is I(never) it will not lock the C(target) datastore. The value I(if-supported) lock the C(target) datastore only if it is supported by the remote Netconf server.

		lock?: string

		// The C(save) argument instructs the module to save the configuration in C(target) datastore to the startup-config if changed and if :startup capability is supported by Netconf server.

		save?: bool

		// Specifies the source path to the xml file that contains the configuration or configuration template to load. The path to the source file can either be the full path on the Ansible control host or a relative path from the playbook or role root directory. This argument is mutually exclusive with I(xml).

		src?: string

		// The default operation for <edit-config> rpc, valid values are I(merge), I(replace) and I(none). If the default value is merge, the configuration data in the C(content) option is merged at the corresponding level in the C(target) datastore. If the value is replace the data in the C(content) option completely replaces the configuration in the C(target) datastore. If the value is none the C(target) datastore is unaffected by the configuration in the config option, unless and until the incoming configuration data uses the C(operation) operation to request a different operation.

		default_operation?: string

		// The format of the configuration provided as value of C(content). Accepted values are I(xml) and I(text) and the given configuration format should be supported by remote Netconf server.

		format?: string

		// This boolean flag controls if the configuration changes should be committed or not after editing the candidate datastore. This option is supported only if remote Netconf server supports :candidate capability. If the value is set to I(False) commit won't be issued after edit-config operation and user needs to handle commit or discard-changes explicitly.

		commit?: bool

		// The configuration data as defined by the device's data models, the value can be either in xml string format or text format. The format of the configuration should be supported by remote Netconf server

		content?: string

		// This option controls the netconf server action after an error occurs while editing the configuration.
		// If I(error_option=stop-on-error), abort the config edit on first error.
		// If I(error_option=continue-on-error), continue to process configuration data on error. The error is recorded and negative response is generated if any errors occur.
		// If I(error_option=rollback-on-error), rollback to the original configuration if any error occurs. This requires the remote Netconf server to support the I(error_option=rollback-on-error) capability.

		error_option?: string

		// Name of the configuration datastore to use as the source to copy the configuration to the datastore mentioned by C(target) option. The values can be either I(running), I(candidate), I(startup) or a remote URL

		source_datastore?: string

		// Name of the configuration datastore to be edited. - auto, uses candidate and fallback to running - candidate, edit <candidate/> datastore and then commit - running, edit <running/> datastore directly

		target?: string

		// This boolean flag if set validates the content of datastore given in C(target) option. For this option to work remote Netconf server should support :validate capability.

		validate?: bool

		// This argument will cause the module to create a full backup of the current C(running-config) from the remote device before any changes are made. If the C(backup_options) value is not given, the backup file is written to the C(backup) folder in the playbook root directory or role root directory, if playbook is part of an ansible role. If the directory does not exist, it is created.

		backup?: bool

		// This is a dict object containing configurable options related to backup file path. The value of this option is read only when C(backup) is set to I(yes), if C(backup) is set to I(no) this option will be silently ignored.

		backup_options?: {...}

		// It instructs the module to delete the configuration from value mentioned in C(target) datastore.

		delete?: bool
	}
}

netconf_get :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	netconf_get: {

		// Encoding scheme to use when serializing output from the device. The option I(json) will serialize the output as JSON data. If the option value is I(json) it requires jxmlease to be installed on control node. The option I(pretty) is similar to received XML response but is using human readable format (spaces, new lines). The option value I(xml) is similar to received XML response but removes all XML namespaces.

		display?: string

		// This argument specifies the XML string which acts as a filter to restrict the portions of the data to be are retrieved from the remote device. If this option is not specified entire configuration or state data is returned in result depending on the value of C(source) option. The C(filter) value can be either XML string or XPath, if the filter is in XPath format the NETCONF server running on remote host should support xpath capability else it will result in an error.

		filter?: string

		// Instructs the module to explicitly lock the datastore specified as C(source). If no I(source) is defined, the I(running) datastore will be locked. By setting the option value I(always) is will explicitly lock the datastore mentioned in C(source) option. By setting the option value I(never) it will not lock the C(source) datastore. The value I(if-supported) allows better interworking with NETCONF servers, which do not support the (un)lock operation for all supported datastores.

		lock?: string

		// This argument specifies the datastore from which configuration data should be fetched. Valid values are I(running), I(candidate) and I(startup). If the C(source) value is not set both configuration and state information are returned in response from running datastore.

		source?: string
	}
}

netconf_rpc :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	netconf_rpc: {

		// This argument specifies the request (name of the operation) to be executed on the remote NETCONF enabled device.

		rpc?: string

		// NETCONF operations not defined in rfc6241 typically require the appropriate XML namespace to be set. In the case the I(request) option is not already provided in XML format, the namespace can be defined by the I(xmlns) option.

		xmlns?: string

		// This argument specifies the optional request content (all RPC attributes). The I(content) value can either be provided as XML formatted string or as dictionary.

		content?: string

		// Encoding scheme to use when serializing output from the device. The option I(json) will serialize the output as JSON data. If the option value is I(json) it requires jxmlease to be installed on control node. The option I(pretty) is similar to received XML response but is using human readable format (spaces, new lines). The option value I(xml) is similar to received XML response but removes all XML namespaces.

		display?: string
	}
}
