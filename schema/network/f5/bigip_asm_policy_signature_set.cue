package ansible

module: bigip_asm_policy_signature_set: {
	module:            "bigip_asm_policy_signature_set"
	short_description: "Manages Signature Sets on ASM policy"
	description: [
		"Manages Signature Sets on ASM policy.",
	]
	version_added: 2.8
	options: {
		name: {
			description: [
				"Specifies the name of the signature sets to apply on or remove from the ASM policy.",
				"Apart from built-in signature sets that ship with the device, users can use user created signature sets.",
				"When C(All Response Signatures), configures all signatures in the attack signature pool that can review responses.",
				"When C(All Signatures), configures all attack signatures in the attack signature pool.",
				"When C(Apache Struts Signatures), configures signatures that target attacks against the Apache Struts web servers. Only available in version 13.x and up.",
				"When C(Apache Tomcat Signatures), configures signatures that target attacks against the Apache Tomcat web servers. Only available in version 13.x and up.",
				"When C(Cisco Signatures), configures signatures that target attacks against Cisco systems. Only available in version 13.x and up.",
				"When C(Command Execution Signatures), configures signatures involving attacks perpetrated by executing commands.",
				"When C(Cross Site Scripting Signatures), configures signatures that target attacks caused by cross-site scripting techniques.",
				"When C(Directory Indexing Signatures), configures signatures targeting attacks that browse directory listings.",
				"When C(Generic Detection Signatures), configures signatures targeting well-known or common web and application attacks.",
				"When C(HTTP Response Splitting Signatures), configures signatures targeting attacks that take advantage of responses for which input values have not been sanitized.",
				"When C(High Accuracy Detection Evasion Signatures), configures signatures with a high level of accuracy that produce few false positives when identifying evasion attacks. Only available in version 13.x and up.",
				"When C(High Accuracy Signatures), configures signatures with a high level of accuracy that produce few false positives when identifying evasion attacks.",
				"When C(IIS and Windows Signatures), configures signatures that target attacks against IIS and Windows based systems. Only available in version 13.x and up.",
				"When C(Information Leakage Signatures), configures signatures targeting attacks that are looking for system data or debugging information that shows where the system is vulnerable to attack.",
				"When C(Java Servlets/JSP Signatures), configures signatures that target attacks against Java Servlets and Java Server Pages (JSP) based applications. Only available in version 13.x and up.",
				"When C(Low Accuracy Signatures), configures signatures that may result in more false positives when identifying attacks.",
				"When C(Medium Accuracy Signatures), configures signatures with a medium level of accuracy when identifying attacks.",
				"When C(OS Command Injection Signatures), configures signatures targeting attacks that attempt to run system level commands through a vulnerable application.",
				"When C(OWA Signatures), configures signatures that target attacks against the Microsoft Outlook Web Access (OWA) application.",
				"When C(Other Application Attacks Signatures), configures signatures targeting miscellaneous attacks, including session fixation, local file access, injection attempts, header tampering and so on, affecting many applications.",
				"When C(Path Traversal Signatures), configures signatures targeting attacks that attempt to access files and directories that are stored outside the web root folder.",
				"When C(Predictable Resource Location Signatures), configures signatures targeting attacks that attempt to uncover hidden website content and functionality by forceful browsing, or by directory and file enumeration.",
				"When C(Remote File Include Signatures), configures signatures targeting attacks that attempt to exploit a remote file include vulnerability that could enable a remote attacker to execute arbitrary commands on the server hosting the application.",
				"When C(SQL Injection Signatures), configures signatures targeting attacks that attempt to insert (inject) a SQL query using the input data from a client to an application.",
				"When C(Server Side Code Injection Signatures), configures signatures targeting code injection attacks on the server side.",
				"When C(WebSphere signatures), configures signatures targeting attacks on many computing platforms that are integrated using WebSphere including general database, Microsoft Windows, IIS, Microsoft SQL Server, Apache, Oracle, Unix/Linux, IBM DB2, PostgreSQL, and XML.",
				"When C(XPath Injection Signatures), configures signatures targeting attacks that attempt to gain access to data structures or bypass permissions when a web site uses user-supplied information to construct XPath queries for XML data.",
			]

			type:     "str"
			required: true
		}
		policy_name: {
			description: [
				"Specifies the name of an existing ASM policy to add or remove signature sets.",
			]
			type:     "str"
			required: true
		}
		alarm: {
			description: [
				"Specifies if the security policy logs the request data in the Statistics screen, when a request matches a signature that is included in the signature set.",
			]

			type: "bool"
		}
		block: {
			description: [
				"Effective when the security policy`s enforcement mode is Blocking.",
				"Determines how the system treats requests that match a signature included in the signature set.",
				"When C(yes) the system blocks all requests that match a signature, and provides the client with a support ID number.",
				"When C(no) the system accepts those requests.",
			]
			type: "bool"
		}
		learn: {
			description: [
				"Specifies if the security policy learns all requests that match a signature that is included in the signature set.",
			]

			type: "bool"
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
	]
	extends_documentation_fragment: "f5"
	author: ["Wojciech Wypior (@wojtek0806)"]
}
