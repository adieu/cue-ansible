package ansible

module: utm_aaa_group_info: {
	module: "utm_aaa_group_info"

	author: [
		"Johannes Brunswicker (@MatrixCrawler)",
	]

	short_description: "get info for reverse_proxy frontend entry in Sophos UTM"

	description: [
		"get info for a reverse_proxy frontend entry in SOPHOS UTM.",
	]

	version_added: "2.8"

	options: name: {
		description: [
			"The name of the object. Will be used to identify the entry",
		]
		required: true
	}

	extends_documentation_fragment: ["utm"]
}
