package ansible

module: podman_image_info: {
	module: "podman_image_info"
	author: [
		"Sam Doran (@samdoran)",
	]
	version_added:     "2.8"
	short_description: "Gather info about images using podman"
	notes: [
		"Podman may required elevated privileges in order to run properly.",
	]
	description: [
		"Gather info about images using C(podman)",
	]
	options: {
		executable: {
			description: [
				"Path to C(podman) executable if it is not in the C($PATH) on the machine running C(podman)",
			]
			default: "podman"
			type:    "str"
		}
		name: description: [
			"List of tags or UID to gather info about. If no name is given return info about all images.",
		]
	}
}
