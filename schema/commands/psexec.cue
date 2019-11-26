package ansible

module: psexec: {
	module:            "psexec"
	short_description: "Runs commands on a remote Windows host based on the PsExec model"

	version_added: "2.6"
	description: [
		"Runs a remote command from a Linux host to a Windows host without WinRM being set up.",
		"Can be run on the Ansible controller to bootstrap Windows hosts to get them ready for WinRM.",
	]

	options: {
		hostname: {
			description: [
				"The remote Windows host to connect to, can be either an IP address or a hostname.",
			]

			type:     "str"
			required: true
		}
		connection_username: {
			description: [
				"The username to use when connecting to the remote Windows host.",
				"This user must be a member of the C(Administrators) group of the Windows host.",
				"Required if the Kerberos requirements are not installed or the username is a local account to the Windows host.",
				"Can be omitted to use the default Kerberos principal ticket in the local credential cache if the Kerberos library is installed.",
				"If I(process_username) is not specified, then the remote process will run under a Network Logon under this account.",
			]

			type: "str"
		}
		connection_password: {
			description: [
				"The password for I(connection_user).",
				"Required if the Kerberos requirements are not installed or the username is a local account to the Windows host.",
				"Can be omitted to use a Kerberos principal ticket for the principal set by I(connection_user) if the Kerberos library is installed and the ticket has already been retrieved with the C(kinit) command before.",
			]

			type: "str"
		}
		port: {
			description: [
				"The port that the remote SMB service is listening on.",
			]
			type:    "int"
			default: 445
		}
		encrypt: {
			description: [
				"Will use SMB encryption to encrypt the SMB messages sent to and from the host.",
				"This requires the SMB 3 protocol which is only supported from Windows Server 2012 or Windows 8, older versions like Windows 7 or Windows Server 2008 (R2) must set this to C(no) and use no encryption.",
				"When setting to C(no), the packets are in plaintext and can be seen by anyone sniffing the network, any process options are included in this.",
			]

			type:    "bool"
			default: true
		}
		connection_timeout: {
			description: [
				"The timeout in seconds to wait when receiving the initial SMB negotiate response from the server.",
			]

			type:    "int"
			default: 60
		}
		executable: {
			description: [
				"The executable to run on the Windows host.",
			]
			type:     "str"
			required: true
		}
		arguments: {
			description: [
				"Any arguments as a single string to use when running the executable.",
			]
			type: "str"
		}
		working_directory: {
			description: [
				"Changes the working directory set when starting the process.",
			]
			type:    "str"
			default: "C:\\Windows\\System32"
		}
		asynchronous: {
			description: [
				"Will run the command as a detached process and the module returns immediately after starting the process while the process continues to run in the background.",
				"The I(stdout) and I(stderr) return values will be null when this is set to C(yes).",
				"The I(stdin) option does not work with this type of process.",
				"The I(rc) return value is not set when this is C(yes)",
			]
			type:    "bool"
			default: false
		}
		load_profile: {
			description: [
				"Runs the remote command with the user's profile loaded.",
			]
			type:    "bool"
			default: true
		}
		process_username: {
			description: [
				"The user to run the process as.",
				"This can be set to run the process under an Interactive logon of the specified account which bypasses limitations of a Network logon used when this isn't specified.",
				"If omitted then the process is run under the same account as I(connection_username) with a Network logon.",
				"Set to C(System) to run as the builtin SYSTEM account, no password is required with this account.",
				"If I(encrypt) is C(no), the username and password are sent as a simple XOR scrambled byte string that is not encrypted. No special tools are required to get the username and password just knowledge of the protocol.",
			]

			type: "str"
		}
		process_password: {
			description: [
				"The password for I(process_username).",
				"Required if I(process_username) is defined and not C(System).",
			]
			type: "str"
		}
		integrity_level: {
			description: [
				"The integrity level of the process when I(process_username) is defined and is not equal to C(System).",
				"When C(default), the default integrity level based on the system setup.",
				"When C(elevated), the command will be run with Administrative rights.",
				"When C(limited), the command will be forced to run with non-Administrative rights.",
			]

			type: "str"
			choices: [
				"limited",
				"default",
				"elevated",
			]
			default: "default"
		}
		interactive: {
			description: [
				"Will run the process as an interactive process that shows a process Window of the Windows session specified by I(interactive_session).",
				"The I(stdout) and I(stderr) return values will be null when this is set to C(yes).",
				"The I(stdin) option does not work with this type of process.",
			]
			type:    "bool"
			default: false
		}
		interactive_session: {
			description: [
				"The Windows session ID to use when displaying the interactive process on the remote Windows host.",
				"This is only valid when I(interactive) is C(yes).",
				"The default is C(0) which is the console session of the Windows host.",
			]
			type:    "int"
			default: 0
		}
		priority: {
			description: [
				"Set the command's priority on the Windows host.",
				"See U(https://msdn.microsoft.com/en-us/library/windows/desktop/ms683211.aspx) for more details.",
			]

			type: "str"
			choices: [
				"above_normal",
				"below_normal",
				"high",
				"idle",
				"normal",
				"realtime",
			]
			default: "normal"
		}
		show_ui_on_logon_screen: {
			description: [
				"Shows the process UI on the Winlogon secure desktop when I(process_username) is C(System).",
			]

			type:    "bool"
			default: false
		}
		process_timeout: {
			description: [
				"The timeout in seconds that is placed upon the running process.",
				"A value of C(0) means no timeout.",
			]
			type:    "int"
			default: 0
		}
		stdin: {
			description: [
				"Data to send on the stdin pipe once the process has started.",
				"This option has no effect when I(interactive) or I(asynchronous) is C(yes).",
			]

			type: "str"
		}
	}
	requirements: [
		"pypsexec",
		"smbprotocol[kerberos] for optional Kerberos authentication",
	]
	notes: [
		"This module requires the Windows host to have SMB configured and enabled, and port 445 opened on the firewall.",
		"This module will wait until the process is finished unless I(asynchronous) is C(yes), ensure the process is run as a non-interactive command to avoid infinite hangs waiting for input.",
		"The I(connection_username) must be a member of the local Administrator group of the Windows host. For non-domain joined hosts, the C(LocalAccountTokenFilterPolicy) should be set to C(1) to ensure this works, see U(https://support.microsoft.com/en-us/help/951016/description-of-user-account-control-and-remote-restrictions-in-windows).",
		"For more information on this module and the various host requirements, see U(https://github.com/jborean93/pypsexec).",
	]

	seealso: [{
		module: "raw"
	}, {
		module: "win_command"
	}, {
		module: "win_psexec"
	}, {
		module: "win_shell"
	}]
	author: ["Jordan Borean (@jborean93)"]
}
