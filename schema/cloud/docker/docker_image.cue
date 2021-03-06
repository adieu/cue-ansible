package ansible

module: docker_image: {
	module: "docker_image"

	short_description: "Manage docker images."

	version_added: "1.5"

	description: [
		"Build, load or pull an image, making the image available for creating containers. Also supports tagging an image into a repository and archiving an image to a .tar file.",
		"Since Ansible 2.8, it is recommended to explicitly specify the image's source (I(source) can be C(build), C(load), C(pull) or C(local)). This will be required from Ansible 2.12 on.",
	]

	options: {
		source: {
			description: [
				"Determines where the module will try to retrieve the image from.",
				"Use C(build) to build the image from a C(Dockerfile). I(build.path) must be specified when this value is used.",
				"Use C(load) to load the image from a C(.tar) file. I(load_path) must be specified when this value is used.",
				"Use C(pull) to pull the image from a registry.",
				"Use C(local) to make sure that the image is already available on the local docker daemon, i.e. do not try to build, pull or load the image.",
				"Before Ansible 2.12, the value of this option will be auto-detected to be backwards compatible, but a warning will be issued if it is not explicitly specified. From Ansible 2.12 on, auto-detection will be disabled and this option will be made mandatory.",
			]

			type: "str"
			choices: [
				"build",
				"load",
				"pull",
				"local",
			]
			version_added: "2.8"
		}
		build: {
			description: [
				"Specifies options used for building images.",
			]
			type: "dict"
			suboptions: {
				cache_from: {
					description: [
						"List of image names to consider as cache source.",
					]
					type:     "list"
					elements: "str"
				}
				dockerfile: {
					description: [
						"Use with state C(present) and source C(build) to provide an alternate name for the Dockerfile to use when building an image.",
						"This can also include a relative path (relative to I(path)).",
					]
					type: "str"
				}
				http_timeout: {
					description: [
						"Timeout for HTTP requests during the image build operation. Provide a positive integer value for the number of seconds.",
					]

					type: "int"
				}
				path: {
					description: [
						"Use with state 'present' to build an image. Will be the path to a directory containing the context and Dockerfile for building an image.",
					]

					type:     "path"
					required: true
				}
				pull: {
					description: [
						"When building an image downloads any updates to the FROM image in Dockerfile.",
						"The default is currently C(yes). This will change to C(no) in Ansible 2.12.",
					]
					type: "bool"
				}
				rm: {
					description: [
						"Remove intermediate containers after build.",
					]
					type:    "bool"
					default: true
				}
				network: {
					description: [
						"The network to use for C(RUN) build instructions.",
					]
					type: "str"
				}
				nocache: {
					description: [
						"Do not use cache when building an image.",
					]
					type:    "bool"
					default: false
				}
				etc_hosts: {
					description: [
						"Extra hosts to add to C(/etc/hosts) in building containers, as a mapping of hostname to IP address.",
					]
					type:          "dict"
					version_added: "2.9"
				}
				args: {
					description: [
						"Provide a dictionary of C(key:value) build arguments that map to Dockerfile ARG directive.",
						"Docker expects the value to be a string. For convenience any non-string values will be converted to strings.",
						"Requires Docker API >= 1.21.",
					]
					type: "dict"
				}
				container_limits: {
					description: [
						"A dictionary of limits applied to each container created by the build process.",
					]
					type: "dict"
					suboptions: {
						memory: {
							description: [
								"Set memory limit for build.",
							]
							type: "int"
						}
						memswap: {
							description: [
								"Total memory (memory + swap), -1 to disable swap.",
							]
							type: "int"
						}
						cpushares: {
							description: [
								"CPU shares (relative weight).",
							]
							type: "int"
						}
						cpusetcpus: {
							description: [
								"CPUs in which to allow execution, e.g., \"0-3\", \"0,1\".",
							]
							type: "str"
						}
					}
				}
				use_config_proxy: {
					description: [
						"If set to C(yes) and a proxy configuration is specified in the docker client configuration (by default C($HOME/.docker/config.json)), the corresponding environment variables will be set in the container being built.",
						"Needs Docker SDK for Python >= 3.7.0.",
					]
					type: "bool"
				}
				target: {
					description: [
						"When building an image specifies an intermediate build stage by name as a final stage for the resulting image.",
					]

					type:          "str"
					version_added: "2.9"
				}
			}
			version_added: "2.8"
		}
		archive_path: {
			description: [
				"Use with state C(present) to archive an image to a .tar file.",
			]
			type:          "path"
			version_added: "2.1"
		}
		load_path: {
			description: [
				"Use with state C(present) to load an image from a .tar file.",
				"Set I(source) to C(load) if you want to load the image. The option will be set automatically before Ansible 2.12 if this option is used (except if I(path) is specified as well, in which case building will take precedence). From Ansible 2.12 on, you have to set I(source) to C(load).",
			]

			type:          "path"
			version_added: "2.2"
		}
		dockerfile: {
			description: [
				"Use with state C(present) and source C(build) to provide an alternate name for the Dockerfile to use when building an image.",
				"This can also include a relative path (relative to I(path)).",
				"Please use I(build.dockerfile) instead. This option will be removed in Ansible 2.12.",
			]
			type:          "str"
			version_added: "2.0"
		}
		force: {
			description: [
				"Use with state I(absent) to un-tag and remove all images matching the specified name. Use with state C(present) to build, load or pull an image when the image already exists. Also use with state C(present) to force tagging an image.",
				"Please stop using this option, and use the more specialized force options I(force_source), I(force_absent) and I(force_tag) instead.",
				"This option will be removed in Ansible 2.12.",
			]
			type:          "bool"
			version_added: "2.1"
		}
		force_source: {
			description: [
				"Use with state C(present) to build, load or pull an image (depending on the value of the I(source) option) when the image already exists.",
			]

			type:          "bool"
			default:       false
			version_added: "2.8"
		}
		force_absent: {
			description: [
				"Use with state I(absent) to un-tag and remove all images matching the specified name.",
			]
			type:          "bool"
			default:       false
			version_added: "2.8"
		}
		force_tag: {
			description: [
				"Use with state C(present) to force tagging an image.",
			]
			type:          "bool"
			default:       false
			version_added: "2.8"
		}
		http_timeout: {
			description: [
				"Timeout for HTTP requests during the image build operation. Provide a positive integer value for the number of seconds.",
				"Please use I(build.http_timeout) instead. This option will be removed in Ansible 2.12.",
			]
			type:          "int"
			version_added: "2.1"
		}
		name: {
			description: [
				"Image name. Name format will be one of: name, repository/name, registry_server:port/name. When pushing or pulling an image the name can optionally include the tag by appending ':tag_name'.",
				"Note that image IDs (hashes) are not supported.",
			]
			type:     "str"
			required: true
		}
		path: {
			description: [
				"Use with state 'present' to build an image. Will be the path to a directory containing the context and Dockerfile for building an image.",
				"Set I(source) to C(build) if you want to build the image. The option will be set automatically before Ansible 2.12 if this option is used. From Ansible 2.12 on, you have to set I(source) to C(build).",
				"Please use I(build.path) instead. This option will be removed in Ansible 2.12.",
			]
			type: "path"
			aliases: [
				"build_path",
			]
		}
		pull: {
			description: [
				"When building an image downloads any updates to the FROM image in Dockerfile.",
				"Please use I(build.pull) instead. This option will be removed in Ansible 2.12.",
				"The default is currently C(yes). This will change to C(no) in Ansible 2.12.",
			]
			type:          "bool"
			version_added: "2.1"
		}
		push: {
			description: [
				"Push the image to the registry. Specify the registry as part of the I(name) or I(repository) parameter.",
			]
			type:          "bool"
			default:       false
			version_added: "2.2"
		}
		rm: {
			description: [
				"Remove intermediate containers after build.",
				"Please use I(build.rm) instead. This option will be removed in Ansible 2.12.",
			]
			type:          "bool"
			default:       true
			version_added: "2.1"
		}
		nocache: {
			description: [
				"Do not use cache when building an image.",
				"Please use I(build.nocache) instead. This option will be removed in Ansible 2.12.",
			]
			type:    "bool"
			default: false
		}
		repository: {
			description: [
				"Full path to a repository. Use with state C(present) to tag the image into the repository. Expects format I(repository:tag). If no tag is provided, will use the value of the C(tag) parameter or I(latest).",
			]

			type:          "str"
			version_added: "2.1"
		}
		state: {
			description: [
				"Make assertions about the state of an image.",
				"When C(absent) an image will be removed. Use the force option to un-tag and remove all images matching the provided name.",
				"When C(present) check if an image exists using the provided name and tag. If the image is not found or the force option is used, the image will either be pulled, built or loaded, depending on the I(source) option.",
				"By default the image will be pulled from Docker Hub, or the registry specified in the image's name. Note that this will change in Ansible 2.12, so to make sure that you are pulling, set I(source) to C(pull). To build the image, provide a I(path) value set to a directory containing a context and Dockerfile, and set I(source) to C(build). To load an image, specify I(load_path) to provide a path to an archive file. To tag an image to a repository, provide a I(repository) path. If the name contains a repository path, it will be pushed.",
				"*Note:* C(state=build) is DEPRECATED and will be removed in Ansible 2.11. Specifying C(build) will behave the same as C(present).",
			]

			type:    "str"
			default: "present"
			choices: [
				"absent",
				"present",
				"build",
			]
		}
		tag: {
			description: [
				"Used to select an image when pulling. Will be added to the image when pushing, tagging or building. Defaults to I(latest).",
				"If I(name) parameter format is I(name:tag), then tag value from I(name) will take precedence.",
			]
			type:    "str"
			default: "latest"
		}
		buildargs: {
			description: [
				"Provide a dictionary of C(key:value) build arguments that map to Dockerfile ARG directive.",
				"Docker expects the value to be a string. For convenience any non-string values will be converted to strings.",
				"Requires Docker API >= 1.21.",
				"Please use I(build.args) instead. This option will be removed in Ansible 2.12.",
			]
			type:          "dict"
			version_added: "2.2"
		}
		container_limits: {
			description: [
				"A dictionary of limits applied to each container created by the build process.",
				"Please use I(build.container_limits) instead. This option will be removed in Ansible 2.12.",
			]
			type: "dict"
			suboptions: {
				memory: {
					description: [
						"Set memory limit for build.",
					]
					type: "int"
				}
				memswap: {
					description: [
						"Total memory (memory + swap), -1 to disable swap.",
					]
					type: "int"
				}
				cpushares: {
					description: [
						"CPU shares (relative weight).",
					]
					type: "int"
				}
				cpusetcpus: {
					description: [
						"CPUs in which to allow execution, e.g., \"0-3\", \"0,1\".",
					]
					type: "str"
				}
			}
			version_added: "2.1"
		}
		use_tls: {
			description: [
				"DEPRECATED. Whether to use tls to connect to the docker daemon. Set to C(encrypt) to use TLS. And set to C(verify) to use TLS and verify that the server's certificate is valid for the server.",
				"*Note:* If you specify this option, it will set the value of the I(tls) or I(validate_certs) parameters if not set to C(no).",
				"Will be removed in Ansible 2.11.",
			]
			type: "str"
			choices: [
				"no",
				"encrypt",
				"verify",
			]
			version_added: "2.0"
		}
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
		"Pavel Antonov (@softzilla)",
		"Chris Houseknecht (@chouseknecht)",
		"Sorin Sbarnea (@ssbarnea)",
	]
}
