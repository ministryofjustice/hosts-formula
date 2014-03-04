hosts-formula
=============
Manages `/etc/hosts` file.
It exposes the file as an accumulator and also preloads it from pillar.

example accumulator based usage::

    my-hosts-pillar-accumulator:
      file:
        - accumulated
        - name: "hosts"
        - filename: /etc/hosts
        - text: 8.8.8.8 dns.google.com
        - watch_in:
          - file: /etc/hosts


example pillar based usage::

    hosts:
      127.0.0.2:
        - front.local
        - back.local
        - memcache.local
        - postgresql.local
        - mongodb.local
        - elasticsearch.local
