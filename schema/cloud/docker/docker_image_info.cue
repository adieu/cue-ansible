package ansible

module: docker_image_info: {
	module: "docker_image_info"

	short_description: "Inspect docker images"

	version_added: "2.1.0"

	description: [
		"Provide one or more image names, and the module will inspect each, returning an array of inspection results.",
		"If an image does not exist locally, it will not appear in the results. If you want to check whether an image exists locally, you can call the module with the image name, then check whether the result list is empty (image does not exist) or has one element (the image exists locally).",
		"The module will not attempt to pull images from registries. Use M(docker_image) with I(source) set to C(pull) to ensure an image is pulled.",
	]

	notes: [
		"This module was called C(docker_image_facts) before Ansible 2.8. The usage did not change.",
	]

	options: name: {
		description: [
			"An image name or a list of image names. Name format will be C(name[:tag]) or C(repository/name[:tag]), where C(tag) is optional. If a tag is not provided, C(latest) will be used. Instead of image names, also image IDs can be used.",
		]

		type:     "list"
		elements: "str"
		required: true
	}

	extends_documentation_fragment: [
		"docker",
		"docker.docker_py_1_documentation",
	]

	requirements: [
		"L(Docker SDK for Python,https://docker-py.readthedocs.io/en/stable/) >= 1.8.0 (use L(docker-py,https://pypi.org/project/docker-py/) for Python 2.6)",
		"Docker API >= 1.20",
	]

	author: [
		"Chris Houseknecht (@chouseknecht)",
	]
}
