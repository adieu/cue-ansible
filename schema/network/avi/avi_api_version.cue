package ansible

module: avi_api_version: {
	module: "avi_api_version"
	author: "Vilian Atmadzhov (@vivobg) <vilian.atmadzhov@paddypowerbetfair.com>"

	short_description: "Avi API Version Module"
	description: [
		"This module can be used to obtain the version of the Avi REST API. U(https://avinetworks.com/)",
	]
	version_added: 2.5
	requirements: ["avisdk"]
	options: {}
	extends_documentation_fragment: ["avi"]
}
