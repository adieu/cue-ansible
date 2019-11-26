package ansible

module: vmware_tag_manager: {
	module:            "vmware_tag_manager"
	short_description: "Manage association of VMware tags with VMware objects"
	description: [
		"This module can be used to assign / remove VMware tags from the given VMware objects.",
		"Tag feature is introduced in vSphere 6 version, so this module is not supported in the earlier versions of vSphere.",
		"All variables and VMware object names are case sensitive.",
	]
	version_added: 2.8
	author: [
		"Abhijeet Kasurde (@Akasurde)",
		"Frederic Van Reet (@GBrawl)",
	]
	notes: [
		"Tested on vSphere 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
		"vSphere Automation SDK",
	]
	options: {
		tag_names: {
			description: [
				"List of tag(s) to be managed.",
				"You can also specify category name by specifying colon separated value. For example, \"category_name:tag_name\".",
				"You can skip category name if you have unique tag names.",
			]
			required: true
			type:     "list"
		}
		state: {
			description: [
				"If C(state) is set to C(add) or C(present) will add the tags to the existing tag list of the given object.",
				"If C(state) is set to C(remove) or C(absent) will remove the tags from the existing tag list of the given object.",
				"If C(state) is set to C(set) will replace the tags of the given objects with the user defined list of tags.",
			]
			default: "add"
			choices: ["present", "absent", "add", "remove", "set"]
			type: "str"
		}
		object_type: {
			description: [
				"Type of object to work with.",
			]
			required: true
			choices: ["VirtualMachine", "Datacenter", "ClusterComputeResource", "HostSystem", "DistributedVirtualSwitch", "DistributedVirtualPortgroup"]
			type: "str"
		}
		object_name: {
			description: [
				"Name of the object to work with.",
				"For DistributedVirtualPortgroups the format should be \"switch_name:portgroup_name\"",
			]
			required: true
			type:     "str"
		}
	}
	extends_documentation_fragment: "vmware_rest_client.documentation"
}
