package ansible

module: azure_rm_hdinsightcluster_info: {
	module:            "azure_rm_hdinsightcluster_info"
	version_added:     "2.9"
	short_description: "Get Azure HDInsight Cluster facts"
	description: [
		"Get facts of Azure HDInsight Cluster.",
	]

	options: {
		resource_group: description: [
			"Name of an Azure resource group.",
		]
		name: description: [
			"HDInsight cluster name.",
		]
		tags: description: [
			"Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.",
		]
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Zim Kalinowski (@zikalino)",
	]
}
