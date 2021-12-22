[![.github/workflows/main.yml](https://github.com/griggheo/ansible-consul-template/actions/workflows/main.yml/badge.svg)](https://github.com/griggheo/ansible-consul-template/actions/workflows/main.yml)

Consul-Template
=========

Installs consul-template as either an Upstart or SystemD service.

Role Variables
--------------

```yml
---
# defaults file for consul-template
consul_template_version: "0.15.0"
consul_template_release: "consul-template_{{ consul_template_version }}_linux_amd64"
consul_template_archive_file: "{{ consul_template_release }}.zip"
consul_template_download_url: "https://releases.hashicorp.com/consul-template/{{ consul_template_version }}/{{ consul_template_archive_file }}"
consul_template_binary: consul-template
consul_template_home: /opt/consul-template
consul_template_config_file_template: consul-template.cfg.j2
consul_template_config_file: consul-template.cfg
consul_template_config_file_mode: "0755"
consul_template_log_file: /var/log/consul-template
consul_template_log_level: "INFO"
consul_template_consul_server: "127.0.0.1"
consul_template_consul_port: "8500"
consul_template_use_systemd: false
consul_template_use_upstart: false
consul_template_use_initd: false
consul_template_systemd_template: "consul-template.service.systemd.j2"
consul_template_upstart_template: "consul-template.service.upstart.j2"
consul_template_initd_template: "consul-template.initd.sh.j2"
consul_template_wait: <undefined>
consul_template_template_files: # Copies your templates
    - {src: "template.ctmpl"}
consul_template_templates: # Defines templates in configuration
    - {name: "template.ctmpl", dest: "/path/on/disk/where/template/will/render", cmd: "optional command to run when the template is updated", perms: 0600, backup: true, wait: "2s"}
consul_template_template_templates: # Defines j2 versions of templates to be rendered as consul-template templates
    - {name: "template.ctmpl.j2", dest: "/path/on/disk/where/template/will/render", cmd: "optional command to run when the template is updated", perms: 0600, backup: true}
consul_template_manage_user: false
consul_template_manage_group: false
consul_template_user: "root"
consul_template_group: "root"
```

Example Playbook Role Usage
----------------

## Simple setup

Install and run consul-template using Upstart with a barebones config file that contains no template configuration.

```yml
roles:
    - { role: consul-template,
        consul_template_use_upstart: true }
```

## Use your own config file

Provide your own configuration file for consul-template.

```yml
roles:
    - { role: consul-template,
        consul_template_config_file_template: "{{ playbook_dir }}/files/consul-template.cfg.j2"
        consul_template_use_upstart: true }
```

Testing
-------

Vagrant
-------

To test the playbook locally, first install the required dependencies locally.

```
$ ansible-galaxy install --role-file=requirements.yml --roles-path=roles --force
```

Then run vagrant.

```
vagrant up
```

Molecule
--------
Run all molcule tests.

```
molecule test --all
```

License
-------

Apache v2.0

Author Information
------------------

Grig Gheorghiu
http://agiletesting.blogspot.com

Contributors
------------

Robbie Trencheny
https://github.com/robbiet480

Travis Truman
https://github.com/trumant

Marc Abramowitz
https://github.com/msabramo

Guido Garcia
https://github.com/palmerabollo

Damjan Znidarsic
https://github.com/spinx

David Wittman
https://github.com/DavidWittman

Nigel Gibbs
https://github.com/gibbsoft
