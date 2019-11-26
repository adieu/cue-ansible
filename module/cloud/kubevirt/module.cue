package kubevirt

kubevirt_rs :: {

	// Namespace where the virtual machine replica set exists.

	namespace: string

	// Number of desired pods. This is a pointer to distinguish between explicit zero and not specified.
	// Replicas defaults to 1 if newly created replica set.

	replicas?: int

	// Selector is a label query over a set of virtual machine.

	selector: {...}

	// Create or delete virtual machine replica sets.

	state?: string

	// Name of the virtual machine replica set.

	name: string
}

kubevirt_template :: {

	// Namespace where the Template object exists.

	namespace: string

	// List of any valid API objects, such as a I(DeploymentConfig), I(Service), etc. The object will be created exactly as defined here, with any parameter values substituted in prior to creation. The definition of these objects can reference parameters defined earlier.
	// As part of the the list user can pass also I(VirtualMachine) kind. When passing I(VirtualMachine) user must use Ansible structure of the parameters not the Kubernetes API structure. For more information please take a look at M(kubevirt_vm) module and at EXAMPLES section, where you can see example.

	objects?: [..._]

	// The goal of default disk is to define what kind of disk is supported by the OS mainly in terms of bus (ide, scsi, sata, virtio, ...)
	// The C(default_disk) parameter define configuration overlay for disks that will be applied on top of disks during virtual machine creation to define global compatibility and/or performance defaults defined here.
	// This is parameter can be used only when kubevirt addon is installed on your openshift cluster.

	default_disk?: {...}

	// The goal of default network is similar to I(default_disk) and should be used as a template to ensure OS compatibility and performance.
	// The C(default_nic) parameter define configuration overlay for nic that will be applied on top of nics during virtual machine creation to define global compatibility and/or performance defaults defined here.
	// This is parameter can be used only when kubevirt addon is installed on your openshift cluster.

	default_nic?: {...}

	// The goal of default volume is to be able to configure mostly performance parameters like caches if those are exposed by the underlying volume implementation.
	// The C(default_volume) parameter define configuration overlay for volumes that will be applied on top of volumes during virtual machine creation to define global compatibility and/or performance defaults defined here.
	// This is parameter can be used only when kubevirt addon is installed on your openshift cluster.

	default_volume?: {...}

	// Extension for hinting at which elements should be considered editable. List of jsonpath selectors. The jsonpath root is the objects: element of the template.
	// This is parameter can be used only when kubevirt addon is installed on your openshift cluster.

	editable?: [..._]

	// An icon to be displayed with your template in the web console. Choose from our existing logo icons when possible. You can also use icons from FontAwesome. Alternatively, provide icons through CSS customizations that can be added to an OpenShift Container Platform cluster that uses your template. You must specify an icon class that exists, or it will prevent falling back to the generic icon.

	icon_class?: string

	// Additional template description. This may be displayed by the service catalog, for example.

	long_description?: string

	// A URL where support can be obtained for the template.

	support_url?: string

	// Template structure version.
	// This is parameter can be used only when kubevirt addon is installed on your openshift cluster.

	version?: string

	// A brief, user-friendly name, which can be employed by user interfaces.

	display_name?: string

	// Parameters allow a value to be supplied by the user or generated when the template is instantiated. Then, that value is substituted wherever the parameter is referenced. References can be defined in any field in the objects list field. This is useful for generating random passwords or allowing the user to supply a host name or other user-specific value that is required to customize the template.
	// More information can be found at: U(https://docs.openshift.com/container-platform/3.6/dev_guide/templates.html#writing-parameters)

	parameters?: [..._]

	// The goal of default network is similar to I(default_volume) and should be used as a template that specifies performance and connection parameters (L2 bridge for example)
	// The C(default_network) parameter define configuration overlay for networks that will be applied on top of networks during virtual machine creation to define global compatibility and/or performance defaults defined here.
	// This is parameter can be used only when kubevirt addon is installed on your openshift cluster.

	default_network?: {...}

	// A description of the template.
	// Include enough detail that the user will understand what is being deployed... and any caveats they need to know before deploying. It should also provide links to additional information, such as a README file."

	description?: string

	// A URL referencing further documentation for the template.

	documentation_url?: string

	// Whether to override the default patch merge approach with a specific type. By default, the strategic merge will typically be used.

	merge_type?: [..._]

	// Name of the Template object.

	name: string

	// The name of the person or organization providing the template.

	provider_display_name?: string
}

kubevirt_vm :: {

	// Set the virtual machine to either I(present), I(absent), I(running) or I(stopped).
	// I(present) - Create or update a virtual machine. (And run it if it's ephemeral.)
	// I(absent) - Remove a virtual machine.
	// I(running) - Create or update a virtual machine and run it.
	// I(stopped) - Stop a virtual machine. (This deletes ephemeral VMs.)

	state?: string

	// Name of Template to be used in creation of a virtual machine.

	template?: string

	// New values of parameters from Template.

	template_parameters?: {...}

	// DataVolumes are a way to automate importing virtual machine disks onto pvcs during the virtual machine's launch flow. Without using a DataVolume, users have to prepare a pvc with a disk image before assigning it to a VM or VMI manifest. With a DataVolume, both the pvc creation and import is automated on behalf of the user.

	datavolumes?: [..._]

	// If (true) ephemeral virtual machine will be created. When destroyed it won't be accessible again.
	// Works only with C(state) I(present) and I(absent).

	ephemeral?: bool

	// Name of the virtual machine.

	name: string

	// Namespace where the virtual machine exists.

	namespace: string
}

kubevirt_cdi_upload :: {

	// Whether to override the default patch merge approach with a specific type. By default, the strategic merge will typically be used.

	merge_type?: [..._]

	// Path of local image file to transfer.

	path?: string

	// Use to specify the name of the target PersistentVolumeClaim.

	pvc_name: string

	// Use to specify the namespace of the target PersistentVolumeClaim.

	pvc_namespace: string

	// URL containing the host and port on which the CDI Upload Proxy is available.
	// More info: U(https://github.com/kubevirt/containerized-data-importer/blob/master/doc/upload.md#expose-cdi-uploadproxy-service)

	upload_host?: string

	// Whether or not to verify the CDI Upload Proxy's SSL certificates against your system's CA trust store.

	upload_host_validate_certs?: bool
}

kubevirt_preset :: {

	// Name of the virtual machine preset.

	name: string

	// Namespace where the virtual machine preset exists.

	namespace: string

	// Selector is a label query over a set of virtual machine preset.

	selector?: {...}

	// Create or delete virtual machine presets.

	state?: string
}

kubevirt_pvc :: {

	// Name of the StorageClass required by the claim.
	// More info: U(https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1)

	storage_class_name?: string

	// If set, this module will wait for the PVC to become bound and CDI (if enabled) to finish its operation before returning.
	// Used only if I(state) set to C(present).
	// Unless used in conjunction with I(cdi_source), this might result in a timeout, as clusters may be configured to not bind PVCs until first usage.

	wait?: bool

	// If set to C(True), and I(state) is C(present), an existing object will be replaced.

	force?: bool

	// Use to specify a PVC object namespace.

	namespace: string

	// A label query over volumes to consider for binding.
	// U(https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/)

	selector?: {...}

	// How much storage to allocate to the PVC.

	size?: string

	// This defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec. This is an alpha feature of kubernetes and may change in the future.

	volume_mode?: string

	// If data is to be copied onto the PVC using the Containerized Data Importer you can specify the source of the data (along with any additional configuration) as well as it's format.
	// Valid source types are: blank, http, s3, registry, pvc and upload. The last one requires using the M(kubevirt_cdi_upload) module to actually perform an upload.
	// Source data format is specified using the optional I(content_type). Valid options are C(kubevirt) (default; raw image) and C(archive) (tar.gz).
	// This uses the DataVolume source syntax: U(https://github.com/kubevirt/containerized-data-importer/blob/master/doc/datavolumes.md#https3registry-source)

	cdi_source?: {...}

	// Labels attached to this object.
	// U(https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/)

	labels?: {...}

	// Whether to override the default patch merge approach with a specific type.
	// This defaults to C(['strategic-merge', 'merge']), which is ideal for using the same parameters on resource kinds that combine Custom Resources and built-in resources.
	// See U(https://kubernetes.io/docs/tasks/run-application/update-api-object-kubectl-patch/#use-a-json-merge-patch-to-update-a-deployment)
	// If more than one merge_type is given, the merge_types will be tried in order

	merge_type?: [..._]

	// Determines if an object should be created, patched, or deleted. When set to C(present), an object will be created, if it does not already exist. If set to C(absent), an existing object will be deleted. If set to C(present), an existing object will be patched, if its attributes differ from those specified using module options and I(resource_definition).

	state?: string

	// Specifies how much time in seconds to wait for PVC creation to complete if I(wait) option is enabled.
	// Default value is reasonably high due to an expectation that CDI might take a while to finish its operation.

	wait_timeout?: int

	// Contains the desired access modes the volume should have.
	// More info: U(https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes)

	access_modes?: [..._]

	// Annotations attached to this object.
	// U(https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/)

	annotations?: {...}

	// Use to specify a PVC object name.

	name: string

	// A partial YAML definition of the PVC object being created/updated. Here you can define Kubernetes PVC Resource parameters not covered by this module's parameters.
	// NOTE: I(resource_definition) has lower priority than module parameters. If you try to define e.g. I(metadata.namespace) here, that value will be ignored and I(namespace) used instead.

	resource_definition?: {...}

	// This is the binding reference to the PersistentVolume backing this claim.

	volume_name?: string
}
