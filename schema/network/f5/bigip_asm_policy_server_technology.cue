package ansible

module: bigip_asm_policy_server_technology: {
	module:            "bigip_asm_policy_server_technology"
	short_description: "Manages Server Technology on ASM policy"
	description: [
		"Manages Server Technology on ASM policy.",
	]
	version_added: 2.8
	options: {
		name: {
			description: [
				"Specifies the name of the server technology to apply on or remove from the ASM policy.",
			]
			type:     "str"
			required: true
			choices: [
				"jQuery",
				"Java Servlets/JSP",
				"ASP",
				"WebDAV",
				"IIS",
				"Front Page Server Extensions (FPSE)",
				"ASP.NET",
				"Microsoft Windows",
				"Unix/Linux",
				"Macromedia ColdFusion",
				"WordPress",
				"Apache Tomcat",
				"Apache/NCSA HTTP Server",
				"Outlook Web Access",
				"PHP",
				"Microsoft SQL Server",
				"Oracle",
				"MySQL",
				"Lotus Domino",
				"BEA Systems WebLogic Server",
				"Macromedia JRun",
				"Novell",
				"Cisco",
				"SSI (Server Side Includes)",
				"Proxy Servers",
				"CGI",
				"Sybase/ASE",
				"IBM DB2",
				"PostgreSQL",
				"XML",
				"Apache Struts",
				"Elasticsearch",
				"JBoss",
				"Citrix",
				"Node.js",
				"Django",
				"MongoDB",
				"Ruby",
				"JavaServer Faces (JSF)",
				"Joomla",
				"Jetty",
			]
		}
		policy_name: {
			description: [
				"Specifies the name of an existing ASM policy to add or remove server technology.",
			]
			type:     "str"
			required: true
		}
		state: {
			description: [
				"When C(present), ensures that the resource exists.",
				"When C(absent), ensures the resource is removed.",
			]
			type:    "str"
			default: "present"
			choices: [
				"present",
				"absent",
			]
		}
		partition: {
			description: [
				"This parameter is only used when identifying ASM policy.",
			]
			type:    "str"
			default: "Common"
		}
	}
	notes: [
		"This module is primarily used as a component of configuring ASM policy in Ansible Galaxy ASM Policy Role.",
		"Requires BIG-IP >= 13.0.0",
	]
	extends_documentation_fragment: "f5"
	author: ["Wojciech Wypior (@wojtek0806)"]
}
