/etc/hosts:
  file:
    - managed
    - source: salt://hosts/templates/hosts
    - user: root
    - group: root
    - mode: 644
    - template: jinja
