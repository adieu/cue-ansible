package ansible

module: vmware_folder_info: {
	module:            "vmware_folder_info"
	short_description: "Provides information about folders in a datacenter"
	description: [
		"The module can be used to gather a hierarchical view of the folders that exist within a datacenter",
	]
	version_added: 2.9
	author: [
		"David Hewitt (@davidmhewitt)",
	]
	notes: [
		"Tested on vSphere 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: datacenter: {
		description: [
			"Name of the datacenter.",
		]
		required: true
		type:     "str"
		aliases: ["datacenter_name"]
	}
	extends_documentation_fragment: "vmware.documentation"
}
