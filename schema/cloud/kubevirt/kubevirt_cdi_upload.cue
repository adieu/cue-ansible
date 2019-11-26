package ansible

module: kubevirt_cdi_upload: {
	module: "kubevirt_cdi_upload"

	short_description: "Upload local VM images to CDI Upload Proxy."

	version_added: "2.8"

	author: "KubeVirt Team (@kubevirt)"

	description: [
		"Use Openshift Python SDK to create UploadTokenRequest objects.",
		"Transfer contents of local files to the CDI Upload Proxy.",
	]

	options: {
		pvc_name: {
			description: [
				"Use to specify the name of the target PersistentVolumeClaim.",
			]
			required: true
		}
		pvc_namespace: {
			description: [
				"Use to specify the namespace of the target PersistentVolumeClaim.",
			]
			required: true
		}
		upload_host: description: [
			"URL containing the host and port on which the CDI Upload Proxy is available.",
			"More info: U(https://github.com/kubevirt/containerized-data-importer/blob/master/doc/upload.md#expose-cdi-uploadproxy-service)",
		]
		upload_host_validate_certs: {
			description: [
				"Whether or not to verify the CDI Upload Proxy's SSL certificates against your system's CA trust store.",
			]
			default: true
			type:    "bool"
			aliases: ["upload_host_verify_ssl"]
		}
		path: description: [
			"Path of local image file to transfer.",
		]
		merge_type: {
			description: [
				"Whether to override the default patch merge approach with a specific type. By default, the strategic merge will typically be used.",
			]

			type: "list"
			choices: ["json", "merge", "strategic-merge"]
		}
	}

	extends_documentation_fragment: [
		"k8s_auth_options",
	]

	requirements: [
		"python >= 2.7",
		"openshift >= 0.8.2",
		"requests >= 2.0.0",
	]
}
