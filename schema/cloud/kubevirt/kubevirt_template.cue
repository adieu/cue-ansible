package ansible

module: kubevirt_template: {
	module: "kubevirt_template"

	short_description: "Manage KubeVirt templates"

	description: [
		"Use Openshift Python SDK to manage the state of KubeVirt templates.",
	]

	version_added: "2.8"

	author: "KubeVirt Team (@kubevirt)"

	options: {
		name: {
			description: [
				"Name of the Template object.",
			]
			required: true
			type:     "str"
		}
		namespace: {
			description: [
				"Namespace where the Template object exists.",
			]
			required: true
			type:     "str"
		}
		objects: {
			description: [
				"List of any valid API objects, such as a I(DeploymentConfig), I(Service), etc. The object will be created exactly as defined here, with any parameter values substituted in prior to creation. The definition of these objects can reference parameters defined earlier.",
				"As part of the the list user can pass also I(VirtualMachine) kind. When passing I(VirtualMachine) user must use Ansible structure of the parameters not the Kubernetes API structure. For more information please take a look at M(kubevirt_vm) module and at EXAMPLES section, where you can see example.",
			]

			type: "list"
		}
		merge_type: {
			description: [
				"Whether to override the default patch merge approach with a specific type. By default, the strategic merge will typically be used.",
			]

			type: "list"
			choices: ["json", "merge", "strategic-merge"]
		}
		display_name: {
			description: [
				"A brief, user-friendly name, which can be employed by user interfaces.",
			]
			type: "str"
		}
		description: {
			description: [
				"A description of the template.",
				"Include enough detail that the user will understand what is being deployed... and any caveats they need to know before deploying. It should also provide links to additional information, such as a README file.\"",
			]

			type: "str"
		}
		long_description: {
			description: [
				"Additional template description. This may be displayed by the service catalog, for example.",
			]
			type: "str"
		}
		provider_display_name: {
			description: [
				"The name of the person or organization providing the template.",
			]
			type: "str"
		}
		documentation_url: {
			description: [
				"A URL referencing further documentation for the template.",
			]
			type: "str"
		}
		support_url: {
			description: [
				"A URL where support can be obtained for the template.",
			]
			type: "str"
		}
		editable: {
			description: [
				"Extension for hinting at which elements should be considered editable. List of jsonpath selectors. The jsonpath root is the objects: element of the template.",
				"This is parameter can be used only when kubevirt addon is installed on your openshift cluster.",
			]
			type: "list"
		}
		default_disk: {
			description: [
				"The goal of default disk is to define what kind of disk is supported by the OS mainly in terms of bus (ide, scsi, sata, virtio, ...)",
				"The C(default_disk) parameter define configuration overlay for disks that will be applied on top of disks during virtual machine creation to define global compatibility and/or performance defaults defined here.",
				"This is parameter can be used only when kubevirt addon is installed on your openshift cluster.",
			]
			type: "dict"
		}
		default_volume: {
			description: [
				"The goal of default volume is to be able to configure mostly performance parameters like caches if those are exposed by the underlying volume implementation.",
				"The C(default_volume) parameter define configuration overlay for volumes that will be applied on top of volumes during virtual machine creation to define global compatibility and/or performance defaults defined here.",
				"This is parameter can be used only when kubevirt addon is installed on your openshift cluster.",
			]
			type: "dict"
		}
		default_nic: {
			description: [
				"The goal of default network is similar to I(default_disk) and should be used as a template to ensure OS compatibility and performance.",
				"The C(default_nic) parameter define configuration overlay for nic that will be applied on top of nics during virtual machine creation to define global compatibility and/or performance defaults defined here.",
				"This is parameter can be used only when kubevirt addon is installed on your openshift cluster.",
			]
			type: "dict"
		}
		default_network: {
			description: [
				"The goal of default network is similar to I(default_volume) and should be used as a template that specifies performance and connection parameters (L2 bridge for example)",
				"The C(default_network) parameter define configuration overlay for networks that will be applied on top of networks during virtual machine creation to define global compatibility and/or performance defaults defined here.",
				"This is parameter can be used only when kubevirt addon is installed on your openshift cluster.",
			]
			type: "dict"
		}
		icon_class: {
			description: [
				"An icon to be displayed with your template in the web console. Choose from our existing logo icons when possible. You can also use icons from FontAwesome. Alternatively, provide icons through CSS customizations that can be added to an OpenShift Container Platform cluster that uses your template. You must specify an icon class that exists, or it will prevent falling back to the generic icon.",
			]

			type: "str"
		}
		parameters: {
			description: [
				"Parameters allow a value to be supplied by the user or generated when the template is instantiated. Then, that value is substituted wherever the parameter is referenced. References can be defined in any field in the objects list field. This is useful for generating random passwords or allowing the user to supply a host name or other user-specific value that is required to customize the template.",
				"More information can be found at: U(https://docs.openshift.com/container-platform/3.6/dev_guide/templates.html#writing-parameters)",
			]
			type: "list"
		}
		version: {
			description: [
				"Template structure version.",
				"This is parameter can be used only when kubevirt addon is installed on your openshift cluster.",
			]
			type: "str"
		}
	}

	extends_documentation_fragment: [
		"k8s_auth_options",
		"k8s_state_options",
	]

	requirements: [
		"python >= 2.7",
		"openshift >= 0.8.2",
	]
}
