{% from "hosts/map.jinja" import hosts with context %}

/etc/hosts:
  file:
    - managed
    - source: salt://hosts/templates/hosts
    - user: root
    - group: root
    - mode: 644
    - template: jinja

hosts-pillar-accumulator:
  file:
    - accumulated
    - name: "hosts"
    - filename: /etc/hosts
    - text: |
{%- for ip, hostnames in hosts.iteritems() %}
            {{ ip }}  {{ " ".join(hostnames) }}
{%- endfor %}
    - watch_in:
      - file: /etc/hosts
