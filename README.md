Consul-Template
=========

Installs consul-template as either an Upstart or SystemD service.

Role Variables
--------------

```yml
consul_template_version: "0.9.0"
consul_template_archive_file: "consul-template_{{ consul_template_version }}_linux_amd64.tar.gz"
consul_template_download_url: "https://github.com/hashicorp/consul-template/releases/download/v{{ consul_template_version }}/{{ consul_template_archive_file }}"
consul_template_binary: consul-template
consul_template_home: /opt/consul-template
consul_template_config_file_template: consul-template.cfg.j2
consul_template_config_file: consul-template.cfg
consul_template_log_file: /var/log/consul-template
consul_template_log_level: "INFO"
consul_template_consul_server: "127.0.0.1"
consul_template_use_systemd: false
consul_template_use_upstart: false
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

License
-------

Apache v2.0

Author Information
------------------

Grig Gheorghiu
http://agiletesting.blogspot.com

Contributors
------------

Travis Truman
https://github.com/trumant

Marc Abramowitz
https://github.com/msabramo
