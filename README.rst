hosts-formula
=============
Manages `/etc/hosts` file.
It exposes the file as an accumulator and also preloads it from pillar.


example usage::

    hosts:
      127.0.0.2:
        - front.local
        - back.local
        - memcache.local
        - postgresql.local
        - mongodb.local
        - elasticsearch.local
