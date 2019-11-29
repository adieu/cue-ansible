# cue-ansible

Write Ansible Playbooks in CUE

## Why

Users write YAML files for [Ansible](https://www.ansible.com/). The experience could be enhanced using
[CUE](https://cuelang.org/) with package importing, schema validation and more.

This repo provides you ready to use CUE packages for schema validation and guidance on
how to integrate CUE with Ansible.

I created this project to get my hands dirty with CUE by putting it into a real usecase.
You can use this repo as a reference to rewrite your Ansible Playbooks in CUE
or learn some basic usage pattern of CUE.

## Installation

You should install Ansible and CUE before using this repo. Some features are not
included in the latest release of CUE. So please install CUE with
`go get -u cuelang.org/go/cmd/cue`.

## Write Playbook

Create a new folder called `playbook` and write your playbook in CUE. You could
use [example](https://github.com/adieu/cue-ansible/blob/master/example/playbook.cue)
as a reference.  It's almost the same like writing the playbook in YAML but you
could use CUE to organize your code in packages and use module schemas to validate
the task options.

## Run Playbook

`cue cmd play ./playbook` will eval your playbook and write the result to `playbook.yml`.
Then `ansible-playbook` will be executed to run the playbook as well.

You can put your legacy YAML based tasks in `roles` folder and use `include_role`
module to load them in your playbook. In this way, you can migrate from YAML
to CUE gradually.

## Reference

 - [CUE Homepage](https://cuelang.org/)
 - [CUE Repository on GitHub](https://github.com/cuelang/cue)
 - [CUE Documents](https://cuelang.org/docs/)