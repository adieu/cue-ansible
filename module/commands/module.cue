package commands

shell :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	shell: {

		// The shell module takes a free form command to run, as a string.
		// There is no actual parameter named 'free form'.
		// See the examples on how to use this module.

		free_form?: string

		// A filename, when it does not exist, this step will B(not) be run.

		removes?: string

		// Set the stdin of the command directly to the specified value.

		stdin?: string

		// Whether to append a newline to stdin data.

		stdin_add_newline?: bool

		// Whether to enable task warnings.

		warn?: bool

		// Change into this directory before running the command.

		chdir?: string

		// A filename, when it already exists, this step will B(not) be run.

		creates?: string

		// Change the shell used to execute the command.
		// This expects an absolute path to the executable.

		executable?: string

		// The command to run followed by optional arguments.

		cmd?: string
	}
}

telnet :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	telnet: {

		// List of prompts expected before sending next command

		prompts?: string

		// Sends a newline character upon successful connection to start the terminal session.

		send_newline?: bool

		// List of commands to be executed in the telnet session.

		command: string

		// The host/target on which to execute the command

		host?: string

		// Login or username prompt to expect

		login_prompt?: string

		// The password for login

		password?: string

		// Login or username prompt to expect

		password_prompt?: string

		// Remote port to use

		port?: string

		// timeout for remote operations

		timeout?: string

		// The user for login

		user?: string

		// Seconds to pause between each command issued

		pause?: string
	}
}

command :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	command: {

		// If set to C(yes), append a newline to stdin data.

		stdin_add_newline?: bool

		// Strip empty lines from the end of stdout/stderr in result.

		strip_empty_ends?: bool

		// Passes the command as a list rather than a string.
		// Use C(argv) to avoid quoting values that would otherwise be interpreted incorrectly (for example "user name").
		// Only the string (free form) or the list (argv) form can be provided, not both.  One or the other must be provided.

		argv?: [...]

		// The command to run.

		cmd?: string

		// The command module takes a free form string as a command to run.
		// There is no actual parameter named 'free form'.

		free_form?: string

		// Set the stdin of the command directly to the specified value.

		stdin?: string

		// Enable or disable task warnings.

		warn?: bool

		// Change into this directory before running the command.

		chdir?: string

		// A filename or (since 2.0) glob pattern. If it already exists, this step B(won't) be run.

		creates?: string

		// A filename or (since 2.0) glob pattern. If it already exists, this step B(will) be run.

		removes?: string
	}
}

expect :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	expect: {

		// A filename, when it does not exist, this step will B(not) be run.

		removes?: string

		// Mapping of expected string/regex and string to respond with. If the response is a list, successive matches return successive responses. List functionality is new in 2.1.

		responses: {...}

		// Amount of time in seconds to wait for the expected strings. Use C(null) to disable timeout.

		timeout?: int

		// Change into this directory before running the command.

		chdir?: string

		// The command module takes command to run.

		command: string

		// A filename, when it already exists, this step will B(not) be run.

		creates?: string

		// Whether or not to echo out your response strings.

		echo?: bool
	}
}

psexec :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	psexec: {

		// Will run the command as a detached process and the module returns immediately after starting the process while the process continues to run in the background.
		// The I(stdout) and I(stderr) return values will be null when this is set to C(yes).
		// The I(stdin) option does not work with this type of process.
		// The I(rc) return value is not set when this is C(yes)

		asynchronous?: bool

		// The username to use when connecting to the remote Windows host.
		// This user must be a member of the C(Administrators) group of the Windows host.
		// Required if the Kerberos requirements are not installed or the username is a local account to the Windows host.
		// Can be omitted to use the default Kerberos principal ticket in the local credential cache if the Kerberos library is installed.
		// If I(process_username) is not specified, then the remote process will run under a Network Logon under this account.

		connection_username?: string

		// Set the command's priority on the Windows host.
		// See U(https://msdn.microsoft.com/en-us/library/windows/desktop/ms683211.aspx) for more details.

		priority?: string

		// Shows the process UI on the Winlogon secure desktop when I(process_username) is C(System).

		show_ui_on_logon_screen?: bool

		// Data to send on the stdin pipe once the process has started.
		// This option has no effect when I(interactive) or I(asynchronous) is C(yes).

		stdin?: string

		// Any arguments as a single string to use when running the executable.

		arguments?: string

		// The password for I(process_username).
		// Required if I(process_username) is defined and not C(System).

		process_password?: string

		// The user to run the process as.
		// This can be set to run the process under an Interactive logon of the specified account which bypasses limitations of a Network logon used when this isn't specified.
		// If omitted then the process is run under the same account as I(connection_username) with a Network logon.
		// Set to C(System) to run as the builtin SYSTEM account, no password is required with this account.
		// If I(encrypt) is C(no), the username and password are sent as a simple XOR scrambled byte string that is not encrypted. No special tools are required to get the username and password just knowledge of the protocol.

		process_username?: string

		// The port that the remote SMB service is listening on.

		port?: int

		// The timeout in seconds that is placed upon the running process.
		// A value of C(0) means no timeout.

		process_timeout?: int

		// The password for I(connection_user).
		// Required if the Kerberos requirements are not installed or the username is a local account to the Windows host.
		// Can be omitted to use a Kerberos principal ticket for the principal set by I(connection_user) if the Kerberos library is installed and the ticket has already been retrieved with the C(kinit) command before.

		connection_password?: string

		// The timeout in seconds to wait when receiving the initial SMB negotiate response from the server.

		connection_timeout?: int

		// Will use SMB encryption to encrypt the SMB messages sent to and from the host.
		// This requires the SMB 3 protocol which is only supported from Windows Server 2012 or Windows 8, older versions like Windows 7 or Windows Server 2008 (R2) must set this to C(no) and use no encryption.
		// When setting to C(no), the packets are in plaintext and can be seen by anyone sniffing the network, any process options are included in this.

		encrypt?: bool

		// The executable to run on the Windows host.

		executable: string

		// The integrity level of the process when I(process_username) is defined and is not equal to C(System).
		// When C(default), the default integrity level based on the system setup.
		// When C(elevated), the command will be run with Administrative rights.
		// When C(limited), the command will be forced to run with non-Administrative rights.

		integrity_level?: string

		// The Windows session ID to use when displaying the interactive process on the remote Windows host.
		// This is only valid when I(interactive) is C(yes).
		// The default is C(0) which is the console session of the Windows host.

		interactive_session?: int

		// The remote Windows host to connect to, can be either an IP address or a hostname.

		hostname: string

		// Will run the process as an interactive process that shows a process Window of the Windows session specified by I(interactive_session).
		// The I(stdout) and I(stderr) return values will be null when this is set to C(yes).
		// The I(stdin) option does not work with this type of process.

		interactive?: bool

		// Runs the remote command with the user's profile loaded.

		load_profile?: bool

		// Changes the working directory set when starting the process.

		working_directory?: string
	}
}

raw :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	raw: {

		// Change the shell used to execute the command. Should be an absolute path to the executable.
		// When using privilege escalation (C(become)) a default shell will be assigned if one is not provided as privilege escalation requires a shell.

		executable?: string

		// The raw module takes a free form command to run.
		// There is no parameter actually named 'free form'; see the examples!

		free_form: string
	}
}

script :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	script: {

		// Name or path of a executable to invoke the script with.

		executable?: string

		// Path to the local script file followed by optional arguments.

		free_form?: string

		// A filename on the remote node, when it does not exist, this step will B(not) be run.

		removes?: string

		// Change into this directory on the remote node before running the script.

		chdir?: string

		// Path to the local script to run followed by optional arguments.

		cmd?: string

		// A filename on the remote node, when it already exists, this step will B(not) be run.

		creates?: string
	}
}
