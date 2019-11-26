package ansible

module: zabbix_map: {
	module: "zabbix_map"
	author: [
		"Antony Alekseyev (@Akint)",
	]
	short_description: "Create/update/delete Zabbix maps"
	description: [
		"This module allows you to create, modify and delete Zabbix map entries, using Graphviz binaries and text description written in DOT language. Nodes of the graph will become map elements and edges will become links between map elements. See U(https://en.wikipedia.org/wiki/DOT_(graph_description_language)) and U(https://www.graphviz.org/) for details. Inspired by U(http://blog.zabbix.com/maps-for-the-lazy/).",
		"The following extra node attributes are supported: C(zbx_host) contains name of the host in Zabbix. Use this if desired type of map element is C(host). C(zbx_group) contains name of the host group in Zabbix. Use this if desired type of map element is C(host group). C(zbx_map) contains name of the map in Zabbix. Use this if desired type of map element is C(map). C(zbx_label) contains label of map element. C(zbx_image) contains name of the image used to display the element in default state. C(zbx_image_disabled) contains name of the image used to display disabled map element. C(zbx_image_maintenance) contains name of the image used to display map element in maintenance. C(zbx_image_problem) contains name of the image used to display map element with problems. C(zbx_url) contains map element URL in C(name:url) format. More than one URL could be specified by adding a postfix (e.g., C(zbx_url1), C(zbx_url2)).",
		"The following extra link attributes are supported: C(zbx_draw_style) contains link line draw style. Possible values: C(line), C(bold), C(dotted), C(dashed). C(zbx_trigger) contains name of the trigger used as a link indicator in C(host_name:trigger_name) format. More than one trigger could be specified by adding a postfix (e.g., C(zbx_trigger1), C(zbx_trigger2)). C(zbx_trigger_color) contains indicator color specified either as CSS3 name or as a hexadecimal code starting with C(#). C(zbx_trigger_draw_style) contains indicator draw style. Possible values are the same as for C(zbx_draw_style).",
	]

	requirements: [
		"python >= 2.6",
		"zabbix-api >= 0.5.3",
		"pydotplus",
		"webcolors",
		"Pillow",
		"Graphviz",
	]
	version_added: "2.8"
	options: {
		name: {
			description: [
				"Name of the map.",
			]
			required: true
			aliases: ["map_name"]
		}
		data: {
			description: [
				"Graph written in DOT language.",
			]
			required: false
			aliases: ["dot_data"]
		}
		state: {
			description: [
				"State of the map.",
				"On C(present), it will create if map does not exist or update the map if the associated data is different.",
				"On C(absent) will remove the map if it exists.",
			]
			required: false
			choices: ["present", "absent"]
			default: "present"
		}
		width: {
			description: [
				"Width of the map.",
			]
			required: false
			default:  800
		}
		height: {
			description: [
				"Height of the map.",
			]
			required: false
			default:  600
		}
		margin: {
			description: [
				"Size of white space between map's borders and its elements.",
			]
			required: false
			default:  40
		}
		expand_problem: {
			description: [
				"Whether the problem trigger will be displayed for elements with a single problem.",
			]
			required: false
			type:     "bool"
			default:  true
		}
		highlight: {
			description: [
				"Whether icon highlighting is enabled.",
			]
			required: false
			type:     "bool"
			default:  true
		}
		label_type: {
			description: [
				"Map element label type.",
			]
			required: false
			choices: ["label", "ip", "name", "status", "nothing", "custom"]
			default: "name"
		}
		default_image: {
			description: [
				"Name of the Zabbix image used to display the element if this element doesn't have the C(zbx_image) attribute defined.",
			]
			required: false
			aliases: ["image"]
		}
	}

	extends_documentation_fragment: ["zabbix"]
}
