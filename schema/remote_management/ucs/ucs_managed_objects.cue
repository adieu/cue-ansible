package ansible

module: ucs_managed_objects: {
	module:            "ucs_managed_objects"
	short_description: "Configures Managed Objects on Cisco UCS Manager"
	description: [
		"Configures Managed Objects on Cisco UCS Manager.",
		"The Python SDK module, Python class within the module (UCSM Class), and all properties must be directly specified.",
		"More information on the UCSM Python SDK and how to directly configure Managed Objects is available at L(UCSM Python SDK,http://ucsmsdk.readthedocs.io/).",
		"Examples can be used with the UCS Platform Emulator U(https://communities.cisco.com/ucspe).",
	]
	extends_documentation_fragment: "ucs"
	options: {
		state: {
			description: [
				"If C(present), will verify that the Managed Objects are present and will create if needed.",
				"If C(absent), will verify that the Managed Objects are absent and will delete if needed.",
			]
			choices: ["absent", "present"]
			default: "present"
		}
		objects: {
			description: [
				"List of managed objects to configure.  Each managed object has suboptions the specify the Python SDK module, class, and properties to configure.",
			]
			suboptions: {
				module: {
					description: [
						"Name of the Python SDK module implementing the required class.",
					]
					required: true
				}
				class_name: {
					description: [
						"Name of the Python class that will be used to configure the Managed Object.",
					]
					required: true
				}
				properties: {
					description: [
						"List of properties to configure on the Managed Object.  See the UCSM Python SDK for information on properties for each class.",
					]
					required: true
				}
				children: description: [
					"Optional list of child objects.  Each child has its own module, class, and properties suboptions.",
					"The parent_mo_or_dn property for child objects is automatically set as the list of children is configured.",
				]
			}
			required: true
		}
	}
	requirements: [
		"ucsmsdk",
	]
	author: [
		"David Soper (@dsoper2)",
		"CiscoUcs (@CiscoUcs)",
	]
	version_added: "2.8"
}
