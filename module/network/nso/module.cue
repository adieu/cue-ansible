package nso

nso_action :: {

	// Required output parameters.


	output_required?: string

	// Path to NSO action.

	path: string

	// If set to true, the task will fail if any output parameters not in output_required is present in the output.


	validate_strict?: bool

	// NSO action parameters.


	input?: string

	// List of result parameter names that will cause the task to fail if they are present.


	output_invalid?: string
}

nso_config :: {

	// NSO data in format as | display json converted to YAML. List entries can be annotated with a __state entry. Set to in-sync/deep-in-sync for services to verify service is in sync with the network. Set to absent in list entries to ensure they are deleted if they exist in NSO.


	data: string
}

nso_query :: {

	// List of fields to select from matching nodes.


	fields: string

	// XPath selection relative to the root.

	xpath: string
}

nso_show :: {

	// Controls whether or not operational data is included in the result.


	operational?: bool

	// Path to NSO data.

	path: string
}

nso_verify :: {

	// NSO data in format as C(| display json) converted to YAML. List entries can be annotated with a C(__state) entry. Set to in-sync/deep-in-sync for services to verify service is in sync with the network. Set to absent in list entries to ensure they are deleted if they exist in NSO.


	data: string
}
