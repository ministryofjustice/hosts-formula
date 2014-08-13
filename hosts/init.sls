/etc/hosts:
  file:
    - managed
    - source: salt://hosts/templates/hosts
    - user: root
    - group: root
    - mode: 644
    - template: jinja

{% if grains['release_stage'] not in ['production','staging'] %}
set_hostname:
  cmd.run:
    - name: hostname {{ grains['id'] }}
    - unless: "[ `hostname` == '{{ grains['id'] }}' ]"
    - shell: /bin/bash

/etc/hostname:
  file.managed:
    - template: jinja
    - source: salt://hosts/templates/hostname
{% endif %}
