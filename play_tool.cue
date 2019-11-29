package playbook

import (
	"tool/cli"
	"tool/file"
	"tool/exec"
)

command: play: {
	task: write: file.Create & {
		filename: "playbook.yml"
		contents:  yaml.MarshalStream([playbook])
		before: task.ansible
	}

	task: ansible: exec.Run & {
		cmd:    "ansible-playbook playbook.yml"
		stdout: string
	}

	task: display: cli.Print & {
		text: task.ansible.stdout
	}

}
