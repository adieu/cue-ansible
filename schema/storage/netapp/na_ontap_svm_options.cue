package ansible

module: na_ontap_svm_options: {
	short_description: "NetApp ONTAP Modify SVM Options"
	author:            "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Modify ONTAP SVM Options",
		"Only Options that appear on \"vserver options show\" can be set",
	]
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	module:        "na_ontap_svm_options"
	version_added: "2.7"
	options: {
		name: description: [
			"Name of the option.",
		]
		value: description: [
			"Value of the option.",
			"Value must be in quote",
		]
		vserver: {
			description: [
				"The name of the vserver to which this option belongs to.",
			]
			required: true
		}
	}
}
