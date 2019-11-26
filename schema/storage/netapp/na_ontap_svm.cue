package ansible

module: na_ontap_svm: {
	module: "na_ontap_svm"

	short_description: "NetApp ONTAP SVM"
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.6"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"

	description: [
		"Create, modify or delete SVM on NetApp ONTAP",
	]

	options: {

		state: {
			description: [
				"Whether the specified SVM should exist or not.",
			]
			choices: ["present", "absent"]
			default: "present"
		}

		name: {
			description: [
				"The name of the SVM to manage.",
			]
			required: true
		}

		from_name: {
			description: [
				"Name of the SVM to be renamed",
			]
			version_added: "2.7"
		}

		root_volume: description: [
			"Root volume of the SVM.",
			"Cannot be modified after creation.",
		]

		root_volume_aggregate: description: [
			"The aggregate on which the root volume will be created.",
			"Cannot be modified after creation.",
		]

		root_volume_security_style: {
			description: [
				"Security Style of the root volume.",
				"When specified as part of the vserver-create, this field represents the security style for the Vserver root volume.",
				"When specified as part of vserver-get-iter call, this will return the list of matching Vservers.",
				"The 'unified' security style, which applies only to Infinite Volumes, cannot be applied to a Vserver's root volume.",
				"Cannot be modified after creation.",
			]
			choices: ["unix", "ntfs", "mixed", "unified"]
		}

		allowed_protocols: description: [
			"Allowed Protocols.",
			"When specified as part of a vserver-create, this field represent the list of protocols allowed on the Vserver.",
			"When part of vserver-get-iter call, this will return the list of Vservers which have any of the protocols specified as part of the allowed-protocols.",
			"When part of vserver-modify, this field should include the existing list along with new protocol list to be added to prevent data disruptions.",
			"Possible values",
			"nfs   NFS protocol,",
			"cifs   CIFS protocol,",
			"fcp   FCP protocol,",
			"iscsi   iSCSI protocol,",
			"ndmp   NDMP protocol,",
			"http   HTTP protocol,",
			"nvme   NVMe protocol",
		]

		aggr_list: description: [
			"List of aggregates assigned for volume operations.",
			"These aggregates could be shared for use with other Vservers.",
			"When specified as part of a vserver-create, this field represents the list of aggregates that are assigned to the Vserver for volume operations.",
			"When part of vserver-get-iter call, this will return the list of Vservers which have any of the aggregates specified as part of the aggr list.",
		]

		ipspace: {
			description: [
				"IPSpace name",
				"Cannot be modified after creation.",
			]
			version_added: "2.7"
		}

		snapshot_policy: {
			description: [
				"Default snapshot policy setting for all volumes of the Vserver. This policy will be assigned to all volumes created in this Vserver unless the volume create request explicitly provides a snapshot policy or volume is modified later with a specific snapshot policy. A volume-level snapshot policy always overrides the default Vserver-wide snapshot policy.",
			]

			version_added: "2.7"
		}

		language: {
			description: [
				"Language to use for the SVM",
				"Default to C.UTF-8",
				"Possible values   Language",
				"c                 POSIX",
				"ar                Arabic",
				"cs                Czech",
				"da                Danish",
				"de                German",
				"en                English",
				"en_us             English (US)",
				"es                Spanish",
				"fi                Finnish",
				"fr                French",
				"he                Hebrew",
				"hr                Croatian",
				"hu                Hungarian",
				"it                Italian",
				"ja                Japanese euc-j",
				"ja_v1             Japanese euc-j",
				"ja_jp.pck         Japanese PCK (sjis)",
				"ja_jp.932         Japanese cp932",
				"ja_jp.pck_v2      Japanese PCK (sjis)",
				"ko                Korean",
				"no                Norwegian",
				"nl                Dutch",
				"pl                Polish",
				"pt                Portuguese",
				"ro                Romanian",
				"ru                Russian",
				"sk                Slovak",
				"sl                Slovenian",
				"sv                Swedish",
				"tr                Turkish",
				"zh                Simplified Chinese",
				"zh.gbk            Simplified Chinese (GBK)",
				"zh_tw             Traditional Chinese euc-tw",
				"zh_tw.big5        Traditional Chinese Big 5",
			]
			version_added: "2.7"
		}

		subtype: {
			description: [
				"The subtype for vserver to be created.",
				"Cannot be modified after creation.",
			]
			choices: ["default", "dp_destination", "sync_source", "sync_destination"]
			version_added: "2.7"
		}

		comment: {
			description: [
				"When specified as part of a vserver-create, this field represents the comment associated with the Vserver.",
				"When part of vserver-get-iter call, this will return the list of matching Vservers.",
			]
			version_added: "2.8"
		}
	}
}
