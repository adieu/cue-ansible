package ansible

module: azure_rm_webappslot: {
	module:            "azure_rm_webappslot"
	version_added:     "2.8"
	short_description: "Manage Azure Web App slot"
	description: [
		"Create, update and delete Azure Web App slot.",
	]

	options: {
		resource_group: {
			description: [
				"Name of the resource group to which the resource belongs.",
			]
			required: true
		}
		name: {
			description: [
				"Unique name of the deployment slot to create or update.",
			]
			required: true
		}
		webapp_name: {
			description: [
				"Web app name which this deployment slot belongs to.",
			]
			required: true
		}
		location: description: [
			"Resource location. If not set, location from the resource group will be used as default.",
		]
		configuration_source: description: [
			"Source slot to clone configurations from when creating slot. Use webapp's name to refer to the production slot.",
		]
		auto_swap_slot_name: description: [
			"Used to configure target slot name to auto swap, or disable auto swap.",
			"Set it target slot name to auto swap.",
			"Set it to False to disable auto slot swap.",
		]
		swap: {
			description: [
				"Swap deployment slots of a web app.",
			]
			suboptions: {
				action: {
					description: [
						"Swap types.",
						"C(preview) is to apply target slot settings on source slot first.",
						"C(swap) is to complete swapping.",
						"C(reset) is to reset the swap.",
					]
					choices: [
						"preview",
						"swap",
						"reset",
					]
					default: "preview"
				}
				target_slot: description: [
					"Name of target slot to swap. If set to None, then swap with production slot.",
				]
				preserve_vnet: {
					description: [
						"C(True) to preserve virtual network to the slot during swap. Otherwise C(False).",
					]
					type:    "bool"
					default: true
				}
			}
		}
		frameworks: {
			description: [
				"Set of run time framework settings. Each setting is a dictionary.",
				"See U(https://docs.microsoft.com/en-us/azure/app-service/app-service-web-overview) for more info.",
			]
			suboptions: {
				name: {
					description: [
						"Name of the framework.",
						"Supported framework list for Windows web app and Linux web app is different.",
						"Windows web apps support C(java), C(net_framework), C(php), C(python), and C(node) from June 2018.",
						"Windows web apps support multiple framework at same time.",
						"Linux web apps support C(java), C(ruby), C(php), C(dotnetcore), and C(node) from June 2018.",
						"Linux web apps support only one framework.",
						"Java framework is mutually exclusive with others.",
					]
					choices: [
						"java",
						"net_framework",
						"php",
						"python",
						"ruby",
						"dotnetcore",
						"node",
					]
				}
				version: description: [
					"Version of the framework. For Linux web app supported value, see U(https://aka.ms/linux-stacks) for more info.",
					"C(net_framework) supported value sample, C(v4.0) for .NET 4.6 and C(v3.0) for .NET 3.5.",
					"C(php) supported value sample, C(5.5), C(5.6), C(7.0).",
					"C(python) supported value sample, C(5.5), C(5.6), C(7.0).",
					"C(node) supported value sample, C(6.6), C(6.9).",
					"C(dotnetcore) supported value sample, C(1.0), C(1.1), C(1.2).",
					"C(ruby) supported value sample, 2.3.",
					"C(java) supported value sample, C(1.9) for Windows web app. C(1.8) for Linux web app.",
				]
				settings: {
					description: [
						"List of settings of the framework.",
					]
					suboptions: {
						java_container: description: [
							"Name of Java container. This is supported by specific framework C(java) onlys, for example C(Tomcat), C(Jetty).",
						]
						java_container_version: description: [
							"Version of Java container. This is supported by specific framework C(java) only.",
							"For C(Tomcat), for example C(8.0), C(8.5), C(9.0). For C(Jetty), for example C(9.1), C(9.3).",
						]
					}
				}
			}
		}
		container_settings: {
			description: [
				"Web app slot container settings.",
			]
			suboptions: {
				name: description: [
					"Name of container, for example C(imagename:tag).",
				]
				registry_server_url: description: [
					"Container registry server URL, for example C(mydockerregistry.io).",
				]
				registry_server_user: description: [
					"The container registry server user name.",
				]
				registry_server_password: description: [
					"The container registry server password.",
				]
			}
		}
		startup_file: description: [
			"The slot startup file.",
			"This only applies for Linux web app slot.",
		]
		app_settings: description: [
			"Configure web app slot application settings. Suboptions are in key value pair format.",
		]
		purge_app_settings: {
			description: [
				"Purge any existing application settings. Replace slot application settings with app_settings.",
			]
			type: "bool"
		}
		deployment_source: {
			description: [
				"Deployment source for git.",
			]
			suboptions: {
				url: description: [
					"Repository URL of deployment source.",
				]
				branch: description: [
					"The branch name of the repository.",
				]
			}
		}
		app_state: {
			description: [
				"Start/Stop/Restart the slot.",
			]
			type: "str"
			choices: [
				"started",
				"stopped",
				"restarted",
			]
			default: "started"
		}
		state: {
			description: [
				"State of the Web App deployment slot.",
				"Use C(present) to create or update a  slot and C(absent) to delete it.",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
	}

	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: [
		"Yunge Zhu(@yungezz)",
	]
}
