package ansible

module: fmgr_secprof_av: {
	module:        "fmgr_secprof_av"
	version_added: "2.8"
	notes: [
		"Full Documentation at U(https://ftnt-ansible-docs.readthedocs.io/en/latest/).",
	]
	author: [
		"Luke Weighall (@lweighall)",
		"Andrew Welsh (@Ghilli3)",
		"Jim Huber (@p4r4n0y1ng)",
	]
	short_description: "Manage security profile"
	description: [
		"Manage security profile groups for FortiManager objects",
	]

	options: {
		adom: {
			description: [
				"The ADOM the configuration should belong to.",
			]
			required: false
			default:  "root"
		}

		mode: {
			description: [
				"Sets one of three modes for managing the object.",
				"Allows use of soft-adds instead of overwriting existing values",
			]
			choices: ["add", "set", "delete", "update"]
			required: false
			default:  "add"
		}

		scan_mode: {
			description: [
				"Choose between full scan mode and quick scan mode.",
			]
			required: false
			choices: [
				"quick",
				"full",
			]
		}

		replacemsg_group: {
			description: [
				"Replacement message group customized for this profile.",
			]
			required: false
		}

		name: {
			description: [
				"Profile name.",
			]
			required: false
		}

		mobile_malware_db: {
			description: [
				"Enable/disable using the mobile malware signature database.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		inspection_mode: {
			description: [
				"Inspection mode.",
			]
			required: false
			choices: [
				"proxy",
				"flow-based",
			]
		}

		ftgd_analytics: {
			description: [
				"Settings to control which files are uploaded to FortiSandbox.",
			]
			required: false
			choices: [
				"disable",
				"suspicious",
				"everything",
			]
		}

		extended_log: {
			description: [
				"Enable/disable extended logging for antivirus.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		comment: {
			description: [
				"Comment.",
			]
			required: false
		}

		av_virus_log: {
			description: [
				"Enable/disable AntiVirus logging.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		av_block_log: {
			description: [
				"Enable/disable logging for AntiVirus file blocking.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		analytics_wl_filetype: {
			description: [
				"Do not submit files matching this DLP file-pattern to FortiSandbox.",
			]
			required: false
		}

		analytics_max_upload: {
			description: [
				"Maximum size of files that can be uploaded to FortiSandbox (1 - 395 MBytes, default = 10).",
			]
			required: false
		}

		analytics_db: {
			description: [
				"Enable/disable using the FortiSandbox signature database to supplement the AV signature databases.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		analytics_bl_filetype: {
			description: [
				"Only submit files matching this DLP file-pattern to FortiSandbox.",
			]
			required: false
		}

		content_disarm: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		content_disarm_cover_page: {
			description: [
				"Enable/disable inserting a cover page into the disarmed document.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		content_disarm_detect_only: {
			description: [
				"Enable/disable only detect disarmable files, do not alter content.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		content_disarm_office_embed: {
			description: [
				"Enable/disable stripping of embedded objects in Microsoft Office documents.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		content_disarm_office_hylink: {
			description: [
				"Enable/disable stripping of hyperlinks in Microsoft Office documents.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		content_disarm_office_linked: {
			description: [
				"Enable/disable stripping of linked objects in Microsoft Office documents.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		content_disarm_office_macro: {
			description: [
				"Enable/disable stripping of macros in Microsoft Office documents.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		content_disarm_original_file_destination: {
			description: [
				"Destination to send original file if active content is removed.",
			]
			required: false
			choices: [
				"fortisandbox",
				"quarantine",
				"discard",
			]
		}

		content_disarm_pdf_act_form: {
			description: [
				"Enable/disable stripping of actions that submit data to other targets in PDF documents.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		content_disarm_pdf_act_gotor: {
			description: [
				"Enable/disable stripping of links to other PDFs in PDF documents.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		content_disarm_pdf_act_java: {
			description: [
				"Enable/disable stripping of actions that execute JavaScript code in PDF documents.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		content_disarm_pdf_act_launch: {
			description: [
				"Enable/disable stripping of links to external applications in PDF documents.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		content_disarm_pdf_act_movie: {
			description: [
				"Enable/disable stripping of embedded movies in PDF documents.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		content_disarm_pdf_act_sound: {
			description: [
				"Enable/disable stripping of embedded sound files in PDF documents.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		content_disarm_pdf_embedfile: {
			description: [
				"Enable/disable stripping of embedded files in PDF documents.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		content_disarm_pdf_hyperlink: {
			description: [
				"Enable/disable stripping of hyperlinks from PDF documents.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		content_disarm_pdf_javacode: {
			description: [
				"Enable/disable stripping of JavaScript code in PDF documents.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		ftp: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		ftp_archive_block: {
			description: [
				"Select the archive types to block.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"encrypted",
				"corrupted",
				"multipart",
				"nested",
				"mailbomb",
				"unhandled",
				"partiallycorrupted",
				"fileslimit",
				"timeout",
			]
		}

		ftp_archive_log: {
			description: [
				"Select the archive types to log.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"encrypted",
				"corrupted",
				"multipart",
				"nested",
				"mailbomb",
				"unhandled",
				"partiallycorrupted",
				"fileslimit",
				"timeout",
			]
		}

		ftp_emulator: {
			description: [
				"Enable/disable the virus emulator.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		ftp_options: {
			description: [
				"Enable/disable FTP AntiVirus scanning, monitoring, and quarantine.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"scan",
				"quarantine",
				"avmonitor",
			]
		}

		ftp_outbreak_prevention: {
			description: [
				"Enable FortiGuard Virus Outbreak Prevention service.",
			]
			required: false
			choices: [
				"disabled",
				"files",
				"full-archive",
			]
		}

		http: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		http_archive_block: {
			description: [
				"Select the archive types to block.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"encrypted",
				"corrupted",
				"multipart",
				"nested",
				"mailbomb",
				"unhandled",
				"partiallycorrupted",
				"fileslimit",
				"timeout",
			]
		}

		http_archive_log: {
			description: [
				"Select the archive types to log.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"encrypted",
				"corrupted",
				"multipart",
				"nested",
				"mailbomb",
				"unhandled",
				"partiallycorrupted",
				"fileslimit",
				"timeout",
			]
		}

		http_content_disarm: {
			description: [
				"Enable Content Disarm and Reconstruction for this protocol.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		http_emulator: {
			description: [
				"Enable/disable the virus emulator.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		http_options: {
			description: [
				"Enable/disable HTTP AntiVirus scanning, monitoring, and quarantine.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"scan",
				"quarantine",
				"avmonitor",
			]
		}

		http_outbreak_prevention: {
			description: [
				"Enable FortiGuard Virus Outbreak Prevention service.",
			]
			required: false
			choices: [
				"disabled",
				"files",
				"full-archive",
			]
		}

		imap: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		imap_archive_block: {
			description: [
				"Select the archive types to block.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"encrypted",
				"corrupted",
				"multipart",
				"nested",
				"mailbomb",
				"unhandled",
				"partiallycorrupted",
				"fileslimit",
				"timeout",
			]
		}

		imap_archive_log: {
			description: [
				"Select the archive types to log.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"encrypted",
				"corrupted",
				"multipart",
				"nested",
				"mailbomb",
				"unhandled",
				"partiallycorrupted",
				"fileslimit",
				"timeout",
			]
		}

		imap_content_disarm: {
			description: [
				"Enable Content Disarm and Reconstruction for this protocol.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		imap_emulator: {
			description: [
				"Enable/disable the virus emulator.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		imap_executables: {
			description: [
				"Treat Windows executable files as viruses for the purpose of blocking or monitoring.",
			]
			required: false
			choices: [
				"default",
				"virus",
			]
		}

		imap_options: {
			description: [
				"Enable/disable IMAP AntiVirus scanning, monitoring, and quarantine.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"scan",
				"quarantine",
				"avmonitor",
			]
		}

		imap_outbreak_prevention: {
			description: [
				"Enable FortiGuard Virus Outbreak Prevention service.",
			]
			required: false
			choices: [
				"disabled",
				"files",
				"full-archive",
			]
		}

		mapi: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		mapi_archive_block: {
			description: [
				"Select the archive types to block.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"encrypted",
				"corrupted",
				"multipart",
				"nested",
				"mailbomb",
				"unhandled",
				"partiallycorrupted",
				"fileslimit",
				"timeout",
			]
		}

		mapi_archive_log: {
			description: [
				"Select the archive types to log.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"encrypted",
				"corrupted",
				"multipart",
				"nested",
				"mailbomb",
				"unhandled",
				"partiallycorrupted",
				"fileslimit",
				"timeout",
			]
		}

		mapi_emulator: {
			description: [
				"Enable/disable the virus emulator.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		mapi_executables: {
			description: [
				"Treat Windows executable files as viruses for the purpose of blocking or monitoring.",
			]
			required: false
			choices: [
				"default",
				"virus",
			]
		}

		mapi_options: {
			description: [
				"Enable/disable MAPI AntiVirus scanning, monitoring, and quarantine.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"scan",
				"quarantine",
				"avmonitor",
			]
		}

		mapi_outbreak_prevention: {
			description: [
				"Enable FortiGuard Virus Outbreak Prevention service.",
			]
			required: false
			choices: [
				"disabled",
				"files",
				"full-archive",
			]
		}

		nac_quar: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		nac_quar_expiry: {
			description: [
				"Duration of quarantine.",
			]
			required: false
		}

		nac_quar_infected: {
			description: [
				"Enable/Disable quarantining infected hosts to the banned user list.",
			]
			required: false
			choices: [
				"none",
				"quar-src-ip",
			]
		}

		nac_quar_log: {
			description: [
				"Enable/disable AntiVirus quarantine logging.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		nntp: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		nntp_archive_block: {
			description: [
				"Select the archive types to block.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"encrypted",
				"corrupted",
				"multipart",
				"nested",
				"mailbomb",
				"unhandled",
				"partiallycorrupted",
				"fileslimit",
				"timeout",
			]
		}

		nntp_archive_log: {
			description: [
				"Select the archive types to log.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"encrypted",
				"corrupted",
				"multipart",
				"nested",
				"mailbomb",
				"unhandled",
				"partiallycorrupted",
				"fileslimit",
				"timeout",
			]
		}

		nntp_emulator: {
			description: [
				"Enable/disable the virus emulator.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		nntp_options: {
			description: [
				"Enable/disable NNTP AntiVirus scanning, monitoring, and quarantine.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"scan",
				"quarantine",
				"avmonitor",
			]
		}

		nntp_outbreak_prevention: {
			description: [
				"Enable FortiGuard Virus Outbreak Prevention service.",
			]
			required: false
			choices: [
				"disabled",
				"files",
				"full-archive",
			]
		}

		pop3: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		pop3_archive_block: {
			description: [
				"Select the archive types to block.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"encrypted",
				"corrupted",
				"multipart",
				"nested",
				"mailbomb",
				"unhandled",
				"partiallycorrupted",
				"fileslimit",
				"timeout",
			]
		}

		pop3_archive_log: {
			description: [
				"Select the archive types to log.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"encrypted",
				"corrupted",
				"multipart",
				"nested",
				"mailbomb",
				"unhandled",
				"partiallycorrupted",
				"fileslimit",
				"timeout",
			]
		}

		pop3_content_disarm: {
			description: [
				"Enable Content Disarm and Reconstruction for this protocol.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		pop3_emulator: {
			description: [
				"Enable/disable the virus emulator.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		pop3_executables: {
			description: [
				"Treat Windows executable files as viruses for the purpose of blocking or monitoring.",
			]
			required: false
			choices: [
				"default",
				"virus",
			]
		}

		pop3_options: {
			description: [
				"Enable/disable POP3 AntiVirus scanning, monitoring, and quarantine.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"scan",
				"quarantine",
				"avmonitor",
			]
		}

		pop3_outbreak_prevention: {
			description: [
				"Enable FortiGuard Virus Outbreak Prevention service.",
			]
			required: false
			choices: [
				"disabled",
				"files",
				"full-archive",
			]
		}

		smb: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		smb_archive_block: {
			description: [
				"Select the archive types to block.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"encrypted",
				"corrupted",
				"multipart",
				"nested",
				"mailbomb",
				"unhandled",
				"partiallycorrupted",
				"fileslimit",
				"timeout",
			]
		}

		smb_archive_log: {
			description: [
				"Select the archive types to log.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"encrypted",
				"corrupted",
				"multipart",
				"nested",
				"mailbomb",
				"unhandled",
				"partiallycorrupted",
				"fileslimit",
				"timeout",
			]
		}

		smb_emulator: {
			description: [
				"Enable/disable the virus emulator.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		smb_options: {
			description: [
				"Enable/disable SMB AntiVirus scanning, monitoring, and quarantine.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"scan",
				"quarantine",
				"avmonitor",
			]
		}

		smb_outbreak_prevention: {
			description: [
				"Enable FortiGuard Virus Outbreak Prevention service.",
			]
			required: false
			choices: [
				"disabled",
				"files",
				"full-archive",
			]
		}

		smtp: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		smtp_archive_block: {
			description: [
				"Select the archive types to block.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"encrypted",
				"corrupted",
				"multipart",
				"nested",
				"mailbomb",
				"unhandled",
				"partiallycorrupted",
				"fileslimit",
				"timeout",
			]
		}

		smtp_archive_log: {
			description: [
				"Select the archive types to log.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"encrypted",
				"corrupted",
				"multipart",
				"nested",
				"mailbomb",
				"unhandled",
				"partiallycorrupted",
				"fileslimit",
				"timeout",
			]
		}

		smtp_content_disarm: {
			description: [
				"Enable Content Disarm and Reconstruction for this protocol.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		smtp_emulator: {
			description: [
				"Enable/disable the virus emulator.",
			]
			required: false
			choices: [
				"disable",
				"enable",
			]
		}

		smtp_executables: {
			description: [
				"Treat Windows executable files as viruses for the purpose of blocking or monitoring.",
			]
			required: false
			choices: [
				"default",
				"virus",
			]
		}

		smtp_options: {
			description: [
				"Enable/disable SMTP AntiVirus scanning, monitoring, and quarantine.",
				"FLAG Based Options. Specify multiple in list form.",
			]
			required: false
			choices: [
				"scan",
				"quarantine",
				"avmonitor",
			]
		}

		smtp_outbreak_prevention: {
			description: [
				"Enable FortiGuard Virus Outbreak Prevention service.",
			]
			required: false
			choices: [
				"disabled",
				"files",
				"full-archive",
			]
		}
	}
}
