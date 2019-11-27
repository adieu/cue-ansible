package restconf

restconf_config :: {

	// The configuration data in format as specififed in C(format) option. Required unless C(method) is I(delete).

	content?: string

	// The format of the configuration provided as value of C(content). Accepted values are I(xml) and I(json) and the given configuration format should be supported by remote RESTCONF server.

	format?: string

	// The RESTCONF method to manage the configuration change on device. The value I(post) is used to create a data resource or invoke an operation resource, I(put) is used to replace the target data resource, I(patch) is used to modify the target resource, and I(delete) is used to delete the target resource.

	method?: string

	// URI being used to execute API calls.

	path: string
}

restconf_get :: {

	// The C(content) is a query parameter that controls how descendant nodes of the requested data nodes in C(path) will be processed in the reply. If value is I(config) return only configuration descendant data nodes of value in C(path). If value is I(nonconfig) return only non-configuration descendant data nodes of value in C(path). If value is I(all) return all descendant data nodes of value in C(path)

	content?: string

	// The output of response received.

	output?: string

	// URI being used to execute API calls.

	path: string
}
