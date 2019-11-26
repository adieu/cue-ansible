package ansible

module: na_ontap_volume: {
	module: "na_ontap_volume"

	short_description: "NetApp ONTAP manage volumes."
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.6"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"

	description: [
		"Create or destroy or modify volumes on NetApp ONTAP.",
	]

	options: {

		state: {
			description: [
				"Whether the specified volume should exist or not.",
			]
			choices: ["present", "absent"]
			default: "present"
		}

		name: {
			description: [
				"The name of the volume to manage.",
			]
			type:     "str"
			required: true
		}

		vserver: {
			description: [
				"Name of the vserver to use.",
			]
			type:     "str"
			required: true
		}

		from_name: {
			description: [
				"Name of the existing volume to be renamed to name.",
			]
			type:          "str"
			version_added: "2.7"
		}

		is_infinite: {
			type: "bool"
			description:
				"Set True if the volume is an Infinite Volume. Deleting an infinite volume is asynchronous."
		}

		is_online: {
			type: "bool"
			description: [
				"Whether the specified volume is online, or not.",
			]
			default: true
		}

		aggregate_name: {
			description: [
				"The name of the aggregate the flexvol should exist on.",
				"Required when C(state=present).",
			]
			type: "str"
		}

		size: {
			description: [
				"The size of the volume in (size_unit). Required when C(state=present).",
			]
			type: "int"
		}

		size_unit: {
			description: [
				"The unit used to interpret the size parameter.",
			]
			choices: ["bytes", "b", "kb", "mb", "gb", "tb", "pb", "eb", "zb", "yb"]
			type:    "str"
			default: "gb"
		}

		type: {
			description: [
				"The volume type, either read-write (RW) or data-protection (DP).",
			]
			type: "str"
		}

		policy: {
			description: [
				"Name of the export policy.",
			]
			type: "str"
		}

		junction_path: {
			description: [
				"Junction path of the volume.",
				"To unmount, use junction path C('').",
			]
			type: "str"
		}

		space_guarantee: {
			description: [
				"Space guarantee style for the volume.",
			]
			choices: ["none", "file", "volume"]
			type: "str"
		}

		percent_snapshot_space: {
			description: [
				"Amount of space reserved for snapshot copies of the volume.",
			]
			type: "int"
		}

		volume_security_style: {
			description: [
				"The security style associated with this volume.",
			]
			choices: ["mixed", "ntfs", "unified", "unix"]
			default: "mixed"
			type:    "str"
		}

		encrypt: {
			type: "bool"
			description: [
				"Whether or not to enable Volume Encryption.",
			]
			default:       false
			version_added: "2.7"
		}

		efficiency_policy: {
			description: [
				"Allows a storage efficiency policy to be set on volume creation.",
			]
			type:          "str"
			version_added: "2.7"
		}

		unix_permissions: {
			description: [
				"Unix permission bits in octal or symbolic format.",
				"For example, 0 is equivalent to ------------, 777 is equivalent to ---rwxrwxrwx,both formats are accepted.",
				"The valid octal value ranges between 0 and 777 inclusive.",
			]
			type:          "str"
			version_added: "2.8"
		}

		snapshot_policy: {
			description: [
				"The name of the snapshot policy.",
				"the default policy name is 'default'.",
			]
			type:          "str"
			version_added: "2.8"
		}

		aggr_list: {
			description: [
				"an array of names of aggregates to be used for FlexGroup constituents.",
			]
			type:          "list"
			version_added: "2.8"
		}

		aggr_list_multiplier: {
			description: [
				"The number of times to iterate over the aggregates listed with the aggr_list parameter when creating a FlexGroup.",
			]
			type:          "int"
			version_added: "2.8"
		}

		auto_provision_as: {
			description: [
				"Automatically provision a FlexGroup volume.",
			]
			version_added: "2.8"
			choices: ["flexgroup"]
			type: "str"
		}

		snapdir_access: {
			description: [
				"This is an advanced option, the default is False.",
				"Enable the visible '.snapshot' directory that is normally present at system internal mount points.",
				"This value also turns on access to all other '.snapshot' directories in the volume.",
			]
			type:          "bool"
			version_added: "2.8"
		}

		atime_update: {
			description: [
				"This is an advanced option, the default is True.",
				"If false, prevent the update of inode access times when a file is read.",
				"This value is useful for volumes with extremely high read traffic, since it prevents writes to the inode file for the volume from contending with reads from other files.",
				"This field should be used carefully.",
				"That is, use this field when you know in advance that the correct access time for inodes will not be needed for files on that volume.",
			]
			type:          "bool"
			version_added: "2.8"
		}

		wait_for_completion: {
			description: [
				"Set this parameter to 'true' for synchronous execution during create (wait until volume status is online)",
				"Set this parameter to 'false' for asynchronous execution",
				"For asynchronous, execution exits as soon as the request is sent, without checking volume status",
			]
			type:          "bool"
			default:       false
			version_added: "2.8"
		}

		time_out: {
			description: [
				"time to wait for flexGroup creation, modification, or deletion in seconds.",
				"Error out if task is not completed in defined time.",
				"if 0, the request is asynchronous.",
				"default is set to 3 minutes.",
			]
			default:       180
			type:          "int"
			version_added: "2.8"
		}

		language: {
			description: [
				"Language to use for Volume",
				"Default uses SVM language",
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
				"To use UTF-8 as the NFS character set, append '.UTF-8' to the language code",
			]
			type:          "str"
			version_added: "2.8"
		}

		qos_policy_group: {
			description: [
				"Specifies a QoS policy group to be set on volume.",
			]
			version_added: "2.9"
		}

		qos_adaptive_policy_group: {
			description: [
				"Specifies a QoS adaptive policy group to be set on volume.",
			]
			version_added: "2.9"
		}

		tiering_policy: {
			description: [
				"The tiering policy that is to be associated with the volume.",
				"This policy decides whether the blocks of a volume will be tiered to the capacity tier.",
				"snapshot-only policy allows tiering of only the volume snapshot copies not associated with the active file system.",
				"auto policy allows tiering of both snapshot and active file system user data to the capacity tier.",
				"backup policy on DP volumes allows all transferred user data blocks to start in the capacity tier.",
				"When set to none, the Volume blocks will not be tiered to the capacity tier.",
				"If no value specified, the volume is assigned snapshot only by default.",
			]
			choices: ["snapshot-only", "auto", "backup", "none"]
			type:          "str"
			version_added: "2.9"
		}

		space_slo: {
			description: [
				"Specifies the space SLO type for the volume. The space SLO type is the Service Level Objective for space management for the volume.",
				"The space SLO value is used to enforce existing volume settings so that sufficient space is set aside on the aggregate to meet the space SLO.",
				"This parameter is not supported on Infinite Volumes.",
			]
			choices: ["none", "thick", "semi-thick"]
			type:          "str"
			version_added: "2.9"
		}

		nvfail_enabled: {
			description: [
				"If true, the controller performs additional work at boot and takeover times if it finds that there has been any potential data loss in the volume's constituents due to an NVRAM failure.",
				"The volume's constituents would be put in a special state called 'in-nvfailed-state' such that protocol access is blocked.",
				"This will cause the client applications to crash and thus prevent access to stale data.",
				"To get out of this situation, the admin needs to manually clear the 'in-nvfailed-state' on the volume's constituents.",
			]
			type:          "bool"
			version_added: "2.9"
		}

		vserver_dr_protection: {
			description: [
				"Specifies the protection type for the volume in a Vserver DR setup.",
			]
			choices: ["protected", "unprotected"]
			type:          "str"
			version_added: "2.9"
		}

		comment: {
			description: [
				"Sets a comment associated with the volume.",
			]
			type:          "str"
			version_added: "2.9"
		}
	}
}
